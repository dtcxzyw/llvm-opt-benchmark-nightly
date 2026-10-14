Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL7enumToUP19UConverterMBCSTablePaijjPFaPKvjPiES3_P10UErrorCode:bb.a
  %spec.store.select = select i1 %i.az, i32 %i.ay, i32 -1
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ba = and i32 %i.ad, 65535
  %i.bb = add i32 %i.ba, %3                       ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !21 ; 4 uses
  %i.bg = zext i16 %i.bf to i32                   ; 2 uses
  %i.bh = icmp ult i16 %i.bf, -10240
  br i1 %i.bh, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp samesign ult i16 %i.bf, -9216
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = shl nuw nsw i32 %i.bg, 10
  %i.bk = and i32 %i.bj, 1047552
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !21
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bk, 9216
  %i.bq = add nuw nsw i32 %i.bp, %i.bo
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.br = icmp eq i16 %i.bf, -8192
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = sext i32 %i.bc to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !21
  %i.bv = zext i16 %i.bu to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.bw = and i32 %i.ad, 1048575
  %i.bx = add nuw nsw i32 %i.bw, 65536
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.k, %bb.o, %bb.m, %bb.n, %bb.j, %bb.p, %bb.i
  %.169 = phi i32 [ %i.as, %bb.i ], [ %spec.store.select, %bb.j ], [ -1, %bb.n ], [ %i.bx, %bb.p ], [ %i.bg, %bb.k ], [ %i.bq, %bb.m ], [ %i.bv, %bb.o ], [ -1, %bb.h ] ; 2 uses
  %i.by = and i64 %indvars.iv, 31
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.by
  store i32 %.169, ptr %i.bz, align 4, !tbaa !26
  %i.ca = and i32 %.169, %.0751
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  %.176 = phi i32 [ %.0751, %.critedge ], [ %i.ca, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cb = and i64 %indvars.iv.next, 31
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = icmp sgt i32 %.176, -1
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.s, label %_ZL20writeStage3RoundtripPKvjPi.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc i64 %indvars.iv to i32
  %i.cf = add i32 %i.ce, -31
  %i.cg = or i32 %i.cf, %i.h                      ; 11 uses
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %i.cj = load i8, ptr %i.z, align 4, !tbaa !18
  switch i8 %i.cj, label %.preheader [
    i8 8, label %bb.t
    i8 9, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp ult i32 %i.cg, 65536
  br i1 %i.ck, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp ult i32 %i.cg, 9371648
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = and i32 %i.cg, 32767
  br label %.preheader

bb.w:                                             ; preds = %bb.u
  %i.cn = and i32 %i.cg, 65407
  br label %.preheader

bb.x:                                             ; preds = %bb.s
  %i.co = icmp ult i32 %i.cg, 16777216
  br i1 %i.co, label %.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = icmp ult i32 %i.cg, -1895825408
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cq = and i32 %i.cg, 8388607
  br label %.preheader

bb.aa:                                            ; preds = %bb.y
  %i.cr = and i32 %i.cg, 16744447
  br label %.preheader

.preheader:                                       ; preds = %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s
  %.145.i.ph = phi i32 [ %i.cg, %bb.s ], [ %i.cg, %bb.t ], [ %i.cm, %bb.v ], [ %i.cn, %bb.w ], [ %i.cg, %bb.x ], [ %i.cq, %bb.z ], [ %i.cr, %bb.aa ]
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %.preheader ] ; 2 uses
  %.145.i = phi i32 [ %i.ed, %bb.ah ], [ %.145.i.ph, %.preheader ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !26 ; 4 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = lshr i32 %i.ct, 10
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !21
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cz
  %i.db = lshr i32 %i.ct, 4
  %i.dc = and i32 %i.db, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dd ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !26
  %i.dg = shl i32 %i.df, 4
  %i.dh = and i32 %i.dg, 1048560
  %i.di = and i32 %i.ct, 15                       ; 2 uses
  %i.dj = or disjoint i32 %i.dh, %i.di            ; 3 uses
  %i.dk = load i8, ptr %i.z, align 4, !tbaa !18
  switch i8 %i.dk, label %bb.af [
    i8 2, label %bb.ad
    i8 9, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.dl = mul nuw nsw i32 %i.dj, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dm ; 3 uses
  %i.do = lshr i32 %.145.i, 16
  %i.dp = trunc i32 %i.do to i8
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !27
  %i.dq = lshr i32 %.145.i, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !27
  %i.dt = trunc i32 %.145.i to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !27
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dv = zext nneg i32 %i.dj to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dv
  store i32 %.145.i, ptr %i.dw, align 4, !tbaa !26
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dx = trunc i32 %.145.i to i16
  %i.dy = zext nneg i32 %i.dj to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.dy
  store i16 %i.dx, ptr %i.dz, align 2, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ea = shl nuw i32 65536, %i.di
  %i.eb = load i32, ptr %i.de, align 4, !tbaa !26
  %i.ec = or i32 %i.eb, %i.ea
  store i32 %i.ec, ptr %i.de, align 4, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %i.ed = add i32 %.145.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %_ZL20writeStage3RoundtripPKvjPi.exit, label %bb.ab, !llvm.loop !196

_ZL20writeStage3RoundtripPKvjPi.exit:             ; preds = %bb.ah, %bb.r
  %.378 = phi i32 [ %.176, %bb.r ], [ -1, %bb.ah ]
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ee, label %bb.e, label %.critedge88, !llvm.loop !197

.critedge88:                                      ; preds = %_ZL20writeStage3RoundtripPKvjPi.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17ucnv_SBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !48
  %i.z = and i32 %i.y, 16
  %.not = icmp eq i32 %i.z, 0
  %.0224.in.v = select i1 %.not, i64 232, i64 240
  %.0224.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0224.in.v
  %.0224 = load ptr, ptr %.0224.in, align 8, !tbaa !49 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 260
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !72
  %.not255 = icmp eq i8 %i.ad, 0
  %.0207 = select i1 %.not255, i32 3072, i32 2048 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !43
  %i.ag = and i8 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !54  ; 2 uses
  %i.aj = icmp sgt i8 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.an = load i32, ptr %i.am, align 8, !tbaa !56
  %i.ao = shl i32 %i.al, 24
  %i.ap = ashr exact i32 %i.ao, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0216 = phi i8 [ %i.ai, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0214 = phi i32 [ %i.ap, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0209 = phi i32 [ %i.an, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.aq = ptrtoint ptr %i.j to i64
  %i.ar = ptrtoint ptr %i.h to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = zext nneg i8 %.0216 to i32
  %.neg = sub nsw i32 %i.au, %.0214
  %i.av = add i32 %.neg, %i.at                    ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27  ; 4 uses
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp samesign ult i8 %i.ay, -64
  %i.bb = icmp ne i32 %i.av, 1
  %or.cond = and i1 %i.bb, %i.ba
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds i8, ptr %i.j, i64 -2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27  ; 2 uses
  %i.be = and i8 %i.bd, -16
  %or.cond4 = icmp eq i8 %i.be, -32
  br i1 %or.cond4, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bf = and i8 %i.bd, 15
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = zext i8 %i.bi to i32
  %i.bk = lshr i8 %i.ay, 5
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bj
  %.not256 = icmp eq i32 %i.bn, 0
  %spec.select = select i1 %.not256, ptr %i.j, ptr %i.bc
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bo = add nsw i8 %i.ay, 62
  %or.cond7 = icmp ult i8 %i.bo, 46
  %spec.select267 = select i1 %or.cond7, ptr %i.ax, ptr %i.j
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.c
  %.2233 = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %spec.select, %bb.g ], [ %spec.select267, %bb.h ], [ %i.j, %bb.f ] ; 2 uses
  %i.bp = icmp ne i32 %.0209, 0
  %i.bq = icmp sgt i32 %i.r, 0
  %or.cond9 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond9, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.ai, %bb.an, %bb.i
  %.0234.ph = phi ptr [ %i.h, %bb.i ], [ %.7, %bb.an ], [ %.7, %bb.ai ] ; 4 uses
  %.0225.ph = phi i32 [ %i.r, %bb.i ], [ %i.lc, %bb.an ], [ %i.ki, %bb.ai ] ; 2 uses
  %i.br = icmp ult ptr %.0234.ph, %.2233
  br i1 %i.br, label %.lr.ph362.preheader, label %.loopexit

.lr.ph362.preheader:                              ; preds = %.preheader
  %i.bs = trunc nuw nsw i32 %.0207 to i16         ; 2 uses
  %i.bt = icmp sgt i32 %.0225.ph, 0
  br i1 %i.bt, label %.lr.ph639, label %.loopexit.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 0, ptr %i.bu, align 8, !tbaa !56
  store i8 0, ptr %i.ah, align 8, !tbaa !54
  br label %.thread274

.lr.ph362:                                        ; preds = %.backedge
  %.0225.be = add nsw i32 %.0225361637, -1
  %i.bv = icmp sgt i32 %.0225361637, 1
  br i1 %i.bv, label %.lr.ph639, label %.loopexit.thread, !llvm.loop !198

.lr.ph639:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %.0234360638 = phi ptr [ %.0234.be, %.lr.ph362 ], [ %.0234.ph, %.lr.ph362.preheader ] ; 5 uses
  %.0225361637 = phi i32 [ %.0225.be, %.lr.ph362 ], [ %.0225.ph, %.lr.ph362.preheader ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0234360638, i64 1 ; 7 uses
  %i.bx = load i8, ptr %.0234360638, align 1, !tbaa !27
  %.fr = freeze i8 %i.bx                          ; 9 uses
  %i.by = icmp sgt i8 %.fr, -1
  %i.bz = zext i8 %.fr to i32                     ; 7 uses
  br i1 %i.by, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph639
  %i.ca = lshr i32 %i.bz, 2
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = and i32 %i.cb, %i.ab
  %.not266 = icmp eq i32 %i.cc, 0
  br i1 %.not266, label %bb.l, label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.q, %bb.v
  %.sink = phi i8 [ %i.dv, %bb.v ], [ %i.dc, %bb.q ], [ %.fr, %bb.k ]
  %.0234.be = phi ptr [ %i.dm, %bb.v ], [ %i.ct, %bb.q ], [ %i.bw, %bb.k ] ; 4 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !49
  store i8 %.sink, ptr %i.cd, align 1, !tbaa !27
  %i.cf = icmp ult ptr %.0234.be, %.2233
  br i1 %i.cf, label %.lr.ph362, label %.loopexit, !llvm.loop !198

bb.l:                                             ; preds = %bb.k
  %i.cg = load i16, ptr %i.w, align 8, !tbaa !21
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.ch, %i.bz
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0224, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !21
  br label %bb.ah

bb.m:                                             ; preds = %.lr.ph639
  %i.cm = icmp samesign ult i8 %.fr, -32
  br i1 %i.cm, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp samesign ugt i8 %.fr, -63
  br i1 %i.cn, label %bb.o, label %.thread274

bb.o:                                             ; preds = %bb.n
  %i.co = load i8, ptr %i.bw, align 1, !tbaa !27
  %i.cp = xor i8 %i.co, -128                      ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 64
  br i1 %i.cq, label %bb.p, label %.thread273.thread

bb.p:                                             ; preds = %bb.o
  %i.cr = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cs = and i32 %i.bz, 31                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0234360638, i64 2 ; 2 uses
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !21
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.cx, %i.cr
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0224, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !21 ; 3 uses
  %.not265 = icmp ult i16 %i.db, %i.bs
  br i1 %.not265, label %.loopexit557, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = trunc i16 %i.db to i8
  br label %.backedge

bb.r:                                             ; preds = %bb.m
  %i.dd = icmp eq i8 %.fr, -32
  br i1 %i.dd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.bw, align 1, !tbaa !27
  %i.df = xor i8 %i.de, -128                      ; 3 uses
  %i.dg = and i8 %i.df, -32
  %or.cond12 = icmp eq i8 %i.dg, 32
  br i1 %or.cond12, label %bb.t, label %.thread273.thread

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %.0234360638, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = xor i8 %i.di, -128                      ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 64
  br i1 %i.dk, label %bb.u, label %.thread273.thread

bb.u:                                             ; preds = %bb.t
  %i.dl = zext nneg i8 %i.dj to i32               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0234360638, i64 3 ; 2 uses
  %i.dn = zext nneg i8 %i.df to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !21
  %i.dq = zext i16 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, %i.dl
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.0224, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !21 ; 3 uses
  %.not264 = icmp ult i16 %i.du, %i.bs
  br i1 %.not264, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = trunc i16 %i.du to i8
  br label %.backedge

bb.w:                                             ; preds = %bb.u
  %i.dw = zext nneg i8 %i.df to i32
  br label %.loopexit557

.loopexit557:                                     ; preds = %bb.p, %bb.w
  %.sink538 = phi i32 [ %i.dw, %bb.w ], [ %i.cs, %bb.p ]
  %.lcssa480.sink = phi i32 [ %i.dl, %bb.w ], [ %i.cr, %bb.p ]
  %.1235 = phi ptr [ %i.dm, %bb.w ], [ %i.ct, %bb.p ]
  %.1 = phi i16 [ %i.du, %bb.w ], [ %i.db, %bb.p ]
  %i.dx = shl nuw nsw i32 %.sink538, 6
  %i.dy = or disjoint i32 %i.dx, %.lcssa480.sink
  br label %bb.ah

bb.x:                                             ; preds = %bb.r
  %i.dz = icmp samesign ult i8 %.fr, -11
  br i1 %i.dz, label %.thread273, label %.thread274

.thread273.thread:                                ; preds = %bb.s, %bb.o, %bb.t
  %i.ea = icmp samesign ugt i8 %.fr, -33
  %i.eb = zext i1 %i.ea to i32
  br label %bb.y

.thread273:                                       ; preds = %bb.x
  %i.ec = icmp ugt i8 %.fr, -17
  %spec.select539 = select i1 %i.ec, i32 3, i32 2
  br label %bb.y

bb.y:                                             ; preds = %.thread273, %.thread273.thread
  %i.ed = phi i32 [ %i.eb, %.thread273.thread ], [ 1, %.thread273 ]
  %i.ee = phi i32 [ 2, %.thread273.thread ], [ %spec.select539, %.thread273 ]
  %i.ef = add nuw nsw i32 %i.ee, %i.ed
  br label %.thread274

.thread274:                                       ; preds = %bb.n, %bb.y, %bb.x, %bb.j
  %.2236 = phi ptr [ %i.h, %bb.j ], [ %i.bw, %bb.y ], [ %i.bw, %bb.x ], [ %i.bw, %bb.n ] ; 6 uses
  %.1226 = phi i32 [ %i.r, %bb.j ], [ %.0225361637, %bb.y ], [ %.0225361637, %bb.x ], [ %.0225361637, %bb.n ] ; 2 uses
  %.1221 = phi i8 [ %.0216, %bb.j ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.n ] ; 6 uses
  %.1217 = phi i8 [ %.0216, %bb.j ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.n ] ; 6 uses
  %.1215 = phi i32 [ %.0214, %bb.j ], [ %i.ef, %bb.y ], [ 0, %bb.x ], [ 0, %bb.n ]
  %.2211 = phi i32 [ %.0209, %bb.j ], [ %i.bz, %bb.y ], [ %i.bz, %bb.x ], [ %i.bz, %bb.n ] ; 5 uses
  %.1215.fr = freeze i32 %.1215                   ; 7 uses
  %i.eg = zext nneg i8 %.1217 to i32              ; 6 uses
  %i.eh = icmp sgt i32 %.1215.fr, %i.eg
  br i1 %i.eh, label %.lr.ph, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph:                                           ; preds = %.thread274
  %i.ei = load ptr, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.ej = icmp samesign ult i32 %.1215.fr, 3
  %i.ek = icmp eq i32 %.1215.fr, 3
  %i.el = icmp ult ptr %.2236, %i.ei              ; 2 uses
  br i1 %i.ej, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.el, label %.lr.ph626, label %.split.us

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.el, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.split.us

.lr.ph.split.us:                                  ; preds = %bb.z
  %i.em = icmp ult ptr %i.eq, %i.ei
  br i1 %i.em, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.split.us, !llvm.loop !199

_ZN6icu_784UTF812isValidTrailEihii.exit.us:       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.3237326.us632 = phi ptr [ %i.eq, %.lr.ph.split.us ], [ %.2236, %.lr.ph.split.us.preheader ] ; 3 uses
  %.2218327.us631 = phi i8 [ %i.er, %.lr.ph.split.us ], [ %.1217, %.lr.ph.split.us.preheader ] ; 2 uses
  %.3212328.us630 = phi i32 [ %i.eu, %.lr.ph.split.us ], [ %.2211, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.en = phi i32 [ %i.ev, %.lr.ph.split.us ], [ %i.eg, %.lr.ph.split.us.preheader ]
  %i.eo = load i8, ptr %.3237326.us632, align 1, !tbaa !27 ; 2 uses
  %i.ep = icmp sgt i8 %i.eo, -65
  br i1 %i.ep, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit.us
  %i.eq = getelementptr inbounds nuw i8, ptr %.3237326.us632, i64 1 ; 4 uses
  %i.er = add i8 %.2218327.us631, 1               ; 4 uses
  %i.es = shl i32 %.3212328.us630, 6
  %i.et = zext i8 %i.eo to i32
  %i.eu = add nsw i32 %i.es, %i.et                ; 3 uses
  %i.ev = sext i8 %i.er to i32                    ; 4 uses
  %i.ew = icmp sgt i32 %.1215.fr, %i.ev
  br i1 %i.ew, label %.lr.ph.split.us, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !199

.lr.ph.split:                                     ; preds = %bb.ae
  %i.ex = icmp ult ptr %i.fs, %i.ei
  br i1 %i.ex, label %.lr.ph626, label %.split.us, !llvm.loop !199

.lr.ph626:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.3237326625 = phi ptr [ %i.fs, %.lr.ph.split ], [ %.2236, %.lr.ph.split.preheader ] ; 3 uses
  %.2218327624 = phi i8 [ %i.ft, %.lr.ph.split ], [ %.1217, %.lr.ph.split.preheader ] ; 3 uses
  %.3212328623 = phi i32 [ %i.fw, %.lr.ph.split ], [ %.2211, %.lr.ph.split.preheader ] ; 4 uses
  %i.ey = phi i32 [ %i.fx, %.lr.ph.split ], [ %i.eg, %.lr.ph.split.preheader ]
  %i.ez = load i8, ptr %.3237326625, align 1, !tbaa !27 ; 4 uses
  %i.fa = icmp sgt i8 %.2218327624, 1
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph626
  %i.fb = icmp slt i8 %i.ez, -64
  %i.fc = zext i1 %i.fb to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ab:                                            ; preds = %.lr.ph626
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fd = and i32 %.3212328623, 15
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = lshr i8 %i.ez, 5
  %i.fi = shl nuw i8 1, %i.fh
  %i.fj = and i8 %i.fg, %i.fi
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fk = lshr i8 %i.ez, 4
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !27
  %i.fo = and i32 %.3212328623, 7
  %i.fp = shl nuw nsw i32 1, %i.fo
  %i.fq = trunc nuw i32 %i.fp to i8
  %i.fr = and i8 %i.fn, %i.fq
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.aa, %bb.ac, %bb.ad
  %.0.i = phi i8 [ %i.fc, %bb.aa ], [ %i.fj, %bb.ac ], [ %i.fr, %bb.ad ]
  %.not258 = icmp eq i8 %.0.i, 0
  br i1 %.not258, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.3237326625, i64 1 ; 4 uses
  %i.ft = add i8 %.2218327624, 1                  ; 4 uses
  %i.fu = shl i32 %.3212328623, 6
  %i.fv = zext i8 %i.ez to i32
  %i.fw = add nsw i32 %i.fu, %i.fv                ; 3 uses
  %i.fx = sext i8 %i.ft to i32                    ; 4 uses
  %i.fy = icmp sgt i32 %.1215.fr, %i.fx
  br i1 %i.fy, label %.lr.ph.split, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !199

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  %.us-phi = phi ptr [ %i.eq, %.lr.ph.split.us ], [ %.2236, %.lr.ph.split.us.preheader ], [ %.2236, %.lr.ph.split.preheader ], [ %i.fs, %.lr.ph.split ] ; 2 uses
  %.us-phi336 = phi i8 [ %i.er, %.lr.ph.split.us ], [ %.1217, %.lr.ph.split.us.preheader ], [ %.1217, %.lr.ph.split.preheader ], [ %i.ft, %.lr.ph.split ] ; 3 uses
  %.us-phi337 = phi i32 [ %i.eu, %.lr.ph.split.us ], [ %.2211, %.lr.ph.split.us.preheader ], [ %.2211, %.lr.ph.split.preheader ], [ %i.fw, %.lr.ph.split ]
  %.us-phi338 = phi i32 [ %i.ev, %.lr.ph.split.us ], [ %i.eg, %.lr.ph.split.us.preheader ], [ %i.eg, %.lr.ph.split.preheader ], [ %i.fx, %.lr.ph.split ] ; 2 uses
  %i.fz = zext nneg i8 %.1221 to i32
  %.neg257 = sub nsw i32 %i.fz, %.us-phi338
  %i.ga = sext i32 %.neg257 to i64
  %i.gb = getelementptr inbounds i8, ptr %.us-phi, i64 %i.ga ; 7 uses
  %i.gc = icmp slt i8 %.1221, %.us-phi336
  br i1 %i.gc, label %iter.check, label %._crit_edge351

iter.check:                                       ; preds = %.split.us
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 65 ; 7 uses
  %i.ge = zext i8 %.1221 to i64                   ; 7 uses
  %wide.trip.count = zext nneg i8 %.us-phi336 to i64 ; 4 uses
  %i.gf = sub nsw i64 %wide.trip.count, %i.ge     ; 7 uses
  %min.iters.check = icmp ult i64 %i.gf, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %i.d to i64
  %i.gg = sext i32 %.us-phi338 to i64
  %4 = ptrtoaddr ptr %.us-phi to i64
  %i.gh = add i64 %3, %i.gg
  %i.gi = sub i64 %i.gh, %4
  %i.gj = add i64 %i.gi, 64
  %diff.check = icmp ult i64 %i.gj, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check642 = icmp ult i64 %i.gf, 32
  br i1 %min.iters.check642, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gk = and i64 %i.gf, 24
  %n.vec = and i64 %i.gf, -32                     ; 5 uses
  %i.gl = add nsw i64 %n.vec, %i.ge
  %i.gm = getelementptr i8, ptr %i.gb, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.gd, i64 %i.ge
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gb, i64 %index ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load643 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load643, ptr %i.go, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gf, %n.vec
  br i1 %cmp.n, label %._crit_edge351, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec645 = and i64 %i.gf, -8                   ; 4 uses
  %i.gq = add nsw i64 %n.vec645, %i.ge
  %i.gr = getelementptr i8, ptr %i.gb, i64 %n.vec645 ; 2 uses
  %invariant.gep810 = getelementptr i8, ptr %i.gd, i64 %i.ge
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index646 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next649, %vec.epilog.vector.body ] ; 3 uses
  %next.gep647 = getelementptr i8, ptr %i.gb, i64 %index646
  %wide.load648 = load <8 x i8>, ptr %next.gep647, align 1, !tbaa !27
  %gep811 = getelementptr i8, ptr %invariant.gep810, i64 %index646
  store <8 x i8> %wide.load648, ptr %gep811, align 1, !tbaa !27
  %index.next649 = add nuw i64 %index646, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next649, %n.vec645
  br i1 %i.gs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !201

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n650 = icmp eq i64 %i.gf, %n.vec645
  br i1 %cmp.n650, label %._crit_edge351, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ge, %iter.check ], [ %i.ge, %vector.memcheck ], [ %i.gl, %vec.epilog.iter.check ], [ %i.gq, %vec.epilog.middle.block ] ; 4 uses
  %.4238347.ph = phi ptr [ %i.gb, %iter.check ], [ %i.gb, %vector.memcheck ], [ %i.gm, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ] ; 2 uses
  %i.gt = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.4238347.prol = phi ptr [ %i.gu, %vec.epilog.scalar.ph.prol ], [ %.4238347.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.4238347.prol, i64 1 ; 3 uses
  %i.gv = load i8, ptr %.4238347.prol, align 1, !tbaa !27
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv.prol
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !202

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa730.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.4238347.unr = phi ptr [ %.4238347.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %i.gx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %._crit_edge351, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.4238347 = phi ptr [ %i.hk, %vec.epilog.scalar.ph ], [ %.4238347.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.4238347, i64 1
  %i.ha = load i8, ptr %.4238347, align 1, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !27
  %i.hc = getelementptr inbounds nuw i8, ptr %.4238347, i64 2
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !27
  %i.he = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 %i.hd, ptr %i.hf, align 1, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %.4238347, i64 3
  %i.hh = load i8, ptr %i.hc, align 1, !tbaa !27
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store i8 %i.hh, ptr %i.hj, align 1, !tbaa !27
  %i.hk = getelementptr inbounds nuw i8, ptr %.4238347, i64 4 ; 2 uses
  %i.hl = load i8, ptr %i.hg, align 1, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  store i8 %i.hl, ptr %i.hn, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge351, label %vec.epilog.scalar.ph, !llvm.loop !203

._crit_edge351:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.split.us
  %.4238.lcssa = phi ptr [ %i.gb, %.split.us ], [ %i.gr, %vec.epilog.middle.block ], [ %i.gm, %middle.block ], [ %.lcssa730.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hk, %vec.epilog.scalar.ph ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.us-phi337, ptr %i.ho, align 8, !tbaa !56
  store i8 %.us-phi336, ptr %i.ah, align 8, !tbaa !54
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %.1215.fr, ptr %i.hp, align 4, !tbaa !57
  store ptr %.4238.lcssa, ptr %i.g, align 8, !tbaa !44
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.hq, ptr %i.k, align 8, !tbaa !68
  br label %bb.av

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %bb.ae, %_ZN6icu_784UTF812isValidTrailEihii.exit, %bb.z, %_ZN6icu_784UTF812isValidTrailEihii.exit.us, %.thread274
  %.3237.lcssa = phi ptr [ %.2236, %.thread274 ], [ %.3237326.us632, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.eq, %bb.z ], [ %.3237326625, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.fs, %bb.ae ] ; 4 uses
  %.2218.lcssa = phi i8 [ %.1217, %.thread274 ], [ %.2218327.us631, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.er, %bb.z ], [ %.2218327624, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.ft, %bb.ae ] ; 5 uses
  %.3212.lcssa = phi i32 [ %.2211, %.thread274 ], [ %.3212328.us630, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.eu, %bb.z ], [ %.3212328623, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.fw, %bb.ae ]
  %.lcssa321 = phi i32 [ %i.eg, %.thread274 ], [ %i.en, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.ev, %bb.z ], [ %i.ey, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.fx, %bb.ae ] ; 3 uses
  %i.hr = icmp eq i32 %.1215.fr, %.lcssa321
  br i1 %i.hr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hs = sext i8 %.2218.lcssa to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr @_ZL12utf8_offsets, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !26
  %i.hv = sub nsw i32 %.3212.lcssa, %i.hu         ; 5 uses
  %i.hw = icmp sgt i8 %.2218.lcssa, 3
  %.not260 = icmp eq i8 %i.ag, 0
  %or.cond556 = select i1 %i.hw, i1 %.not260, i1 false
  br i1 %or.cond556, label %bb.ah, label %.sink.split

bb.ag:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hx = zext nneg i8 %.1221 to i32
  %.neg259 = sub nsw i32 %i.hx, %.lcssa321
  %i.hy = sext i32 %.neg259 to i64
  %i.hz = getelementptr inbounds i8, ptr %.3237.lcssa, i64 %i.hy ; 7 uses
  %i.ia = icmp slt i8 %.1221, %.2218.lcssa
  br i1 %i.ia, label %iter.check671, label %._crit_edge357

iter.check671:                                    ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 65 ; 7 uses
  %i.ic = zext i8 %.1221 to i64                   ; 7 uses
  %wide.trip.count443 = zext nneg i8 %.2218.lcssa to i64 ; 4 uses
  %i.id = sub nsw i64 %wide.trip.count443, %i.ic  ; 7 uses
  %min.iters.check656 = icmp ult i64 %i.id, 8
  br i1 %min.iters.check656, label %vec.epilog.scalar.ph672.preheader, label %vector.memcheck653

vector.memcheck653:                               ; preds = %iter.check671
  %5 = ptrtoaddr ptr %i.d to i64
  %i.ie = sext i32 %.lcssa321 to i64
  %6 = ptrtoaddr ptr %.3237.lcssa to i64
  %i.if = add i64 %5, %i.ie
  %i.ig = sub i64 %i.if, %6
  %i.ih = add i64 %i.ig, 64
  %diff.check655 = icmp ult i64 %i.ih, 31
  br i1 %diff.check655, label %vec.epilog.scalar.ph672.preheader, label %vector.main.loop.iter.check657

vector.main.loop.iter.check657:                   ; preds = %vector.memcheck653
  %min.iters.check658 = icmp ult i64 %i.id, 32
  br i1 %min.iters.check658, label %vec.epilog.ph675, label %vector.ph659

vector.ph659:                                     ; preds = %vector.main.loop.iter.check657
  %i.ii = and i64 %i.id, 24
  %n.vec660 = and i64 %i.id, -32                  ; 5 uses
  %i.ij = add nsw i64 %n.vec660, %i.ic
  %i.ik = getelementptr i8, ptr %i.hz, i64 %n.vec660 ; 2 uses
  %invariant.gep812 = getelementptr i8, ptr %i.ib, i64 %i.ic
  br label %vector.body661

vector.body661:                                   ; preds = %vector.ph659, %vector.body661
  %index662 = phi i64 [ 0, %vector.ph659 ], [ %index.next666, %vector.body661 ] ; 3 uses
  %next.gep663 = getelementptr i8, ptr %i.hz, i64 %index662 ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep663, i64 16
  %wide.load664 = load <16 x i8>, ptr %next.gep663, align 1, !tbaa !27
  %wide.load665 = load <16 x i8>, ptr %i.il, align 1, !tbaa !27
  %gep813 = getelementptr i8, ptr %invariant.gep812, i64 %index662 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %gep813, i64 16
  store <16 x i8> %wide.load664, ptr %gep813, align 1, !tbaa !27
  store <16 x i8> %wide.load665, ptr %i.im, align 1, !tbaa !27
  %index.next666 = add nuw i64 %index662, 32      ; 2 uses
  %i.in = icmp eq i64 %index.next666, %n.vec660
  br i1 %i.in, label %middle.block667, label %vector.body661, !llvm.loop !204

middle.block667:                                  ; preds = %vector.body661
  %cmp.n668 = icmp eq i64 %i.id, %n.vec660
  br i1 %cmp.n668, label %._crit_edge357, label %vec.epilog.iter.check673

vec.epilog.iter.check673:                         ; preds = %middle.block667
  %min.epilog.iters.check674 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check674, label %vec.epilog.scalar.ph672.preheader, label %vec.epilog.ph675, !prof !97

vec.epilog.ph675:                                 ; preds = %vector.main.loop.iter.check657, %vec.epilog.iter.check673
  %vec.epilog.resume.val669 = phi i64 [ %n.vec660, %vec.epilog.iter.check673 ], [ 0, %vector.main.loop.iter.check657 ]
  %n.vec676 = and i64 %i.id, -8                   ; 4 uses
  %i.io = add nsw i64 %n.vec676, %i.ic
  %i.ip = getelementptr i8, ptr %i.hz, i64 %n.vec676 ; 2 uses
  %invariant.gep814 = getelementptr i8, ptr %i.ib, i64 %i.ic
  br label %vec.epilog.vector.body677

vec.epilog.vector.body677:                        ; preds = %vec.epilog.vector.body677, %vec.epilog.ph675
  %index678 = phi i64 [ %vec.epilog.resume.val669, %vec.epilog.ph675 ], [ %index.next681, %vec.epilog.vector.body677 ] ; 3 uses
  %next.gep679 = getelementptr i8, ptr %i.hz, i64 %index678
  %wide.load680 = load <8 x i8>, ptr %next.gep679, align 1, !tbaa !27
  %gep815 = getelementptr i8, ptr %invariant.gep814, i64 %index678
  store <8 x i8> %wide.load680, ptr %gep815, align 1, !tbaa !27
  %index.next681 = add nuw i64 %index678, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next681, %n.vec676
  br i1 %i.iq, label %vec.epilog.middle.block682, label %vec.epilog.vector.body677, !llvm.loop !205

vec.epilog.middle.block682:                       ; preds = %vec.epilog.vector.body677
  %cmp.n683 = icmp eq i64 %i.id, %n.vec676
  br i1 %cmp.n683, label %._crit_edge357, label %vec.epilog.scalar.ph672.preheader

vec.epilog.scalar.ph672.preheader:                ; preds = %iter.check671, %vector.memcheck653, %vec.epilog.iter.check673, %vec.epilog.middle.block682
  %indvars.iv440.ph = phi i64 [ %i.ic, %iter.check671 ], [ %i.ic, %vector.memcheck653 ], [ %i.ij, %vec.epilog.iter.check673 ], [ %i.io, %vec.epilog.middle.block682 ] ; 4 uses
  %.5239353.ph = phi ptr [ %i.hz, %iter.check671 ], [ %i.hz, %vector.memcheck653 ], [ %i.ik, %vec.epilog.iter.check673 ], [ %i.ip, %vec.epilog.middle.block682 ] ; 2 uses
  %i.ir = sub nsw i64 %wide.trip.count443, %indvars.iv440.ph
  %xtraiter745 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %vec.epilog.scalar.ph672.prol.loopexit, label %vec.epilog.scalar.ph672.prol

vec.epilog.scalar.ph672.prol:                     ; preds = %vec.epilog.scalar.ph672.preheader, %vec.epilog.scalar.ph672.prol
  %indvars.iv440.prol = phi i64 [ %indvars.iv.next441.prol, %vec.epilog.scalar.ph672.prol ], [ %indvars.iv440.ph, %vec.epilog.scalar.ph672.preheader ] ; 2 uses
  %.5239353.prol = phi ptr [ %i.is, %vec.epilog.scalar.ph672.prol ], [ %.5239353.ph, %vec.epilog.scalar.ph672.preheader ] ; 2 uses
  %prol.iter747 = phi i64 [ %prol.iter747.next, %vec.epilog.scalar.ph672.prol ], [ 0, %vec.epilog.scalar.ph672.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %.5239353.prol, i64 1 ; 3 uses
  %i.it = load i8, ptr %.5239353.prol, align 1, !tbaa !27
  %indvars.iv.next441.prol = add nuw nsw i64 %indvars.iv440.prol, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv440.prol
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !27
  %prol.iter747.next = add i64 %prol.iter747, 1   ; 2 uses
  %prol.iter747.cmp.not = icmp eq i64 %prol.iter747.next, %xtraiter745
  br i1 %prol.iter747.cmp.not, label %vec.epilog.scalar.ph672.prol.loopexit, label %vec.epilog.scalar.ph672.prol, !llvm.loop !206

vec.epilog.scalar.ph672.prol.loopexit:            ; preds = %vec.epilog.scalar.ph672.prol, %vec.epilog.scalar.ph672.preheader
  %.lcssa729.unr = phi ptr [ poison, %vec.epilog.scalar.ph672.preheader ], [ %i.is, %vec.epilog.scalar.ph672.prol ]
  %indvars.iv440.unr = phi i64 [ %indvars.iv440.ph, %vec.epilog.scalar.ph672.preheader ], [ %indvars.iv.next441.prol, %vec.epilog.scalar.ph672.prol ]
  %.5239353.unr = phi ptr [ %.5239353.ph, %vec.epilog.scalar.ph672.preheader ], [ %i.is, %vec.epilog.scalar.ph672.prol ]
  %i.iv = sub nsw i64 %indvars.iv440.ph, %wide.trip.count443
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %._crit_edge357, label %vec.epilog.scalar.ph672

vec.epilog.scalar.ph672:                          ; preds = %vec.epilog.scalar.ph672.prol.loopexit, %vec.epilog.scalar.ph672
  %indvars.iv440 = phi i64 [ %indvars.iv.next441.3, %vec.epilog.scalar.ph672 ], [ %indvars.iv440.unr, %vec.epilog.scalar.ph672.prol.loopexit ] ; 5 uses
  %.5239353 = phi ptr [ %i.ji, %vec.epilog.scalar.ph672 ], [ %.5239353.unr, %vec.epilog.scalar.ph672.prol.loopexit ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.5239353, i64 1
  %i.iy = load i8, ptr %.5239353, align 1, !tbaa !27
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv440
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %.5239353, i64 2
  %i.jb = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv440
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %.5239353, i64 3
  %i.jf = load i8, ptr %i.ja, align 1, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv440
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !27
  %i.ji = getelementptr inbounds nuw i8, ptr %.5239353, i64 4 ; 2 uses
  %i.jj = load i8, ptr %i.je, align 1, !tbaa !27
  %indvars.iv.next441.3 = add nuw nsw i64 %indvars.iv440, 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv440
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !27
  %exitcond444.not.3 = icmp eq i64 %indvars.iv.next441.3, %wide.trip.count443
  br i1 %exitcond444.not.3, label %._crit_edge357, label %vec.epilog.scalar.ph672, !llvm.loop !207

._crit_edge357:                                   ; preds = %vec.epilog.scalar.ph672.prol.loopexit, %vec.epilog.scalar.ph672, %middle.block667, %vec.epilog.middle.block682, %bb.ag
  %.5239.lcssa = phi ptr [ %i.hz, %bb.ag ], [ %i.ip, %vec.epilog.middle.block682 ], [ %i.ik, %middle.block667 ], [ %.lcssa729.unr, %vec.epilog.scalar.ph672.prol.loopexit ], [ %i.ji, %vec.epilog.scalar.ph672 ]
  store i8 %.2218.lcssa, ptr %i.ah, align 8, !tbaa !54
  store ptr %.5239.lcssa, ptr %i.g, align 8, !tbaa !44
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.jm, ptr %i.k, align 8, !tbaa !68
  store i32 12, ptr %2, align 4, !tbaa !29
  br label %bb.av

.sink.split:                                      ; preds = %bb.af
  %i.jn = ashr i32 %i.hv, 10
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !21
  %i.jr = zext i16 %i.jq to i32
  %i.js = lshr i32 %i.hv, 4
  %i.jt = and i32 %i.js, 63
  %i.ju = add nuw nsw i32 %i.jt, %i.jr
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !21
  %i.jy = zext i16 %i.jx to i32
  %i.jz = and i32 %i.hv, 15
  %i.ka = add nuw nsw i32 %i.jz, %i.jy
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %.0224, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !21
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit557, %bb.af, %.sink.split, %bb.l
  %.7 = phi ptr [ %i.bw, %bb.l ], [ %.1235, %.loopexit557 ], [ %.3237.lcssa, %bb.af ], [ %.3237.lcssa, %.sink.split ] ; 3 uses
  %.3228 = phi i32 [ %.0225361637, %bb.l ], [ %.0225361637, %.loopexit557 ], [ %.1226, %bb.af ], [ %.1226, %.sink.split ] ; 2 uses
  %.5 = phi i32 [ %i.bz, %bb.l ], [ %i.dy, %.loopexit557 ], [ %i.hv, %bb.af ], [ %i.hv, %.sink.split ]
  %.4 = phi i16 [ %i.cl, %bb.l ], [ %.1, %.loopexit557 ], [ 0, %bb.af ], [ %i.kd, %.sink.split ] ; 2 uses
  %i.ke = zext i16 %.4 to i32
  %.not261 = icmp samesign ugt i32 %.0207, %i.ke
  br i1 %.not261, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kf = trunc i16 %.4 to i8
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store ptr %i.kh, ptr %i.a, align 8, !tbaa !49
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !27
  %i.ki = add nsw i32 %.3228, -1
  br label %.preheader, !llvm.loop !198

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr @_ZZL17ucnv_SBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCodeE3nul, ptr %i.b, align 8, !tbaa !46
  %i.kj = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.kl = zext nneg i32 %.3228 to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ko = load i8, ptr %i.kn, align 2, !tbaa !74
  %i.kp = getelementptr i8, ptr %i.kj, i64 288
  %.val = load ptr, ptr %i.kp, align 8, !tbaa !53
  %i.kq = call fastcc noundef i32 @_ZL9_extFromUP10UConverterPK20UConverterSharedDataiPPKDsS5_PPhPKhPPiiaP10UErrorCode(ptr noundef %i.f, ptr %.val, i32 noundef %.5, ptr noundef %i.b, ptr noundef nonnull @_ZZL17ucnv_SBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCodeE3nul, ptr noundef %i.a, ptr noundef %i.km, ptr noundef null, i32 noundef -1, i8 noundef signext %i.ko, ptr noundef %2)
  %i.kr = load i32, ptr %2, align 4, !tbaa !29
  %i.ks = icmp slt i32 %i.kr, 1
  br i1 %i.ks, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i32 %i.kq, ptr %i.kt, align 4, !tbaa !73
  br label %.thread276

bb.al:                                            ; preds = %bb.aj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !67
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 -127, ptr %2, align 4, !tbaa !29
  br label %.thread276

.thread276:                                       ; preds = %bb.ak, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.kx = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = trunc i64 %i.lb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.preheader, !llvm.loop !198

.loopexit.thread:                                 ; preds = %.lr.ph362, %.lr.ph362.preheader
  %.0234360.lcssa = phi ptr [ %.0234.ph, %.lr.ph362.preheader ], [ %.0234.be, %.lr.ph362 ]
  store i32 15, ptr %2, align 4, !tbaa !29
  br label %bb.au

.loopexit:                                        ; preds = %.backedge, %.preheader, %.thread276
  %.8.ph = phi ptr [ %.7, %.thread276 ], [ %.0234.ph, %.preheader ], [ %.0234.be, %.backedge ] ; 7 uses
  %.8.ph748 = ptrtoaddr ptr %.8.ph to i64         ; 2 uses
  %.pr = load i32, ptr %2, align 4, !tbaa !29
  %i.ld = icmp sgt i32 %.pr, 0
  br i1 %i.ld, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.le = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !67
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.lh = load ptr, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.li = ptrtoaddr ptr %i.lh to i64              ; 2 uses
  %i.lj = icmp ult ptr %.8.ph, %i.lh
  br i1 %i.lj, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.lk = load i8, ptr %.8.ph, align 1, !tbaa !27 ; 6 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 65 ; 4 uses
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !27
  %i.lm = zext i8 %i.lk to i32                    ; 3 uses
  %i.ln = icmp sgt i8 %i.lk, -1
  br i1 %i.ln, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lo = add nsw i8 %i.lk, 62
  %i.lp = icmp ult i8 %i.lo, 51
  br i1 %i.lp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lq = icmp samesign ugt i8 %i.lk, -33
  %i.lr = zext i1 %i.lq to i32
  %i.ls = icmp samesign ugt i8 %i.lk, -17
  %i.lt = select i1 %i.ls, i32 3, i32 2
  %i.lu = add nuw nsw i32 %i.lt, %i.lr
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.lv = phi i32 [ 1, %bb.aq ], [ %i.lu, %bb.as ], [ 0, %bb.ar ]
  %.9364 = getelementptr inbounds nuw i8, ptr %.8.ph, i64 1 ; 4 uses
  %i.lw = icmp ult ptr %.9364, %i.lh
  br i1 %i.lw, label %.lr.ph369.preheader, label %._crit_edge370

.lr.ph369.preheader:                              ; preds = %bb.at
  %i.lx = xor i64 %.8.ph748, -1
  %i.ly = add i64 %i.lx, %i.li                    ; 3 uses
  %i.lz = add i64 %i.li, -2
  %xtraiter749 = and i64 %i.ly, 1
  %i.ma = icmp eq i64 %i.lz, %.8.ph748
  br i1 %i.ma, label %.lr.ph369.epil.preheader, label %.lr.ph369.preheader.new

.lr.ph369.preheader.new:                          ; preds = %.lr.ph369.preheader
  %unroll_iter = and i64 %i.ly, -2
  br label %.lr.ph369

.lr.ph369:                                        ; preds = %.lr.ph369, %.lr.ph369.preheader.new
  %.9367 = phi ptr [ %.9364, %.lr.ph369.preheader.new ], [ %.9.1, %.lr.ph369 ] ; 3 uses
  %.6366 = phi i32 [ %i.lm, %.lr.ph369.preheader.new ], [ %i.mo, %.lr.ph369 ]
  %.3219365 = phi i8 [ 1, %.lr.ph369.preheader.new ], [ %i.mh, %.lr.ph369 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph369.preheader.new ], [ %niter.next.1, %.lr.ph369 ]
  %i.mb = load i8, ptr %.9367, align 1, !tbaa !27 ; 2 uses
  %i.mc = add i8 %.3219365, 1
  %i.md = sext i8 %.3219365 to i64
  %i.me = getelementptr inbounds i8, ptr %i.ll, i64 %i.md
  store i8 %i.mb, ptr %i.me, align 1, !tbaa !27
  %i.mf = zext i8 %i.mb to i32
  %.9 = getelementptr inbounds nuw i8, ptr %.9367, i64 1
  %i.mg = load i8, ptr %.9, align 1, !tbaa !27    ; 2 uses
  %i.mh = add i8 %.3219365, 2                     ; 3 uses
  %i.mi = sext i8 %i.mc to i64
  %i.mj = getelementptr inbounds i8, ptr %i.ll, i64 %i.mi
  store i8 %i.mg, ptr %i.mj, align 1, !tbaa !27
  %i.mk = shl i32 %.6366, 12
  %i.ml = shl nuw nsw i32 %i.mf, 6
  %i.mm = add i32 %i.mk, %i.ml
  %i.mn = zext i8 %i.mg to i32
  %i.mo = add nsw i32 %i.mm, %i.mn                ; 3 uses
  %.9.1 = getelementptr inbounds nuw i8, ptr %.9367, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge370.loopexit.unr-lcssa, label %.lr.ph369, !llvm.loop !208

._crit_edge370.loopexit.unr-lcssa:                ; preds = %.lr.ph369
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %._crit_edge370, label %.lr.ph369.epil.preheader

.lr.ph369.epil.preheader:                         ; preds = %._crit_edge370.loopexit.unr-lcssa, %.lr.ph369.preheader
  %.9367.epil.init = phi ptr [ %.9364, %.lr.ph369.preheader ], [ %.9.1, %._crit_edge370.loopexit.unr-lcssa ] ; 2 uses
  %.6366.epil.init = phi i32 [ %i.lm, %.lr.ph369.preheader ], [ %i.mo, %._crit_edge370.loopexit.unr-lcssa ]
  %.3219365.epil.init = phi i8 [ 1, %.lr.ph369.preheader ], [ %i.mh, %._crit_edge370.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod754 = trunc i64 %i.ly to i1
  call void @llvm.assume(i1 %lcmp.mod754)
  %i.mp = load i8, ptr %.9367.epil.init, align 1, !tbaa !27 ; 2 uses
  %i.mq = add i8 %.3219365.epil.init, 1
  %i.mr = sext i8 %.3219365.epil.init to i64
  %i.ms = getelementptr inbounds i8, ptr %i.ll, i64 %i.mr
  store i8 %i.mp, ptr %i.ms, align 1, !tbaa !27
  %i.mt = shl i32 %.6366.epil.init, 6
  %i.mu = zext i8 %i.mp to i32
  %i.mv = add nsw i32 %i.mt, %i.mu
  %.9.epil = getelementptr inbounds nuw i8, ptr %.9367.epil.init, i64 1
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %.lr.ph369.epil.preheader, %._crit_edge370.loopexit.unr-lcssa, %bb.at
  %.3219.lcssa = phi i8 [ 1, %bb.at ], [ %i.mh, %._crit_edge370.loopexit.unr-lcssa ], [ %i.mq, %.lr.ph369.epil.preheader ]
  %.6.lcssa = phi i32 [ %i.lm, %bb.at ], [ %i.mo, %._crit_edge370.loopexit.unr-lcssa ], [ %i.mv, %.lr.ph369.epil.preheader ]
  %.9.lcssa = phi ptr [ %.9364, %bb.at ], [ %.9.1, %._crit_edge370.loopexit.unr-lcssa ], [ %.9.epil, %.lr.ph369.epil.preheader ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.6.lcssa, ptr %i.mw, align 8, !tbaa !56
  store i8 %.3219.lcssa, ptr %i.ah, align 8, !tbaa !54
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.lv, ptr %i.mx, align 4, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.thread, %._crit_edge370, %bb.ap, %bb.ao, %.loopexit
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge370 ], [ %.8.ph, %bb.ap ], [ %.8.ph, %bb.ao ], [ %.8.ph, %.loopexit ], [ %.0234360.lcssa, %.loopexit.thread ]
  store ptr %.10, ptr %i.g, align 8, !tbaa !44
  %i.my = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.my, ptr %i.k, align 8, !tbaa !68
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge357, %._crit_edge351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !48
  %i.aa = and i32 %i.z, 16
  %.not = icmp eq i32 %i.aa, 0
  %.0232.in.v = select i1 %.not, i64 232, i64 240
  %.0232.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0232.in.v
  %.0232 = load ptr, ptr %.0232.in, align 8, !tbaa !49 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 260
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !43
  %i.af = and i8 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !54  ; 2 uses
  %i.ai = icmp sgt i8 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !56
  %i.an = shl i32 %i.ak, 24
  %i.ao = ashr exact i32 %i.an, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0224 = phi i8 [ %i.ah, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0222 = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0217 = phi i32 [ %i.am, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ap = ptrtoint ptr %i.j to i64
  %i.aq = ptrtoint ptr %i.h to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = zext nneg i8 %.0224 to i32
  %.neg = sub nsw i32 %i.at, %.0222
  %i.au = add i32 %.neg, %i.as                    ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27  ; 4 uses
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = icmp samesign ult i8 %i.ax, -64
  %i.ba = icmp ne i32 %i.au, 1
  %or.cond = and i1 %i.ba, %i.az
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds i8, ptr %i.j, i64 -2 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27  ; 2 uses
  %i.bd = and i8 %i.bc, -16
  %or.cond4 = icmp eq i8 %i.bd, -32
  br i1 %or.cond4, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = and i8 %i.bc, 15
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = zext i8 %i.bh to i32
  %i.bj = lshr i8 %i.ax, 5
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bi
  %.not263 = icmp eq i32 %i.bm, 0
  %spec.select = select i1 %.not263, ptr %i.j, ptr %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bn = add nsw i8 %i.ax, 62
  %or.cond7 = icmp ult i8 %i.bn, 46
  %spec.select274 = select i1 %or.cond7, ptr %i.aw, ptr %i.j
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.c
  %.2241 = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %spec.select, %bb.g ], [ %spec.select274, %bb.h ], [ %i.j, %bb.f ] ; 2 uses
  %i.bo = icmp ne i32 %.0217, 0
  %i.bp = icmp sgt i32 %i.r, 0
  %or.cond9 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond9, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 0, ptr %i.bq, align 8, !tbaa !56
  store i8 0, ptr %i.ag, align 8, !tbaa !54
  br label %.thread283

.lr.ph339:                                        ; preds = %.preheader, %bb.m
  %.0233338 = phi i32 [ %i.cb, %bb.m ], [ %.0233.ph, %.preheader ] ; 11 uses
  %.0242337 = phi ptr [ %i.bs, %bb.m ], [ %.0242.ph, %.preheader ] ; 6 uses
  %i.br = icmp sgt i32 %.0233338, 0
  br i1 %i.br, label %bb.k, label %bb.av

bb.k:                                             ; preds = %.lr.ph339
  %i.bs = getelementptr inbounds nuw i8, ptr %.0242337, i64 1 ; 10 uses
  %i.bt = load i8, ptr %.0242337, align 1, !tbaa !27 ; 8 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  %i.bv = zext i8 %i.bt to i32                    ; 8 uses
  br i1 %i.bu, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bw = lshr i32 %i.bv, 2
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = and i32 %i.bx, %i.ac
  %.not271 = icmp eq i32 %i.by, 0
  br i1 %.not271, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !49
  store i8 %i.bt, ptr %i.bz, align 1, !tbaa !27
  %i.cb = add nsw i32 %.0233338, -1
  %exitcond393.not = icmp eq ptr %i.bs, %.2241
  br i1 %exitcond393.not, label %.loopexit, label %.lr.ph339, !llvm.loop !209

bb.n:                                             ; preds = %bb.l
  %i.cc = load i16, ptr %i.x, align 2, !tbaa !21
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.bv
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0232, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !21 ; 2 uses
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.aq, label %bb.al

bb.o:                                             ; preds = %bb.k
  %i.cj = icmp samesign ugt i8 %i.bt, -33         ; 2 uses
  br i1 %i.cj, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp samesign ult i8 %i.bt, -18
  br i1 %i.ck, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cl = and i32 %i.bv, 15                       ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i8, ptr %i.bs, align 1, !tbaa !27
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 5
  %i.ct = shl nuw nsw i32 1, %i.cs
  %i.cu = and i32 %i.ct, %i.cp
  %.not270 = icmp eq i32 %i.cu, 0
  br i1 %.not270, label %.thread282, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.0242337, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
  %i.cx = xor i8 %i.cw, -128                      ; 2 uses
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = icmp ult i8 %i.cx, 64
  br i1 %i.cz, label %bb.s, label %.thread282

bb.s:                                             ; preds = %bb.r
  %i.da = shl nuw nsw i32 %i.cl, 6
  %i.db = and i32 %i.cr, 63
  %i.dc = or disjoint i32 %i.db, %i.da            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0242337, i64 3 ; 2 uses
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !21
  %i.dh = zext i16 %i.dg to i32
  %i.di = add nuw nsw i32 %i.dh, %i.cy
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.0232, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !21 ; 2 uses
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %bb.al

bb.t:                                             ; preds = %bb.s
  %i.dn = shl nuw nsw i32 %i.dc, 6
  %i.do = or disjoint i32 %i.dn, %i.cy
  br label %bb.aq

bb.u:                                             ; preds = %bb.o
  %i.dp = icmp samesign ugt i8 %i.bt, -63
  br i1 %i.dp, label %bb.v, label %.thread283

bb.v:                                             ; preds = %bb.u
  %i.dq = load i8, ptr %i.bs, align 1, !tbaa !27
  %i.dr = xor i8 %i.dq, -128                      ; 2 uses
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = icmp ult i8 %i.dr, 64
  br i1 %i.dt, label %bb.w, label %.thread282

bb.w:                                             ; preds = %bb.v
  %i.du = and i32 %i.bv, 31                       ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0242337, i64 2 ; 2 uses
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !21
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i32 %i.dz, %i.ds
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.0232, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !21 ; 2 uses
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %bb.x, label %bb.al

bb.x:                                             ; preds = %bb.w
  %i.ef = shl nuw nsw i32 %i.du, 6
  %i.eg = or disjoint i32 %i.ef, %i.ds
  br label %bb.aq

bb.y:                                             ; preds = %bb.p
  %i.eh = icmp samesign ult i8 %i.bt, -11
  br i1 %i.eh, label %.thread282, label %.thread283

.thread282:                                       ; preds = %bb.v, %bb.q, %bb.r, %bb.y
  %i.ei = zext i1 %i.cj to i32
  %i.ej = icmp samesign ugt i8 %i.bt, -17
  %i.ek = select i1 %i.ej, i32 3, i32 2
  %i.el = add nuw nsw i32 %i.ek, %i.ei
  br label %.thread283

.thread283:                                       ; preds = %.thread282, %bb.y, %bb.u, %bb.j
  %.2244 = phi ptr [ %i.h, %bb.j ], [ %i.bs, %bb.u ], [ %i.bs, %bb.y ], [ %i.bs, %.thread282 ] ; 6 uses
  %.1234 = phi i32 [ %i.r, %bb.j ], [ %.0233338, %bb.u ], [ %.0233338, %bb.y ], [ %.0233338, %.thread282 ] ; 5 uses
  %.1229 = phi i8 [ %.0224, %bb.j ], [ 0, %bb.u ], [ 0, %bb.y ], [ 0, %.thread282 ] ; 6 uses
  %.1225 = phi i8 [ %.0224, %bb.j ], [ 1, %bb.u ], [ 1, %bb.y ], [ 1, %.thread282 ] ; 6 uses
  %.1223 = phi i32 [ %.0222, %bb.j ], [ 0, %bb.u ], [ 0, %bb.y ], [ %i.el, %.thread282 ]
  %.2219 = phi i32 [ %.0217, %bb.j ], [ %i.bv, %bb.u ], [ %i.bv, %bb.y ], [ %i.bv, %.thread282 ] ; 5 uses
  %.1223.fr = freeze i32 %.1223                   ; 7 uses
  %i.em = zext nneg i8 %.1225 to i32              ; 6 uses
  %i.en = icmp sgt i32 %.1223.fr, %i.em
  br i1 %i.en, label %.lr.ph, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph:                                           ; preds = %.thread283
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !45  ; 3 uses
  %i.ep = icmp samesign ult i32 %.1223.fr, 3
  %i.eq = icmp eq i32 %.1223.fr, 3
  %i.er = icmp ult ptr %.2244, %i.eo              ; 2 uses
  br i1 %i.ep, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.er, label %.lr.ph501, label %.split.us

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.er, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.split.us

.lr.ph.split.us:                                  ; preds = %bb.z
  %i.es = icmp ult ptr %i.ew, %i.eo
  br i1 %i.es, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.split.us, !llvm.loop !210

_ZN6icu_784UTF812isValidTrailEihii.exit.us:       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.3245304.us507 = phi ptr [ %i.ew, %.lr.ph.split.us ], [ %.2244, %.lr.ph.split.us.preheader ] ; 3 uses
  %.2226305.us506 = phi i8 [ %i.ex, %.lr.ph.split.us ], [ %.1225, %.lr.ph.split.us.preheader ] ; 2 uses
  %.3220306.us505 = phi i32 [ %i.fa, %.lr.ph.split.us ], [ %.2219, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.et = phi i32 [ %i.fb, %.lr.ph.split.us ], [ %i.em, %.lr.ph.split.us.preheader ]
  %i.eu = load i8, ptr %.3245304.us507, align 1, !tbaa !27 ; 2 uses
  %i.ev = icmp sgt i8 %i.eu, -65
  br i1 %i.ev, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit.us
  %i.ew = getelementptr inbounds nuw i8, ptr %.3245304.us507, i64 1 ; 4 uses
  %i.ex = add i8 %.2226305.us506, 1               ; 4 uses
  %i.ey = shl i32 %.3220306.us505, 6
  %i.ez = zext i8 %i.eu to i32
  %i.fa = add nsw i32 %i.ey, %i.ez                ; 3 uses
  %i.fb = sext i8 %i.ex to i32                    ; 4 uses
  %i.fc = icmp sgt i32 %.1223.fr, %i.fb
  br i1 %i.fc, label %.lr.ph.split.us, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !210

.lr.ph.split:                                     ; preds = %bb.ae
  %i.fd = icmp ult ptr %i.fy, %i.eo
  br i1 %i.fd, label %.lr.ph501, label %.split.us, !llvm.loop !210

.lr.ph501:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.3245304500 = phi ptr [ %i.fy, %.lr.ph.split ], [ %.2244, %.lr.ph.split.preheader ] ; 3 uses
  %.2226305499 = phi i8 [ %i.fz, %.lr.ph.split ], [ %.1225, %.lr.ph.split.preheader ] ; 3 uses
  %.3220306498 = phi i32 [ %i.gc, %.lr.ph.split ], [ %.2219, %.lr.ph.split.preheader ] ; 4 uses
  %i.fe = phi i32 [ %i.gd, %.lr.ph.split ], [ %i.em, %.lr.ph.split.preheader ]
  %i.ff = load i8, ptr %.3245304500, align 1, !tbaa !27 ; 4 uses
  %i.fg = icmp sgt i8 %.2226305499, 1
  br i1 %i.fg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph501
  %i.fh = icmp slt i8 %i.ff, -64
  %i.fi = zext i1 %i.fh to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ab:                                            ; preds = %.lr.ph501
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = and i32 %.3220306498, 15
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = lshr i8 %i.ff, 5
  %i.fo = shl nuw i8 1, %i.fn
  %i.fp = and i8 %i.fm, %i.fo
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fq = lshr i8 %i.ff, 4
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !27
  %i.fu = and i32 %.3220306498, 7
  %i.fv = shl nuw nsw i32 1, %i.fu
  %i.fw = trunc nuw i32 %i.fv to i8
  %i.fx = and i8 %i.ft, %i.fw
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.aa, %bb.ac, %bb.ad
  %.0.i = phi i8 [ %i.fi, %bb.aa ], [ %i.fp, %bb.ac ], [ %i.fx, %bb.ad ]
  %.not265 = icmp eq i8 %.0.i, 0
  br i1 %.not265, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %.3245304500, i64 1 ; 4 uses
  %i.fz = add i8 %.2226305499, 1                  ; 4 uses
  %i.ga = shl i32 %.3220306498, 6
  %i.gb = zext i8 %i.ff to i32
  %i.gc = add nsw i32 %i.ga, %i.gb                ; 3 uses
  %i.gd = sext i8 %i.fz to i32                    ; 4 uses
  %i.ge = icmp sgt i32 %.1223.fr, %i.gd
  br i1 %i.ge, label %.lr.ph.split, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge, !llvm.loop !210

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  %.us-phi = phi ptr [ %i.ew, %.lr.ph.split.us ], [ %.2244, %.lr.ph.split.us.preheader ], [ %.2244, %.lr.ph.split.preheader ], [ %i.fy, %.lr.ph.split ] ; 2 uses
  %.us-phi314 = phi i8 [ %i.ex, %.lr.ph.split.us ], [ %.1225, %.lr.ph.split.us.preheader ], [ %.1225, %.lr.ph.split.preheader ], [ %i.fz, %.lr.ph.split ] ; 3 uses
  %.us-phi315 = phi i32 [ %i.fa, %.lr.ph.split.us ], [ %.2219, %.lr.ph.split.us.preheader ], [ %.2219, %.lr.ph.split.preheader ], [ %i.gc, %.lr.ph.split ]
  %.us-phi316 = phi i32 [ %i.fb, %.lr.ph.split.us ], [ %i.em, %.lr.ph.split.us.preheader ], [ %i.em, %.lr.ph.split.preheader ], [ %i.gd, %.lr.ph.split ] ; 2 uses
  %i.gf = zext nneg i8 %.1229 to i32
  %.neg264 = sub nsw i32 %i.gf, %.us-phi316
  %i.gg = sext i32 %.neg264 to i64
  %i.gh = getelementptr inbounds i8, ptr %.us-phi, i64 %i.gg ; 7 uses
  %i.gi = icmp slt i8 %.1229, %.us-phi314
  br i1 %i.gi, label %iter.check, label %._crit_edge329

iter.check:                                       ; preds = %.split.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 65 ; 7 uses
  %i.gk = zext i8 %.1229 to i64                   ; 7 uses
  %wide.trip.count = zext nneg i8 %.us-phi314 to i64 ; 4 uses
  %i.gl = sub nsw i64 %wide.trip.count, %i.gk     ; 7 uses
  %min.iters.check = icmp ult i64 %i.gl, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = ptrtoaddr ptr %i.d to i64
  %i.gm = sext i32 %.us-phi316 to i64
  %4 = ptrtoaddr ptr %.us-phi to i64
  %i.gn = add i64 %3, %i.gm
  %i.go = sub i64 %i.gn, %4
  %i.gp = add i64 %i.go, 64
  %diff.check = icmp ult i64 %i.gp, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check513 = icmp ult i64 %i.gl, 32
  br i1 %min.iters.check513, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gq = and i64 %i.gl, 24
  %n.vec = and i64 %i.gl, -32                     ; 5 uses
  %i.gr = add nsw i64 %n.vec, %i.gk
  %i.gs = getelementptr i8, ptr %i.gh, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.gj, i64 %i.gk
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gh, i64 %index ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load514 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load514, ptr %i.gu, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gl, %n.vec
  br i1 %cmp.n, label %._crit_edge329, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec516 = and i64 %i.gl, -8                   ; 4 uses
  %i.gw = add nsw i64 %n.vec516, %i.gk
  %i.gx = getelementptr i8, ptr %i.gh, i64 %n.vec516 ; 2 uses
  %invariant.gep629 = getelementptr i8, ptr %i.gj, i64 %i.gk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index517 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next520, %vec.epilog.vector.body ] ; 3 uses
  %next.gep518 = getelementptr i8, ptr %i.gh, i64 %index517
  %wide.load519 = load <8 x i8>, ptr %next.gep518, align 1, !tbaa !27
  %gep630 = getelementptr i8, ptr %invariant.gep629, i64 %index517
  store <8 x i8> %wide.load519, ptr %gep630, align 1, !tbaa !27
  %index.next520 = add nuw i64 %index517, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next520, %n.vec516
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n521 = icmp eq i64 %i.gl, %n.vec516
  br i1 %cmp.n521, label %._crit_edge329, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.gk, %iter.check ], [ %i.gk, %vector.memcheck ], [ %i.gr, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ] ; 4 uses
  %.4246325.ph = phi ptr [ %i.gh, %iter.check ], [ %i.gh, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ] ; 2 uses
  %i.gz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.4246325.prol = phi ptr [ %i.ha, %vec.epilog.scalar.ph.prol ], [ %.4246325.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.4246325.prol, i64 1 ; 3 uses
  %i.hb = load i8, ptr %.4246325.prol, align 1, !tbaa !27
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.prol
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !213

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa575.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ha, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.4246325.unr = phi ptr [ %.4246325.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ha, %vec.epilog.scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge329, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.4246325 = phi ptr [ %i.hq, %vec.epilog.scalar.ph ], [ %.4246325.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.4246325, i64 1
  %i.hg = load i8, ptr %.4246325, align 1, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !27
  %i.hi = getelementptr inbounds nuw i8, ptr %.4246325, i64 2
  %i.hj = load i8, ptr %i.hf, align 1, !tbaa !27
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store i8 %i.hj, ptr %i.hl, align 1, !tbaa !27
  %i.hm = getelementptr inbounds nuw i8, ptr %.4246325, i64 3
  %i.hn = load i8, ptr %i.hi, align 1, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !27
  %i.hq = getelementptr inbounds nuw i8, ptr %.4246325, i64 4 ; 2 uses
  %i.hr = load i8, ptr %i.hm, align 1, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge329, label %vec.epilog.scalar.ph, !llvm.loop !214

._crit_edge329:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.split.us
  %.4246.lcssa = phi ptr [ %i.gh, %.split.us ], [ %i.gx, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %.lcssa575.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hq, %vec.epilog.scalar.ph ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.us-phi315, ptr %i.hu, align 8, !tbaa !56
  store i8 %.us-phi314, ptr %i.ag, align 8, !tbaa !54
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %.1223.fr, ptr %i.hv, align 4, !tbaa !57
  store ptr %.4246.lcssa, ptr %i.g, align 8, !tbaa !44
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.hw, ptr %i.k, align 8, !tbaa !68
  br label %bb.bc

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %bb.ae, %_ZN6icu_784UTF812isValidTrailEihii.exit, %bb.z, %_ZN6icu_784UTF812isValidTrailEihii.exit.us, %.thread283
  %.3245.lcssa = phi ptr [ %.2244, %.thread283 ], [ %.3245304.us507, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.ew, %bb.z ], [ %.3245304500, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.fy, %bb.ae ] ; 7 uses
  %.2226.lcssa = phi i8 [ %.1225, %.thread283 ], [ %.2226305.us506, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.ex, %bb.z ], [ %.2226305499, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.fz, %bb.ae ] ; 5 uses
  %.3220.lcssa = phi i32 [ %.2219, %.thread283 ], [ %.3220306.us505, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.fa, %bb.z ], [ %.3220306498, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.gc, %bb.ae ]
  %.lcssa299 = phi i32 [ %i.em, %.thread283 ], [ %i.et, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.fb, %bb.z ], [ %i.fe, %_ZN6icu_784UTF812isValidTrailEihii.exit ], [ %i.gd, %bb.ae ] ; 3 uses
  %i.hx = icmp eq i32 %.1223.fr, %.lcssa299
  br i1 %i.hx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hy = sext i8 %.2226.lcssa to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr @_ZL12utf8_offsets, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !26
  %i.ib = sub nsw i32 %.3220.lcssa, %i.ia         ; 7 uses
  %i.ic = icmp sgt i8 %.2226.lcssa, 3
  %.not267 = icmp eq i8 %i.af, 0
  %or.cond463 = select i1 %i.ic, i1 %.not267, i1 false
  br i1 %or.cond463, label %bb.ah, label %.sink.split

bb.ag:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.id = zext nneg i8 %.1229 to i32
  %.neg266 = sub nsw i32 %i.id, %.lcssa299
  %i.ie = sext i32 %.neg266 to i64
  %i.if = getelementptr inbounds i8, ptr %.3245.lcssa, i64 %i.ie ; 7 uses
  %i.ig = icmp slt i8 %.1229, %.2226.lcssa
  br i1 %i.ig, label %iter.check542, label %._crit_edge335

iter.check542:                                    ; preds = %bb.ag
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 65 ; 7 uses
  %i.ii = zext i8 %.1229 to i64                   ; 7 uses
  %wide.trip.count389 = zext nneg i8 %.2226.lcssa to i64 ; 4 uses
  %i.ij = sub nsw i64 %wide.trip.count389, %i.ii  ; 7 uses
  %min.iters.check527 = icmp ult i64 %i.ij, 8
  br i1 %min.iters.check527, label %vec.epilog.scalar.ph543.preheader, label %vector.memcheck524

vector.memcheck524:                               ; preds = %iter.check542
  %5 = ptrtoaddr ptr %i.d to i64
  %i.ik = sext i32 %.lcssa299 to i64
  %6 = ptrtoaddr ptr %.3245.lcssa to i64
  %i.il = add i64 %5, %i.ik
  %i.im = sub i64 %i.il, %6
  %i.in = add i64 %i.im, 64
  %diff.check526 = icmp ult i64 %i.in, 31
  br i1 %diff.check526, label %vec.epilog.scalar.ph543.preheader, label %vector.main.loop.iter.check528

vector.main.loop.iter.check528:                   ; preds = %vector.memcheck524
  %min.iters.check529 = icmp ult i64 %i.ij, 32
  br i1 %min.iters.check529, label %vec.epilog.ph546, label %vector.ph530

vector.ph530:                                     ; preds = %vector.main.loop.iter.check528
  %i.io = and i64 %i.ij, 24
  %n.vec531 = and i64 %i.ij, -32                  ; 5 uses
  %i.ip = add nsw i64 %n.vec531, %i.ii
  %i.iq = getelementptr i8, ptr %i.if, i64 %n.vec531 ; 2 uses
  %invariant.gep631 = getelementptr i8, ptr %i.ih, i64 %i.ii
  br label %vector.body532

vector.body532:                                   ; preds = %vector.ph530, %vector.body532
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next537, %vector.body532 ] ; 3 uses
  %next.gep534 = getelementptr i8, ptr %i.if, i64 %index533 ; 2 uses
  %i.ir = getelementptr i8, ptr %next.gep534, i64 16
  %wide.load535 = load <16 x i8>, ptr %next.gep534, align 1, !tbaa !27
  %wide.load536 = load <16 x i8>, ptr %i.ir, align 1, !tbaa !27
  %gep632 = getelementptr i8, ptr %invariant.gep631, i64 %index533 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %gep632, i64 16
  store <16 x i8> %wide.load535, ptr %gep632, align 1, !tbaa !27
  store <16 x i8> %wide.load536, ptr %i.is, align 1, !tbaa !27
  %index.next537 = add nuw i64 %index533, 32      ; 2 uses
  %i.it = icmp eq i64 %index.next537, %n.vec531
  br i1 %i.it, label %middle.block538, label %vector.body532, !llvm.loop !215

middle.block538:                                  ; preds = %vector.body532
  %cmp.n539 = icmp eq i64 %i.ij, %n.vec531
  br i1 %cmp.n539, label %._crit_edge335, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block538
  %min.epilog.iters.check545 = icmp eq i64 %i.io, 0
  br i1 %min.epilog.iters.check545, label %vec.epilog.scalar.ph543.preheader, label %vec.epilog.ph546, !prof !97

vec.epilog.ph546:                                 ; preds = %vector.main.loop.iter.check528, %vec.epilog.iter.check544
  %vec.epilog.resume.val540 = phi i64 [ %n.vec531, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check528 ]
  %n.vec547 = and i64 %i.ij, -8                   ; 4 uses
  %i.iu = add nsw i64 %n.vec547, %i.ii
  %i.iv = getelementptr i8, ptr %i.if, i64 %n.vec547 ; 2 uses
  %invariant.gep633 = getelementptr i8, ptr %i.ih, i64 %i.ii
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph546
  %index549 = phi i64 [ %vec.epilog.resume.val540, %vec.epilog.ph546 ], [ %index.next552, %vec.epilog.vector.body548 ] ; 3 uses
  %next.gep550 = getelementptr i8, ptr %i.if, i64 %index549
  %wide.load551 = load <8 x i8>, ptr %next.gep550, align 1, !tbaa !27
  %gep634 = getelementptr i8, ptr %invariant.gep633, i64 %index549
  store <8 x i8> %wide.load551, ptr %gep634, align 1, !tbaa !27
  %index.next552 = add nuw i64 %index549, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next552, %n.vec547
  br i1 %i.iw, label %vec.epilog.middle.block553, label %vec.epilog.vector.body548, !llvm.loop !216

vec.epilog.middle.block553:                       ; preds = %vec.epilog.vector.body548
  %cmp.n554 = icmp eq i64 %i.ij, %n.vec547
  br i1 %cmp.n554, label %._crit_edge335, label %vec.epilog.scalar.ph543.preheader

vec.epilog.scalar.ph543.preheader:                ; preds = %iter.check542, %vector.memcheck524, %vec.epilog.iter.check544, %vec.epilog.middle.block553
  %indvars.iv386.ph = phi i64 [ %i.ii, %iter.check542 ], [ %i.ii, %vector.memcheck524 ], [ %i.ip, %vec.epilog.iter.check544 ], [ %i.iu, %vec.epilog.middle.block553 ] ; 4 uses
  %.5247331.ph = phi ptr [ %i.if, %iter.check542 ], [ %i.if, %vector.memcheck524 ], [ %i.iq, %vec.epilog.iter.check544 ], [ %i.iv, %vec.epilog.middle.block553 ] ; 2 uses
  %i.ix = sub nsw i64 %wide.trip.count389, %indvars.iv386.ph
  %xtraiter590 = and i64 %i.ix, 3                 ; 2 uses
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod591.not, label %vec.epilog.scalar.ph543.prol.loopexit, label %vec.epilog.scalar.ph543.prol

vec.epilog.scalar.ph543.prol:                     ; preds = %vec.epilog.scalar.ph543.preheader, %vec.epilog.scalar.ph543.prol
  %indvars.iv386.prol = phi i64 [ %indvars.iv.next387.prol, %vec.epilog.scalar.ph543.prol ], [ %indvars.iv386.ph, %vec.epilog.scalar.ph543.preheader ] ; 2 uses
  %.5247331.prol = phi ptr [ %i.iy, %vec.epilog.scalar.ph543.prol ], [ %.5247331.ph, %vec.epilog.scalar.ph543.preheader ] ; 2 uses
  %prol.iter592 = phi i64 [ %prol.iter592.next, %vec.epilog.scalar.ph543.prol ], [ 0, %vec.epilog.scalar.ph543.preheader ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.5247331.prol, i64 1 ; 3 uses
  %i.iz = load i8, ptr %.5247331.prol, align 1, !tbaa !27
  %indvars.iv.next387.prol = add nuw nsw i64 %indvars.iv386.prol, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv386.prol
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !27
  %prol.iter592.next = add i64 %prol.iter592, 1   ; 2 uses
  %prol.iter592.cmp.not = icmp eq i64 %prol.iter592.next, %xtraiter590
  br i1 %prol.iter592.cmp.not, label %vec.epilog.scalar.ph543.prol.loopexit, label %vec.epilog.scalar.ph543.prol, !llvm.loop !217

vec.epilog.scalar.ph543.prol.loopexit:            ; preds = %vec.epilog.scalar.ph543.prol, %vec.epilog.scalar.ph543.preheader
  %.lcssa574.unr = phi ptr [ poison, %vec.epilog.scalar.ph543.preheader ], [ %i.iy, %vec.epilog.scalar.ph543.prol ]
  %indvars.iv386.unr = phi i64 [ %indvars.iv386.ph, %vec.epilog.scalar.ph543.preheader ], [ %indvars.iv.next387.prol, %vec.epilog.scalar.ph543.prol ]
  %.5247331.unr = phi ptr [ %.5247331.ph, %vec.epilog.scalar.ph543.preheader ], [ %i.iy, %vec.epilog.scalar.ph543.prol ]
  %i.jb = sub nsw i64 %indvars.iv386.ph, %wide.trip.count389
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %._crit_edge335, label %vec.epilog.scalar.ph543

vec.epilog.scalar.ph543:                          ; preds = %vec.epilog.scalar.ph543.prol.loopexit, %vec.epilog.scalar.ph543
  %indvars.iv386 = phi i64 [ %indvars.iv.next387.3, %vec.epilog.scalar.ph543 ], [ %indvars.iv386.unr, %vec.epilog.scalar.ph543.prol.loopexit ] ; 5 uses
  %.5247331 = phi ptr [ %i.jo, %vec.epilog.scalar.ph543 ], [ %.5247331.unr, %vec.epilog.scalar.ph543.prol.loopexit ] ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.5247331, i64 1
  %i.je = load i8, ptr %.5247331, align 1, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv386
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %.5247331, i64 2
  %i.jh = load i8, ptr %i.jd, align 1, !tbaa !27
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv386
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  store i8 %i.jh, ptr %i.jj, align 1, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %.5247331, i64 3
  %i.jl = load i8, ptr %i.jg, align 1, !tbaa !27
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv386
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !27
  %i.jo = getelementptr inbounds nuw i8, ptr %.5247331, i64 4 ; 2 uses
  %i.jp = load i8, ptr %i.jk, align 1, !tbaa !27
  %indvars.iv.next387.3 = add nuw nsw i64 %indvars.iv386, 4 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv386
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 3
  store i8 %i.jp, ptr %i.jr, align 1, !tbaa !27
  %exitcond390.not.3 = icmp eq i64 %indvars.iv.next387.3, %wide.trip.count389
  br i1 %exitcond390.not.3, label %._crit_edge335, label %vec.epilog.scalar.ph543, !llvm.loop !218

._crit_edge335:                                   ; preds = %vec.epilog.scalar.ph543.prol.loopexit, %vec.epilog.scalar.ph543, %middle.block538, %vec.epilog.middle.block553, %bb.ag
  %.5247.lcssa = phi ptr [ %i.if, %bb.ag ], [ %i.iv, %vec.epilog.middle.block553 ], [ %i.iq, %middle.block538 ], [ %.lcssa574.unr, %vec.epilog.scalar.ph543.prol.loopexit ], [ %i.jo, %vec.epilog.scalar.ph543 ]
  store i8 %.2226.lcssa, ptr %i.ag, align 8, !tbaa !54
  store ptr %.5247.lcssa, ptr %i.g, align 8, !tbaa !44
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.js, ptr %i.k, align 8, !tbaa !68
  store i32 12, ptr %2, align 4, !tbaa !29
  br label %bb.bc

.sink.split:                                      ; preds = %bb.af
  %i.jt = ashr i32 %i.ib, 10
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !21
  %i.jx = zext i16 %i.jw to i32
  %i.jy = lshr i32 %i.ib, 4
  %i.jz = and i32 %i.jy, 63
  %i.ka = add nuw nsw i32 %i.jz, %i.jx
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %.sink.split
  %.0216 = phi i32 [ 0, %bb.af ], [ %i.kd, %.sink.split ] ; 2 uses
  %i.ke = shl i32 %.0216, 4
  %i.kf = and i32 %i.ke, 1048560
  %i.kg = and i32 %i.ib, 15                       ; 2 uses
  %i.kh = or disjoint i32 %i.kf, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.0232, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !21 ; 5 uses
  %i.kl = shl nuw i32 65536, %i.kg
  %i.km = and i32 %.0216, %i.kl
  %.not268 = icmp eq i32 %i.km, 0
  br i1 %.not268, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !72
  %.not269 = icmp ne i8 %i.ko, 0
  %i.kp = add nsw i32 %i.ib, -57344
  %i.kq = icmp ult i32 %i.kp, 6400
  %or.cond276 = select i1 %.not269, i1 true, i1 %i.kq
  br i1 %or.cond276, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kr = add nsw i32 %i.ib, -983040
  %i.ks = icmp ult i32 %i.kr, 131072
  %i.kt = icmp ne i16 %i.kk, 0
  %or.cond12 = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond12, label %bb.al, label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %.old11.not = icmp eq i16 %i.kk, 0
  br i1 %.old11.not, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.s, %bb.w, %bb.aj, %bb.ak, %bb.ah, %bb.n
  %.7 = phi ptr [ %i.bs, %bb.n ], [ %.3245.lcssa, %bb.ah ], [ %.3245.lcssa, %bb.aj ], [ %.3245.lcssa, %bb.ak ], [ %i.dd, %bb.s ], [ %i.dv, %bb.w ] ; 2 uses
  %.3236 = phi i32 [ %.0233338, %bb.n ], [ %.1234, %bb.ah ], [ %.1234, %bb.aj ], [ %.1234, %bb.ak ], [ %.0233338, %bb.s ], [ %.0233338, %bb.w ] ; 2 uses
  %.3 = phi i16 [ %i.ch, %bb.n ], [ %i.kk, %bb.ah ], [ %i.kk, %bb.aj ], [ %i.kk, %bb.ak ], [ %i.dl, %bb.s ], [ %i.ed, %bb.w ] ; 4 uses
  %i.ku = icmp ult i16 %.3, 256
  br i1 %i.ku, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kv = trunc nuw i16 %.3 to i8
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.kw = lshr i16 %.3, 8
  %i.kx = trunc nuw i16 %i.kw to i8
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store ptr %i.kz, ptr %i.a, align 8, !tbaa !49
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !27
  %i.la = icmp sgt i32 %.3236, 1
  %i.lb = trunc i16 %.3 to i8                     ; 2 uses
  br i1 %i.la, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lc = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 %i.lb, ptr %i.lc, align 8, !tbaa !27
  %i.ld = getelementptr inbounds nuw i8, ptr %i.f, i64 91
  store i8 1, ptr %i.ld, align 1, !tbaa !76
  store i32 15, ptr %2, align 4, !tbaa !29
end_hunk_0
