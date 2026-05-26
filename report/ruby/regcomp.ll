inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@get_max_match_length:bb.a
  br i1 %.not113, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.bw = tail call fastcc i32 @get_max_match_length(ptr noundef %i.bv, ptr noundef %1, ptr noundef %2)
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  store i64 -1, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.t:                                             ; preds = %bb.a
  %i.bx = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !143
  %.not111 = icmp eq i32 %i.by, 0
  br i1 %.not111, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !146
  %i.cb = tail call fastcc i32 @get_max_match_length(ptr noundef %i.ca, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %1, align 8, !tbaa !34    ; 3 uses
  %.not112 = icmp eq i64 %i.cd, 0
  br i1 %.not112, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.bx, align 4, !tbaa !143 ; 2 uses
  switch i32 %i.ce, label %bb.x [
    i32 -1, label %bb.y
    i32 0, label %distance_multiply.exit
  ]

bb.x:                                             ; preds = %bb.w
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = udiv i64 -1, %i.cf
  %i.ch = icmp ult i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.cd, %i.cf
  %spec.select.i = select i1 %i.ch, i64 %i.ci, i64 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.w, %bb.x
  %.0.i123 = phi i64 [ 0, %bb.w ], [ %spec.select.i, %bb.x ]
  store i64 %.0.i123, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  store i64 -1, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.z:                                             ; preds = %bb.a
  %i.cj = getelementptr i8, ptr %0, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !147 ; 2 uses
  %i.cl = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ck)
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %.split, label %.critedge

.split:                                           ; preds = %bb.z
  %i.cn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ck, i1 true)
  switch i32 %i.cn, label %.critedge [
    i32 0, label %bb.aa
    i32 1, label %bb.ag
    i32 2, label %bb.ag
    i32 3, label %bb.ag
  ]

bb.aa:                                            ; preds = %.split
  %i.co = getelementptr i8, ptr %0, i64 4         ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !137 ; 3 uses
  %i.cq = and i32 %i.cp, 2
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr i8, ptr %0, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !304
  store i64 %i.cs, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa
  %i.ct = and i32 %i.cp, 8
  %.not110 = icmp eq i32 %i.ct, 0
  br i1 %.not110, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 -1, ptr %1, align 8, !tbaa !34
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.cu = or disjoint i32 %i.cp, 8
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !35
  %i.cv = getelementptr i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139
  %i.cx = tail call fastcc i32 @get_max_match_length(ptr noundef %i.cw, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !35
  %i.cz = and i32 %i.cy, -9                       ; 2 uses
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !35
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.db = load i64, ptr %1, align 8, !tbaa !34
  %i.dc = getelementptr i8, ptr %0, i64 40
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !304
  %i.dd = or i32 %i.cz, 2
  store i32 %i.dd, ptr %i.co, align 4, !tbaa !35
  br label %.critedge

bb.ag:                                            ; preds = %.split, %.split, %.split
  %i.de = getelementptr i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dg = tail call fastcc i32 @get_max_match_length(ptr noundef %i.df, ptr noundef %1, ptr noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.p, %bb.e, %.preheader127, %bb.b, %.preheader, %bb.k, %bb.j, %bb.f, %bb.g, %bb.h, %bb.s, %bb.r, %bb.a, %bb.u, %bb.v, %bb.y, %distance_multiply.exit, %bb.t, %bb.ab, %bb.ae, %bb.af, %bb.ad, %bb.z, %bb.ag, %.split
  %.1 = phi i32 [ %i.dg, %bb.ag ], [ 0, %bb.a ], [ 0, %bb.af ], [ %i.cx, %bb.ae ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.s ], [ %i.bw, %bb.r ], [ 0, %bb.j ], [ 0, %bb.t ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %distance_multiply.exit ], [ 0, %bb.v ], [ %i.cb, %bb.u ], [ 0, %.split ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.e ], [ %i.e, %.preheader ], [ %i.q, %.preheader127 ], [ 0, %bb.p ], [ %i.bk, %bb.m ], [ -208, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @alt_merge_opt_exact_info(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !93
  %i.h = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !92
  br label %.sink.split92

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !95
  %i.j = load i64, ptr %1, align 8, !tbaa !95
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %is_equal_mml.exit, label %is_equal_mml.exit.thread

is_equal_mml.exit:                                ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94
  %.not = icmp eq i64 %i.m, %i.o
  br i1 %.not, label %.preheader, label %is_equal_mml.exit.thread

.preheader:                                       ; preds = %is_equal_mml.exit
  %i.p = icmp sgt i32 %i.e, 0
  br i1 %i.p, label %.lr.ph76, label %.critedge

.lr.ph76:                                         ; preds = %.preheader
  %i.q = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 16
  br label %bb.e

is_equal_mml.exit.thread:                         ; preds = %bb.d, %is_equal_mml.exit
  %i.t = getelementptr i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.t, align 4, !tbaa !93
  store i32 0, ptr %i.d, align 8, !tbaa !92
  br label %.sink.split92

bb.e:                                             ; preds = %.lr.ph76, %.critedge67
  %i.u = phi i32 [ %i.e, %.lr.ph76 ], [ %i.ax, %.critedge67 ]
  %.075 = phi i32 [ 0, %.lr.ph76 ], [ %i.aw, %.critedge67 ] ; 7 uses
  %i.v = load i32, ptr %i.a, align 8, !tbaa !92
  %i.w = icmp slt i32 %.075, %i.v
  br i1 %i.w, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.x = sext i32 %.075 to i64                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x     ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %.not62 = icmp eq i8 %i.z, %i.ab
  br i1 %.not62, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !76  ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !155 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !156
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %.fr = freeze i32 %i.u
  %i.ai = sext i32 %.fr to i64
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ai   ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ult ptr %i.y, %i.aj
  br i1 %i.ak, label %select.unfold, label %.critedge67

bb.i:                                             ; preds = %bb.g
  %i.al = tail call i32 @onigenc_mbclen(ptr noundef nonnull %i.y, ptr noundef %i.aj, ptr noundef nonnull %i.ac) #22
  br label %select.unfold

select.unfold:                                    ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ %i.al, %bb.i ], [ %i.ae, %bb.h ] ; 4 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge67

.lr.ph.preheader:                                 ; preds = %select.unfold
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge67, label %.lr.ph, !llvm.loop !309

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = add i32 %.075, %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.q, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = getelementptr i8, ptr %i.r, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %.not63 = icmp eq i8 %i.as, %i.au
  br i1 %.not63, label %bb.j, label %.critedge

.critedge67:                                      ; preds = %bb.j, %bb.h, %select.unfold
  %i.av = phi i32 [ 0, %bb.h ], [ %i.am, %select.unfold ], [ %i.am, %bb.j ]
  %i.aw = add i32 %i.av, %.075                    ; 3 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !92  ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %.critedge, !llvm.loop !310

.critedge:                                        ; preds = %bb.e, %bb.f, %.critedge67, %.lr.ph, %.preheader
  %.072 = phi i32 [ %.075, %.lr.ph ], [ 0, %.preheader ], [ %.075, %bb.e ], [ %.075, %bb.f ], [ %i.aw, %.critedge67 ] ; 3 uses
  %i.az = getelementptr i8, ptr %1, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !268
  %.not64 = icmp eq i32 %i.ba, 0
  br i1 %.not64, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !92
  %i.bc = icmp slt i32 %.072, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !92
  %i.be = icmp slt i32 %.072, %i.bd
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %.critedge
  %i.bf = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %.072, ptr %i.d, align 8, !tbaa !92
  %i.bg = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !93 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %i.bj = getelementptr i8, ptr %1, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93 ; 3 uses
  br i1 %i.bi, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = or i32 %i.bk, %i.bh
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.p
  %.sink = phi i32 [ %i.bm, %bb.p ], [ %i.bk, %bb.n ]
  store i32 %.sink, ptr %i.bg, align 4, !tbaa !93
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %i.bn = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 16
  %i.bp = getelementptr i8, ptr %0, i64 20
  %i.bq = load <2 x i32>, ptr %i.bo, align 8, !tbaa !7
  %i.br = load <2 x i32>, ptr %i.bn, align 8, !tbaa !7
  %i.bs = and <2 x i32> %i.br, %i.bq              ; 2 uses
  store <2 x i32> %i.bs, ptr %i.bn, align 8, !tbaa !7
  %i.bt = getelementptr i8, ptr %0, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !268
  %.not65 = icmp eq i32 %i.bu, 0
  %i.bv = extractelement <2 x i32> %i.bs, i64 1
  %spec.store.select = select i1 %.not65, i32 0, i32 %i.bv
  store i32 %spec.store.select, ptr %i.bp, align 4
  br label %bb.r

.sink.split92:                                    ; preds = %bb.c, %is_equal_mml.exit.thread
  %i.bw = getelementptr i8, ptr %0, i64 36
  store i8 0, ptr %i.bw, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.sink.split92
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @set_bm_skip(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 5 uses
  %5 = alloca [13 x %struct.OnigCaseFoldCodeItem], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr i8, ptr %2, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 14 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %4, 0                       ; 2 uses
  %i.h = icmp ne ptr %1, %0
  %or.cond = and i1 %.not, %i.h
  br i1 %or.cond, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 72
  %i.j = getelementptr i8, ptr %2, i64 96
  %i.k = getelementptr i8, ptr %i.c, i64 16
  %i.l = getelementptr i8, ptr %i.c, i64 20
  %i.m = getelementptr i8, ptr %i.c, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph6, %._crit_edge
  %.01035 = phi i64 [ 0, %.lr.ph6 ], [ %i.an, %._crit_edge ] ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %.01035    ; 8 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.p = load i32, ptr %i.j, align 8, !tbaa !80
  %i.q = call i32 %i.o(i32 noundef %i.p, ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %i.c) #22 ; 2 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.s = load i32, ptr %i.l, align 4, !tbaa !156
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.n, %1
  %spec.select = select i1 %i.u, i32 %i.r, i32 0
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = call i32 @onigenc_mbclen(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull %i.c) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.n, i64 %i.x
  %i.z = icmp ugt ptr %i.y, %1
  %i.aa = ptrtoint ptr %i.n to i64                ; 4 uses
  %i.ab = sub i64 %i.d, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %.0101 = select i1 %i.z, i32 %i.ac, i32 %i.w    ; 3 uses
  %i.ad = icmp sgt i32 %i.q, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !311

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ae = getelementptr [20 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !160
  %.not110 = icmp eq i32 %i.ag, 1
  br i1 %.not110, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !158
  %.not111 = icmp eq i32 %i.ah, %.0101
  br i1 %.not111, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.aj = getelementptr i8, ptr %i.ae, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
end_hunk_0
