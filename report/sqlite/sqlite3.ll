inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@jsonbPayloadSize:bb.a
bb.i:                                             ; preds = %bb.d
  %i.aa = add i32 %1, 4                           ; 2 uses
  %.not79 = icmp ult i32 %i.aa, %i.b
  br i1 %.not79, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ab = add nuw i32 %1, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = add i32 %1, 2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %i.ag
  %i.ao = add i32 %1, 3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !231
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.an, %i.at
  %i.av = zext i32 %i.aa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !231
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.au, %i.ay
  br label %bb.q

bb.k:                                             ; preds = %bb.d
  %i.ba = add i32 %1, 8                           ; 2 uses
  %.not74 = icmp ult i32 %i.ba, %i.b
  br i1 %.not74, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bb = add nuw i32 %1, 1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !231
  %.not75 = icmp eq i8 %i.be, 0
  br i1 %.not75, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %1, 2
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !231
  %.not76 = icmp eq i8 %i.bi, 0
  br i1 %.not76, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bj = add i32 %1, 3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !231
  %.not77 = icmp eq i8 %i.bm, 0
  br i1 %.not77, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %1, 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !231
  %.not78 = icmp eq i8 %i.bq, 0
  br i1 %.not78, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.br = add i32 %1, 5
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !231
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 24
  %i.bx = add i32 %1, 6
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = or disjoint i32 %i.cc, %i.bw
  %i.ce = add i32 %1, 7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !231
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cd, %i.cj
  %i.cl = zext i32 %i.ba to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !231
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.ck, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.h, %bb.p, %bb.j, %bb.f
  %.064 = phi i32 [ %i.i, %bb.c ], [ %i.n, %bb.f ], [ %i.z, %bb.h ], [ %i.az, %bb.j ], [ %i.cp, %bb.p ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.c ], [ 2, %bb.f ], [ 3, %bb.h ], [ 5, %bb.j ], [ 9, %bb.p ] ; 2 uses
  %i.cq = zext i32 %.064 to i64
  %i.cr = add nuw nsw i64 %i.cq, %i.d
  %i.cs = zext nneg i32 %.0 to i64
  %i.ct = add nuw nsw i64 %i.cr, %i.cs            ; 2 uses
  %i.cu = zext i32 %i.b to i64
  %i.cv = icmp samesign ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3139
  %i.cy = sub i32 %i.b, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ugt i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.i, %bb.g, %bb.e, %bb.a, %bb.s
  %.064.sink = phi i32 [ %.064, %bb.s ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.r ]
  %.065 = phi i32 [ %.0, %bb.s ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.r ]
  store i32 %.064.sink, ptr %2, align 4, !tbaa !27
  ret i32 %.065
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @jsonbValidityCheck(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #39 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.c = icmp ugt i32 %3, 1000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %1, 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc i32 @jsonbPayloadSize(ptr noundef %0, i32 noundef %1, ptr noundef %i.a) ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %1, 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = add i32 %i.e, %1                         ; 18 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !27   ; 8 uses
  %i.j = add i32 %i.i, %i.h
  %.not = icmp eq i32 %i.j, %2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %1, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !3128   ; 19 uses
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !231
  %i.p = and i8 %i.o, 15                          ; 6 uses
  switch i8 %i.p, label %bb.ck [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.q
    i8 5, label %bb.ac
    i8 6, label %bb.ac
    i8 7, label %.preheader
    i8 8, label %bb.bf
    i8 9, label %bb.bf
    i8 10, label %.loopexit
    i8 11, label %.preheader302
    i8 12, label %.preheader305
  ]

.preheader305:                                    ; preds = %bb.g
  %i.q = icmp ult i32 %i.h, %2
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader305
  %i.r = add nuw nsw i32 %3, 1
  br label %bb.cb

.preheader302:                                    ; preds = %bb.g
  %i.s = icmp ult i32 %i.h, %2
  br i1 %i.s, label %.lr.ph339, label %.loopexit

.lr.ph339:                                        ; preds = %.preheader302
  %i.t = add nuw nsw i32 %3, 1
  br label %bb.bv

.preheader:                                       ; preds = %bb.g
  %i.u = icmp ult i32 %i.h, %2
  br i1 %i.u, label %.lr.ph356.preheader, label %.loopexit

.lr.ph356.preheader:                              ; preds = %.preheader
  %4 = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph356

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.v = add i32 %i.i, %i.e
  %i.w = icmp eq i32 %i.v, 1
  %i.x = add i32 %1, 1
  %i.y = select i1 %i.w, i32 0, i32 %i.x
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %i.i, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = add i32 %1, 1
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ab = zext i32 %i.h to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !231
  %i.ae = icmp eq i8 %i.ad, 45
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.af = add i32 %i.h, 1
  %i.ag = icmp eq i32 %i.i, 1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = add i32 %1, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %bb.k
  %.0237 = phi i32 [ %i.af, %bb.l ], [ %i.h, %bb.k ] ; 2 uses
  %i.ai = icmp ult i32 %.0237, %2
  br i1 %i.ai, label %.lr.ph368.preheader, label %.loopexit

.lr.ph368.preheader:                              ; preds = %bb.n
  %i.aj = zext i32 %.0237 to i64
  %i.ak = zext i32 %2 to i64
  br label %.lr.ph368

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.o
  %indvars.iv397.a = phi i64 [ %i.aj, %.lr.ph368.preheader ], [ %indvars.iv.next398.a, %bb.o ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv397.a
  %i.am = load i8, ptr %i.al, align 1, !tbaa !231
  %i.an = add i8 %i.am, -58
  %.not295 = icmp ult i8 %i.an, -10
  br i1 %.not295, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph368
  %indvars.iv.next398.a = add nuw nsw i64 %indvars.iv397.a, 1 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next398.a, %i.ak
  br i1 %i.ao, label %.lr.ph368, label %.loopexit, !llvm.loop !3145

bb.p:                                             ; preds = %.lr.ph368
  %i.ap = trunc nuw i64 %indvars.iv397.a to i32
  %i.aq = add nuw i32 %i.ap, 1
  br label %.loopexit

bb.q:                                             ; preds = %bb.g
  %i.ar = icmp ult i32 %i.i, 3
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = add i32 %1, 1
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.at = zext i32 %i.h to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !231 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ax = icmp eq i32 %i.i, 3
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = add i32 %1, 1
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.az = add i32 %i.h, 1                         ; 2 uses
  %.pre402 = zext i32 %i.az to i64
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre402
  %.pre404 = load i8, ptr %.phi.trans.insert403, align 1, !tbaa !231
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ba = phi i8 [ %.pre404, %bb.v ], [ %i.av, %bb.s ]
  %.2239 = phi i32 [ %i.az, %bb.v ], [ %i.h, %bb.s ] ; 2 uses
  %.not291 = icmp eq i8 %i.ba, 48
  br i1 %.not291, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = add i32 %1, 1
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.bc = add i32 %.2239, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !231
  %i.bg = add i32 %.2239, 2                       ; 3 uses
  switch i8 %i.bf, label %.loopexit [
    i8 120, label %bb.z
    i8 88, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bh = icmp ult i32 %i.bg, %2
  br i1 %i.bh, label %.lr.ph365.preheader, label %.loopexit

.lr.ph365.preheader:                              ; preds = %bb.z
  %i.bi = zext i32 %i.bg to i64
  %i.bj = zext i32 %2 to i64
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.aa
  %indvars.iv.a = phi i64 [ %i.bi, %.lr.ph365.preheader ], [ %indvars.iv.next.a, %bb.aa ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.a
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !231
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !231
  %i.bp = and i8 %i.bo, 8
  %.not294 = icmp eq i8 %i.bp, 0
  br i1 %.not294, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph365
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next.a, %i.bj
  br i1 %i.bq, label %.lr.ph365, label %.loopexit, !llvm.loop !3146

bb.ab:                                            ; preds = %.lr.ph365
  %i.br = trunc nuw i64 %indvars.iv.a to i32
  %i.bs = add nuw i32 %i.br, 1
  br label %.loopexit

bb.ac:                                            ; preds = %bb.g, %bb.g
  %i.bt = icmp ult i32 %i.i, 2
  br i1 %i.bt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bu = add i32 %1, 1
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.bv = zext i32 %i.h to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !231 ; 2 uses
  %i.by = icmp eq i8 %i.bx, 45
  br i1 %i.by, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bz = icmp eq i32 %i.i, 2
  br i1 %i.bz, label %bb.ag, label %._crit_edge400

._crit_edge400:                                   ; preds = %bb.af
  %i.ca = add i32 %i.h, 1                         ; 2 uses
  %.phi.trans.insert = zext i32 %i.ca to i64
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert401, align 1, !tbaa !231
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cb = add i32 %1, 1
  br label %.loopexit

bb.ah:                                            ; preds = %._crit_edge400, %bb.ae
  %i.cc = phi i8 [ %.pre, %._crit_edge400 ], [ %i.bx, %bb.ae ] ; 2 uses
  %.4 = phi i32 [ %i.ca, %._crit_edge400 ], [ %i.h, %bb.ae ] ; 5 uses
  %i.cd = icmp eq i8 %i.cc, 46
  br i1 %i.cd, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ce = icmp eq i8 %i.p, 5
  %i.cf = add i32 %.4, 1                          ; 3 uses
  br i1 %i.ce, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !231
  %i.cj = add i8 %i.ci, -58
  %.not287 = icmp ult i8 %i.cj, -10
  br i1 %.not287, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = add i32 %.4, 2
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.cl = icmp eq i8 %i.cc, 48
  %i.cm = icmp eq i8 %i.p, 5
  %or.cond = and i1 %i.cm, %i.cl
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cn = add i32 %.4, 3
  %i.co = icmp ugt i32 %i.cn, %2
  %i.cp = add i32 %.4, 1                          ; 6 uses
  br i1 %i.co, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !231
  switch i8 %i.cs, label %.loopexit [
    i8 46, label %bb.ao
    i8 101, label %bb.ao
    i8 69, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.al, %bb.ak
  %.5 = phi i32 [ %i.ck, %bb.ak ], [ %.4, %bb.al ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ] ; 2 uses
  %.0235 = phi i8 [ 1, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.an ], [ 0, %bb.an ] ; 2 uses
  %i.ct = icmp ult i32 %.5, %2
  br i1 %i.ct, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %bb.ao
  %i.cu = add i32 %2, -1                          ; 3 uses
  %i.cv = icmp eq i8 %i.p, 5
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph360, %bb.bd
  %.1358 = phi i8 [ %.0235, %.lr.ph360 ], [ %.2, %bb.bd ] ; 3 uses
  %.6357 = phi i32 [ %.5, %.lr.ph360 ], [ %i.dr, %bb.bd ] ; 13 uses
  %i.cw = zext i32 %.6357 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !231 ; 2 uses
  %i.cz = add i8 %i.cy, -58
  %.not288 = icmp ult i8 %i.cz, -10
  br i1 %.not288, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.cy, label %bb.bc [
    i8 46, label %bb.ar
    i8 101, label %bb.aw
    i8 69, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  %.not289 = icmp eq i8 %.1358, 0
  br i1 %.not289, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = add i32 %.6357, 1
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  br i1 %i.cv, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.db = icmp eq i32 %.6357, %i.cu
  br i1 %i.db, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = add i32 %.6357, 1                       ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !231
  %i.dg = add i8 %i.df, -58
  %.not290 = icmp ult i8 %i.dg, -10
  br i1 %.not290, label %.loopexit, label %bb.bd

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  %i.dh = icmp eq i8 %.1358, 2
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.di = add i32 %.6357, 1
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.dj = icmp eq i32 %.6357, %i.cu
  br i1 %i.dj, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dk = add i32 %.6357, 1                       ; 3 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !231
  switch i8 %i.dn, label %bb.bd [
    i8 43, label %bb.ba
    i8 45, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.do = icmp eq i32 %i.dk, %i.cu
  br i1 %i.do, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.dp = add i32 %.6357, 2
  br label %.loopexit

bb.bc:                                            ; preds = %bb.aq
  %i.dq = add nuw i32 %.6357, 1
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ba, %bb.az, %bb.at, %bb.av, %bb.ap
  %.8 = phi i32 [ %.6357, %bb.ap ], [ %.6357, %bb.at ], [ %.6357, %bb.av ], [ %i.dk, %bb.ba ], [ %.6357, %bb.az ]
  %.2 = phi i8 [ %.1358, %bb.ap ], [ 1, %bb.at ], [ 1, %bb.av ], [ 2, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %i.dr = add i32 %.8, 1                          ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %2
  br i1 %i.ds, label %bb.ap, label %._crit_edge361, !llvm.loop !3147

._crit_edge361:                                   ; preds = %bb.bd, %bb.ao
  %.1.lcssa = phi i8 [ %.0235, %bb.ao ], [ %.2, %bb.bd ]
  %i.dt = icmp eq i8 %.1.lcssa, 0
  %i.du = add i32 %1, 1
  %spec.select = select i1 %i.dt, i32 %i.du, i32 0
  br label %.loopexit

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %bb.be
  %indvars.iv = phi i64 [ %4, %.lr.ph356.preheader ], [ %indvars.iv.next, %bb.be ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !231 ; 2 uses
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !231
  %.not282 = icmp ne i8 %i.dz, 0
  %.not283 = icmp eq i8 %i.dw, 39
  %or.cond296 = or i1 %.not283, %.not282
  br i1 %or.cond296, label %bb.be, label %5

5:                                                ; preds = %.lr.ph356
  %6 = trunc nuw i64 %indvars.iv to i32
  %7 = add nuw i32 %6, 1
  br label %.loopexit

bb.be:                                            ; preds = %.lr.ph356
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph356, !llvm.loop !3148

bb.bf:                                            ; preds = %bb.g, %bb.g
  %i.ea = icmp ult i32 %i.h, %2
  br i1 %i.ea, label %.lr.ph345, label %.loopexit

.lr.ph345:                                        ; preds = %bb.bf
  %.not278 = icmp eq i8 %i.p, 9
  %i.eb = icmp eq i8 %i.p, 8                      ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph345, %bb.bu
  %.10343 = phi i32 [ %i.h, %.lr.ph345 ], [ %i.fc, %bb.bu ] ; 11 uses
  %i.ec = zext i32 %.10343 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !231 ; 5 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !231
  %.not273 = icmp ne i8 %i.eh, 0
  %.not274 = icmp eq i8 %i.ee, 39
  %or.cond297 = or i1 %.not274, %.not273
  br i1 %or.cond297, label %bb.bu, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ei = icmp eq i8 %i.ee, 34
  br i1 %i.ei, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.eb, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  %i.ej = add nuw i32 %.10343, 1
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bh
  %i.ek = icmp ult i8 %i.ee, 32
  br i1 %i.ek, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.eb, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.el = add i32 %.10343, 1
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bk
  %.not275 = icmp eq i8 %i.ee, 92
  %i.em = add i32 %.10343, 1                      ; 9 uses
  %.not276 = icmp ult i32 %i.em, %2
  %or.cond511 = and i1 %.not275, %.not276
  br i1 %or.cond511, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !231 ; 2 uses
  %i.eq = zext i8 %i.ep to i32
  %memchr = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.620, i32 %i.eq, i64 9)
  %.not277 = icmp eq ptr %memchr, null
  br i1 %.not277, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.er = icmp eq i8 %i.ep, 117
  br i1 %i.er, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.es = add i32 %.10343, 5
  %.not280 = icmp ult i32 %i.es, %2
  br i1 %.not280, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.et = add i32 %.10343, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eu
  %i.ew = tail call fastcc i32 @jsonIs4Hex(ptr noundef %i.ev)
  %.not281 = icmp eq i32 %i.ew, 0
  br i1 %.not281, label %.loopexit, label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not278, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.ex = sub i32 %2, %.10343
  %i.ey = call fastcc i32 @jsonUnescapeOneChar(ptr noundef nonnull %i.ed, i32 noundef %i.ex, ptr noundef %i.b)
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !27
  %.not279 = icmp eq i32 %i.ez, 629145
  %i.fa = add i32 %.10343, -1
  %i.fb = add i32 %i.fa, %i.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not279, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bo, %bb.bi, %bb.bt, %bb.bl, %bb.bg
  %.12 = phi i32 [ %.10343, %bb.bg ], [ %.10343, %bb.bi ], [ %.10343, %bb.bl ], [ %i.fb, %bb.bt ], [ %i.em, %bb.bo ], [ %i.em, %bb.br ]
  %i.fc = add i32 %.12, 1                         ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %2
  br i1 %i.fd, label %bb.bg, label %.loopexit, !llvm.loop !3149

bb.bv:                                            ; preds = %.lr.ph339, %bb.ca
  %.13338 = phi i32 [ %i.h, %.lr.ph339 ], [ %i.fj, %bb.ca ] ; 5 uses
  %i.fe = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.13338, ptr noundef %i.a) ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fg = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.fh = add i32 %i.fe, %.13338
  %i.fi = load i32, ptr %i.a, align 4, !tbaa !27
  %i.fj = add i32 %i.fh, %i.fi                    ; 4 uses
  %i.fk = icmp ugt i32 %i.fj, %2
  br i1 %i.fk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.fl = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.fm = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.13338, i32 noundef %i.fj, i32 noundef %i.t) ; 2 uses
  %.not272 = icmp eq i32 %i.fm, 0
  br i1 %.not272, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fn = icmp ult i32 %i.fj, %2
  br i1 %i.fn, label %bb.bv, label %.loopexit, !llvm.loop !3150

bb.cb:                                            ; preds = %.lr.ph, %bb.cj
  %.0336 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %bb.cj ] ; 3 uses
  %.14335 = phi i32 [ %i.h, %.lr.ph ], [ %i.ft, %bb.cj ] ; 7 uses
  %i.fo = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.14335, ptr noundef %i.a) ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fq = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb
  %i.fr = add i32 %i.fo, %.14335
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ft = add i32 %i.fr, %i.fs                    ; 5 uses
  %i.fu = icmp ugt i32 %i.ft, %2
  br i1 %i.fu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fv = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.fw = and i32 %.0336, 1
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.fy = zext i32 %.14335 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !231
  %i.gb = and i8 %i.ga, 15
  %i.gc = add nsw i8 %i.gb, -11
  %or.cond5 = icmp ult i8 %i.gc, -4
  br i1 %or.cond5, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.gd = add nuw i32 %.14335, 1
  br label %.loopexit

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.ge = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.14335, i32 noundef %i.ft, i32 noundef %i.r) ; 2 uses
  %.not271 = icmp eq i32 %i.ge, 0
  br i1 %.not271, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.gf = add i32 %.0336, 1
  %i.gg = icmp ult i32 %i.ft, %2
  br i1 %i.gg, label %bb.cb, label %._crit_edge, !llvm.loop !3151

._crit_edge:                                      ; preds = %bb.cj
  %i.gh = trunc i32 %.0336 to i1
  %i.gi = add i32 %i.ft, 1
  br i1 %i.gh, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %.preheader305, %._crit_edge
  br label %.loopexit

bb.ck:                                            ; preds = %bb.g
  %i.gj = add i32 %1, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ci, %bb.ca, %bb.bz, %bb.bt, %bb.bq, %bb.br, %bb.bs, %bb.bu, %bb.bn, %bb.be, %bb.ay, %bb.au, %bb.av, %bb.aa, %bb.o, %bb.am, %bb.ai, %bb.y, %._crit_edge.thread, %._crit_edge, %.preheader302, %bb.bf, %.preheader, %bb.z, %bb.n, %._crit_edge361, %bb.cc, %bb.ce, %bb.ch, %bb.bw, %bb.by, %bb.g, %bb.ad, %bb.ag, %bb.as, %bb.ax, %bb.bb, %bb.bc, %bb.aj, %bb.an, %bb.ck, %bb.bm, %bb.bj, %5, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.p, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.6246 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ %i.gj, %bb.ck ], [ %i.y, %bb.h ], [ %i.aa, %bb.j ], [ %i.ah, %bb.m ], [ %i.aq, %bb.p ], [ %i.fl, %bb.by ], [ %i.as, %bb.r ], [ %i.ay, %bb.u ], [ %i.bb, %bb.x ], [ 0, %bb.aa ], [ %i.bs, %bb.ab ], [ 0, %.preheader302 ], [ 0, %bb.bf ], [ %7, %5 ], [ %spec.select, %._crit_edge361 ], [ %i.ej, %bb.bj ], [ %i.el, %bb.bm ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %.preheader ], [ %i.fq, %bb.cc ], [ %i.fv, %bb.ce ], [ %i.gd, %bb.ch ], [ 0, %bb.z ], [ 0, %bb.g ], [ %i.bu, %bb.ad ], [ %i.cb, %bb.ag ], [ %i.bg, %bb.y ], [ %i.da, %bb.as ], [ %i.em, %bb.br ], [ %i.di, %bb.ax ], [ %i.fm, %bb.bz ], [ %i.dp, %bb.bb ], [ %i.dq, %bb.bc ], [ 0, %._crit_edge.thread ], [ %i.cp, %bb.an ], [ %i.cf, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.fg, %bb.bw ], [ 0, %bb.be ], [ %i.gi, %._crit_edge ], [ %2, %bb.ay ], [ %i.cp, %bb.am ], [ %2, %bb.au ], [ %i.dc, %bb.av ], [ %i.em, %bb.bq ], [ %i.em, %bb.bt ], [ 0, %bb.bu ], [ %i.em, %bb.bs ], [ %i.em, %bb.bn ], [ 0, %bb.ca ], [ %i.ge, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.6246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @jsonIs4Hex(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !231
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !231
  %i.e = and i8 %i.d, 8
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %jsonIs2Hex.exit4, label %jsonIs2Hex.exit

jsonIs2Hex.exit:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !231
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %jsonIs2Hex.exit4, label %bb.b

bb.b:                                             ; preds = %jsonIs2Hex.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !231
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !231
  %i.q = and i8 %i.p, 8
  %.not.i2 = icmp eq i8 %i.q, 0
  br i1 %.not.i2, label %jsonIs2Hex.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %i.w = lshr i8 %i.v, 3
  %.lobit.i3 = and i8 %i.w, 1
  %i.x = zext nneg i8 %.lobit.i3 to i32
  br label %jsonIs2Hex.exit4

jsonIs2Hex.exit4:                                 ; preds = %bb.a, %bb.c, %bb.b, %jsonIs2Hex.exit
  %i.y = phi i32 [ 0, %jsonIs2Hex.exit ], [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsonUnescapeOneChar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.ce, %tailrecurse ]
  %.tr66.lcssa = phi i32 [ %1, %bb.a ], [ %i.cd, %tailrecurse ]
  store i32 629145, ptr %2, align 4, !tbaa !27
  br label %bb.al

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr66129 = phi i32 [ %i.cd, %tailrecurse ], [ %1, %bb.a ] ; 13 uses
  %.tr128 = phi ptr [ %i.ca, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  %accumulator.tr127 = phi i32 [ %i.ce, %tailrecurse ], [ 0, %bb.a ] ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr128, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231   ; 2 uses
  switch i8 %i.c, label %bb.ak [
    i8 117, label %bb.b
    i8 98, label %bb.j
    i8 102, label %bb.k
    i8 110, label %bb.l
    i8 114, label %bb.m
    i8 116, label %bb.n
    i8 118, label %bb.o
    i8 48, label %bb.p
    i8 39, label %bb.s
    i8 34, label %bb.s
    i8 47, label %bb.s
    i8 92, label %bb.s
    i8 120, label %bb.t
    i8 -30, label %.preheader
    i8 13, label %.preheader
    i8 10, label %.preheader
  ]

.preheader:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  br label %bb.w

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i32 %.tr66129, 6
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 629145, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.f = tail call fastcc i32 @jsonHexToInt4(ptr noundef nonnull %i.e) ; 3 uses
  %i.g = and i32 %i.f, 64512
  %i.h = icmp eq i32 %i.g, 55296
  %i.i = icmp ugt i32 %.tr66129, 11
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.tr128, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !231
  %i.l = icmp eq i8 %i.k, 92
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.tr128, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !231
  %i.o = icmp eq i8 %i.n, 117
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.q = tail call fastcc i32 @jsonHexToInt4(ptr noundef nonnull %i.p) ; 2 uses
  %i.r = and i32 %i.q, 64512
  %i.s = icmp eq i32 %i.r, 56320
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i32 %i.f, 10
  %i.u = and i32 %i.t, 1047552
  %i.v = and i32 %i.q, 1023
  %i.w = add nuw nsw i32 %i.u, 65536
  %i.x = or disjoint i32 %i.w, %i.v
  store i32 %i.x, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  store i32 %i.f, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.j:                                             ; preds = %.lr.ph
  store i32 8, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.k:                                             ; preds = %.lr.ph
  store i32 12, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.l:                                             ; preds = %.lr.ph
  store i32 10, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.m:                                             ; preds = %.lr.ph
  store i32 13, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.n:                                             ; preds = %.lr.ph
  store i32 9, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.o:                                             ; preds = %.lr.ph
  store i32 11, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.p:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.tr66129, 2
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !231
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  %i.ac = select i1 %i.ab, i32 629145, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = phi i32 [ 0, %bb.p ], [ %i.ac, %bb.q ]
  store i32 %i.ad, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.s:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ae = zext nneg i8 %i.c to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.t:                                             ; preds = %.lr.ph
  %i.af = icmp ult i32 %.tr66129, 4
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 629145, ptr %2, align 4, !tbaa !27
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231 ; 2 uses
  %i.ai = and i8 %i.ah, 64
  %.not.i = icmp eq i8 %i.ai, 0
  %i.aj = select i1 %.not.i, i8 0, i8 9
end_hunk_0
