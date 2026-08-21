Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/xmlparse?download=true
inline.NumInlined: 238
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@getElementType:bb.a
  store ptr %i.aa, ptr %i.n, align 8
  %i.ab = call fastcc i32 @setElementTypePrefix(ptr noundef %0, ptr noundef %i.x)
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %poolStoreString.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %poolStoreString.exit.thread

poolStoreString.exit.thread:                      ; preds = %poolAppend.exit.thread.i, %bb.g, %poolAppend.exit.i, %bb.k, %bb.h, %poolStoreString.exit, %bb.l
  %.0 = phi ptr [ %i.x, %bb.l ], [ null, %bb.h ], [ null, %poolStoreString.exit ], [ null, %bb.k ], [ null, %poolAppend.exit.i ], [ null, %bb.g ], [ null, %poolAppend.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getAttributeId(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge105, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge105 ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.e, align 8
  store i8 0, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.m = load ptr, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not14.i.i = icmp eq i8 %i.n, 0
  br i1 %.not14.i.i, label %poolAppend.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = call i32 %i.p(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef %i.q) #22, !inline_history !20
  %or.cond.i.i = icmp ult i32 %i.r, 2
  br i1 %or.cond.i.i, label %poolAppend.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not15.i.i = icmp eq i8 %i.s, 0
  br i1 %.not15.i.i, label %poolAppend.exit.thread.i, label %bb.f

poolAppend.exit.thread.i:                         ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

poolAppend.exit.i:                                ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %poolAppend.exit.i
  %i.v = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %poolStoreString.exit

bb.i:                                             ; preds = %bb.h
  %i.y = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not10.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i, label %.critedge, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.e, align 8
  br label %poolStoreString.exit

poolStoreString.exit:                             ; preds = %bb.h, %._crit_edge.i
  %i.z = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.e, align 8
  store i8 0, ptr %i.z, align 1
  %i.ab = load ptr, ptr %i.t, align 8             ; 8 uses
  %.not81 = icmp eq ptr %i.ab, null
  br i1 %.not81, label %.critedge, label %bb.j

bb.j:                                             ; preds = %poolStoreString.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ae = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac, i64 noundef 24) ; 11 uses
  %.not82 = icmp eq ptr %i.ae, null
  br i1 %.not82, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.ae, align 8
  %.not83 = icmp eq ptr %i.af, %i.ac
  br i1 %.not83, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.t, align 8
  store ptr %i.ag, ptr %i.e, align 8
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.e, align 8             ; 2 uses
  store ptr %i.ah, ptr %i.t, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aj = load i8, ptr %i.ai, align 8
  %.not84 = icmp eq i8 %i.aj, 0
  br i1 %.not84, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.al = icmp eq i8 %i.ak, 120
  br i1 %i.al, label %bb.o, label %.preheader127

.preheader127:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  br label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 109
  br i1 %i.ao, label %bb.p, label %.preheader127

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 108
  br i1 %i.ar, label %bb.q, label %.preheader127

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 110
  br i1 %i.au, label %bb.r, label %.preheader127

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 115
  br i1 %i.ax, label %bb.s, label %.preheader127

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.az = load i8, ptr %i.ay, align 1
  switch i8 %i.az, label %.preheader127 [
    i8 0, label %bb.t
    i8 58, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.bd = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 16)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.bd, %bb.u ], [ %i.ba, %bb.t ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sink, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  store i8 1, ptr %i.bf, align 1
  br label %.critedge

bb.w:                                             ; preds = %.preheader127, %bb.ae
  %i.bg = phi i8 [ %.pre106, %bb.ae ], [ %i.ak, %.preheader127 ]
  %indvars.iv102 = phi i32 [ %indvars.iv.next103, %bb.ae ], [ 0, %.preheader127 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %.preheader127 ] ; 2 uses
  switch i8 %i.bg, label %bb.ae [
    i8 0, label %.critedge
    i8 58, label %.preheader
  ]

.preheader:                                       ; preds = %bb.w
  %.not95 = icmp eq i64 %indvars.iv, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv102 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv99 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next100, %bb.y ] ; 2 uses
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bk = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not88 = icmp eq i8 %i.bk, 0
  br i1 %.not88, label %.critedge, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.x
  %.pre108 = load ptr, ptr %i.e, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge107, %.lr.ph
  %i.bl = phi ptr [ %.pre108, %._crit_edge107 ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv99
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bo, ptr %i.e, align 8
  store i8 %i.bn, ptr %i.bl, align 1
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre109 = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bp = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ %i.ah, %.preheader ] ; 2 uses
  %i.bq = load ptr, ptr %i.g, align 8
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.bs = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not86 = icmp eq i8 %i.bs, 0
  br i1 %.not86, label %.critedge, label %._crit_edge110

._crit_edge110:                                   ; preds = %bb.z
  %.pre111 = load ptr, ptr %i.e, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge110, %._crit_edge
  %i.bt = phi ptr [ %.pre111, %._crit_edge110 ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.e, align 8
  store i8 0, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bw = load ptr, ptr %i.t, align 8
  %i.bx = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %i.bv, ptr noundef %i.bw, i64 noundef 16) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  %.not87 = icmp eq ptr %i.bx, null
  br i1 %.not87, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.bx, align 8
  %i.ca = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.e, align 8
  store ptr %i.cc, ptr %i.t, align 8
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.ca, ptr %i.e, align 8
  br label %.critedge

bb.ae:                                            ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next103 = add nuw i32 %indvars.iv102, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  %.pre106 = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.w

.critedge:                                        ; preds = %bb.w, %bb.x, %poolAppend.exit.thread.i, %bb.i, %poolAppend.exit.i, %bb.ad, %bb.ac, %bb.l, %bb.v, %bb.m, %bb.z, %bb.aa, %bb.j, %poolStoreString.exit, %bb.b
  %.3 = phi ptr [ null, %bb.z ], [ null, %bb.j ], [ null, %poolStoreString.exit ], [ null, %bb.b ], [ null, %poolAppend.exit.thread.i ], [ null, %bb.aa ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %i.ae, %bb.v ], [ %i.ae, %bb.ac ], [ %i.ae, %bb.ad ], [ null, %bb.x ], [ null, %poolAppend.exit.i ], [ null, %bb.i ], [ %i.ae, %bb.w ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @poolGrow(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %0, align 8
  %i.f = load ptr, ptr %i.b, align 8
  store ptr %i.f, ptr %i.a, align 8
  store ptr null, ptr %i.b, align 8
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.n, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.d to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %i.s, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = load ptr, ptr %0, align 8
  store ptr %i.y, ptr %i.b, align 8
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.z, ptr %0, align 8
  store ptr %i.x, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %i.ab, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %0, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.c, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %i.an
  store ptr %i.ao, ptr %i.ai, align 8
  store ptr %i.ah, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ar
  store ptr %i.as, ptr %i.o, align 8
  br label %.thread

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %.not113 = icmp ne ptr %i.at, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = icmp eq ptr %.pre, %i.au
  %or.cond = select i1 %.not113, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = shl i32 %i.bb, 1                        ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = icmp slt i32 %i.bc, 0
  br i1 %i.bh, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp eq i32 %i.bc, 0
  %narrow.i = add nuw i32 %i.bc, 12
  %narrow9.i = tail call i32 @llvm.smax.i32(i32 %narrow.i, i32 0) ; 2 uses
  %i.bj = icmp eq i32 %narrow9.i, 0
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %i.bk, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.1.i = zext nneg i32 %narrow9.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call ptr %i.bo(ptr noundef nonnull %i.at, i64 noundef %.1.i) #22 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bp, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %i.bc, ptr %i.br, align 8
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bg
  store ptr %i.bu, ptr %i.bd, align 8
  store ptr %i.bt, ptr %.phi.trans.insert, align 8
  %i.bv = zext nneg i32 %i.bc to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  store ptr %i.bw, ptr %i.aw, align 8
  br label %.thread

._crit_edge:                                      ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.by = ptrtoint ptr %i.ax to i64
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 3 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cd = icmp samesign ult i32 %i.cb, 1024
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = shl nuw i32 %i.cb, 1                    ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ 1024, %bb.k ], [ %i.ce, %bb.l ] ; 3 uses
  %narrow.i116 = add nuw i32 %.0, 12
  %narrow9.i117 = tail call i32 @llvm.smax.i32(i32 %narrow.i116, i32 0) ; 2 uses
  %i.cg = icmp eq i32 %narrow9.i117, 0
  br i1 %i.cg, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.1.i119 = zext nneg i32 %narrow9.i117 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call ptr %i.cj(i64 noundef %.1.i119) #22 ; 6 uses
  %.not114 = icmp eq ptr %i.ck, null
  br i1 %.not114, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %.0, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %0, align 8
  store ptr %i.cm, ptr %i.ck, align 8
  store ptr %i.ck, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = load ptr, ptr %i.bx, align 8            ; 3 uses
  %.not115 = icmp eq ptr %i.co, %i.cp
  br i1 %.not115, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 1 %i.cp, i64 %i.ct, i1 false)
  %.pre124 = load ptr, ptr %i.cn, align 8
  %.pre125 = load ptr, ptr %i.bx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cu = phi ptr [ %i.co, %bb.o ], [ %.pre125, %bb.p ]
end_hunk_0
begin_hunk_1_@storeAtts:bb.a
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = icmp eq ptr %i.de, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load i8, ptr %i.ed, align 8
  br label %.loopexit708

.loopexit708:                                     ; preds = %bb.z, %bb.y, %bb.ab
  %.1417 = phi i8 [ 1, %bb.y ], [ %i.ee, %bb.ab ], [ 1, %bb.z ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call fastcc i32 @appendAttributeValue(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %.1417, ptr noundef %i.eg, ptr noundef %i.ei, ptr noundef nonnull %i.cq, i32 noundef range(i32 0, 3) %5) ; 2 uses
  %.not.i577 = icmp eq i32 %i.ej, 0
  br i1 %.not.i577, label %bb.ac, label %.critedge566

bb.ac:                                            ; preds = %.loopexit708
  %.not19.i = icmp eq i8 %.1417, 0
  %i.ek = load ptr, ptr %i.cr, align 8            ; 5 uses
  br i1 %.not19.i, label %bb.ad, label %._crit_edge.i579

bb.ad:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr %i.cu, align 8
  %.not20.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not20.i, label %._crit_edge.i579, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -1 ; 3 uses
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 32
  br i1 %i.eo, label %bb.af, label %._crit_edge.i579

bb.af:                                            ; preds = %bb.ae
  store ptr %i.em, ptr %i.cr, align 8
  br label %._crit_edge.i579

._crit_edge.i579:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ep = phi ptr [ %i.ek, %bb.ad ], [ %i.em, %bb.af ], [ %i.ek, %bb.ae ], [ %i.ek, %bb.ac ] ; 2 uses
  %i.eq = load ptr, ptr %i.ct, align 8
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %._crit_edge.i579
  %i.es = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not21.i = icmp eq i8 %i.es, 0
  br i1 %.not21.i, label %.critedge566, label %._crit_edge22.i

._crit_edge22.i:                                  ; preds = %bb.ag
  %.pre23.i = load ptr, ptr %i.cr, align 8
  br label %.thread

.thread:                                          ; preds = %._crit_edge.i579, %._crit_edge22.i
  %i.et = phi ptr [ %.pre23.i, %._crit_edge22.i ], [ %i.ep, %._crit_edge.i579 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %i.cr, align 8
  store i8 0, ptr %i.et, align 1
  %i.ev = load ptr, ptr %i.cu, align 8
  %i.ew = sext i32 %i.dq to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ew
  store ptr %i.ev, ptr %i.ex, align 8
  br label %bb.an

bb.ah:                                            ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ez, ptr %i.a, align 8
  %i.fc = load ptr, ptr %i.cr, align 8
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.fd = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not14.i.i = icmp eq i8 %i.fd, 0
  br i1 %.not14.i.i, label %poolAppend.exit.thread.i, label %.preheader

.preheader:                                       ; preds = %bb.ai, %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %bb.ak
  %i.fe = load ptr, ptr %i.cs, align 8
  %i.ff = load ptr, ptr %i.ct, align 8
  %i.fg = call i32 %i.fe(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %i.fb, ptr noundef nonnull %i.cr, ptr noundef %i.ff) #22, !inline_history !20
  %or.cond.i.i = icmp ult i32 %i.fg, 2
  br i1 %or.cond.i.i, label %poolAppend.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not15.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not15.i.i, label %poolAppend.exit.thread.i, label %bb.aj

poolAppend.exit.thread.i:                         ; preds = %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %poolStoreString.exit.thread

poolAppend.exit.i:                                ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.cu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i581 = icmp eq ptr %i.fi, null
  br i1 %.not.i581, label %poolStoreString.exit.thread, label %bb.al

bb.al:                                            ; preds = %poolAppend.exit.i
  %i.fj = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.fk = load ptr, ptr %i.ct, align 8
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.am, label %poolStoreString.exit

bb.am:                                            ; preds = %bb.al
  %i.fm = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not10.i = icmp eq i8 %i.fm, 0
  br i1 %.not10.i, label %poolStoreString.exit.thread, label %._crit_edge.i582

._crit_edge.i582:                                 ; preds = %bb.am
  %.pre.i583 = load ptr, ptr %i.cr, align 8
  br label %poolStoreString.exit

poolStoreString.exit.thread:                      ; preds = %poolAppend.exit.i, %bb.am, %poolAppend.exit.thread.i
  %i.fn = sext i32 %i.dq to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.fn
  store ptr null, ptr %i.fo, align 8
  br label %.critedge566

poolStoreString.exit:                             ; preds = %bb.al, %._crit_edge.i582
  %i.fp = phi ptr [ %.pre.i583, %._crit_edge.i582 ], [ %i.fj, %bb.al ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.fq, ptr %i.cr, align 8
  store i8 0, ptr %i.fp, align 1
  %i.fr = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.fs = sext i32 %i.dq to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.fs
  store ptr %i.fr, ptr %i.ft, align 8
  %i.fu = icmp eq ptr %i.fr, null
  br i1 %i.fu, label %.critedge566, label %bb.an

bb.an:                                            ; preds = %poolStoreString.exit, %.thread
  %storemerge = load ptr, ptr %i.cr, align 8
  store ptr %storemerge, ptr %i.cu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not562 = icmp eq ptr %i.fw, null
  br i1 %.not562, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %i.de, i64 17
  %i.fy = load i8, ptr %i.fx, align 1
  %.not563 = icmp eq i8 %i.fy, 0
  br i1 %.not563, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fz = add nsw i32 %.0451764, 2
  %i.ga = add nsw i32 %.0426766, 1
  %i.gb = load ptr, ptr %i.de, align 8
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -1
  store i8 2, ptr %i.gc, align 1
  br label %.thread620

bb.aq:                                            ; preds = %bb.an
  %i.gd = add nsw i32 %.0451764, 2
  br label %.thread620

bb.ar:                                            ; preds = %bb.ao
  %i.ge = sext i32 %i.dq to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call fastcc i32 @addBinding(ptr noundef nonnull %0, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.de, ptr noundef %i.gg, ptr noundef %4) ; 2 uses
  %.not564 = icmp eq i32 %i.gh, 0
  br i1 %.not564, label %.thread620, label %.critedge566

.thread620:                                       ; preds = %bb.ap, %bb.aq, %bb.ar
  %.2428627 = phi i32 [ %.0426766, %bb.ar ], [ %i.ga, %bb.ap ], [ %.0426766, %bb.aq ] ; 2 uses
  %.3454626 = phi i32 [ %.0451764, %bb.ar ], [ %i.fz, %bb.ap ], [ %i.gd, %bb.aq ] ; 2 uses
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next860, %wide.trip.count862
  br i1 %exitcond863.not, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %.thread620, %bb.s
  %.0451.lcssa = phi i32 [ 0, %bb.s ], [ %.3454626, %.thread620 ] ; 5 uses
  %.0426.lcssa = phi i32 [ 0, %bb.s ], [ %.2428627, %.thread620 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 %.0451.lcssa, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.1459, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not515 = icmp eq ptr %i.gk, null
  br i1 %.not515, label %.loopexit706.sink.split, label %bb.as

bb.as:                                            ; preds = %._crit_edge
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -1
  %i.gn = load i8, ptr %i.gm, align 1
  %.not516 = icmp eq i8 %i.gn, 0
  br i1 %.not516, label %.loopexit706.sink.split, label %.preheader705

.preheader705:                                    ; preds = %bb.as
  %i.go = icmp sgt i32 %.0451.lcssa, 0
  br i1 %i.go, label %.lr.ph770, label %.loopexit706

.lr.ph770:                                        ; preds = %.preheader705, %bb.au
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %bb.au ], [ 0, %.preheader705 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv864
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = icmp eq ptr %i.gq, %i.gl
  br i1 %i.gr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph770
  %i.gs = trunc nuw nsw i64 %indvars.iv864 to i32
  br label %.loopexit706.sink.split

bb.au:                                            ; preds = %.lr.ph770
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 2 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next865 to i32
  %8 = icmp sgt i32 %.0451.lcssa, %7
  br i1 %8, label %.lr.ph770, label %.loopexit706

.loopexit706.sink.split:                          ; preds = %._crit_edge, %bb.as, %bb.at
  %.sink = phi i32 [ %i.gs, %bb.at ], [ -1, %bb.as ], [ -1, %._crit_edge ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 %.sink, ptr %i.gt, align 8
  br label %.loopexit706

.loopexit706:                                     ; preds = %bb.au, %.loopexit706.sink.split, %.preheader705
  %i.gu = icmp sgt i32 %i.bm, 0
  br i1 %i.gu, label %.lr.ph775, label %._crit_edge776

.lr.ph775:                                        ; preds = %.loopexit706
  %i.gv = getelementptr inbounds nuw i8, ptr %.1459, i64 32
  %wide.trip.count870 = zext nneg i32 %i.bm to i64
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph775, %.thread629
  %indvars.iv867 = phi i64 [ 0, %.lr.ph775 ], [ %indvars.iv.next868, %.thread629 ] ; 2 uses
  %.3429773 = phi i32 [ %.0426.lcssa, %.lr.ph775 ], [ %.5431636, %.thread629 ] ; 5 uses
  %.4455771 = phi i32 [ %.0451.lcssa, %.lr.ph775 ], [ %.6457635, %.thread629 ] ; 5 uses
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %indvars.iv867 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -1 ; 3 uses
  %i.hb = load i8, ptr %i.ha, align 1
  %.not552 = icmp eq i8 %i.hb, 0
  br i1 %.not552, label %bb.aw, label %.thread629

bb.aw:                                            ; preds = %bb.av
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not553 = icmp eq ptr %i.hd, null
  br i1 %.not553, label %.thread629, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not554 = icmp eq ptr %i.hf, null
  br i1 %.not554, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 17
  %i.hh = load i8, ptr %i.hg, align 1
  %.not555 = icmp eq i8 %i.hh, 0
  br i1 %.not555, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  store i8 2, ptr %i.ha, align 1
  %i.hi = add nsw i32 %.3429773, 1
  br label %.thread629.sink.split

bb.ba:                                            ; preds = %bb.ax
  store i8 1, ptr %i.ha, align 1
  br label %.thread629.sink.split

bb.bb:                                            ; preds = %bb.ay
  %i.hj = call fastcc i32 @addBinding(ptr noundef %0, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.hd, ptr noundef %4) ; 2 uses
  %.not556 = icmp eq i32 %i.hj, 0
  br i1 %.not556, label %.thread629, label %.critedge566

.thread629.sink.split:                            ; preds = %bb.ba, %bb.az
  %.5431636.ph = phi i32 [ %i.hi, %bb.az ], [ %.3429773, %bb.ba ]
  %i.hk = load ptr, ptr %i.gx, align 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = sext i32 %.4455771 to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hm ; 2 uses
  store ptr %i.hl, ptr %i.hn, align 8
  %i.ho = load ptr, ptr %i.hc, align 8
  %i.hp = add nsw i32 %.4455771, 2
  %i.hq = getelementptr i8, ptr %i.hn, i64 8
  store ptr %i.ho, ptr %i.hq, align 8
  br label %.thread629

.thread629:                                       ; preds = %.thread629.sink.split, %bb.av, %bb.aw, %bb.bb
  %.5431636 = phi i32 [ %.3429773, %bb.bb ], [ %.3429773, %bb.aw ], [ %.3429773, %bb.av ], [ %.5431636.ph, %.thread629.sink.split ] ; 2 uses
  %.6457635 = phi i32 [ %.4455771, %bb.bb ], [ %.4455771, %bb.aw ], [ %.4455771, %bb.av ], [ %i.hp, %.thread629.sink.split ] ; 2 uses
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count870
  br i1 %exitcond871.not, label %._crit_edge776, label %bb.av

._crit_edge776:                                   ; preds = %.thread629, %.loopexit706
  %.4455.lcssa = phi i32 [ %.0451.lcssa, %.loopexit706 ], [ %.6457635, %.thread629 ] ; 4 uses
  %.3429.lcssa = phi i32 [ %.0426.lcssa, %.loopexit706 ], [ %.5431636, %.thread629 ] ; 4 uses
  %i.hr = sext i32 %.4455.lcssa to i64            ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hr
  store ptr null, ptr %i.hs, align 8
  %.not517 = icmp eq i32 %.3429.lcssa, 0
  br i1 %.not517, label %.thread683, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge776
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 6 uses
  %i.hv = load i8, ptr %i.hu, align 8             ; 5 uses
  %i.hw = icmp ugt i8 %i.hv, 31
  br i1 %i.hw, label %.critedge566, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = zext nneg i8 %i.hv to i32               ; 2 uses
  %i.hy = shl i32 %.3429.lcssa, 1
  %i.hz = ashr i32 %i.hy, %i.hx
  %.not518 = icmp eq i32 %i.hz, 0
  br i1 %.not518, label %bb.bj, label %.preheader704

.preheader704:                                    ; preds = %bb.bd, %.preheader704
  %i.ia = phi i8 [ %i.ib, %.preheader704 ], [ %i.hv, %bb.bd ] ; 2 uses
  %i.ib = add i8 %i.ia, 1                         ; 5 uses
  %i.ic = zext nneg i8 %i.ia to i32
  %i.id = ashr i32 %.3429.lcssa, %i.ic
  %.not519 = icmp eq i32 %i.id, 0
  br i1 %.not519, label %bb.be, label %.preheader704

bb.be:                                            ; preds = %.preheader704
  store i8 %i.ib, ptr %i.hu, align 8
  %i.ie = icmp ult i8 %i.ib, 3
  br i1 %i.ie, label %.thread637, label %bb.bf

.thread637:                                       ; preds = %bb.be
  store i8 3, ptr %i.hu, align 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.if = icmp ugt i8 %i.ib, 31
  br i1 %i.if, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 %i.hv, ptr %i.hu, align 8
  br label %.critedge566

bb.bh:                                            ; preds = %.thread637, %bb.bf
  %i.ig = phi i8 [ 3, %.thread637 ], [ %i.ib, %bb.bf ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = zext nneg i8 %i.ig to i64
  %i.im = shl nuw nsw i64 24, %i.il
  %i.in = call ptr %i.ii(ptr noundef %i.ik, i64 noundef %i.im) #22 ; 2 uses
  %.not520 = icmp eq ptr %i.in, null
  br i1 %.not520, label %bb.bi, label %.thread949

bb.bi:                                            ; preds = %bb.bh
  store i8 %i.hv, ptr %i.hu, align 8
  br label %.critedge566

.thread949:                                       ; preds = %bb.bh
  %i.io = zext nneg i8 %i.ig to i32
  store ptr %i.in, ptr %i.ij, align 8
  %.1408952 = shl nuw i32 1, %i.io
  br label %.preheader702

bb.bj:                                            ; preds = %bb.bd
  %i.ip = load i64, ptr %i.ht, align 8            ; 2 uses
  %.1408 = shl nuw i32 1, %i.hx                   ; 2 uses
  %.not521 = icmp eq i64 %i.ip, 0
  br i1 %.not521, label %.preheader702, label %.loopexit703

.preheader702:                                    ; preds = %.thread949, %bb.bj
  %.1408955 = phi i32 [ %.1408952, %.thread949 ], [ %.1408, %bb.bj ] ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 5 uses
  %i.ir = sext i32 %.1408955 to i64               ; 3 uses
  %xtraiter = and i64 %i.ir, 3
  %i.is = and i32 %.1408955, 3
  %lcmp.mod.not = icmp eq i32 %i.is, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader702, %.prol.preheader
  %indvars.iv872.prol = phi i64 [ %indvars.iv.next873.prol, %.prol.preheader ], [ %i.ir, %.preheader702 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader702 ]
  %i.it = load ptr, ptr %i.iq, align 8
  %indvars.iv.next873.prol = add nsw i64 %indvars.iv872.prol, -1 ; 3 uses
  %i.iu = getelementptr inbounds [24 x i8], ptr %i.it, i64 %indvars.iv.next873.prol
  store i64 4294967295, ptr %i.iu, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader702
  %indvars.iv872.unr = phi i64 [ %i.ir, %.preheader702 ], [ %indvars.iv.next873.prol, %.prol.preheader ]
  %i.iv = icmp ult i32 %.1408955, 4
  br i1 %i.iv, label %.loopexit703, label %.preheader702.new

.preheader702.new:                                ; preds = %.prol.loopexit, %.preheader702.new
  %indvars.iv872 = phi i64 [ %indvars.iv.next873.3, %.preheader702.new ], [ %indvars.iv872.unr, %.prol.loopexit ] ; 4 uses
  %i.iw = load ptr, ptr %i.iq, align 8
  %i.ix = getelementptr [24 x i8], ptr %i.iw, i64 %indvars.iv872
  %i.iy = getelementptr i8, ptr %i.ix, i64 -24
  store i64 4294967295, ptr %i.iy, align 8
  %i.iz = load ptr, ptr %i.iq, align 8
  %i.ja = getelementptr [24 x i8], ptr %i.iz, i64 %indvars.iv872
  %i.jb = getelementptr i8, ptr %i.ja, i64 -48
  store i64 4294967295, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %i.iq, align 8
  %i.jd = getelementptr [24 x i8], ptr %i.jc, i64 %indvars.iv872
  %i.je = getelementptr i8, ptr %i.jd, i64 -72
  store i64 4294967295, ptr %i.je, align 8
  %i.jf = load ptr, ptr %i.iq, align 8
  %indvars.iv.next873.3 = add nsw i64 %indvars.iv872, -4 ; 3 uses
  %i.jg = getelementptr inbounds [24 x i8], ptr %i.jf, i64 %indvars.iv.next873.3
  store i64 4294967295, ptr %i.jg, align 8
  %.not522.3 = icmp eq i64 %indvars.iv.next873.3, 0
  br i1 %.not522.3, label %.loopexit703, label %.preheader702.new

.loopexit703:                                     ; preds = %.prol.loopexit, %.preheader702.new, %bb.bj
  %.1408954 = phi i32 [ %.1408, %bb.bj ], [ %.1408955, %.preheader702.new ], [ %.1408955, %.prol.loopexit ] ; 2 uses
  %.2411 = phi i64 [ %i.ip, %bb.bj ], [ 4294967295, %.preheader702.new ], [ 4294967295, %.prol.loopexit ]
  %i.jh = add i64 %.2411, -1                      ; 4 uses
  store i64 %i.jh, ptr %i.ht, align 8
  %i.ji = icmp sgt i32 %.4455.lcssa, 0
  br i1 %i.ji, label %.lr.ph801, label %.thread683

.lr.ph801:                                        ; preds = %.loopexit703
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 11 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.jv = add i32 %.1408954, -1                   ; 2 uses
  %i.jw = zext nneg i32 %i.jv to i64              ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.jz = xor i64 %i.jw, -1
  %i.ka = lshr i64 %i.jw, 2
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 473
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 908
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph801, %bb.cm
  %indvars.iv878 = phi i64 [ 0, %.lr.ph801 ], [ %indvars.iv.next879, %bb.cm ] ; 3 uses
  %.6432799 = phi i32 [ %.3429.lcssa, %.lr.ph801 ], [ %.9435.ph, %bb.cm ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv878 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8            ; 5 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -1 ; 3 uses
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = icmp eq i8 %i.kg, 2
  br i1 %i.kh, label %bb.bl, label %bb.cl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i, %bb.bl
  %.tr.i.i = phi ptr [ %0, %bb.bl ], [ %i.kj, %tailrecurse.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 912
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %.not.i.i584 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i584, label %copy_salt_to_sipkey.exit, label %tailrecurse.i.i

copy_salt_to_sipkey.exit:                         ; preds = %tailrecurse.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 936
  %i.kl = load i64, ptr %i.kk, align 8            ; 2 uses
  store i64 8317987319222330741, ptr %6, align 8
  %i.km = xor i64 %i.kl, 7237128888997146477
  store i64 %i.km, ptr %i.jj, align 8
  store i64 7816392313619706465, ptr %i.jk, align 8
  %i.kn = xor i64 %i.kl, 8387220255154660723
  store i64 %i.kn, ptr %i.jl, align 8
  store ptr %i.jm, ptr %i.jn, align 8
  store i64 0, ptr %i.jo, align 8
  store i8 0, ptr %i.kf, align 1
  %i.ko = load i64, ptr %i.jp, align 8
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %.thread673, label %bb.bm

bb.bm:                                            ; preds = %copy_salt_to_sipkey.exit
  %i.kq = call fastcc i64 @hash(ptr noundef readonly %0, ptr noundef nonnull %i.ke) ; 2 uses
  %i.kr = load i64, ptr %i.jp, align 8            ; 3 uses
  %i.ks = add i64 %i.kr, -1                       ; 2 uses
  %i.kt = and i64 %i.ks, %i.kq                    ; 2 uses
  %i.ku = load ptr, ptr %i.jq, align 8            ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %.not184.i585 = icmp eq ptr %i.kw, null
  br i1 %.not184.i585, label %.thread673, label %.lr.ph.i586

.lr.ph.i586:                                      ; preds = %bb.bm
  %i.kx = load i8, ptr %i.ke, align 1             ; 2 uses
  %i.ky = sub i64 0, %i.kr
end_hunk_1
begin_hunk_2_@storeAtts:bb.a

bb.bw:                                            ; preds = %bb.bv
  %i.mx = load i8, ptr %i.mv, align 1
  %.not4.i = icmp eq i8 %i.mx, 0
  br i1 %.not4.i, label %keylen.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bw
  %scevgep.i = getelementptr i8, ptr %.0405, i64 2
  %strlen.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i)
  %i.my = add i64 %strlen.i, 1
  br label %keylen.exit

keylen.exit:                                      ; preds = %bb.bw, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.bw ], [ %i.my, %.lr.ph.preheader.i ]
  %i.mz = call fastcc ptr @sip24_update(ptr noundef %6, ptr noundef nonnull %i.mv, i64 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %keylen.exit
  %.1406 = phi ptr [ %i.mv, %keylen.exit ], [ %i.nh, %bb.bz ] ; 3 uses
  %i.na = load ptr, ptr %i.js, align 8            ; 2 uses
  %i.nb = load ptr, ptr %i.jt, align 8
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nd = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.ju)
  %.not527 = icmp eq i8 %i.nd, 0
  br i1 %.not527, label %.thread673, label %._crit_edge892

._crit_edge892:                                   ; preds = %bb.by
  %.pre893 = load ptr, ptr %i.js, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge892, %bb.bx
  %i.ne = phi ptr [ %.pre893, %._crit_edge892 ], [ %i.na, %bb.bx ] ; 2 uses
  %i.nf = load i8, ptr %.1406, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  store ptr %i.ng, ptr %i.js, align 8
  store i8 %i.nf, ptr %i.ne, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.1406, i64 1
  %i.ni = load i8, ptr %.1406, align 1
  %.not528 = icmp eq i8 %i.ni, 0
  br i1 %.not528, label %bb.ca, label %bb.bx

bb.ca:                                            ; preds = %bb.bz
  %i.nj = call fastcc i64 @sip24_final(ptr noundef %6) ; 4 uses
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = and i32 %i.jv, %i.nk                    ; 2 uses
  %i.nm = load ptr, ptr %i.jx, align 8            ; 2 uses
  %i.nn = zext nneg i32 %i.nl to i64              ; 2 uses
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %i.nn ; 2 uses
  %i.np = load i64, ptr %i.no, align 8
  %.not531792 = icmp eq i64 %i.np, %i.jh
  br i1 %.not531792, label %.lr.ph796, label %.thread650

.lr.ph796:                                        ; preds = %bb.ca
  %i.nq = and i64 %i.nj, %i.jz
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph796, %bb.cf
  %i.nr = phi ptr [ %i.no, %.lr.ph796 ], [ %i.or, %bb.cf ] ; 2 uses
  %.0404794 = phi i8 [ 0, %.lr.ph796 ], [ %.1, %bb.cf ] ; 2 uses
  %.2414793 = phi i32 [ %i.nl, %.lr.ph796 ], [ %.3, %bb.cf ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = icmp eq i64 %i.nj, %i.nt
  br i1 %i.nu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nv = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8            ; 2 uses
  %i.ny = load i8, ptr %i.nv, align 1             ; 2 uses
  %i.nz = load i8, ptr %i.nx, align 1
  %i.oa = icmp ne i8 %i.ny, %i.nz
  %.not529785 = icmp eq i8 %i.ny, 0               ; 2 uses
  %or.cond570786 = or i1 %.not529785, %i.oa
  br i1 %or.cond570786, label %.critedge, label %.lr.ph790

.lr.ph790:                                        ; preds = %bb.cc, %.lr.ph790
  %.0402788 = phi ptr [ %i.oc, %.lr.ph790 ], [ %i.nx, %bb.cc ]
  %.0403787 = phi ptr [ %i.ob, %.lr.ph790 ], [ %i.nv, %bb.cc ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0403787, i64 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0402788, i64 1 ; 2 uses
  %i.od = load i8, ptr %i.ob, align 1             ; 2 uses
  %i.oe = load i8, ptr %i.oc, align 1
  %i.of = icmp ne i8 %i.od, %i.oe
  %.not529 = icmp eq i8 %i.od, 0                  ; 2 uses
  %or.cond570 = or i1 %.not529, %i.of
  br i1 %or.cond570, label %.critedge, label %.lr.ph790

.critedge:                                        ; preds = %.lr.ph790, %bb.cc
  %.not529.lcssa = phi i1 [ %.not529785, %bb.cc ], [ %.not529, %.lr.ph790 ]
  br i1 %.not529.lcssa, label %.thread673, label %bb.cd

bb.cd:                                            ; preds = %.critedge, %bb.cb
  %.not536 = icmp eq i8 %.0404794, 0
  br i1 %.not536, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.og = load i8, ptr %i.hu, align 8
  %i.oh = zext i8 %i.og to i64
  %i.oi = add nuw nsw i64 %i.oh, 4294967295
  %i.oj = and i64 %i.oi, 4294967295
  %i.ok = lshr i64 %i.nq, %i.oj
  %i.ol = and i64 %i.ok, %i.ka
  %i.om = trunc i64 %i.ol to i8
  %i.on = or i8 %i.om, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.1 = phi i8 [ %.0404794, %bb.cd ], [ %i.on, %bb.ce ] ; 2 uses
  %i.oo = zext i8 %.1 to i32                      ; 2 uses
  %i.op = icmp slt i32 %.2414793, %i.oo
  %.3.p.v = select i1 %i.op, i32 %.1408954, i32 0
  %.3.p = sub i32 %.2414793, %i.oo
  %.3 = add i32 %.3.p, %.3.p.v                    ; 2 uses
  %i.oq = sext i32 %.3 to i64                     ; 2 uses
  %i.or = getelementptr inbounds [24 x i8], ptr %i.nm, i64 %i.oq ; 2 uses
  %i.os = load i64, ptr %i.or, align 8
  %.not531 = icmp eq i64 %i.os, %i.jh
  br i1 %.not531, label %bb.cb, label %.thread650

.thread650:                                       ; preds = %bb.cf, %bb.ca
  %.lcssa726 = phi i64 [ %i.nn, %bb.ca ], [ %i.oq, %bb.cf ] ; 3 uses
  %i.ot = load i8, ptr %i.kb, align 1
  %.not532 = icmp eq i8 %i.ot, 0
  br i1 %.not532, label %.loopexit695, label %bb.cg

bb.cg:                                            ; preds = %.thread650
  %i.ou = load i8, ptr %i.kc, align 4
  %i.ov = load ptr, ptr %i.js, align 8
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 -1
  store i8 %i.ou, ptr %i.ow, align 1
  %i.ox = load ptr, ptr %i.mb, align 8
  %i.oy = load ptr, ptr %i.ox, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %bb.cg
  %.2 = phi ptr [ %i.oy, %bb.cg ], [ %i.pg, %bb.cj ] ; 3 uses
  %i.oz = load ptr, ptr %i.js, align 8            ; 2 uses
  %i.pa = load ptr, ptr %i.jt, align 8
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pc = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.ju)
  %.not533 = icmp eq i8 %i.pc, 0
  br i1 %.not533, label %.thread673, label %._crit_edge894

._crit_edge894:                                   ; preds = %bb.ci
  %.pre895 = load ptr, ptr %i.js, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge894, %bb.ch
  %i.pd = phi ptr [ %.pre895, %._crit_edge894 ], [ %i.oz, %bb.ch ] ; 2 uses
  %i.pe = load i8, ptr %.2, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  store ptr %i.pf, ptr %i.js, align 8
  store i8 %i.pe, ptr %i.pd, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ph = load i8, ptr %.2, align 1
  %.not534 = icmp eq i8 %i.ph, 0
  br i1 %.not534, label %.loopexit695, label %bb.ch

.loopexit695:                                     ; preds = %bb.cj, %.thread650
  %i.pi = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.pj = load ptr, ptr %i.js, align 8
  store ptr %i.pj, ptr %i.jy, align 8
  store ptr %i.pi, ptr %i.kd, align 8
  %i.pk = load ptr, ptr %i.jx, align 8
  %i.pl = getelementptr inbounds [24 x i8], ptr %i.pk, i64 %.lcssa726
  store i64 %i.jh, ptr %i.pl, align 8
  %i.pm = load ptr, ptr %i.jx, align 8
  %i.pn = getelementptr inbounds [24 x i8], ptr %i.pm, i64 %.lcssa726
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i64 %i.nj, ptr %i.po, align 8
  %i.pp = load ptr, ptr %i.jx, align 8
  %i.pq = getelementptr inbounds [24 x i8], ptr %i.pp, i64 %.lcssa726
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store ptr %i.pi, ptr %i.pr, align 8
  %i.ps = add nsw i32 %.6432799, -1               ; 2 uses
  %.not535 = icmp eq i32 %i.ps, 0
  br i1 %.not535, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.loopexit695
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bk
  store i8 0, ptr %i.kf, align 1
  br label %bb.cm

.thread673:                                       ; preds = %lookup.exit602, %bb.br, %copy_salt_to_sipkey.exit, %bb.bm, %bb.bq, %bb.bt, %bb.by, %.critedge, %bb.ci
  %.23.ph.ph = phi i32 [ 1, %bb.bt ], [ 8, %.critedge ], [ 1, %bb.by ], [ 1, %bb.bq ], [ 1, %bb.ci ], [ 1, %copy_salt_to_sipkey.exit ], [ 1, %lookup.exit602 ], [ 1, %bb.bm ], [ 27, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge566

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.9435.ph = phi i32 [ %i.ps, %bb.ck ], [ %.6432799, %bb.cl ]
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 2 ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next879 to i32   ; 2 uses
  %10 = icmp sgt i32 %.4455.lcssa, %9
  br i1 %10, label %bb.bk, label %.thread683

bb.cn:                                            ; preds = %.loopexit695
  %i.pt = trunc nuw nsw i64 %indvars.iv878 to i32
  %i.pu = add nuw nsw i32 %i.pt, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.thread683

.thread683:                                       ; preds = %bb.cm, %.loopexit703, %bb.cn, %._crit_edge776
  %.10446 = phi i32 [ 0, %._crit_edge776 ], [ %i.pu, %bb.cn ], [ 0, %.loopexit703 ], [ %9, %bb.cm ] ; 2 uses
  %i.pv = icmp slt i32 %.10446, %.4455.lcssa
  br i1 %i.pv, label %.lr.ph804.preheader, label %.preheader694

.lr.ph804.preheader:                              ; preds = %.thread683
  %i.pw = sext i32 %.10446 to i64
  br label %.lr.ph804

.preheader694:                                    ; preds = %.lr.ph804, %.thread683
  %.0424805 = load ptr, ptr %4, align 8           ; 2 uses
  %.not538806 = icmp eq ptr %.0424805, null
  br i1 %.not538806, label %._crit_edge809, label %.lr.ph808

.lr.ph804:                                        ; preds = %.lr.ph804.preheader, %.lr.ph804
  %indvars.iv881 = phi i64 [ %i.pw, %.lr.ph804.preheader ], [ %indvars.iv.next882, %.lr.ph804 ] ; 2 uses
  %i.px = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv881
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -1
  store i8 0, ptr %i.pz, align 1
  %indvars.iv.next882 = add nsw i64 %indvars.iv881, 2 ; 2 uses
  %i.qa = icmp slt i64 %indvars.iv.next882, %i.hr
  br i1 %i.qa, label %.lr.ph804, label %.preheader694

.lr.ph808:                                        ; preds = %.preheader694, %.lr.ph808
  %.0424807 = phi ptr [ %.0424, %.lr.ph808 ], [ %.0424805, %.preheader694 ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0424807, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = getelementptr inbounds i8, ptr %i.qd, i64 -1
  store i8 0, ptr %i.qe, align 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.0424807, i64 8
  %.0424 = load ptr, ptr %i.qf, align 8           ; 2 uses
  %.not538 = icmp eq ptr %.0424, null
  br i1 %.not538, label %._crit_edge809, label %.lr.ph808

._crit_edge809:                                   ; preds = %.lr.ph808, %.preheader694
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.qh = load i8, ptr %i.qg, align 8
  %.not539 = icmp eq i8 %i.qh, 0
  br i1 %.not539, label %.critedge566, label %bb.co

bb.co:                                            ; preds = %._crit_edge809
  %i.qi = getelementptr inbounds nuw i8, ptr %.1459, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8            ; 2 uses
  %.not540 = icmp eq ptr %i.qj, null
  br i1 %.not540, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8            ; 2 uses
  %.not542 = icmp eq ptr %i.ql, null
  br i1 %.not542, label %.critedge566, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qm = load ptr, ptr %3, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.0422 = phi ptr [ %i.qm, %bb.cq ], [ %i.qn, %bb.cr ] ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0422, i64 1 ; 2 uses
  %i.qo = load i8, ptr %.0422, align 1
  %.not543 = icmp eq i8 %i.qo, 58
  br i1 %.not543, label %.loopexit693, label %bb.cr

bb.cs:                                            ; preds = %bb.co
  %i.qp = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.qq = load ptr, ptr %i.qp, align 8            ; 2 uses
  %.not541 = icmp eq ptr %i.qq, null
  br i1 %.not541, label %.critedge566, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qr = load ptr, ptr %3, align 8
  br label %.loopexit693

.loopexit693:                                     ; preds = %bb.cr, %bb.ct
  %.1425 = phi ptr [ %i.qq, %bb.ct ], [ %i.ql, %bb.cr ] ; 8 uses
  %.1423 = phi ptr [ %i.qr, %bb.ct ], [ %i.qn, %bb.cr ] ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 473
  %i.qt = load i8, ptr %i.qs, align 1
  %.not544 = icmp eq i8 %i.qt, 0
  br i1 %.not544, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %.loopexit693
  %i.qu = load ptr, ptr %.1425, align 8
  %i.qv = load ptr, ptr %i.qu, align 8            ; 2 uses
  %.not545 = icmp eq ptr %i.qv, null
  br i1 %.not545, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cu
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qv)
  %i.qw = trunc i64 %strlen to i32
  %i.qx = add i32 %i.qw, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.cu, %.loopexit693
  %.1450 = phi i32 [ 0, %.loopexit693 ], [ 0, %bb.cu ], [ %i.qx, %.preheader.preheader ] ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.1423, ptr %i.qy, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.1425, i64 40 ; 4 uses
  %i.ra = load i32, ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ra, ptr %i.rb, align 4
  %i.rc = load ptr, ptr %.1425, align 8
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.rd, ptr %i.re, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.1450, ptr %i.rf, align 8
  %strlen887 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1423) ; 2 uses
  %i.rg = trunc i64 %strlen887 to i32             ; 2 uses
  %i.rh = add i32 %i.rg, 1                        ; 2 uses
  %i.ri = load i32, ptr %i.qz, align 8            ; 4 uses
  %i.rj = sub nsw i32 2147483647, %.1450
  %i.rk = icmp sgt i32 %i.ri, %i.rj
  br i1 %i.rk, label %.critedge566, label %bb.cv

bb.cv:                                            ; preds = %.loopexit
  %i.rl = add i32 %.1450, %i.ri
  %i.rm = sub i32 2147483647, %i.rl
  %.not548 = icmp samesign ugt i32 %i.rm, %i.rg
  br i1 %.not548, label %bb.cw, label %.critedge566

bb.cw:                                            ; preds = %bb.cv
  %i.rn = add i32 %i.rh, %.1450
  %i.ro = add i32 %i.rn, %i.ri                    ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.1425, i64 44 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = icmp sgt i32 %i.ro, %i.rq
  br i1 %i.rr, label %bb.cx, label %._crit_edge896

._crit_edge896:                                   ; preds = %bb.cw
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1425, i64 32
  %.pre897 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.rs = icmp sgt i32 %i.ro, 2147483623
  br i1 %i.rs, label %.critedge566, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = add nsw i32 %i.ro, 24                   ; 2 uses
  %i.rw = sext i32 %i.rv to i64
  %i.rx = call ptr %i.ru(i64 noundef %i.rw) #22   ; 5 uses
  %.not549 = icmp eq ptr %i.rx, null
  br i1 %.not549, label %.critedge566, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 %i.rv, ptr %i.rp, align 4
  %i.ry = getelementptr inbounds nuw i8, ptr %.1425, i64 32 ; 4 uses
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = load i32, ptr %i.qz, align 8
  %i.sb = sext i32 %i.sa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rx, ptr align 1 %i.rz, i64 %i.sb, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.0810 = load ptr, ptr %i.sc, align 8           ; 2 uses
  %.not550811 = icmp eq ptr %.0810, null
  br i1 %.not550811, label %._crit_edge815, label %.lr.ph814

.lr.ph814:                                        ; preds = %bb.cz, %bb.db
  %.0812 = phi ptr [ %.0, %bb.db ], [ %.0810, %bb.cz ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0812, i64 24 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = load ptr, ptr %i.ry, align 8
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph814
  store ptr %i.rx, ptr %i.sd, align 8
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph814, %bb.da
  %.0 = load ptr, ptr %.0812, align 8             ; 2 uses
  %.not550 = icmp eq ptr %.0, null
  br i1 %.not550, label %._crit_edge815, label %.lr.ph814

._crit_edge815:                                   ; preds = %bb.db, %bb.cz
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = load ptr, ptr %i.ry, align 8
  call void %i.si(ptr noundef %i.sj) #22
  store ptr %i.rx, ptr %i.ry, align 8
  %.pre898 = load i32, ptr %i.qz, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge896, %._crit_edge815
  %i.sk = phi i32 [ %i.ri, %._crit_edge896 ], [ %.pre898, %._crit_edge815 ]
  %i.sl = phi ptr [ %.pre897, %._crit_edge896 ], [ %i.rx, %._crit_edge815 ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.1425, i64 32
  %i.sn = sext i32 %i.sk to i64
  %i.so = getelementptr inbounds i8, ptr %i.sl, i64 %i.sn ; 2 uses
  %i.sp = zext nneg i32 %i.rh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.so, ptr noundef nonnull align 1 dereferenceable(1) %.1423, i64 %i.sp, i1 false)
  %.not551 = icmp eq i32 %.1450, 0
  br i1 %.not551, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 %strlen887 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.ss = load i8, ptr %i.sr, align 4
end_hunk_2
