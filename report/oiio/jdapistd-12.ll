inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@jpeg12_read_scanlines:bb.a
  store i32 %i.o, ptr %i.r, align 4, !tbaa !37
  %i.s = load ptr, ptr %0, align 8, !tbaa !33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  tail call void %i.t(ptr noundef nonnull %0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !68   ; 2 uses
  %.not48 = icmp ult i32 %i.v, %i.x
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 126, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  tail call void %i.ab(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 4 uses
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.v to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = zext i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !73
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !74
  tail call void %i.ai(ptr noundef nonnull %0) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 16, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !37
  %i.at = load ptr, ptr %0, align 8, !tbaa !33
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void %i.au(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi ptr [ %.pre50, %bb.k ], [ %i.am, %bb.j ]
  call void %i.av(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2) #4
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !42
  %i.ay = add i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.u, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @jpeg12_skip_scanlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i16], align 2                ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1 x i16], align 2                ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7    ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %i.n, 12
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 16, ptr %i.p, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.n, ptr %i.q, align 4, !tbaa !37
  %i.r = load ptr, ptr %0, align 8, !tbaa !33
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  tail call void %i.s(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %.not173 = icmp eq i32 %i.v, 0
  br i1 %.not173, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 48, ptr %i.x, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !38
  tail call void %i.y(ptr noundef nonnull %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %.not174 = icmp eq i32 %i.aa, 0
  br i1 %.not174, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80
  %.not175 = icmp eq i32 %i.ac, 0
  br i1 %.not175, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 48, ptr %i.ae, align 8, !tbaa !34
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !38
  tail call void %i.af(ptr noundef nonnull %0) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41 ; 2 uses
  %.not176 = icmp eq i32 %i.ah, 205
  br i1 %.not176, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 21, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !37
  %i.al = load ptr, ptr %0, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  tail call void %i.am(ptr noundef nonnull %0) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !42
  %.fr223 = freeze i32 %i.ao                      ; 6 uses
  %i.ap = zext i32 %.fr223 to i64
  %i.aq = zext i32 %1 to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68 ; 5 uses
  %i.au = zext i32 %i.at to i64
  %.not177 = icmp samesign ult i64 %i.ar, %i.au
  br i1 %.not177, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = sub i32 %i.at, %.fr223
  store i32 %i.at, ptr %i.an, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !82
  tail call void %i.az(ptr noundef nonnull %0) #4
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  store i32 1, ptr %i.bb, align 4, !tbaa !84
  br label %bb.bs

bb.l:                                             ; preds = %bb.j
  %i.bc = icmp eq i32 %1, 0
  br i1 %i.bc, label %bb.bs, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !46 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !50 ; 5 uses
  %i.bh = mul nsw i32 %i.bg, %i.be
  %.fr221 = freeze i32 %i.bh                      ; 10 uses
  %i.bi = urem i32 %.fr223, %.fr221
  %i.bj = sub i32 %.fr221, %i.bi
  %i.bk = urem i32 %i.bj, %.fr221                 ; 8 uses
  %i.bl = sub i32 %1, %i.bk                       ; 7 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !51  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85 ; 2 uses
  %.not178 = icmp eq i32 %i.bo, 0                 ; 2 uses
  br i1 %.not178, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not220 = icmp ugt i32 %1, %i.bk
  br i1 %.not220, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp ult i32 %i.bk, 2
  br i1 %i.bp, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !86 ; 2 uses
  %.not180 = icmp ne i32 %i.br, 0
  %i.bs = add i32 %.fr221, 1
  %i.bt = icmp ult i32 %i.bl, %i.bs
  %or.cond192 = and i1 %i.bt, %.not180
  br i1 %or.cond192, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i16 0, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr %i.c, ptr %i.d, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 132
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !48
  %.not.i = icmp ne i32 %i.bw, 0                  ; 2 uses
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 2 uses
  %.not32.i = icmp eq ptr %i.by, null
  br i1 %.not32.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !90 ; 2 uses
  %.not33.i = icmp eq ptr %i.ca, null
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @noop_convert, ptr %i.bz, align 8, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.027.i = phi ptr [ null, %bb.q ], [ %i.d, %bb.t ], [ null, %bb.s ], [ null, %bb.r ]
  %.026.i = phi ptr [ null, %bb.q ], [ %i.ca, %bb.t ], [ null, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !79
  %.not34.i = icmp eq i32 %i.cb, 0
  br i1 %.not34.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %.not35.i = icmp eq ptr %i.cd, null
  br i1 %.not35.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !93 ; 2 uses
  %.not36.i = icmp eq ptr %i.cf, null
  br i1 %.not36.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @noop_quantize, ptr %i.ce, align 8, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.025.i = phi ptr [ %i.cf, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.cg = icmp eq i32 %i.bg, 2
  %or.cond218 = and i1 %i.cg, %.not.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %.1.i = select i1 %or.cond218, ptr %i.ch, ptr %.027.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.040.i = phi i32 [ %i.cj, %.lr.ph.i ], [ 0, %bb.y ]
  %i.ci = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef 1) ; 0 uses
  %i.cj = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not38.i = icmp eq ptr %.026.i, null
  br i1 %.not38.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.026.i, ptr %i.cm, align 8, !tbaa !90
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %.not39.i = icmp eq ptr %.025.i, null
  br i1 %.not39.i, label %read_and_discard_scanlines.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %.025.i, ptr %i.cp, align 8, !tbaa !93
  br label %read_and_discard_scanlines.exit

read_and_discard_scanlines.exit:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.bs

bb.ac:                                            ; preds = %bb.p
  %.not181 = icmp eq i32 %i.br, 0
  br i1 %.not181, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add i32 %i.bk, %.fr223
  %i.cr = add i32 %i.cq, %.fr221                  ; 2 uses
  store i32 %i.cr, ptr %i.an, align 8, !tbaa !42
  %i.cs = sub i32 %i.bl, %.fr221
  br label %bb.ae

.critedge:                                        ; preds = %bb.o, %bb.ac
  %i.ct = add i32 %i.bk, %.fr223                  ; 2 uses
  store i32 %i.ct, ptr %i.an, align 8, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  %i.cu = phi i32 [ %i.cr, %bb.ad ], [ %i.ct, %.critedge ] ; 2 uses
  %.0165 = phi i32 [ %i.cs, %bb.ad ], [ %i.bl, %.critedge ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !96 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp eq i32 %i.cw, 1
  %i.cz = icmp ugt i32 %i.bk, 2
  %or.cond = and i1 %i.cz, %i.cy
  br i1 %or.cond, label %bb.ag, label %set_wraparound_pointers.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load i32, ptr %i.da, align 8, !tbaa !45 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !97
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !97
  %i.dk = add nsw i32 %i.be, 1
  %i.dl = add nsw i32 %i.be, 2
  %wide.trip.count55.i = zext nneg i32 %i.db to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i193, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i193 ] ; 3 uses
  %.04346.i = phi ptr [ %i.de, %.lr.ph49.i ], [ %i.gp, %._crit_edge.i193 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.04346.i, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !100
  %i.do = getelementptr inbounds nuw i8, ptr %.04346.i, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !64
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = sdiv i32 %i.dq, %i.be                   ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv52.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101 ; 9 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 10 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv52.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !101 ; 9 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64              ; 10 uses
  %i.dy = icmp sgt i32 %i.dr, 0
  br i1 %i.dy, label %.lr.ph.i194, label %._crit_edge.i193

.lr.ph.i194:                                      ; preds = %bb.ah
  %i.dz = mul nsw i32 %i.dr, %i.dk
  %i.ea = mul nsw i32 %i.dr, %i.dl
  %i.eb = sext i32 %i.dz to i64                   ; 4 uses
  %i.ec = zext nneg i32 %i.dr to i64              ; 8 uses
  %i.ed = sext i32 %i.ea to i64                   ; 4 uses
  %min.iters.check = icmp ult i32 %i.dr, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i194
  %i.ee = sub i64 %i.du, %i.dx
  %diff.check = icmp ugt i64 %i.ee, -16
  %i.ef = add nsw i64 %i.ed, %i.ec
  %i.eg = shl nsw i64 %i.ef, 3
  %i.eh = add nsw i64 %i.eg, -1
  %diff.check265 = icmp ult i64 %i.eh, 15
  %conflict.rdx = or i1 %diff.check, %diff.check265
  %i.ei = shl nsw i64 %i.ed, 3                    ; 7 uses
  %i.ej = add i64 %i.ei, %i.dx
  %i.ek = shl nuw nsw i64 %i.ec, 3                ; 6 uses
  %i.el = add i64 %i.ej, %i.ek
  %i.em = sub i64 %i.du, %i.el
  %diff.check266 = icmp ugt i64 %i.em, -16
  %conflict.rdx267 = or i1 %conflict.rdx, %diff.check266
  %i.en = add nsw i64 %i.eb, %i.ec
  %i.eo = shl nsw i64 %i.en, 3
  %diff.check268 = icmp ugt i64 %i.eo, -16
  %conflict.rdx269 = or i1 %conflict.rdx267, %diff.check268
  %i.ep = shl nsw i64 %i.eb, 3                    ; 5 uses
  %i.eq = add i64 %i.ep, %i.dx
  %i.er = add i64 %i.eq, %i.ek
  %i.es = sub i64 %i.du, %i.er
  %diff.check270 = icmp ugt i64 %i.es, -16
  %conflict.rdx271 = or i1 %conflict.rdx269, %diff.check270
  %i.et = add i64 %i.ek, %i.dx
  %i.eu = sub i64 %i.du, %i.et
  %diff.check274 = icmp ugt i64 %i.eu, -16
  %conflict.rdx275 = or i1 %conflict.rdx271, %diff.check274
  %i.ev = add i64 %i.ei, %i.du
  %i.ew = add i64 %i.ev, %i.ek
  %i.ex = sub i64 %i.dx, %i.ew
  %diff.check276 = icmp ugt i64 %i.ex, -16
  %conflict.rdx277 = or i1 %conflict.rdx275, %diff.check276
  %i.ey = add i64 %i.ep, %i.du
  %i.ez = add i64 %i.ey, %i.ek
  %i.fa = sub i64 %i.ez, %i.dx
  %diff.check278 = icmp ugt i64 %i.fa, -16
  %conflict.rdx279 = or i1 %conflict.rdx277, %diff.check278
  %i.fb = add i64 %i.ek, %i.du
  %i.fc = sub i64 %i.dx, %i.fb
  %diff.check280 = icmp ugt i64 %i.fc, -16
  %conflict.rdx281 = or i1 %conflict.rdx279, %diff.check280
  %i.fd = sub nsw i64 %i.ep, %i.ei
  %diff.check282 = icmp ugt i64 %i.fd, -16
  %conflict.rdx283 = or i1 %conflict.rdx281, %diff.check282
  %i.fe = add i64 %i.ei, %i.du
  %i.ff = add i64 %i.ep, %i.dx
  %i.fg = sub i64 %i.ff, %i.fe
  %diff.check284 = icmp ugt i64 %i.fg, -16
  %conflict.rdx285 = or i1 %conflict.rdx283, %diff.check284
  %i.fh = add nsw i64 %i.ei, -1
  %diff.check286 = icmp ult i64 %i.fh, 15
  %conflict.rdx287 = or i1 %conflict.rdx285, %diff.check286
  %i.fi = add i64 %i.ei, %i.du
  %i.fj = sub i64 %i.fi, %i.dx
  %diff.check288 = icmp ugt i64 %i.fj, -16
  %conflict.rdx289 = or i1 %conflict.rdx287, %diff.check288
  %i.fk = add i64 %i.ei, %i.dx
  %i.fl = sub i64 %i.fk, %i.du                    ; 2 uses
  %i.fm = sub i64 %i.ep, %i.fl
  %diff.check290 = icmp ugt i64 %i.fm, -16
  %conflict.rdx291 = or i1 %conflict.rdx289, %diff.check290
  %i.fn = add i64 %i.fl, -1
  %diff.check292 = icmp ult i64 %i.fn, 15
  %conflict.rdx293 = or i1 %conflict.rdx291, %diff.check292
  br i1 %conflict.rdx293, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ec, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fo = add nsw i64 %index, %i.eb               ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fo
  %wide.load = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !88
  %i.fq = sub nsw i64 %index, %i.ec               ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fq
  store <2 x ptr> %wide.load, ptr %i.fr, align 8, !tbaa !88
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fo
  %wide.load294 = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !88
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fq
  store <2 x ptr> %wide.load294, ptr %i.ft, align 8, !tbaa !88
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index
  %wide.load295 = load <2 x ptr>, ptr %i.fu, align 8, !tbaa !88
  %i.fv = add nsw i64 %index, %i.ed               ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fv
  store <2 x ptr> %wide.load295, ptr %i.fw, align 8, !tbaa !88
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index
  %wide.load296 = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !88
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fv
  store <2 x ptr> %wide.load296, ptr %i.fy, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ec
  br i1 %cmp.n, label %._crit_edge.i193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i194, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i194 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ga = add nsw i64 %indvars.iv.i, %i.eb        ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !88
  %i.gd = sub nsw i64 %indvars.iv.i, %i.ec        ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gd
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !88
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ga
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !88
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.gd
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !88
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !88
  %i.gk = add nsw i64 %indvars.iv.i, %i.ed        ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gk
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !88
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !88
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.gk
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !88
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i, %i.ec
  br i1 %exitcond.not.i195, label %._crit_edge.i193, label %scalar.ph, !llvm.loop !106

._crit_edge.i193:                                 ; preds = %scalar.ph, %middle.block, %bb.ah
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.04346.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.ah, !llvm.loop !107

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i193, %bb.ag, %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gq, align 8, !tbaa !86
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gr, align 4, !tbaa !108
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 0, ptr %i.gs, align 4, !tbaa !109
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !48
  %.not182 = icmp eq i32 %i.gu, 0
  br i1 %.not182, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %set_wraparound_pointers.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 %i.bg, ptr %i.gv, align 8, !tbaa !110
  %i.gw = sub i32 %i.at, %i.cu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !112
  br label %bb.an

bb.aj:                                            ; preds = %bb.m
  %i.gy = icmp ult i32 %1, %i.bk
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.bs

bb.al:                                            ; preds = %bb.aj
  %i.gz = add i32 %i.bk, %.fr223                  ; 4 uses
  store i32 %i.gz, ptr %i.an, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.ha, align 8, !tbaa !86
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.hb, align 4, !tbaa !108
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !48
  %.not179 = icmp eq i32 %i.hd, 0
  br i1 %.not179, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 %i.bg, ptr %i.he, align 8, !tbaa !110
  %i.hf = sub i32 %i.at, %i.gz
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !112
  br label %.thread

bb.an:                                            ; preds = %bb.ai, %set_wraparound_pointers.exit
  %i.hh = add i32 %.0165, -1
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.al, %bb.an
  %.sink264 = phi i32 [ %i.hh, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 5 uses
  %i.hi = phi i32 [ %i.cu, %bb.an ], [ %i.gz, %bb.al ], [ %i.gz, %bb.am ] ; 2 uses
  %.1.fr217 = phi i32 [ %.0165, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 2 uses
  %i.hj = urem i32 %.sink264, %.fr221             ; 2 uses
  %i.hk = udiv i32 %.sink264, %.fr221
  %i.hl = sub nuw i32 %.sink264, %i.hj            ; 5 uses
  %i.hm = sub i32 %.1.fr217, %i.hl                ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !81
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !113
  %.not184 = icmp eq i32 %i.hq, 0
  br i1 %.not184, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !114
  %.not185 = icmp eq i32 %i.hs, 0
  br i1 %.not185, label %.preheader225, label %bb.ap

.preheader225:                                    ; preds = %bb.ao
  %.not231 = icmp eq i32 %.sink264, %i.hj
  br i1 %.not231, label %._crit_edge230, label %.preheader224.lr.ph

.preheader224.lr.ph:                              ; preds = %.preheader225
  %i.ht = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.preheader224

bb.ap:                                            ; preds = %bb.ao, %.thread
  %i.ib = add i32 %i.hi, %i.hl
  store i32 %i.ib, ptr %i.an, align 8, !tbaa !42
  %i.ic = udiv i32 %.sink264, %.fr221             ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !115
  %i.if = add i32 %i.ie, %i.ic
  store i32 %i.if, ptr %i.id, align 8, !tbaa !115
  br i1 %.not178, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 148 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !96
  %i.ii = add i32 %i.ih, %i.ic
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !96
  %i.ij = load ptr, ptr %i.i, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 132
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !48
  %.not.i196 = icmp ne i32 %i.il, 0               ; 2 uses
  br i1 %.not.i196, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !89 ; 2 uses
  %.not32.i211 = icmp eq ptr %i.in, null
  br i1 %.not32.i211, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !90 ; 2 uses
  %.not33.i212 = icmp eq ptr %i.ip, null
  br i1 %.not33.i212, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr @noop_convert, ptr %i.io, align 8, !tbaa !90
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.027.i197 = phi ptr [ null, %bb.aq ], [ %i.b, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ]
  %.026.i198 = phi ptr [ null, %bb.aq ], [ %i.ip, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ] ; 2 uses
  %i.iq = load i32, ptr %i.z, align 4, !tbaa !79
  %.not34.i199 = icmp eq i32 %i.iq, 0
  br i1 %.not34.i199, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !92 ; 2 uses
  %.not35.i200 = icmp eq ptr %i.is, null
  br i1 %.not35.i200, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !93 ; 2 uses
  %.not36.i201 = icmp eq ptr %i.iu, null
  br i1 %.not36.i201, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr @noop_quantize, ptr %i.it, align 8, !tbaa !93
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.025.i202 = phi ptr [ %i.iu, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ] ; 2 uses
  %i.iv = icmp eq i32 %i.bg, 2
  %or.cond219 = and i1 %i.iv, %.not.i196
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %.1.i203 = select i1 %or.cond219, ptr %i.iw, ptr %.027.i197
  %.not41.i204 = icmp eq i32 %.1.fr217, %i.hl
  br i1 %.not41.i204, label %._crit_edge.i208, label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %bb.ay, %.lr.ph.i205
  %.040.i206 = phi i32 [ %i.iy, %.lr.ph.i205 ], [ 0, %bb.ay ]
  %i.ix = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i203, i32 noundef 1) ; 0 uses
  %i.iy = add nuw i32 %.040.i206, 1               ; 2 uses
  %exitcond.not.i207 = icmp eq i32 %i.iy, %i.hm
  br i1 %exitcond.not.i207, label %._crit_edge.i208, label %.lr.ph.i205, !llvm.loop !95

._crit_edge.i208:                                 ; preds = %.lr.ph.i205, %bb.ay
  %.not38.i209 = icmp eq ptr %.026.i198, null
  br i1 %.not38.i209, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i208
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !89
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %.026.i198, ptr %i.jb, align 8, !tbaa !90
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i208
  %.not39.i210 = icmp eq ptr %.025.i202, null
  br i1 %.not39.i210, label %read_and_discard_scanlines.exit213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !92
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %.025.i202, ptr %i.je, align 8, !tbaa !93
  br label %read_and_discard_scanlines.exit213

read_and_discard_scanlines.exit213:               ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ap
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %i.hm)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %read_and_discard_scanlines.exit213
  %i.jf = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !48
  %.not190 = icmp eq i32 %i.jg, 0
  br i1 %.not190, label %bb.be, label %bb.bs

bb.be:                                            ; preds = %bb.bd
  %i.jh = load i32, ptr %i.as, align 4, !tbaa !68
  %i.ji = load i32, ptr %i.an, align 8, !tbaa !42
  %i.jj = sub i32 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.l, i64 204
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !112
  br label %bb.bs

.preheader224:                                    ; preds = %.preheader224.lr.ph, %bb.bn
  %.0166229 = phi i32 [ 0, %.preheader224.lr.ph ], [ %i.ld, %bb.bn ]
  %i.jl = load i32, ptr %i.ht, align 8, !tbaa !116 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.preheader.lr.ph, label %._crit_edge228

.preheader.lr.ph:                                 ; preds = %.preheader224
  %i.jn = load i32, ptr %i.hu, align 8, !tbaa !120
  %.not232 = icmp eq i32 %i.jn, 0
  br i1 %.not232, label %._crit_edge228, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.jo = phi i32 [ %i.kc, %._crit_edge ], [ %i.jl, %.preheader.lr.ph ]
  %i.jp = phi i32 [ %i.kd, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.0167227 = phi i32 [ %i.ke, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.not233 = icmp eq i32 %i.jp, 0
  br i1 %.not233, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.bg
  %.0168226 = phi i32 [ %i.jz, %bb.bg ], [ 0, %.preheader ]
  %i.jq = load ptr, ptr %i.hv, align 8, !tbaa !121 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !122
  %.not188 = icmp eq i32 %i.js, 0
  br i1 %.not188, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph
  %i.jt = load i32, ptr %i.hw, align 8, !tbaa !124
  %i.ju = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 116
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !125
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !126
  %i.jy = tail call i32 %i.jx(ptr noundef nonnull %0, ptr noundef null) #4 ; 0 uses
  %i.jz = add nuw i32 %.0168226, 1                ; 2 uses
  %i.ka = load i32, ptr %i.hu, align 8, !tbaa !120 ; 2 uses
  %i.kb = icmp ult i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !127

._crit_edge.loopexit:                             ; preds = %bb.bg
  %.pre235 = load i32, ptr %i.ht, align 8, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.kc = phi i32 [ %.pre235, %._crit_edge.loopexit ], [ %i.jo, %.preheader ] ; 2 uses
  %i.kd = phi i32 [ %i.ka, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.ke = add nuw nsw i32 %.0167227, 1            ; 2 uses
  %i.kf = icmp slt i32 %i.ke, %i.kc
  br i1 %i.kf, label %.preheader, label %._crit_edge228, !llvm.loop !128

._crit_edge228:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader224
  %i.kg = load i32, ptr %i.hw, align 8, !tbaa !124
  %i.kh = add i32 %i.kg, 1                        ; 3 uses
  store i32 %i.kh, ptr %i.hw, align 8, !tbaa !124
  %i.ki = load i32, ptr %i.hx, align 8, !tbaa !115
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.hx, align 8, !tbaa !115
  %i.kk = load i32, ptr %i.hy, align 8, !tbaa !130 ; 2 uses
  %i.kl = icmp ult i32 %i.kh, %i.kk
end_hunk_0
