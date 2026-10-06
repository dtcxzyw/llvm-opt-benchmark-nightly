Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/exparse?download=true
inline.NumInlined: 167
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@exnewsplit:bb.a
bb.g:                                             ; preds = %extypename.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %.not32 = icmp eq i64 %i.x, 263
  br i1 %.not32, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @exopname(i64 noundef %1) #22
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load i64, ptr %3, align 8, !tbaa !12    ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 258
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp samesign ult i64 %i.aa, 264
  %i.ad = add nsw i64 %i.aa, -258
  %i.ae = select i1 %i.ac, i64 %i.ad, i64 0
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @typename, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  br label %extypename.exit37

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = tail call ptr %i.ak(i64 noundef %i.aa) #22, !inline_history !50
  br label %extypename.exit37

extypename.exit37:                                ; preds = %bb.i, %bb.j
  %.0.i36 = phi ptr [ %i.ag, %bb.i ], [ %i.al, %bb.j ]
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.92, ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef %.0.i36) #22
  br label %bb.k

bb.k:                                             ; preds = %extypename.exit37, %bb.g
  %i.am = load i64, ptr %3, align 8, !tbaa !12
  %.not33 = icmp eq i64 %i.am, 263
  br i1 %.not33, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call ptr @exopname(i64 noundef %1) #22
  %i.ao = load i64, ptr %3, align 8, !tbaa !12    ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 258
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp samesign ult i64 %i.ao, 264
  %i.ar = add nsw i64 %i.ao, -258
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @typename, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  br label %extypename.exit39

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = tail call ptr %i.ay(i64 noundef %i.ao) #22, !inline_history !50
  br label %extypename.exit39

extypename.exit39:                                ; preds = %bb.m, %bb.n
  %.0.i38 = phi ptr [ %i.au, %bb.m ], [ %i.az, %bb.n ]
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.93, ptr noundef %i.an, ptr noundef %.0.i38) #22
  br label %bb.o

bb.o:                                             ; preds = %extypename.exit39, %bb.k
  %.not34 = icmp eq ptr %4, null
  br i1 %.not34, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr %4, align 8, !tbaa !12
  %.not35 = icmp eq i64 %i.ba, 263
  br i1 %.not35, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call ptr @exopname(i64 noundef %1) #22
  %i.bc = load i64, ptr %4, align 8, !tbaa !12    ; 4 uses
  %i.bd = icmp sgt i64 %i.bc, 258
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = icmp samesign ult i64 %i.bc, 264
  %i.bf = add nsw i64 %i.bc, -258
  %i.bg = select i1 %i.be, i64 %i.bf, i64 0
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @typename, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  br label %extypename.exit41

bb.s:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bn = tail call ptr %i.bm(i64 noundef %i.bc) #22, !inline_history !50
  br label %extypename.exit41

extypename.exit41:                                ; preds = %bb.r, %bb.s
  %.0.i40 = phi ptr [ %i.bi, %bb.r ], [ %i.bn, %bb.s ]
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.94, ptr noundef %i.bb, ptr noundef %.0.i40) #22
  br label %bb.t

bb.t:                                             ; preds = %extypename.exit41, %bb.p, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.bo, i64 noundef 8, i64 noundef 64) #22 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %1, ptr %i.bq, align 8, !tbaa !11
  store i64 259, ptr %i.bp, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i8 0, ptr %i.br, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr %2, ptr %i.bs, align 8, !tbaa !14
  store ptr %3, ptr %i.bt, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %4, ptr %i.bu, align 8, !tbaa !14
  ret ptr %i.bp
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @exprint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.014 = phi ptr [ %2, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 15 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 8 uses
  switch i64 %i.e, label %bb.c [
    i64 263, label %bb.p
    i64 0, label %exstringOf.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %i.e, 258
  br i1 %i.f, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %.not46.i = icmp eq ptr %i.i, null
  br i1 %.not46.i, label %extypename.exit.i, label %bb.e

extypename.exit.i:                                ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call ptr %i.k(i64 noundef %i.e) #22, !inline_history !132
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.95, ptr noundef %i.l) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %bb.e

bb.e:                                             ; preds = %extypename.exit.i, %bb.d
  %i.m = phi ptr [ %.pre15, %extypename.exit.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %.not47.i = icmp eq i64 %i.o, 270
  br i1 %.not47.i, label %bb.i, label %bb.f

.thread.i:                                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %.not4752.i = icmp eq i64 %i.q, 270
  br i1 %.not4752.i, label %.thread54.i, label %.thread53.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #22, !inline_history !133
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %extypename.exit49.i, label %bb.h

extypename.exit49.i:                              ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call ptr %i.v(i64 noundef %i.e) #22, !inline_history !132
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.95, ptr noundef %i.w) #22
  br label %bb.h

.thread53.i:                                      ; preds = %.thread.i
  %i.x = icmp samesign ult i64 %i.e, 264
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread53.i
  %i.y = getelementptr [24 x i8], ptr @typecast, i64 %i.e
  %i.z = getelementptr i8, ptr %i.y, i64 -6172
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = sext i32 %i.aa to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread53.i, %extypename.exit49.i, %bb.f
  %.0.i = phi i64 [ %i.ab, %bb.g ], [ 0, %.thread53.i ], [ 321, %extypename.exit49.i ], [ 321, %bb.f ]
  %i.ac = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 64) #22 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.0.i, ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 0, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.d, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  br label %exstringOf.exit

bb.i:                                             ; preds = %bb.e
  %i.ah = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 0) #22, !inline_history !133
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %exstringOf.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !12  ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, 258
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = icmp samesign ult i64 %i.aj, 264
  %i.am = add nsw i64 %i.aj, -258
  %i.an = select i1 %i.al, i64 %i.am, i64 0
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @typename, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32
  br label %extypename.exit51.i

bb.l:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.at = tail call ptr %i.as(i64 noundef %i.aj) #22, !inline_history !132
  br label %extypename.exit51.i

extypename.exit51.i:                              ; preds = %bb.l, %bb.k
  %.0.i50.i = phi ptr [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.96, ptr noundef %.0.i50.i) #22
  br label %exstringOf.exit

.thread54.i:                                      ; preds = %.thread.i
  switch i64 %i.e, label %bb.o [
    i64 262, label %bb.m
    i64 259, label %bb.n
  ]

bb.m:                                             ; preds = %.thread54.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = tail call ptr (ptr, ptr, ...) @exprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5, double noundef %i.av)
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !14
  br label %exstringOf.exit

bb.n:                                             ; preds = %.thread54.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.az = tail call ptr (ptr, ptr, ...) @exprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.6, i64 noundef %i.ay)
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !14
  br label %exstringOf.exit

bb.o:                                             ; preds = %.thread54.i
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.97, i64 noundef %i.e) #22
  br label %exstringOf.exit

exstringOf.exit:                                  ; preds = %bb.b, %bb.h, %bb.i, %extypename.exit51.i, %bb.m, %bb.n, %bb.o
  %.043.sink.i = phi ptr [ %i.d, %bb.b ], [ %i.ac, %bb.h ], [ %i.d, %bb.o ], [ %i.d, %bb.m ], [ %i.d, %bb.n ], [ %i.d, %extypename.exit51.i ], [ %i.d, %bb.i ] ; 2 uses
  store i64 263, ptr %.043.sink.i, align 8, !tbaa !12
  store ptr %.043.sink.i, ptr %i.c, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %exstringOf.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !81
  %i.bf = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.bd, i64 noundef 8, i64 noundef 64) #22 ; 5 uses
  %i.bg = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i8 1, ptr %i.bh, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %2, ptr %i.bi, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr null, ptr %i.bj, align 8, !tbaa !14
  ret ptr %i.bf
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @preprint(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.not129 = icmp eq i64 %i.c, 263
  br i1 %.not129, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.98) #22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %.not130 = icmp eq i64 %i.f, 270
  br i1 %.not130, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.h, i64 noundef 8, i64 noundef 48) #22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %0, ptr %i.j, align 8, !tbaa !30
  br label %agxbclear.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %.fr = freeze ptr %i.n                          ; 2 uses
  %i.o = load i8, ptr %i.l, align 1, !tbaa !14    ; 3 uses
  %.not131220 = icmp eq i8 %i.o, 0
  br i1 %.not131220, label %._crit_edge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not134 = icmp eq ptr %.fr, null
  br i1 %.not134, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %i.p = phi i8 [ %i.y, %bb.j ], [ %i.o, %.lr.ph ]
  %.0109221.us = phi ptr [ %i.x, %bb.j ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.r, i8 noundef signext %i.p)
  %i.s = load i8, ptr %.0109221.us, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 37
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %.0109221.us, i64 1 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14    ; 2 uses
  %.not132.us = icmp eq i8 %i.v, 0
  br i1 %.not132.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.l) #22
  %.pr.us = load i8, ptr %i.u, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = phi i8 [ %.pr.us, %bb.h ], [ %i.v, %bb.g ]
  %.not133.us = icmp eq i8 %i.w, 37
  br i1 %.not133.us, label %bb.j, label %._crit_edge.preheader

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us
  %.1110.us = phi ptr [ %.0109221.us, %.lr.ph.split.us ], [ %i.u, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.1110.us, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14    ; 2 uses
  %.not131.us = icmp eq i8 %i.y, 0
  br i1 %.not131.us, label %._crit_edge.preheader, label %.lr.ph.split.us, !llvm.loop !136

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %i.z = phi i8 [ %i.ak, %bb.o ], [ %i.o, %.lr.ph ]
  %.0109221 = phi ptr [ %i.aj, %bb.o ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.ab, i8 noundef signext %i.z)
  %i.ac = load i8, ptr %.0109221, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 37
  br i1 %i.ad, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.0109221, i64 1 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14  ; 2 uses
  %.not132 = icmp eq i8 %i.af, 0
  br i1 %.not132, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.l) #22
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = phi i8 [ %.pr, %bb.l ], [ %i.af, %bb.k ]
  %.not133 = icmp eq i8 %i.ag, 37
  br i1 %.not133, label %bb.n, label %._crit_edge.preheader

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
end_hunk_0
begin_hunk_1_@preprint:bb.a
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !14
  br label %.thread26.i

.thread26.i:                                      ; preds = %gv_calloc.exit.i.i, %bb.ad, %bb.ac, %bb.z
  %spec.select3641.i.i = phi i64 [ 62, %gv_calloc.exit.i.i ], [ 0, %bb.z ], [ %spec.select33.i.i, %bb.ac ], [ %spec.select33.i.i, %bb.ad ]
  %.0.i15.i = phi ptr [ %i.bt, %gv_calloc.exit.i.i ], [ null, %bb.z ], [ %i.bm, %bb.ac ], [ %i.bm, %bb.ad ] ; 2 uses
  store ptr %.0.i15.i, ptr %i.bb, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  store i64 %spec.select3641.i.i, ptr %i.bz, align 8, !tbaa !14
  store i8 -1, ptr %i.bc, align 1, !tbaa !14
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.af

._crit_edge.i:                                    ; preds = %agxbsizeof.exit.i
  %.pre39.i = load ptr, ptr %i.bb, align 8, !tbaa !14
  br label %bb.af

.thread35.i:                                      ; preds = %agxbsizeof.exit.thread.i
  %i.ca = zext nneg i8 %.val.i.i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ca
  store i8 %.0107, ptr %i.cb, align 1, !tbaa !14
  %i.cc = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.bc, align 1, !tbaa !14
  br label %agxbputc.exit

bb.af:                                            ; preds = %._crit_edge.i, %.thread26.i
  %i.ce = phi ptr [ %.0.i15.i, %.thread26.i ], [ %.pre39.i, %._crit_edge.i ]
  %i.cf = phi i64 [ %.pre.i, %.thread26.i ], [ %i.be, %._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 168 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 %.0107, ptr %i.ch, align 1, !tbaa !14
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !14
  br label %agxbputc.exit

agxbputc.exit:                                    ; preds = %.thread35.i, %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 3 uses
  %i.cl = load i8, ptr %.5, align 1, !tbaa !14    ; 4 uses
  switch i8 %i.cl, label %bb.y [
    i8 0, label %.loopexit
    i8 40, label %bb.ag
    i8 41, label %bb.ah
  ]

bb.ag:                                            ; preds = %agxbputc.exit
  %i.cm = add nsw i32 %.0102.ph, 1
  br label %.outer.backedge

.outer:                                           ; preds = %bb.r, %.outer.backedge
  %.5.ph = phi ptr [ %i.ck, %.outer.backedge ], [ %i.ar, %bb.r ]
  %.0107.ph = phi i8 [ %i.cl, %.outer.backedge ], [ %i.aq, %bb.r ]
  %.0102.ph = phi i32 [ %.0102.ph.be, %.outer.backedge ], [ 1, %bb.r ] ; 3 uses
  br label %bb.y

bb.ah:                                            ; preds = %agxbputc.exit
  %i.cn = add nsw i32 %.0102.ph, -1
  %i.co = icmp slt i32 %.0102.ph, 2
  br i1 %i.co, label %.loopexit, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.ah, %bb.ag
  %.0102.ph.be = phi i32 [ %i.cm, %bb.ag ], [ %i.cn, %bb.ah ]
  br label %.outer

bb.ai:                                            ; preds = %bb.r
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.103) #22
  br label %bb.bn

bb.aj:                                            ; preds = %bb.r
  %i.cp = and i8 %i.aq, -33
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -65
  %i.cs = icmp ult i32 %i.cr, 26
  br i1 %i.cs, label %.loopexit161.loopexit, label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %agxbputc.exit, %bb.r, %bb.aj, %bb.x
  %.2115 = phi ptr [ %.1114, %bb.aj ], [ %i.az, %bb.x ], [ %.1114, %bb.r ], [ %.1114, %agxbputc.exit ], [ %.1114, %bb.ah ]
  %.6 = phi ptr [ %i.ar, %bb.aj ], [ %i.ar, %bb.x ], [ %i.ar, %bb.r ], [ %.5, %agxbputc.exit ], [ %i.ck, %bb.ah ] ; 2 uses
  %.1108 = phi i8 [ %i.aq, %bb.aj ], [ 42, %bb.x ], [ %i.aq, %bb.r ], [ %i.cl, %agxbputc.exit ], [ 41, %bb.ah ]
  %.1104 = phi i32 [ %.0103, %bb.aj ], [ %i.av, %bb.x ], [ %.0103, %bb.r ], [ %.0103, %agxbputc.exit ], [ %.0103, %bb.ah ]
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.cu, i8 noundef signext %.1108)
  %.pr158 = load i8, ptr %.6, align 1, !tbaa !14
  br label %bb.r

.loopexit307:                                     ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  br label %.loopexit161

.loopexit372:                                     ; preds = %bb.r, %bb.r
  br label %.loopexit161

.loopexit161.loopexit:                            ; preds = %bb.r, %bb.r, %bb.aj
  br label %.loopexit161

.loopexit161:                                     ; preds = %bb.r, %bb.r, %bb.r, %.loopexit161.loopexit, %.loopexit372, %.loopexit307
  %.2 = phi i32 [ 263, %.loopexit372 ], [ 259, %.loopexit161.loopexit ], [ 260, %.loopexit307 ], [ 262, %bb.r ], [ 262, %bb.r ], [ 262, %bb.r ] ; 2 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 160
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.cw, i8 noundef signext %i.aq)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.loopexit161
  %.7 = phi ptr [ %i.ar, %.loopexit161 ], [ %i.dc, %bb.an ] ; 4 uses
  %i.cx = load i8, ptr %.7, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.cx, label %bb.an [
    i8 0, label %bb.ao
    i8 37, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  switch i8 %i.cz, label %bb.ao [
    i8 0, label %bb.am
    i8 37, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.ar, align 1, !tbaa !14
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.99, ptr noundef nonnull %.0101) #22
  br label %bb.bn

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.8 = phi ptr [ %i.cy, %bb.al ], [ %.7, %bb.ak ]
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.db, i8 noundef signext %i.cx)
  %i.dc = getelementptr inbounds nuw i8, ptr %.8, i64 1
  br label %bb.ak, !llvm.loop !137

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %.not141 = icmp eq ptr %.1114, null
  br i1 %.not141, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !14
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.104, ptr noundef nonnull %.0101) #22
  br label %bb.bn

bb.aq:                                            ; preds = %bb.ao
  %i.dd = getelementptr inbounds nuw i8, ptr %.1114, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !14 ; 14 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 6 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !30
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !12 ; 9 uses
  switch i32 %.2, label %.unreachabledefault [
    i32 262, label %bb.ar
    i32 259, label %bb.at
    i32 260, label %bb.at
    i32 263, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  %.not151 = icmp eq i64 %i.dg, 262
  br i1 %.not151, label %bb.bh, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.di = icmp eq i64 %i.dg, 263
  %i.dj = add i64 %i.dg, -259
  %i.dk = icmp ult i64 %i.dj, 3
  %i.dl = select i1 %i.dk, i64 309, i64 317
  %i.dm = select i1 %i.di, i64 312, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11
  %i.dp = icmp eq i64 %i.do, 282
  %spec.select = select i1 %i.dp, ptr %i.de, ptr null
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dr = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.dq, i64 noundef 8, i64 noundef 64) #22 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %i.dm, ptr %i.ds, align 8, !tbaa !11
  store i64 262, ptr %i.dr, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i8 0, ptr %i.dt, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.de, ptr %i.du, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %spec.select, ptr %i.dv, align 8, !tbaa !14
  store ptr %i.dr, ptr %i.df, align 8, !tbaa !30
  br label %bb.bh

bb.at:                                            ; preds = %bb.aq, %bb.aq
  %i.dw = add i64 %i.dg, -259
  %or.cond = icmp ult i64 %i.dw, 3
  br i1 %or.cond, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.dy = icmp eq i64 %i.dg, 263
  %i.dz = icmp eq i64 %i.dg, 262
  %i.ea = select i1 %i.dz, i64 307, i64 318
  %i.eb = select i1 %i.dy, i64 313, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11
  %i.ee = icmp eq i64 %i.ed, 282
  %i.ef = select i1 %i.ee, ptr %i.de, ptr null
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.eh = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.eg, i64 noundef 8, i64 noundef 64) #22 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.eb, ptr %i.ei, align 8, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i8 0, ptr %i.ej, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %i.de, ptr %i.ek, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !14
  store ptr %i.eh, ptr %i.df, align 8, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.em = phi ptr [ %i.de, %bb.at ], [ %i.eh, %bb.au ]
  %i.en = zext nneg i32 %.2 to i64
  store i64 %i.en, ptr %i.em, align 8, !tbaa !12
  br label %bb.bh

bb.aw:                                            ; preds = %bb.aq
  %.not142 = icmp eq i64 %i.dg, 263
  br i1 %.not142, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11 ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 270
  br i1 %i.eq, label %bb.ay, label %._crit_edge290

._crit_edge290:                                   ; preds = %bb.ax
  %.pre291 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  br label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14
  %.not143 = icmp eq ptr %i.es, null
  %.pre292 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70 ; 3 uses
  br i1 %.not143, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.et = getelementptr inbounds nuw i8, ptr %.pre292, i64 136
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49 ; 2 uses
  %.not144 = icmp eq ptr %i.ew, null
  br i1 %.not144, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = tail call i32 %i.ew(ptr noundef nonnull %i.de, i64 noundef 263, i32 noundef 0) #22
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.105) #22
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14
  %i.fe = tail call ptr @gv_arena_strdup(ptr noundef nonnull %i.fa, ptr noundef %i.fd) #22
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !14
  br label %bb.bh

bb.bd:                                            ; preds = %._crit_edge290, %bb.az, %bb.ay
  %i.fh = phi ptr [ %.pre291, %._crit_edge290 ], [ %.pre292, %bb.az ], [ %.pre292, %bb.ay ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 136
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !49
  %.not145 = icmp eq ptr %i.fl, null
  br i1 %.not145, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  switch i64 %i.ep, label %bb.bf [
    i64 282, label %bb.bg
    i64 274, label %bb.bg
    i64 314, label %bb.bg
    i64 315, label %bb.bg
    i64 316, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be, %bb.bd
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.106) #22
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be, %bb.be
  %i.fm = icmp eq i64 %i.dg, 262
  %i.fn = add i64 %i.dg, -259
  %i.fo = icmp ult i64 %i.fn, 3
  %i.fp = select i1 %i.fo, i64 310, i64 319
  %i.fq = select i1 %i.fm, i64 308, i64 %i.fp
  %i.fr = icmp eq i64 %i.ep, 282
  %spec.select154 = select i1 %i.fr, ptr %i.de, ptr null
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  %i.ft = tail call ptr @gv_arena_alloc(ptr noundef nonnull %i.fs, i64 noundef 8, i64 noundef 64) #22 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.fq, ptr %i.fu, align 8, !tbaa !11
  store i64 263, ptr %i.ft, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i8 0, ptr %i.fv, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %i.de, ptr %i.fw, align 8, !tbaa !14
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store ptr %spec.select154, ptr %i.fx, align 8, !tbaa !14
  store ptr %i.ft, ptr %i.df, align 8, !tbaa !30
  br label %bb.bh

.unreachabledefault:                              ; preds = %bb.aq
  unreachable

bb.bh:                                            ; preds = %bb.aw, %bb.bf, %bb.bg, %bb.bb, %bb.bc, %bb.ar, %bb.as, %bb.av
  %i.fy = getelementptr inbounds nuw i8, ptr %.1114, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.q
  %.3116 = phi ptr [ %i.fz, %bb.bh ], [ %.0113, %bb.q ] ; 2 uses
  %.10 = phi ptr [ %.7, %bb.bh ], [ %.3, %bb.q ]  ; 3 uses
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 160 ; 3 uses
  %i.gd = getelementptr i8, ptr %i.ga, i64 191    ; 3 uses
  %.val.i = load i8, ptr %i.gd, align 1, !tbaa !14
  %.not.i155 = icmp eq i8 %.val.i, 31
  br i1 %.not.i155, label %agxbclear.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @agxbputc(ptr noundef nonnull %i.gc, i8 noundef signext 0)
  %.val.i5.pr.i = load i8, ptr %i.gd, align 1, !tbaa !14
  %.not.i6.i = icmp eq i8 %.val.i5.pr.i, -1
  br i1 %.not.i6.i, label %bb.bk, label %agxbclear.exit.i

agxbclear.exit.i:                                 ; preds = %bb.bj, %bb.bi
  store i8 0, ptr %i.gd, align 1, !tbaa !14
  br label %agxbuse.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  store i64 0, ptr %i.ge, align 8, !tbaa !14
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !14
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.i, %bb.bk
  %i.gg = phi ptr [ %i.gf, %bb.bk ], [ %i.gc, %agxbclear.exit.i ]
  %i.gh = tail call ptr @gv_arena_strdup(ptr noundef nonnull %i.gb, ptr noundef %i.gg) #22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !138
  %i.gj = load i8, ptr %.10, align 1, !tbaa !14
  %.not152 = icmp eq i8 %i.gj, 0
  br i1 %.not152, label %bb.bl, label %._crit_edge

bb.bl:                                            ; preds = %agxbuse.exit
  %.not153 = icmp eq ptr %.3116, null
  br i1 %.not153, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @exerror(ptr noundef nonnull @.str.107) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.ap, %bb.am, %bb.ai, %bb.w, %bb.u, %bb.s
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @expr, i64 88), align 8, !tbaa !70 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 191    ; 2 uses
  %.val.i156 = load i8, ptr %i.gl, align 1, !tbaa !14
  %.not.i157 = icmp eq i8 %.val.i156, -1
  br i1 %.not.i157, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 0, ptr %i.gl, align 1, !tbaa !14
  br label %agxbclear.exit

bb.bp:                                            ; preds = %bb.bn
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 168
  store i64 0, ptr %i.gm, align 8, !tbaa !14
  br label %agxbclear.exit

agxbclear.exit:                                   ; preds = %bb.bp, %bb.bo, %bb.e
  %.0117 = phi ptr [ %i.i, %bb.e ], [ %.1, %bb.bo ], [ %.1, %bb.bp ]
  ret ptr %.0117
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @makeVar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %.not32 = icmp eq ptr %i.a, null
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  store ptr %i.e, ptr %i.b, align 8, !tbaa !83
  br label %bb.e
end_hunk_1
