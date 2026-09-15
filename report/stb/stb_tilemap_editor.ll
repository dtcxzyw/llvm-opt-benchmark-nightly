Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__brush:bb.a
  %.not42 = icmp eq i32 %i.an, 0
  br i1 %.not42, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !119
  switch i32 %i.ap, label %.loopexit49 [
    i32 2, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !35
  %.not43 = icmp eq i16 %i.ar, -1
  br i1 %.not43, label %.loopexit49, label %bb.o

.loopexit49:                                      ; preds = %bb.l, %bb.m, %bb.i, %bb.g, %bb.f, %bb.c
  %.045.lcssa = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.ad, %bb.i ], [ %i.ad, %bb.m ], [ %i.ad, %bb.l ] ; 2 uses
  %i.as = zext nneg i32 %.045.lcssa to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.as ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %stbte__undo_record.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit49
  %i.av = load i16, ptr %i.at, align 2, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !77 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 4 uses
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  store i16 %i.av, ptr %i.bb, align 2, !tbaa !35
  %i.bc = add nsw i32 %i.ax, 1
  %i.bd = and i32 %i.bc, 8388607
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !78 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 8388606
  %i.bh = zext i1 %i.bg to i32
  %i.bi = add nsw i32 %i.bf, %i.bh                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !79 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %.neg.i.i = sext i1 %i.bl to i32
  %i.bm = add i32 %i.bk, %.neg.i.i                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.bo = trunc i32 %1 to i16
  %i.bp = zext nneg i32 %i.bd to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bp
  store i16 %i.bo, ptr %i.bq, align 2, !tbaa !35
  %i.br = add i32 %i.ax, 2
  %i.bs = and i32 %i.br, 8388607
  %i.bt = icmp slt i32 %i.bi, 8388606
  %i.bu = zext i1 %i.bt to i32
  %i.bv = add nsw i32 %i.bi, %i.bu                ; 2 uses
  %i.bw = icmp sgt i32 %i.bm, 0
  %.neg.i7.i = sext i1 %i.bw to i32
  %i.bx = add i32 %i.bm, %.neg.i7.i               ; 2 uses
  %i.by = trunc i32 %2 to i16
  %i.bz = zext nneg i32 %i.bs to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bz
  store i16 %i.by, ptr %i.ca, align 2, !tbaa !35
  %i.cb = add i32 %i.ax, 3
  %i.cc = and i32 %i.cb, 8388607
  %i.cd = icmp slt i32 %i.bv, 8388606
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.bv, %i.ce                ; 2 uses
  %i.cg = icmp sgt i32 %i.bx, 0
  %.neg.i8.i = sext i1 %i.cg to i32
  %i.ch = add i32 %i.bx, %.neg.i8.i               ; 2 uses
  %i.ci = trunc i32 %.045.lcssa to i16
  %i.cj = zext nneg i32 %i.cc to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !35
  %i.cl = add i32 %i.ax, 4
  %i.cm = and i32 %i.cl, 8388607
  store i32 %i.cm, ptr %i.aw, align 4, !tbaa !77
  %i.cn = icmp slt i32 %i.cf, 8388606
  %i.co = zext i1 %i.cn to i32
  %i.cp = add nsw i32 %i.cf, %i.co
  store i32 %i.cp, ptr %i.be, align 8, !tbaa !78
  %i.cq = icmp sgt i32 %i.ch, 0
  %.neg.i9.i = sext i1 %i.cq to i32
  %i.cr = add i32 %i.ch, %.neg.i9.i
  store i32 %i.cr, ptr %i.bj, align 4, !tbaa !79
  store i8 0, ptr %i.bn, align 4, !tbaa !51
  br label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %.loopexit49, %bb.n
  %i.cs = load i16, ptr %i.g, align 8, !tbaa !66
  store i16 %i.cs, ptr %i.at, align 2, !tbaa !35
  br label %.loopexit

bb.o:                                             ; preds = %bb.l, %bb.j, %bb.m, %bb.k, %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !167

.loopexit:                                        ; preds = %bb.o, %bb.h, %bb.b, %bb.a, %stbte__undo_record.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 3) i32 @stbte__erase_predict(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800040
  %i.b = load i32, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = icmp eq i32 %2, -1
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116  ; 2 uses
  %i.n = icmp slt i32 %i.m, 0                     ; 2 uses
  %spec.select = select i1 %i.n, i32 %i.k, i32 %i.m ; 3 uses
  %i.o = icmp sgt i32 %spec.select, -1
  br i1 %i.o, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %spec.select, 0              ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.r = load i16, ptr %i.q, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = phi i16 [ %i.r, %bb.f ], [ -1, %bb.e ]   ; 3 uses
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.u = zext nneg i32 %i.k to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !118
  %.not94 = icmp eq i32 %i.x, 0
  br i1 %.not94, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !119
  %.not95 = icmp eq i32 %i.z, 0
  br i1 %.not95, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.aa = zext nneg i32 %spec.select to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !35 ; 3 uses
  %i.ad = icmp eq i16 %i.ac, %i.s
  br i1 %i.ad, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not96 = icmp eq ptr %i.h, null
  br i1 %.not96, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i16, ptr %i.h, align 8, !tbaa !66
  %i.af = icmp eq i16 %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !52
  %.not98 = icmp eq i16 %i.ac, %i.ah
  br i1 %.not98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i16 %i.s, ptr %i.ab, align 2, !tbaa !35
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ai = icmp eq i32 %2, 1
  br i1 %i.ai, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  store i16 %i.s, ptr %i.ab, align 2, !tbaa !35
  br label %.loopexit

bb.r:                                             ; preds = %bb.d
  %i.aj = icmp ne ptr %i.h, null
  %i.ak = icmp ne i32 %2, 2                       ; 2 uses
  %or.cond = and i1 %i.ak, %i.aj
  br i1 %or.cond, label %bb.s, label %.loopexit101

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.am = load i32, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %bb.s
  %i.ao = load i16, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.aq = zext nneg i32 %i.am to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !35
  %.not91 = icmp eq i16 %i.as, %i.ao
  br i1 %.not91, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv.next ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !119
  %.not92 = icmp eq i32 %i.av, 0
  br i1 %.not92, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !118
  %.not93 = icmp eq i32 %i.ax, 0
  br i1 %.not93, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.az = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.az, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bc = icmp eq i16 %i.ao, %i.bb
  br i1 %i.bc, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w
  %i.bd = phi i16 [ -1, %bb.w ], [ %i.bb, %bb.x ]
  store i16 %i.bd, ptr %i.ay, align 2, !tbaa !35
  br label %.loopexit

bb.y:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.be = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.be, label %bb.t, label %.loopexit101, !llvm.loop !168

.loopexit101:                                     ; preds = %bb.y, %bb.s, %bb.r
  %i.bf = add i32 %2, -3
  %or.cond3 = icmp ult i32 %i.bf, -2
  br i1 %or.cond3, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.loopexit101
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !41 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph109, label %._crit_edge

.lr.ph109:                                        ; preds = %bb.z
  %.2107 = add nsw i32 %i.bh, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 801056 ; 2 uses
  %i.bl = zext nneg i32 %.2107 to i64             ; 2 uses
  br i1 %i.ak, label %.lr.ph109.split.us, label %.lr.ph109.split

.lr.ph109.split.us:                               ; preds = %.lr.ph109, %bb.ae
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %bb.ae ], [ %i.bl, %.lr.ph109 ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv130
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !35 ; 2 uses
  %i.bo = icmp slt i16 %i.bn, 0
  br i1 %i.bo, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph109.split.us
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv130 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !119
  %.not.us = icmp eq i32 %i.br, 0
  br i1 %.not.us, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !118
  %.not90.us = icmp eq i32 %i.bt, 0
  br i1 %.not90.us, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv130
  %i.bv = icmp eq i64 %indvars.iv130, 0
  br i1 %i.bv, label %bb.ad, label %.critedge100.us

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load i16, ptr %i.bk, align 8, !tbaa !52 ; 2 uses
  %i.bx = icmp eq i16 %i.bn, %i.bw
  br i1 %i.bx, label %.loopexit, label %.critedge100.us

.critedge100.us:                                  ; preds = %bb.ad, %bb.ac
  %i.by = phi i16 [ -1, %bb.ac ], [ %i.bw, %bb.ad ]
  store i16 %i.by, ptr %i.bu, align 2, !tbaa !35
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph109.split.us
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %i.bz = icmp sgt i64 %indvars.iv130, 0
  br i1 %i.bz, label %.lr.ph109.split.us, label %._crit_edge, !llvm.loop !169

.lr.ph109.split:                                  ; preds = %.lr.ph109, %bb.aj
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.aj ], [ %i.bl, %.lr.ph109 ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv127 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35 ; 2 uses
  %i.cc = icmp slt i16 %i.cb, 0
  br i1 %i.cc, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %.lr.ph109.split
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv127 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !119
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !118
  %.not90 = icmp eq i32 %i.ch, 0
  br i1 %.not90, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ci = icmp eq i64 %indvars.iv127, 0
  br i1 %i.ci, label %bb.ai, label %.critedge100

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i16, ptr %i.bk, align 8, !tbaa !52 ; 2 uses
  %i.ck = icmp eq i16 %i.cb, %i.cj
  br i1 %i.ck, label %.loopexit, label %.critedge100

.critedge100:                                     ; preds = %bb.ai, %bb.ah
  %i.cl = phi i16 [ -1, %bb.ah ], [ %i.cj, %bb.ai ]
  store i16 %i.cl, ptr %i.ca, align 2, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge100, %bb.af, %bb.ag, %.lr.ph109.split
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, -1
  %i.cm = icmp sgt i64 %indvars.iv127, 0
  br i1 %i.cm, label %.lr.ph109.split, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.aj, %bb.ae, %bb.z
  %3 = icmp eq i32 %2, 2
  %. = select i1 %3, i32 2, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.critedge100.us, %bb.ad, %._crit_edge, %.loopexit101, %bb.x, %bb.o, %bb.q, %bb.h, %bb.i, %bb.j, %bb.p, %bb.c, %.critedge
  %.179 = phi i32 [ 0, %bb.o ], [ -1, %bb.c ], [ -1, %bb.p ], [ 0, %.critedge ], [ -1, %bb.x ], [ -1, %.loopexit101 ], [ 1, %bb.q ], [ %., %._crit_edge ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.i ], [ 1, %.critedge100.us ], [ -1, %bb.ad ], [ -1, %bb.ai ]
  ret i32 %.179
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 3) i32 @stbte__erase(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800040
  %i.b = load i32, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = icmp eq i32 %3, -1
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116  ; 2 uses
  %i.n = icmp slt i32 %i.m, 0                     ; 2 uses
  %spec.select = select i1 %i.n, i32 %i.k, i32 %i.m ; 5 uses
  %i.o = icmp sgt i32 %spec.select, -1
  br i1 %i.o, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %spec.select, 0              ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.r = load i16, ptr %i.q, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = phi i16 [ %i.r, %bb.f ], [ -1, %bb.e ]   ; 3 uses
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.u = zext nneg i32 %i.k to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !118
  %.not151 = icmp eq i32 %i.x, 0
  br i1 %.not151, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !119
  %.not152 = icmp eq i32 %i.z, 0
  br i1 %.not152, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.aa = sext i32 %2 to i64
  %i.ab = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.aa
  %i.ac = sext i32 %1 to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = zext nneg i32 %spec.select to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !35 ; 6 uses
  %i.ah = icmp eq i16 %i.ag, %i.s
  br i1 %i.ah, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not153 = icmp eq ptr %i.h, null
  br i1 %.not153, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i16, ptr %i.h, align 8, !tbaa !66
  %i.aj = icmp eq i16 %i.ag, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.p, label %bb.o, label %.split

.split:                                           ; preds = %bb.m
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %stbte__undo_record.exit, label %bb.n

bb.n:                                             ; preds = %.split
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40 ; 4 uses
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  store i16 %i.ag, ptr %i.aq, align 2, !tbaa !35
  %i.ar = add nsw i32 %i.am, 1
  %i.as = and i32 %i.ar, 8388607
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.av = icmp slt i32 %i.au, 8388606
  %i.aw = zext i1 %i.av to i32
  %i.ax = add nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !79 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %.neg.i.i = sext i1 %i.ba to i32
  %i.bb = add i32 %i.az, %.neg.i.i                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.bd = trunc i32 %1 to i16
  %i.be = zext nneg i32 %i.as to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.be
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !35
  %i.bg = add i32 %i.am, 2
  %i.bh = and i32 %i.bg, 8388607
  %i.bi = icmp slt i32 %i.ax, 8388606
  %i.bj = zext i1 %i.bi to i32
  %i.bk = add nsw i32 %i.ax, %i.bj                ; 2 uses
  %i.bl = icmp sgt i32 %i.bb, 0
  %.neg.i7.i = sext i1 %i.bl to i32
  %i.bm = add i32 %i.bb, %.neg.i7.i               ; 2 uses
  %i.bn = trunc i32 %2 to i16
  %i.bo = zext nneg i32 %i.bh to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.bo
  store i16 %i.bn, ptr %i.bp, align 2, !tbaa !35
  %i.bq = add i32 %i.am, 3
  %i.br = and i32 %i.bq, 8388607
  %i.bs = icmp slt i32 %i.bk, 8388606
  %i.bt = zext i1 %i.bs to i32
  %i.bu = add nsw i32 %i.bk, %i.bt                ; 2 uses
  %i.bv = icmp sgt i32 %i.bm, 0
  %.neg.i8.i = sext i1 %i.bv to i32
  %i.bw = add i32 %i.bm, %.neg.i8.i               ; 2 uses
  %i.bx = trunc i32 %spec.select to i16
  %i.by = zext nneg i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.by
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !35
  %i.ca = add i32 %i.am, 4
  %i.cb = and i32 %i.ca, 8388607
  store i32 %i.cb, ptr %i.al, align 4, !tbaa !77
  %i.cc = icmp slt i32 %i.bu, 8388606
  %i.cd = zext i1 %i.cc to i32
  %i.ce = add nsw i32 %i.bu, %i.cd
  store i32 %i.ce, ptr %i.at, align 8, !tbaa !78
  %i.cf = icmp sgt i32 %i.bw, 0
  %.neg.i9.i = sext i1 %i.cf to i32
  %i.cg = add i32 %i.bw, %.neg.i9.i
  store i32 %i.cg, ptr %i.ay, align 4, !tbaa !79
  store i8 0, ptr %i.bc, align 4, !tbaa !51
  br label %stbte__undo_record.exit

bb.o:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !52
  %.not155 = icmp eq i16 %i.ag, %i.ci
  br i1 %.not155, label %bb.p, label %.split132

.split132:                                        ; preds = %bb.o
  %i.cj = sext i16 %i.ag to i32
  tail call void @stbte__undo_record(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %i.cj)
  br label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %bb.n, %.split, %.split132
  store i16 %i.s, ptr %i.af, align 2, !tbaa !35
  br label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.k
  %i.ck = icmp eq i32 %3, 1
  br i1 %i.ck, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i156 = icmp eq i32 %i.cl, 0
  br i1 %.not.i156, label %stbte__undo_record.exit161, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40 ; 4 uses
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  store i16 %i.ag, ptr %i.cr, align 2, !tbaa !35
  %i.cs = add nsw i32 %i.cn, 1
  %i.ct = and i32 %i.cs, 8388607
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 8388606
  %i.cx = zext i1 %i.cw to i32
  %i.cy = add nsw i32 %i.cv, %i.cx                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !79 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  %.neg.i.i157 = sext i1 %i.db to i32
  %i.dc = add i32 %i.da, %.neg.i.i157             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.de = trunc i32 %1 to i16
  %i.df = zext nneg i32 %i.ct to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.df
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !35
  %i.dh = add i32 %i.cn, 2
  %i.di = and i32 %i.dh, 8388607
  %i.dj = icmp slt i32 %i.cy, 8388606
  %i.dk = zext i1 %i.dj to i32
  %i.dl = add nsw i32 %i.cy, %i.dk                ; 2 uses
  %i.dm = icmp sgt i32 %i.dc, 0
  %.neg.i7.i158 = sext i1 %i.dm to i32
  %i.dn = add i32 %i.dc, %.neg.i7.i158            ; 2 uses
  %i.do = trunc i32 %2 to i16
  %i.dp = zext nneg i32 %i.di to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dp
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !35
  %i.dr = add i32 %i.cn, 3
  %i.ds = and i32 %i.dr, 8388607
  %i.dt = icmp slt i32 %i.dl, 8388606
  %i.du = zext i1 %i.dt to i32
  %i.dv = add nsw i32 %i.dl, %i.du                ; 2 uses
  %i.dw = icmp sgt i32 %i.dn, 0
  %.neg.i8.i159 = sext i1 %i.dw to i32
  %i.dx = add i32 %i.dn, %.neg.i8.i159            ; 2 uses
  %i.dy = trunc i32 %spec.select to i16
  %i.dz = zext nneg i32 %i.ds to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dz
  store i16 %i.dy, ptr %i.ea, align 2, !tbaa !35
  %i.eb = add i32 %i.cn, 4
  %i.ec = and i32 %i.eb, 8388607
  store i32 %i.ec, ptr %i.cm, align 4, !tbaa !77
  %i.ed = icmp slt i32 %i.dv, 8388606
  %i.ee = zext i1 %i.ed to i32
  %i.ef = add nsw i32 %i.dv, %i.ee
  store i32 %i.ef, ptr %i.cu, align 8, !tbaa !78
  %i.eg = icmp sgt i32 %i.dx, 0
  %.neg.i9.i160 = sext i1 %i.eg to i32
  %i.eh = add i32 %i.dx, %.neg.i9.i160
  store i32 %i.eh, ptr %i.cz, align 4, !tbaa !79
  store i8 0, ptr %i.dd, align 4, !tbaa !51
  br label %stbte__undo_record.exit161

stbte__undo_record.exit161:                       ; preds = %bb.q, %bb.r
  store i16 %i.s, ptr %i.af, align 2, !tbaa !35
  br label %.loopexit

bb.s:                                             ; preds = %bb.d
  %i.ei = icmp ne ptr %i.h, null
  %i.ej = icmp ne i32 %3, 2                       ; 2 uses
  %or.cond = and i1 %i.ej, %i.ei
  br i1 %or.cond, label %bb.t, label %.loopexit174

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !41 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %.loopexit174

.lr.ph:                                           ; preds = %bb.t
  %i.en = sext i32 %2 to i64
  %i.eo = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.en
  %i.ep = sext i32 %1 to i64
  %i.eq = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  %i.er = load i16, ptr %i.h, align 8, !tbaa !66  ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.et = zext nneg i32 %i.el to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ %i.et, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.next
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !35
  %.not148 = icmp eq i16 %i.ev, %i.er
  br i1 %.not148, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.next ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !119
  %.not149 = icmp eq i32 %i.ey, 0
  br i1 %.not149, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !118
  %.not150 = icmp eq i32 %i.fa, 0
  br i1 %.not150, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.next
  %i.fc = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 801056 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 8, !tbaa !52
  %i.ff = icmp eq i16 %i.er, %i.fe
  br i1 %i.ff, label %.loopexit, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fg = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fh = sext i16 %i.er to i32
  tail call void @stbte__undo_record(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.fg, i32 noundef %i.fh)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fi = sext i16 %i.er to i32
  tail call void @stbte__undo_record(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %i.fi)
  %i.fj = load i16, ptr %i.fd, align 8, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.fk = phi i16 [ %i.fj, %bb.aa ], [ -1, %bb.z ]
  store i16 %i.fk, ptr %i.fb, align 2, !tbaa !35
  br label %.loopexit

bb.ac:                                            ; preds = %bb.v, %bb.w, %bb.u
  %i.fl = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.fl, label %bb.u, label %.loopexit174, !llvm.loop !170

.loopexit174:                                     ; preds = %bb.ac, %bb.t, %bb.s
  %i.fm = add i32 %3, -3
  %or.cond3 = icmp ult i32 %i.fm, -2
  br i1 %or.cond3, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit174
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !41 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph183, label %._crit_edge

.lr.ph183:                                        ; preds = %bb.ad
  %i.fq = sext i32 %2 to i64
  %i.fr = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.fq
  %i.fs = sext i32 %1 to i64
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.not.i162 = icmp eq i32 %i.fv, 0               ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 805160 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 2 uses
  %i.gb = trunc i32 %1 to i16                     ; 2 uses
  %i.gc = trunc i32 %2 to i16                     ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 801056 ; 2 uses
  %i.ge = zext nneg i32 %i.fo to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph183, %bb.al
  %indvars.iv189 = phi i64 [ %i.ge, %.lr.ph183 ], [ %indvars.iv.next190, %bb.al ] ; 2 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, -1 ; 5 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next190 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !35 ; 4 uses
  %i.gh = icmp slt i16 %i.gg, 0
  br i1 %i.gh, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %indvars.iv.next190 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !119
  %.not = icmp eq i32 %i.gk, 0
  br i1 %.not, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !118
  %.not147 = icmp eq i32 %i.gm, 0
  br i1 %.not147, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.gn = icmp eq i64 %indvars.iv.next190, 0
  br i1 %i.gn, label %bb.aj, label %.split135

.split135:                                        ; preds = %bb.ah
  br i1 %.not.i162, label %stbte__undo_record.exit167, label %bb.ai

bb.ai:                                            ; preds = %.split135
  %i.go = load i32, ptr %i.fw, align 4, !tbaa !77 ; 5 uses
  %i.gp = load ptr, ptr %i.fx, align 8, !tbaa !40 ; 4 uses
  %i.gq = sext i32 %i.go to i64
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.gq
  store i16 %i.gg, ptr %i.gr, align 2, !tbaa !35
  %i.gs = add nsw i32 %i.go, 1
  %i.gt = and i32 %i.gs, 8388607
  %i.gu = load i32, ptr %i.fy, align 8, !tbaa !78 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 8388606
  %i.gw = zext i1 %i.gv to i32
  %i.gx = add nsw i32 %i.gu, %i.gw                ; 2 uses
  %i.gy = load i32, ptr %i.fz, align 4, !tbaa !79 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  %.neg.i.i163 = sext i1 %i.gz to i32
  %i.ha = add i32 %i.gy, %.neg.i.i163             ; 2 uses
  %i.hb = zext nneg i32 %i.gt to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.hb
  store i16 %i.gb, ptr %i.hc, align 2, !tbaa !35
  %i.hd = add i32 %i.go, 2
  %i.he = and i32 %i.hd, 8388607
  %i.hf = icmp slt i32 %i.gx, 8388606
  %i.hg = zext i1 %i.hf to i32
  %i.hh = add nsw i32 %i.gx, %i.hg                ; 2 uses
  %i.hi = icmp sgt i32 %i.ha, 0
  %.neg.i7.i164 = sext i1 %i.hi to i32
  %i.hj = add i32 %i.ha, %.neg.i7.i164            ; 2 uses
  %i.hk = zext nneg i32 %i.he to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.hk
  store i16 %i.gc, ptr %i.hl, align 2, !tbaa !35
  %i.hm = add i32 %i.go, 3
  %i.hn = and i32 %i.hm, 8388607
  %i.ho = icmp slt i32 %i.hh, 8388606
  %i.hp = zext i1 %i.ho to i32
  %i.hq = add nsw i32 %i.hh, %i.hp                ; 2 uses
  %i.hr = icmp sgt i32 %i.hj, 0
  %.neg.i8.i165 = sext i1 %i.hr to i32
  %i.hs = add i32 %i.hj, %.neg.i8.i165            ; 2 uses
  %i.ht = trunc i64 %indvars.iv.next190 to i16
  %i.hu = zext nneg i32 %i.hn to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.hu
  store i16 %i.ht, ptr %i.hv, align 2, !tbaa !35
  %i.hw = add i32 %i.go, 4
  %i.hx = and i32 %i.hw, 8388607
  store i32 %i.hx, ptr %i.fw, align 4, !tbaa !77
  %i.hy = icmp slt i32 %i.hq, 8388606
  %i.hz = zext i1 %i.hy to i32
  %i.ia = add nsw i32 %i.hq, %i.hz
  store i32 %i.ia, ptr %i.fy, align 8, !tbaa !78
  %i.ib = icmp sgt i32 %i.hs, 0
  %.neg.i9.i166 = sext i1 %i.ib to i32
  %i.ic = add i32 %i.hs, %.neg.i9.i166
  store i32 %i.ic, ptr %i.fz, align 4, !tbaa !79
  store i8 0, ptr %i.ga, align 4, !tbaa !51
  br label %stbte__undo_record.exit167

bb.aj:                                            ; preds = %bb.ah
  %i.id = load i16, ptr %i.gd, align 8, !tbaa !52 ; 2 uses
  %i.ie = icmp eq i16 %i.gg, %i.id
  br i1 %i.ie, label %.loopexit, label %.split136

.split136:                                        ; preds = %bb.aj
  br i1 %.not.i162, label %stbte__undo_record.exit167, label %bb.ak

bb.ak:                                            ; preds = %.split136
  %i.if = load i32, ptr %i.fw, align 4, !tbaa !77 ; 5 uses
  %i.ig = load ptr, ptr %i.fx, align 8, !tbaa !40 ; 4 uses
  %i.ih = sext i32 %i.if to i64
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.ih
  store i16 %i.gg, ptr %i.ii, align 2, !tbaa !35
  %i.ij = add nsw i32 %i.if, 1
  %i.ik = and i32 %i.ij, 8388607
  %i.il = load i32, ptr %i.fy, align 8, !tbaa !78 ; 2 uses
  %i.im = icmp slt i32 %i.il, 8388606
  %i.in = zext i1 %i.im to i32
  %i.io = add nsw i32 %i.il, %i.in                ; 2 uses
  %i.ip = load i32, ptr %i.fz, align 4, !tbaa !79 ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  %.neg.i.i169 = sext i1 %i.iq to i32
  %i.ir = add i32 %i.ip, %.neg.i.i169             ; 2 uses
  %i.is = zext nneg i32 %i.ik to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.is
  store i16 %i.gb, ptr %i.it, align 2, !tbaa !35
  %i.iu = add i32 %i.if, 2
  %i.iv = and i32 %i.iu, 8388607
  %i.iw = icmp slt i32 %i.io, 8388606
  %i.ix = zext i1 %i.iw to i32
  %i.iy = add nsw i32 %i.io, %i.ix                ; 2 uses
  %i.iz = icmp sgt i32 %i.ir, 0
  %.neg.i7.i170 = sext i1 %i.iz to i32
  %i.ja = add i32 %i.ir, %.neg.i7.i170            ; 2 uses
  %i.jb = zext nneg i32 %i.iv to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.jb
  store i16 %i.gc, ptr %i.jc, align 2, !tbaa !35
  %i.jd = add i32 %i.if, 3
  %i.je = and i32 %i.jd, 8388607
  %i.jf = icmp slt i32 %i.iy, 8388606
  %i.jg = zext i1 %i.jf to i32
  %i.jh = add nsw i32 %i.iy, %i.jg                ; 2 uses
  %i.ji = icmp sgt i32 %i.ja, 0
  %.neg.i8.i171 = sext i1 %i.ji to i32
  %i.jj = add i32 %i.ja, %.neg.i8.i171            ; 2 uses
  %i.jk = zext nneg i32 %i.je to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %i.jk
  store i16 0, ptr %i.jl, align 2, !tbaa !35
  %i.jm = add i32 %i.if, 4
  %i.jn = and i32 %i.jm, 8388607
  store i32 %i.jn, ptr %i.fw, align 4, !tbaa !77
  %i.jo = icmp slt i32 %i.jh, 8388606
  %i.jp = zext i1 %i.jo to i32
  %i.jq = add nsw i32 %i.jh, %i.jp
  store i32 %i.jq, ptr %i.fy, align 8, !tbaa !78
  %i.jr = icmp sgt i32 %i.jj, 0
  %.neg.i9.i172 = sext i1 %i.jr to i32
  %i.js = add i32 %i.jj, %.neg.i9.i172
  store i32 %i.js, ptr %i.fz, align 4, !tbaa !79
  store i8 0, ptr %i.ga, align 4, !tbaa !51
  %.pre = load i16, ptr %i.gd, align 8, !tbaa !52
  br label %stbte__undo_record.exit167

stbte__undo_record.exit167:                       ; preds = %.split136, %bb.ak, %.split135, %bb.ai
  %i.jt = phi i16 [ -1, %.split135 ], [ -1, %bb.ai ], [ %.pre, %bb.ak ], [ %i.id, %.split136 ]
  store i16 %i.jt, ptr %i.gf, align 2, !tbaa !35
  br i1 %i.ej, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %stbte__undo_record.exit167, %bb.af, %bb.ag, %bb.ae
  %i.ju = icmp samesign ugt i64 %indvars.iv189, 1
  br i1 %i.ju, label %bb.ae, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.al, %bb.ad
  %4 = icmp eq i32 %3, 2
  %. = select i1 %4, i32 2, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %stbte__undo_record.exit167, %bb.aj, %._crit_edge, %.loopexit174, %bb.y, %stbte__undo_record.exit, %stbte__undo_record.exit161, %bb.h, %bb.i, %bb.j, %bb.p, %bb.c, %bb.ab
  %.1131 = phi i32 [ 0, %stbte__undo_record.exit ], [ -1, %bb.c ], [ -1, %bb.p ], [ 0, %bb.ab ], [ -1, %bb.y ], [ -1, %.loopexit174 ], [ 1, %stbte__undo_record.exit161 ], [ %., %._crit_edge ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.aj ], [ 1, %stbte__undo_record.exit167 ]
  ret i32 %.1131
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @stbte__find_tile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800864
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i16, ptr %i.f, align 8, !tbaa !66
  %i.h = sext i16 %i.g to i32
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %.loopexit.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  store float 3.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !114
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.07 = phi i32 [ -1, %._crit_edge ], [ %i.j, %.loopexit.loopexit ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__eyedrop(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5200), align 8, !tbaa !173
  %.not = icmp eq i32 %i.a, %1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5204), align 4
  %.not41 = icmp eq i32 %i.b, %2
  %or.cond = select i1 %.not, i1 %.not41, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5200), align 8, !tbaa !173
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5204), align 4, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5208), align 8, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.h = load i32, ptr %i.g, align 8, !tbaa !116  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %spec.select = select i1 %i.i, i32 %i.f, i32 %i.h ; 2 uses
  %i.j = icmp sgt i32 %spec.select, -1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.k
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !35   ; 2 uses
  %i.r = icmp eq i16 %i.q, -1
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800864
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i16, ptr %i.x, align 8, !tbaa !66
  %i.z = icmp eq i16 %i.q, %i.y
  br i1 %i.z, label %.loopexit.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  store float 3.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !114
  br label %.loopexit.sink.split

.loopexit.loopexit.i:                             ; preds = %bb.f
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5208), align 8, !tbaa !121
  %i.af = sext i32 %2 to i64
  %i.ag = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.af
  %i.ah = sext i32 %1 to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.056 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.n ]
  %.155 = phi i32 [ %i.ae, %.lr.ph ], [ %.2, %bb.n ] ; 2 uses
  %i.aj = icmp slt i32 %.155, 1
  %spec.select43 = select i1 %i.aj, i32 %i.ac, i32 %.155
  %.2 = add nsw i32 %spec.select43, -1            ; 3 uses
  %i.ak = sext i32 %.2 to i64                     ; 2 uses
  %i.al = getelementptr [16 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 800908
  %i.an = load i32, ptr %i.am, align 4, !tbaa !118
  %.not42 = icmp eq i32 %i.an, 0
  br i1 %.not42, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ak
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !35 ; 2 uses
  %i.aq = icmp eq i16 %i.ap, -1
  br i1 %i.aq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5208), align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 800864
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !58 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i46, label %._crit_edge.i44

.lr.ph.i46:                                       ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %wide.trip.count.i47 = zext nneg i32 %i.as to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i46
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i49, %bb.m ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv.i48
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !66
  %i.ay = icmp eq i16 %i.ap, %i.ax
  br i1 %i.ay, label %.loopexit.loopexit.i51, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i47
  br i1 %exitcond.not.i50, label %._crit_edge.i44, label %bb.l, !llvm.loop !10

._crit_edge.i44:                                  ; preds = %bb.m, %bb.k
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  store float 3.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !114
  br label %.loopexit.sink.split

.loopexit.loopexit.i51:                           ; preds = %bb.l
  %i.az = trunc nuw nsw i64 %indvars.iv.i48 to i32
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ba = add nuw nsw i32 %.056, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.ac
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !172

.loopexit.sink.split:                             ; preds = %.loopexit.loopexit.i51, %._crit_edge.i44, %.loopexit.loopexit.i, %._crit_edge.i
  %.07.i45.sink = phi i32 [ %i.aa, %.loopexit.loopexit.i ], [ -1, %._crit_edge.i ], [ -1, %._crit_edge.i44 ], [ %i.az, %.loopexit.loopexit.i51 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 800040
  store i32 %.07.i45.sink, ptr %i.bb, align 8, !tbaa !115
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %bb.h, %bb.d
  ret void
end_hunk_0
