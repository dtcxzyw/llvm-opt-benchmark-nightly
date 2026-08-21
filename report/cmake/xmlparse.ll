Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/xmlparse?download=true
inline.NumInlined: 185
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@getElementType:bb.a
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !248
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !135
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge105, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge105 ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.e, align 8, !tbaa !135
  store i8 0, ptr %i.k, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !188
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !128
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not14.i.i = icmp eq i8 %i.n, 0
  br i1 %.not14.i.i, label %poolAppend.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.r = call i32 %i.p(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef %i.q) #19, !inline_history !240
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %poolAppend.exit.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !128  ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %poolStoreString.exit

bb.i:                                             ; preds = %bb.h
  %i.y = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not10.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i, label %.critedge, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !128
  br label %poolStoreString.exit

poolStoreString.exit:                             ; preds = %bb.h, %._crit_edge.i
  %i.z = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !128
  store i8 0, ptr %i.z, align 1, !tbaa !9
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !130 ; 8 uses
  %.not81 = icmp eq ptr %i.ab, null
  br i1 %.not81, label %.critedge, label %bb.j

bb.j:                                             ; preds = %poolStoreString.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ae = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac, i64 noundef 24) ; 11 uses
  %.not82 = icmp eq ptr %i.ae, null
  br i1 %.not82, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !137
  %.not83 = icmp eq ptr %i.af, %i.ac
  br i1 %.not83, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !248
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !135
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !248
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !66
  %.not84 = icmp eq i8 %i.aj, 0
  br i1 %.not84, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
  %i.al = icmp eq i8 %i.ak, 120
  br i1 %i.al, label %bb.o, label %.preheader127

.preheader127:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  br label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = icmp eq i8 %i.an, 109
  br i1 %i.ao, label %bb.p, label %.preheader127

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = icmp eq i8 %i.aq, 108
  br i1 %i.ar, label %bb.q, label %.preheader127

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = icmp eq i8 %i.at, 110
  br i1 %i.au, label %bb.r, label %.preheader127

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = icmp eq i8 %i.aw, 115
  br i1 %i.ax, label %bb.s, label %.preheader127

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  switch i8 %i.az, label %.preheader127 [
    i8 0, label %bb.t
    i8 58, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.bd = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 16)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.bd, %bb.u ], [ %i.ba, %bb.t ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sink, ptr %i.be, align 8, !tbaa !140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !141
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
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bk = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not88 = icmp eq i8 %i.bk, 0
  br i1 %.not88, label %.critedge, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.x
  %.pre108 = load ptr, ptr %i.e, align 8, !tbaa !135
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge107, %.lr.ph
  %i.bl = phi ptr [ %.pre108, %._crit_edge107 ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv99
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !135
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !9
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !289

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre109 = load ptr, ptr %i.e, align 8, !tbaa !135
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bp = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ %i.ah, %.preheader ] ; 2 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.bs = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.d)
  %.not86 = icmp eq i8 %i.bs, 0
  br i1 %.not86, label %.critedge, label %._crit_edge110

._crit_edge110:                                   ; preds = %bb.z
  %.pre111 = load ptr, ptr %i.e, align 8, !tbaa !135
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge110, %._crit_edge
  %i.bt = phi ptr [ %.pre111, %._crit_edge110 ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !135
  store i8 0, ptr %i.bt, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !248
  %i.bx = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %i.bv, ptr noundef %i.bw, i64 noundef 16) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !140
  %.not87 = icmp eq ptr %i.bx, null
  br i1 %.not87, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !127
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !248 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !135
  store ptr %i.cc, ptr %i.t, align 8, !tbaa !248
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !135
  br label %.critedge

bb.ae:                                            ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next103 = add nuw i32 %indvars.iv102, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  %.pre106 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  br label %bb.w, !llvm.loop !290

.critedge:                                        ; preds = %bb.w, %bb.x, %poolAppend.exit.thread.i, %bb.i, %poolAppend.exit.i, %bb.ad, %bb.ac, %bb.l, %bb.v, %bb.m, %bb.z, %bb.aa, %bb.j, %poolStoreString.exit, %bb.b
  %.3 = phi ptr [ null, %bb.z ], [ null, %bb.j ], [ null, %poolStoreString.exit ], [ null, %bb.b ], [ null, %poolAppend.exit.thread.i ], [ null, %bb.aa ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %i.ae, %bb.v ], [ %i.ae, %bb.ac ], [ %i.ae, %bb.ad ], [ null, %bb.x ], [ null, %poolAppend.exit.i ], [ null, %bb.i ], [ %i.ae, %bb.w ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @poolGrow(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %0, align 8, !tbaa !94
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !95
  store ptr %i.f, ptr %i.a, align 8, !tbaa !93
  store ptr null, ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !131
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.m, align 8, !tbaa !128
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !131
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %i.r, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.x = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %i.x, ptr %i.b, align 8, !tbaa !95
  store ptr %i.b, ptr %0, align 8, !tbaa !94
  store ptr %i.w, ptr %i.a, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 1 %i.d, i64 %i.r, i1 false)
  %i.z = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 %i.ag
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !128
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !131
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak
  store ptr %i.al, ptr %i.n, align 8, !tbaa !129
  br label %.thread

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !94    ; 3 uses
  %.not113 = icmp ne ptr %i.am, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = icmp eq ptr %.pre, %i.an
  %or.cond = select i1 %.not113, i1 %i.ao, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !129 ; 2 uses
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 1                        ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !128
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.as
  %i.ba = icmp slt i32 %i.av, 0
  br i1 %i.ba, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %i.av, 0
  %narrow.i = add nuw i32 %i.av, 12
  %narrow9.i = tail call i32 @llvm.smax.i32(i32 %narrow.i, i32 0) ; 2 uses
  %i.bc = icmp eq i32 %narrow9.i, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.1.i = zext nneg i32 %narrow9.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !132
  %i.bi = tail call ptr %i.bh(ptr noundef nonnull %i.am, i64 noundef %.1.i) #19 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bi, ptr %0, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.av, ptr %i.bk, align 8, !tbaa !131
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.az
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !128
  store ptr %i.bl, ptr %.phi.trans.insert, align 8, !tbaa !130
  %i.bn = zext nneg i32 %i.av to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  store ptr %i.bo, ptr %i.ap, align 8, !tbaa !129
  br label %.thread

._crit_edge:                                      ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bq = ptrtoint ptr %i.aq to i64
  %i.br = ptrtoint ptr %.pre to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32                  ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bv = icmp samesign ult i32 %i.bt, 1024
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = shl nuw i32 %i.bt, 1                    ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ 1024, %bb.k ], [ %i.bw, %bb.l ] ; 3 uses
  %narrow.i116 = add nuw i32 %.0, 12
  %narrow9.i117 = tail call i32 @llvm.smax.i32(i32 %narrow.i116, i32 0) ; 2 uses
  %i.by = icmp eq i32 %narrow9.i117, 0
  br i1 %i.by, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.1.i119 = zext nneg i32 %narrow9.i117 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40
  %i.cd = tail call ptr %i.cc(i64 noundef %.1.i119) #19 ; 6 uses
  %.not114 = icmp eq ptr %i.cd, null
  br i1 %.not114, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %.0, ptr %i.ce, align 8, !tbaa !131
  %i.cf = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !95
  store ptr %i.cd, ptr %0, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !128 ; 4 uses
  %i.ci = load ptr, ptr %i.bp, align 8, !tbaa !130 ; 3 uses
  %.not115 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not115, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr align 1 %i.ci, i64 %i.cm, i1 false)
  %.pre124 = load ptr, ptr %i.cg, align 8, !tbaa !128
  %.pre125 = load ptr, ptr %i.bp, align 8, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cn = phi ptr [ %i.ch, %bb.o ], [ %.pre125, %bb.p ]
  %i.co = phi ptr [ %i.ch, %bb.o ], [ %.pre124, %bb.p ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  store ptr %i.ct, ptr %i.cg, align 8, !tbaa !128
end_hunk_0
begin_hunk_1_@storeAtts:bb.a
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %indvars.iv851
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !330
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !192
  br label %.critedge566

bb.x:                                             ; preds = %bb.u
  store i8 1, ptr %i.dg, align 1, !tbaa !9
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.dq = add nsw i32 %.0451756, 1                ; 4 uses
  %i.dr = sext i32 %.0451756 to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !188
  %i.dt = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv851 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !332
  %.not559 = icmp eq i8 %i.dw, 0
  br i1 %.not559, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !139
  %.not560 = icmp eq i8 %i.dy, 0
  %brmerge = select i1 %.not560, i1 true, i1 %i.cv
  br i1 %brmerge, label %.loopexit700, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.dz = load ptr, ptr %i.cw, align 8, !tbaa !101
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit700, label %bb.aa, !llvm.loop !333

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !151
  %i.ec = icmp eq ptr %i.de, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !153
  br label %.loopexit700

.loopexit700:                                     ; preds = %bb.z, %bb.y, %bb.ab
  %.1417 = phi i8 [ 1, %bb.y ], [ %i.ee, %bb.ab ], [ 1, %bb.z ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !334
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !335
  %i.ej = call fastcc i32 @storeAttributeValue(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %.1417, ptr noundef %i.eg, ptr noundef %i.ei, ptr noundef nonnull %i.cq) ; 2 uses
  %.not561 = icmp eq i32 %i.ej, 0
  br i1 %.not561, label %.thread, label %.critedge566

.thread:                                          ; preds = %.loopexit700
  %i.ek = load ptr, ptr %i.cu, align 8, !tbaa !173
  %i.el = sext i32 %i.dq to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.el
  store ptr %i.ek, ptr %i.em, align 8, !tbaa !188
  br label %bb.ai

bb.ac:                                            ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !334
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !188
  %i.er = load ptr, ptr %i.cr, align 8, !tbaa !128
  %.not.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i, label %bb.ad, label %.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.es = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not14.i.i = icmp eq i8 %i.es, 0
  br i1 %.not14.i.i, label %poolAppend.exit.thread.i, label %.preheader

.preheader:                                       ; preds = %bb.ad, %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.af
  %i.et = load ptr, ptr %i.cs, align 8, !tbaa !230
  %i.eu = load ptr, ptr %i.ct, align 8, !tbaa !129
  %i.ev = call i32 %i.et(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %i.eq, ptr noundef nonnull %i.cr, ptr noundef %i.eu) #19, !inline_history !240
  %or.cond.i.i = icmp ult i32 %i.ev, 2
  br i1 %or.cond.i.i, label %poolAppend.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not15.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not15.i.i, label %poolAppend.exit.thread.i, label %bb.ae

poolAppend.exit.thread.i:                         ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %poolStoreString.exit.thread

poolAppend.exit.i:                                ; preds = %bb.ae
  %i.ex = load ptr, ptr %i.cu, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i578 = icmp eq ptr %i.ex, null
  br i1 %.not.i578, label %poolStoreString.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %poolAppend.exit.i
  %i.ey = load ptr, ptr %i.cr, align 8, !tbaa !128 ; 2 uses
  %i.ez = load ptr, ptr %i.ct, align 8, !tbaa !129
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.ah, label %poolStoreString.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fb = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.cq)
  %.not10.i = icmp eq i8 %i.fb, 0
  br i1 %.not10.i, label %poolStoreString.exit.thread, label %._crit_edge.i579

._crit_edge.i579:                                 ; preds = %bb.ah
  %.pre.i580 = load ptr, ptr %i.cr, align 8, !tbaa !128
  br label %poolStoreString.exit

poolStoreString.exit.thread:                      ; preds = %poolAppend.exit.i, %bb.ah, %poolAppend.exit.thread.i
  %i.fc = sext i32 %i.dq to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.fc
  store ptr null, ptr %i.fd, align 8, !tbaa !188
  br label %.critedge566

poolStoreString.exit:                             ; preds = %bb.ag, %._crit_edge.i579
  %i.fe = phi ptr [ %.pre.i580, %._crit_edge.i579 ], [ %i.ey, %bb.ag ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.cr, align 8, !tbaa !128
  store i8 0, ptr %i.fe, align 1, !tbaa !9
  %i.fg = load ptr, ptr %i.cu, align 8, !tbaa !130 ; 2 uses
  %i.fh = sext i32 %i.dq to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.fh
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !188
  %i.fj = icmp eq ptr %i.fg, null
  br i1 %i.fj, label %.critedge566, label %bb.ai

bb.ai:                                            ; preds = %poolStoreString.exit, %.thread
  %storemerge = load ptr, ptr %i.cr, align 8, !tbaa !171
  store ptr %storemerge, ptr %i.cu, align 8, !tbaa !173
  %i.fk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !140 ; 2 uses
  %.not562 = icmp eq ptr %i.fl, null
  br i1 %.not562, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %i.de, i64 17
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !141
  %.not563 = icmp eq i8 %i.fn, 0
  br i1 %.not563, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fo = add nsw i32 %.0451756, 2
  %i.fp = add nsw i32 %.0426758, 1
  %i.fq = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -1
  store i8 2, ptr %i.fr, align 1, !tbaa !9
  br label %.thread612

bb.al:                                            ; preds = %bb.ai
  %i.fs = add nsw i32 %.0451756, 2
  br label %.thread612

bb.am:                                            ; preds = %bb.aj
  %i.ft = sext i32 %i.dq to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !188
  %i.fw = call fastcc i32 @addBinding(ptr noundef nonnull %0, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.de, ptr noundef %i.fv, ptr noundef %4) ; 2 uses
  %.not564 = icmp eq i32 %i.fw, 0
  br i1 %.not564, label %.thread612, label %.critedge566

.thread612:                                       ; preds = %bb.ak, %bb.al, %bb.am
  %.2428619 = phi i32 [ %.0426758, %bb.am ], [ %i.fp, %bb.ak ], [ %.0426758, %bb.al ] ; 2 uses
  %.3454618 = phi i32 [ %.0451756, %bb.am ], [ %i.fo, %bb.ak ], [ %i.fs, %bb.al ] ; 2 uses
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %exitcond855.not = icmp eq i64 %indvars.iv.next852, %wide.trip.count854
  br i1 %exitcond855.not, label %._crit_edge, label %bb.t, !llvm.loop !336

._crit_edge:                                      ; preds = %.thread612, %bb.s
  %.0451.lcssa = phi i32 [ 0, %bb.s ], [ %.3454618, %.thread612 ] ; 5 uses
  %.0426.lcssa = phi i32 [ 0, %bb.s ], [ %.2428619, %.thread612 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 %.0451.lcssa, ptr %i.fx, align 4, !tbaa !120
  %i.fy = getelementptr inbounds nuw i8, ptr %.1459, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !149 ; 2 uses
  %.not515 = icmp eq ptr %i.fz, null
  br i1 %.not515, label %.loopexit698.sink.split, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !137 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !9
  %.not516 = icmp eq i8 %i.gc, 0
  br i1 %.not516, label %.loopexit698.sink.split, label %.preheader697

.preheader697:                                    ; preds = %bb.an
  %i.gd = icmp sgt i32 %.0451.lcssa, 0
  br i1 %i.gd, label %.lr.ph762, label %.loopexit698

.lr.ph762:                                        ; preds = %.preheader697, %bb.ap
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %bb.ap ], [ 0, %.preheader697 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv856
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !188
  %i.gg = icmp eq ptr %i.gf, %i.ga
  br i1 %i.gg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph762
  %i.gh = trunc nuw nsw i64 %indvars.iv856 to i32
  br label %.loopexit698.sink.split

bb.ap:                                            ; preds = %.lr.ph762
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 2 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv.next857 to i32
  %7 = icmp sgt i32 %.0451.lcssa, %6
  br i1 %7, label %.lr.ph762, label %.loopexit698, !llvm.loop !337

.loopexit698.sink.split:                          ; preds = %._crit_edge, %bb.an, %bb.ao
  %.sink = phi i32 [ %i.gh, %bb.ao ], [ -1, %bb.an ], [ -1, %._crit_edge ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 %.sink, ptr %i.gi, align 8, !tbaa !193
  br label %.loopexit698

.loopexit698:                                     ; preds = %bb.ap, %.loopexit698.sink.split, %.preheader697
  %i.gj = icmp sgt i32 %i.bm, 0
  br i1 %i.gj, label %.lr.ph767, label %._crit_edge768

.lr.ph767:                                        ; preds = %.loopexit698
  %i.gk = getelementptr inbounds nuw i8, ptr %.1459, i64 32
  %wide.trip.count862 = zext nneg i32 %i.bm to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph767, %.thread621
  %indvars.iv859 = phi i64 [ 0, %.lr.ph767 ], [ %indvars.iv.next860, %.thread621 ] ; 2 uses
  %.3429765 = phi i32 [ %.0426.lcssa, %.lr.ph767 ], [ %.5431628, %.thread621 ] ; 5 uses
  %.4455763 = phi i32 [ %.0451.lcssa, %.lr.ph767 ], [ %.6457627, %.thread621 ] ; 5 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !101
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %indvars.iv859 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !151 ; 4 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !137
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -1 ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9
  %.not552 = icmp eq i8 %i.gq, 0
  br i1 %.not552, label %bb.ar, label %.thread621

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !154 ; 2 uses
  %.not553 = icmp eq ptr %i.gs, null
  br i1 %.not553, label %.thread621, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !140 ; 2 uses
  %.not554 = icmp eq ptr %i.gu, null
  br i1 %.not554, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 17
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !141
  %.not555 = icmp eq i8 %i.gw, 0
  br i1 %.not555, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  store i8 2, ptr %i.gp, align 1, !tbaa !9
  %i.gx = add nsw i32 %.3429765, 1
  br label %.thread621.sink.split

bb.av:                                            ; preds = %bb.as
  store i8 1, ptr %i.gp, align 1, !tbaa !9
  br label %.thread621.sink.split

bb.aw:                                            ; preds = %bb.at
  %i.gy = call fastcc i32 @addBinding(ptr noundef %0, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.gs, ptr noundef %4) ; 2 uses
  %.not556 = icmp eq i32 %i.gy, 0
  br i1 %.not556, label %.thread621, label %.critedge566

.thread621.sink.split:                            ; preds = %bb.av, %bb.au
  %.5431628.ph = phi i32 [ %i.gx, %bb.au ], [ %.3429765, %bb.av ]
  %i.gz = load ptr, ptr %i.gm, align 8, !tbaa !151
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !137
  %i.hb = sext i32 %.4455763 to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hb ; 2 uses
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !188
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !154
  %i.he = add nsw i32 %.4455763, 2
  %i.hf = getelementptr i8, ptr %i.hc, i64 8
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !188
  br label %.thread621

.thread621:                                       ; preds = %.thread621.sink.split, %bb.aq, %bb.ar, %bb.aw
  %.5431628 = phi i32 [ %.3429765, %bb.aw ], [ %.3429765, %bb.ar ], [ %.3429765, %bb.aq ], [ %.5431628.ph, %.thread621.sink.split ] ; 2 uses
  %.6457627 = phi i32 [ %.4455763, %bb.aw ], [ %.4455763, %bb.ar ], [ %.4455763, %bb.aq ], [ %i.he, %.thread621.sink.split ] ; 2 uses
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next860, %wide.trip.count862
  br i1 %exitcond863.not, label %._crit_edge768, label %bb.aq, !llvm.loop !338

._crit_edge768:                                   ; preds = %.thread621, %.loopexit698
  %.4455.lcssa = phi i32 [ %.0451.lcssa, %.loopexit698 ], [ %.6457627, %.thread621 ] ; 4 uses
  %.3429.lcssa = phi i32 [ %.0426.lcssa, %.loopexit698 ], [ %.5431628, %.thread621 ] ; 4 uses
  %i.hg = sext i32 %.4455.lcssa to i64            ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hg
  store ptr null, ptr %i.hh, align 8, !tbaa !188
  %.not517 = icmp eq i32 %.3429.lcssa, 0
  br i1 %.not517, label %.thread675, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge768
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 6 uses
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !339 ; 5 uses
  %i.hl = icmp ugt i8 %i.hk, 31
  br i1 %i.hl, label %.critedge566, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hm = zext nneg i8 %i.hk to i32               ; 2 uses
  %i.hn = shl i32 %.3429.lcssa, 1
  %i.ho = ashr i32 %i.hn, %i.hm
  %.not518 = icmp eq i32 %i.ho, 0
  br i1 %.not518, label %bb.be, label %.preheader696

.preheader696:                                    ; preds = %bb.ay, %.preheader696
  %i.hp = phi i8 [ %i.hq, %.preheader696 ], [ %i.hk, %bb.ay ] ; 2 uses
  %i.hq = add i8 %i.hp, 1                         ; 5 uses
  %i.hr = zext nneg i8 %i.hp to i32
  %i.hs = ashr i32 %.3429.lcssa, %i.hr
  %.not519 = icmp eq i32 %i.hs, 0
  br i1 %.not519, label %bb.az, label %.preheader696, !llvm.loop !340

bb.az:                                            ; preds = %.preheader696
  store i8 %i.hq, ptr %i.hj, align 8, !tbaa !339
  %i.ht = icmp ult i8 %i.hq, 3
  br i1 %i.ht, label %.thread629, label %bb.ba

.thread629:                                       ; preds = %bb.az
  store i8 3, ptr %i.hj, align 8, !tbaa !339
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.hu = icmp ugt i8 %i.hq, 31
  br i1 %i.hu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 %i.hk, ptr %i.hj, align 8, !tbaa !339
  br label %.critedge566

bb.bc:                                            ; preds = %.thread629, %bb.ba
  %i.hv = phi i8 [ 3, %.thread629 ], [ %i.hq, %bb.ba ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !132
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !187
  %i.ia = zext nneg i8 %i.hv to i64
  %i.ib = shl nuw nsw i64 24, %i.ia
  %i.ic = call ptr %i.hx(ptr noundef %i.hz, i64 noundef %i.ib) #19 ; 2 uses
  %.not520 = icmp eq ptr %i.ic, null
  br i1 %.not520, label %bb.bd, label %.thread935

bb.bd:                                            ; preds = %bb.bc
  store i8 %i.hk, ptr %i.hj, align 8, !tbaa !339
  br label %.critedge566

.thread935:                                       ; preds = %bb.bc
  %i.id = zext nneg i8 %i.hv to i32
  store ptr %i.ic, ptr %i.hy, align 8, !tbaa !187
  %.1408938 = shl nuw i32 1, %i.id
  br label %.preheader694

bb.be:                                            ; preds = %bb.ay
  %i.ie = load i64, ptr %i.hi, align 8, !tbaa !341 ; 2 uses
  %.1408 = shl nuw i32 1, %i.hm                   ; 2 uses
  %.not521 = icmp eq i64 %i.ie, 0
  br i1 %.not521, label %.preheader694, label %.loopexit695

.preheader694:                                    ; preds = %.thread935, %bb.be
  %.1408941 = phi i32 [ %.1408938, %.thread935 ], [ %.1408, %bb.be ] ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !187 ; 5 uses
  %xtraiter = and i32 %.1408941, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader694, %.prol.preheader
  %.0412772.prol = phi i32 [ %i.ih, %.prol.preheader ], [ %.1408941, %.preheader694 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader694 ]
  %i.ih = add i32 %.0412772.prol, -1              ; 3 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.ii
  store i64 4294967295, ptr %i.ij, align 8, !tbaa !342
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !344

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader694
  %.0412772.unr = phi i32 [ %.1408941, %.preheader694 ], [ %i.ih, %.prol.preheader ]
  %i.ik = icmp ult i32 %.1408941, 4
  br i1 %i.ik, label %.loopexit695, label %.preheader694.new

.preheader694.new:                                ; preds = %.prol.loopexit, %.preheader694.new
  %.0412772 = phi i32 [ %i.iu, %.preheader694.new ], [ %.0412772.unr, %.prol.loopexit ] ; 4 uses
  %i.il = add i32 %.0412772, -1
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.im
  store i64 4294967295, ptr %i.in, align 8, !tbaa !342
  %i.io = add i32 %.0412772, -2
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.ip
  store i64 4294967295, ptr %i.iq, align 8, !tbaa !342
  %i.ir = add i32 %.0412772, -3
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.is
  store i64 4294967295, ptr %i.it, align 8, !tbaa !342
  %i.iu = add i32 %.0412772, -4                   ; 3 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.iv
  store i64 4294967295, ptr %i.iw, align 8, !tbaa !342
  %.not522.3 = icmp eq i32 %i.iu, 0
  br i1 %.not522.3, label %.loopexit695, label %.preheader694.new, !llvm.loop !346

.loopexit695:                                     ; preds = %.prol.loopexit, %.preheader694.new, %bb.be
  %.1408940 = phi i32 [ %.1408, %bb.be ], [ %.1408941, %.preheader694.new ], [ %.1408941, %.prol.loopexit ] ; 2 uses
  %.2411 = phi i64 [ %i.ie, %bb.be ], [ 4294967295, %.preheader694.new ], [ 4294967295, %.prol.loopexit ]
  %i.ix = add i64 %.2411, -1                      ; 4 uses
  store i64 %i.ix, ptr %i.hi, align 8, !tbaa !341
  %i.iy = icmp sgt i32 %.4455.lcssa, 0
  br i1 %i.iy, label %.lr.ph793, label %.thread675

.lr.ph793:                                        ; preds = %.loopexit695
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.jl = add i32 %.1408940, -1                   ; 2 uses
  %i.jm = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %i.jp = xor i64 %i.jm, -1
  %i.jq = lshr i64 %i.jm, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 465
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 916
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph793, %bb.ci
  %indvars.iv867 = phi i64 [ 0, %.lr.ph793 ], [ %indvars.iv.next868, %bb.ci ] ; 3 uses
  %.6432791 = phi i32 [ %.3429.lcssa, %.lr.ph793 ], [ %.9435.ph, %bb.ci ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv867 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !188 ; 5 uses
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -1 ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !9
  %i.jx = icmp eq i8 %i.jw, 2
  br i1 %i.jx, label %bb.bg, label %bb.ch

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.07.i.i.i = phi ptr [ %0, %bb.bg ], [ %i.jz, %bb.bh ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 920
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i, label %copy_salt_to_sipkey.exit, label %bb.bh, !llvm.loop !214

copy_salt_to_sipkey.exit:                         ; preds = %bb.bh
  %i.ka = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 936
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !123 ; 2 uses
  store i64 8317987319222330741, ptr %5, align 8, !tbaa !347
  %i.kc = xor i64 %i.kb, 7237128888997146477
  store i64 %i.kc, ptr %i.iz, align 8, !tbaa !349
  store i64 7816392313619706465, ptr %i.ja, align 8, !tbaa !350
  %i.kd = xor i64 %i.kb, 8387220255154660723
  store i64 %i.kd, ptr %i.jb, align 8, !tbaa !351
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !352
  store i64 0, ptr %i.je, align 8, !tbaa !353
  store i8 0, ptr %i.jv, align 1, !tbaa !9
  %i.ke = load i64, ptr %i.jf, align 8, !tbaa !98
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %.thread665, label %bb.bi

bb.bi:                                            ; preds = %copy_salt_to_sipkey.exit
  %i.kg = call fastcc i64 @hash(ptr noundef readonly %0, ptr noundef nonnull %i.ju) ; 2 uses
  %i.kh = load i64, ptr %i.jf, align 8, !tbaa !98 ; 3 uses
  %i.ki = add i64 %i.kh, -1                       ; 2 uses
  %i.kj = and i64 %i.ki, %i.kg                    ; 2 uses
  %i.kk = load ptr, ptr %i.jg, align 8, !tbaa !48 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kj
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !13 ; 2 uses
  %.not184.i581 = icmp eq ptr %i.km, null
  br i1 %.not184.i581, label %.thread665, label %.lr.ph.i582

.lr.ph.i582:                                      ; preds = %bb.bi
  %i.kn = load i8, ptr %i.ju, align 1, !tbaa !9   ; 2 uses
  %i.ko = sub i64 0, %i.kh
  %i.kp = and i64 %i.kg, %i.ko
end_hunk_1
begin_hunk_2_@storeAtts:bb.a

bb.bs:                                            ; preds = %bb.br
  %i.mn = load i8, ptr %i.ml, align 1, !tbaa !9
  %.not4.i = icmp eq i8 %i.mn, 0
  br i1 %.not4.i, label %keylen.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bs
  %scevgep.i = getelementptr i8, ptr %.0405, i64 2
  %strlen.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i)
  %i.mo = add i64 %strlen.i, 1
  br label %keylen.exit

keylen.exit:                                      ; preds = %bb.bs, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.bs ], [ %i.mo, %.lr.ph.preheader.i ]
  %i.mp = call fastcc ptr @sip24_update(ptr noundef %5, ptr noundef nonnull %i.ml, i64 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %keylen.exit
  %.1406 = phi ptr [ %i.ml, %keylen.exit ], [ %i.mx, %bb.bv ] ; 3 uses
  %i.mq = load ptr, ptr %i.ji, align 8, !tbaa !171 ; 2 uses
  %i.mr = load ptr, ptr %i.jj, align 8, !tbaa !172
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.mt = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.jk)
  %.not527 = icmp eq i8 %i.mt, 0
  br i1 %.not527, label %.thread665, label %._crit_edge881

._crit_edge881:                                   ; preds = %bb.bu
  %.pre882 = load ptr, ptr %i.ji, align 8, !tbaa !171
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge881, %bb.bt
  %i.mu = phi ptr [ %.pre882, %._crit_edge881 ], [ %i.mq, %bb.bt ] ; 2 uses
  %i.mv = load i8, ptr %.1406, align 1, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  store ptr %i.mw, ptr %i.ji, align 8, !tbaa !171
  store i8 %i.mv, ptr %i.mu, align 1, !tbaa !9
  %i.mx = getelementptr inbounds nuw i8, ptr %.1406, i64 1
  %i.my = load i8, ptr %.1406, align 1, !tbaa !9
  %.not528 = icmp eq i8 %i.my, 0
  br i1 %.not528, label %bb.bw, label %bb.bt, !llvm.loop !356

bb.bw:                                            ; preds = %bb.bv
  %i.mz = call fastcc i64 @sip24_final(ptr noundef %5) ; 4 uses
  %i.na = trunc i64 %i.mz to i32
  %i.nb = and i32 %i.jl, %i.na                    ; 2 uses
  %i.nc = load ptr, ptr %i.jn, align 8, !tbaa !187 ; 3 uses
  %i.nd = zext nneg i32 %i.nb to i64              ; 2 uses
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %i.nc, i64 %i.nd ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !342
  %.not531784 = icmp eq i64 %i.nf, %i.ix
  br i1 %.not531784, label %.lr.ph788, label %.thread642

.lr.ph788:                                        ; preds = %bb.bw
  %i.ng = and i64 %i.mz, %i.jp
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph788, %bb.cb
  %i.nh = phi ptr [ %i.ne, %.lr.ph788 ], [ %i.oh, %bb.cb ] ; 2 uses
  %.0404786 = phi i8 [ 0, %.lr.ph788 ], [ %.1, %bb.cb ] ; 2 uses
  %.2414785 = phi i32 [ %i.nb, %.lr.ph788 ], [ %.3, %bb.cb ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !357
  %i.nk = icmp eq i64 %i.mz, %i.nj
  br i1 %i.nk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nl = load ptr, ptr %i.jo, align 8, !tbaa !173 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !358 ; 2 uses
  %i.no = load i8, ptr %i.nl, align 1, !tbaa !9   ; 2 uses
  %i.np = load i8, ptr %i.nn, align 1, !tbaa !9
  %i.nq = icmp ne i8 %i.no, %i.np
  %.not529777 = icmp eq i8 %i.no, 0               ; 2 uses
  %or.cond570778 = or i1 %.not529777, %i.nq
  br i1 %or.cond570778, label %.critedge, label %.lr.ph782

.lr.ph782:                                        ; preds = %bb.by, %.lr.ph782
  %.0402780 = phi ptr [ %i.ns, %.lr.ph782 ], [ %i.nn, %bb.by ]
  %.0403779 = phi ptr [ %i.nr, %.lr.ph782 ], [ %i.nl, %bb.by ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.0403779, i64 1 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0402780, i64 1 ; 2 uses
  %i.nt = load i8, ptr %i.nr, align 1, !tbaa !9   ; 2 uses
  %i.nu = load i8, ptr %i.ns, align 1, !tbaa !9
  %i.nv = icmp ne i8 %i.nt, %i.nu
  %.not529 = icmp eq i8 %i.nt, 0                  ; 2 uses
  %or.cond570 = or i1 %.not529, %i.nv
  br i1 %or.cond570, label %.critedge, label %.lr.ph782, !llvm.loop !359

.critedge:                                        ; preds = %.lr.ph782, %bb.by
  %.not529.lcssa = phi i1 [ %.not529777, %bb.by ], [ %.not529, %.lr.ph782 ]
  br i1 %.not529.lcssa, label %.thread665, label %bb.bz

bb.bz:                                            ; preds = %.critedge, %bb.bx
  %.not536 = icmp eq i8 %.0404786, 0
  br i1 %.not536, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.nw = load i8, ptr %i.hj, align 8, !tbaa !339
  %i.nx = zext i8 %i.nw to i64
  %i.ny = add nuw nsw i64 %i.nx, 4294967295
  %i.nz = and i64 %i.ny, 4294967295
  %i.oa = lshr i64 %i.ng, %i.nz
  %i.ob = and i64 %i.oa, %i.jq
  %i.oc = trunc i64 %i.ob to i8
  %i.od = or i8 %i.oc, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1 = phi i8 [ %.0404786, %bb.bz ], [ %i.od, %bb.ca ] ; 2 uses
  %i.oe = zext i8 %.1 to i32                      ; 2 uses
  %i.of = icmp ult i32 %.2414785, %i.oe
  %.3.p.v = select i1 %i.of, i32 %.1408940, i32 0
  %.3.p = sub i32 %.2414785, %i.oe
  %.3 = add i32 %.3.p, %.3.p.v                    ; 2 uses
  %i.og = zext i32 %.3 to i64                     ; 2 uses
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.nc, i64 %i.og ; 2 uses
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !342
  %.not531 = icmp eq i64 %i.oi, %i.ix
  br i1 %.not531, label %bb.bx, label %.thread642, !llvm.loop !360

.thread642:                                       ; preds = %bb.cb, %bb.bw
  %.lcssa718 = phi i64 [ %i.nd, %bb.bw ], [ %i.og, %bb.cb ]
  %i.oj = load i8, ptr %i.jr, align 1, !tbaa !67
  %.not532 = icmp eq i8 %i.oj, 0
  br i1 %.not532, label %.loopexit687, label %bb.cc

bb.cc:                                            ; preds = %.thread642
  %i.ok = load i8, ptr %i.js, align 4, !tbaa !65
  %i.ol = load ptr, ptr %i.ji, align 8, !tbaa !171
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -1
  store i8 %i.ok, ptr %i.om, align 1, !tbaa !9
  %i.on = load ptr, ptr %i.lr, align 8, !tbaa !306
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !127
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %bb.cc
  %.2 = phi ptr [ %i.oo, %bb.cc ], [ %i.ow, %bb.cf ] ; 3 uses
  %i.op = load ptr, ptr %i.ji, align 8, !tbaa !171 ; 2 uses
  %i.oq = load ptr, ptr %i.jj, align 8, !tbaa !172
  %i.or = icmp eq ptr %i.op, %i.oq
  br i1 %i.or, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.os = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.jk)
  %.not533 = icmp eq i8 %i.os, 0
  br i1 %.not533, label %.thread665, label %._crit_edge883

._crit_edge883:                                   ; preds = %bb.ce
  %.pre884 = load ptr, ptr %i.ji, align 8, !tbaa !171
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge883, %bb.cd
  %i.ot = phi ptr [ %.pre884, %._crit_edge883 ], [ %i.op, %bb.cd ] ; 2 uses
  %i.ou = load i8, ptr %.2, align 1, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store ptr %i.ov, ptr %i.ji, align 8, !tbaa !171
  store i8 %i.ou, ptr %i.ot, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ox = load i8, ptr %.2, align 1, !tbaa !9
  %.not534 = icmp eq i8 %i.ox, 0
  br i1 %.not534, label %.loopexit687.loopexit, label %bb.cd, !llvm.loop !361

.loopexit687.loopexit:                            ; preds = %bb.cf
  %.pre885 = load ptr, ptr %i.jn, align 8, !tbaa !187
  br label %.loopexit687

.loopexit687:                                     ; preds = %.loopexit687.loopexit, %.thread642
  %i.oy = phi ptr [ %.pre885, %.loopexit687.loopexit ], [ %i.nc, %.thread642 ]
  %i.oz = load ptr, ptr %i.jo, align 8, !tbaa !173 ; 2 uses
  %i.pa = load ptr, ptr %i.ji, align 8, !tbaa !171
  store ptr %i.pa, ptr %i.jo, align 8, !tbaa !173
  store ptr %i.oz, ptr %i.jt, align 8, !tbaa !188
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %i.oy, i64 %.lcssa718 ; 3 uses
  store i64 %i.ix, ptr %i.pb, align 8, !tbaa !342
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i64 %i.mz, ptr %i.pc, align 8, !tbaa !357
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store ptr %i.oz, ptr %i.pd, align 8, !tbaa !358
  %i.pe = add nsw i32 %.6432791, -1               ; 2 uses
  %.not535 = icmp eq i32 %i.pe, 0
  br i1 %.not535, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %.loopexit687
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bf
  store i8 0, ptr %i.jv, align 1, !tbaa !9
  br label %bb.ci

.thread665:                                       ; preds = %lookup.exit598, %bb.bn, %copy_salt_to_sipkey.exit, %bb.bi, %bb.bm, %bb.bp, %bb.bu, %.critedge, %bb.ce
  %.23.ph.ph = phi i32 [ 1, %bb.bp ], [ 8, %.critedge ], [ 1, %bb.bu ], [ 1, %bb.bm ], [ 1, %bb.ce ], [ 1, %copy_salt_to_sipkey.exit ], [ 1, %lookup.exit598 ], [ 1, %bb.bi ], [ 27, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge566

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.9435.ph = phi i32 [ %i.pe, %bb.cg ], [ %.6432791, %bb.ch ]
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 2 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv.next868 to i32   ; 2 uses
  %9 = icmp sgt i32 %.4455.lcssa, %8
  br i1 %9, label %bb.bf, label %.thread675, !llvm.loop !362

bb.cj:                                            ; preds = %.loopexit687
  %i.pf = trunc nuw nsw i64 %indvars.iv867 to i32
  %i.pg = add nuw nsw i32 %i.pf, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.thread675

.thread675:                                       ; preds = %bb.ci, %.loopexit695, %bb.cj, %._crit_edge768
  %.10446 = phi i32 [ 0, %._crit_edge768 ], [ %i.pg, %bb.cj ], [ 0, %.loopexit695 ], [ %8, %bb.ci ] ; 2 uses
  %i.ph = icmp slt i32 %.10446, %.4455.lcssa
  br i1 %i.ph, label %.lr.ph796.preheader, label %.preheader686

.lr.ph796.preheader:                              ; preds = %.thread675
  %i.pi = sext i32 %.10446 to i64
  br label %.lr.ph796

.preheader686:                                    ; preds = %.lr.ph796, %.thread675
  %.0424797 = load ptr, ptr %4, align 8, !tbaa !303 ; 2 uses
  %.not538798 = icmp eq ptr %.0424797, null
  br i1 %.not538798, label %._crit_edge801, label %.lr.ph800

.lr.ph796:                                        ; preds = %.lr.ph796.preheader, %.lr.ph796
  %indvars.iv870 = phi i64 [ %i.pi, %.lr.ph796.preheader ], [ %indvars.iv.next871, %.lr.ph796 ] ; 2 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv870
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !188
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 -1
  store i8 0, ptr %i.pl, align 1, !tbaa !9
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, 2 ; 2 uses
  %i.pm = icmp slt i64 %indvars.iv.next871, %i.hg
  br i1 %i.pm, label %.lr.ph796, label %.preheader686, !llvm.loop !363

.lr.ph800:                                        ; preds = %.preheader686, %.lr.ph800
  %.0424799 = phi ptr [ %.0424, %.lr.ph800 ], [ %.0424797, %.preheader686 ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0424799, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !364
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !137
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 -1
  store i8 0, ptr %i.pq, align 1, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.0424799, i64 8
  %.0424 = load ptr, ptr %i.pr, align 8, !tbaa !303 ; 2 uses
  %.not538 = icmp eq ptr %.0424, null
  br i1 %.not538, label %._crit_edge801, label %.lr.ph800, !llvm.loop !365

._crit_edge801:                                   ; preds = %.lr.ph800, %.preheader686
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !66
  %.not539 = icmp eq i8 %i.pt, 0
  br i1 %.not539, label %.critedge566, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge801
  %i.pu = getelementptr inbounds nuw i8, ptr %.1459, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !150 ; 2 uses
  %.not540 = icmp eq ptr %i.pv, null
  br i1 %.not540, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !307 ; 2 uses
  %.not542 = icmp eq ptr %i.px, null
  br i1 %.not542, label %.critedge566, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.py = load ptr, ptr %3, align 8, !tbaa !304
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.0422 = phi ptr [ %i.py, %bb.cm ], [ %i.pz, %bb.cn ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0422, i64 1 ; 2 uses
  %i.qa = load i8, ptr %.0422, align 1, !tbaa !9
  %.not543 = icmp eq i8 %i.qa, 58
  br i1 %.not543, label %.loopexit685, label %bb.cn, !llvm.loop !366

bb.co:                                            ; preds = %bb.ck
  %i.qb = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !322 ; 2 uses
  %.not541 = icmp eq ptr %i.qc, null
  br i1 %.not541, label %.critedge566, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qd = load ptr, ptr %3, align 8, !tbaa !304
  br label %.loopexit685

.loopexit685:                                     ; preds = %bb.cn, %bb.cp
  %.1425 = phi ptr [ %i.qc, %bb.cp ], [ %i.px, %bb.cn ] ; 7 uses
  %.1423 = phi ptr [ %i.qd, %bb.cp ], [ %i.pz, %bb.cn ] ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 465
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !67
  %.not544 = icmp eq i8 %i.qf, 0
  %.pre886 = load ptr, ptr %.1425, align 8, !tbaa !306
  %.pre887 = load ptr, ptr %.pre886, align 8, !tbaa !127 ; 3 uses
  %.not545 = icmp eq ptr %.pre887, null
  %or.cond988 = select i1 %.not544, i1 true, i1 %.not545
  br i1 %or.cond988, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit685
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre887)
  %i.qg = trunc i64 %strlen to i32
  %i.qh = add i32 %i.qg, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit685
  %.1450 = phi i32 [ 0, %.loopexit685 ], [ %i.qh, %.preheader.preheader ] ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.1423, ptr %i.qi, align 8, !tbaa !367
  %i.qj = getelementptr inbounds nuw i8, ptr %.1425, i64 40 ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !323 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !368
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.pre887, ptr %i.qm, align 8, !tbaa !369
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.1450, ptr %i.qn, align 8, !tbaa !370
  %strlen876 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1423) ; 2 uses
  %i.qo = trunc i64 %strlen876 to i32             ; 2 uses
  %i.qp = add i32 %i.qo, 1                        ; 2 uses
  %i.qq = sub nsw i32 2147483647, %.1450
  %i.qr = icmp sgt i32 %i.qk, %i.qq
  br i1 %i.qr, label %.critedge566, label %bb.cq

bb.cq:                                            ; preds = %.loopexit
  %i.qs = add i32 %.1450, %i.qk                   ; 2 uses
  %i.qt = sub i32 2147483647, %i.qs
  %.not548 = icmp samesign ugt i32 %i.qt, %i.qo
  br i1 %.not548, label %bb.cr, label %.critedge566

bb.cr:                                            ; preds = %bb.cq
  %i.qu = add i32 %i.qs, %i.qp                    ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.1425, i64 44 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !371
  %i.qx = icmp sgt i32 %i.qu, %i.qw
  br i1 %i.qx, label %bb.cs, label %._crit_edge889

._crit_edge889:                                   ; preds = %bb.cr
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1425, i64 32
  %.pre890 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !178
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.qy = icmp sgt i32 %i.qu, 2147483623
  br i1 %i.qy, label %.critedge566, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !40
  %i.rb = add nsw i32 %i.qu, 24                   ; 2 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = call ptr %i.ra(i64 noundef %i.rc) #19   ; 5 uses
  %.not549 = icmp eq ptr %i.rd, null
  br i1 %.not549, label %.critedge566, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.rb, ptr %i.qv, align 4, !tbaa !371
  %i.re = getelementptr inbounds nuw i8, ptr %.1425, i64 32 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !178
  %i.rg = load i32, ptr %i.qj, align 8, !tbaa !323
  %i.rh = sext i32 %i.rg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rd, ptr align 1 %i.rf, i64 %i.rh, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.0802 = load ptr, ptr %i.ri, align 8, !tbaa !281 ; 2 uses
  %.not550803 = icmp eq ptr %.0802, null
  %.pre888 = load ptr, ptr %i.re, align 8, !tbaa !178 ; 2 uses
  br i1 %.not550803, label %._crit_edge807, label %.lr.ph806

.lr.ph806:                                        ; preds = %bb.cu, %bb.cw
  %.0804 = phi ptr [ %.0, %bb.cw ], [ %.0802, %bb.cu ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0804, i64 24 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !287
  %i.rl = icmp eq ptr %i.rk, %.pre888
  br i1 %i.rl, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph806
  store ptr %i.rd, ptr %i.rj, align 8, !tbaa !287
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph806, %bb.cv
  %.0 = load ptr, ptr %.0804, align 8, !tbaa !281 ; 2 uses
  %.not550 = icmp eq ptr %.0, null
  br i1 %.not550, label %._crit_edge807, label %.lr.ph806, !llvm.loop !372

._crit_edge807:                                   ; preds = %bb.cw, %bb.cu
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !39
  call void %i.rn(ptr noundef %.pre888) #19
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !178
  %.pre891 = load i32, ptr %i.qj, align 8, !tbaa !323
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge889, %._crit_edge807
  %i.ro = phi i32 [ %i.qk, %._crit_edge889 ], [ %.pre891, %._crit_edge807 ]
  %i.rp = phi ptr [ %.pre890, %._crit_edge889 ], [ %i.rd, %._crit_edge807 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.1425, i64 32
  %i.rr = sext i32 %i.ro to i64
  %i.rs = getelementptr inbounds i8, ptr %i.rp, i64 %i.rr ; 2 uses
  %i.rt = zext nneg i32 %i.qp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rs, ptr noundef nonnull align 1 dereferenceable(1) %.1423, i64 %i.rt, i1 false)
  %.not551 = icmp eq i32 %.1450, 0
  br i1 %.not551, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 %strlen876 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.rw = load i8, ptr %i.rv, align 4, !tbaa !65
  store i8 %i.rw, ptr %i.ru, align 1, !tbaa !9
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  %i.ry = load ptr, ptr %.1425, align 8, !tbaa !306
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !127
  %i.sa = sext i32 %.1450 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rx, ptr align 1 %i.rz, i64 %i.sa, i1 false)
  br label %bb.cz
end_hunk_2
