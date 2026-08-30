Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jdapistd-8?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@jpeg_read_scanlines:bb.a
  store i32 %i.o, ptr %i.r, align 4, !tbaa !51
  %i.s = load ptr, ptr %0, align 8, !tbaa !48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  tail call void %i.t(ptr noundef nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !56   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58   ; 2 uses
  %.not48 = icmp ult i32 %i.v, %i.x
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 126, ptr %i.z, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  tail call void %i.ab(ptr noundef nonnull %0, i32 noundef -1) #5
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 4 uses
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.v to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !43
  %i.ag = zext i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !39
  tail call void %i.ai(ptr noundef nonnull %0) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 16, ptr %i.ap, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !51
  %i.at = load ptr, ptr %0, align 8, !tbaa !48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52
  tail call void %i.au(ptr noundef nonnull %0) #5
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi ptr [ %.pre50, %bb.k ], [ %i.am, %bb.j ]
  call void %i.av(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2) #5
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !71  ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !56
  %i.ay = add i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.u, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_skip_scanlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq i32 %i.n, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 16, ptr %i.p, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %i.n, ptr %i.q, align 4, !tbaa !51
  %i.r = load ptr, ptr %0, align 8, !tbaa !48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  tail call void %i.s(ptr noundef nonnull %0) #5
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !70
  %.not173 = icmp eq i32 %i.v, 0
  br i1 %.not173, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 48, ptr %i.x, align 8, !tbaa !49
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !52
  tail call void %i.y(ptr noundef nonnull %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !97
  %.not174 = icmp eq i32 %i.aa, 0
  br i1 %.not174, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !98
  %.not175 = icmp eq i32 %i.ac, 0
  br i1 %.not175, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 48, ptr %i.ae, align 8, !tbaa !49
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !52
  tail call void %i.af(ptr noundef nonnull %0) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 2 uses
  %.not176 = icmp eq i32 %i.ah, 205
  br i1 %.not176, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 21, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !51
  %i.al = load ptr, ptr %0, align 8, !tbaa !48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  tail call void %i.am(ptr noundef nonnull %0) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56
  %.fr224 = freeze i32 %i.ao                      ; 6 uses
  %i.ap = zext i32 %.fr224 to i64
  %i.aq = zext i32 %1 to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58 ; 5 uses
  %i.au = zext i32 %i.at to i64
  %.not177 = icmp samesign ult i64 %i.ar, %i.au
  br i1 %.not177, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = sub i32 %i.at, %.fr224
  store i32 %i.at, ptr %i.an, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  tail call void %i.az(ptr noundef nonnull %0) #5
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  store i32 1, ptr %i.bb, align 4, !tbaa !100
  br label %bb.bs

bb.l:                                             ; preds = %bb.j
  %i.bc = icmp eq i32 %1, 0
  br i1 %i.bc, label %bb.bs, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !75 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !79 ; 5 uses
  %i.bh = mul nsw i32 %i.bg, %i.be
  %.fr222 = freeze i32 %i.bh                      ; 10 uses
  %i.bi = urem i32 %.fr224, %.fr222
  %i.bj = sub nuw i32 %.fr222, %i.bi
  %i.bk = urem i32 %i.bj, %.fr222                 ; 8 uses
  %i.bl = sub i32 %1, %i.bk                       ; 7 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !80  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !101 ; 2 uses
  %.not178 = icmp eq i32 %i.bo, 0                 ; 2 uses
  br i1 %.not178, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not221 = icmp ugt i32 %1, %i.bk
  br i1 %.not221, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp ult i32 %i.bk, 2
  br i1 %i.bp, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !102 ; 2 uses
  %.not180 = icmp ne i32 %i.br, 0
  %i.bs = add i32 %.fr222, 1
  %i.bt = icmp ult i32 %i.bl, %i.bs
  %or.cond192 = and i1 %i.bt, %.not180
  br i1 %or.cond192, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr %i.c, ptr %i.d, align 8, !tbaa !104
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 148
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !77
  %.not32.i = icmp eq i32 %i.by, 0
  br i1 %.not32.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !106 ; 2 uses
  %.not33.i = icmp eq ptr %i.ca, null
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @noop_convert, ptr %i.bz, align 8, !tbaa !106
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.027.i = phi ptr [ null, %bb.r ], [ %i.d, %bb.t ], [ null, %bb.s ], [ null, %bb.q ]
  %.026.i = phi ptr [ null, %bb.r ], [ %i.ca, %bb.t ], [ null, %bb.s ], [ null, %bb.q ] ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !97
  %.not34.i = icmp eq i32 %i.cb, 0
  br i1 %.not34.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !108 ; 2 uses
  %.not35.i = icmp eq ptr %i.cd, null
  br i1 %.not35.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !109 ; 2 uses
  %.not36.i = icmp eq ptr %i.cf, null
  br i1 %.not36.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @noop_quantize, ptr %i.ce, align 8, !tbaa !109
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.025.i = phi ptr [ %i.cf, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 148
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !77
  %.not37.i = icmp ne i32 %i.ch, 0
  %i.ci = icmp eq i32 %i.bg, 2
  %or.cond219 = and i1 %i.ci, %.not37.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %.1.i = select i1 %or.cond219, ptr %i.cj, ptr %.027.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.040.i = phi i32 [ %i.cl, %.lr.ph.i ], [ 0, %bb.y ]
  %i.ck = call i32 @jpeg_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef 1) ; 0 uses
  %i.cl = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cl, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not38.i = icmp eq ptr %.026.i, null
  br i1 %.not38.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !105
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %.026.i, ptr %i.cn, align 8, !tbaa !106
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %.not39.i = icmp eq ptr %.025.i, null
  br i1 %.not39.i, label %read_and_discard_scanlines.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.025.i, ptr %i.cq, align 8, !tbaa !109
  br label %read_and_discard_scanlines.exit

read_and_discard_scanlines.exit:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.bs

bb.ac:                                            ; preds = %bb.p
  %.not181 = icmp eq i32 %i.br, 0
  br i1 %.not181, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = add i32 %i.bk, %.fr224
  %i.cs = add i32 %i.cr, %.fr222                  ; 2 uses
  store i32 %i.cs, ptr %i.an, align 8, !tbaa !56
  %i.ct = sub i32 %i.bl, %.fr222
  br label %bb.ae

.critedge:                                        ; preds = %bb.o, %bb.ac
  %i.cu = add i32 %i.bk, %.fr224                  ; 2 uses
  store i32 %i.cu, ptr %i.an, align 8, !tbaa !56
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  %i.cv = phi i32 [ %i.cs, %bb.ad ], [ %i.cu, %.critedge ] ; 2 uses
  %.0164 = phi i32 [ %i.ct, %bb.ad ], [ %i.bl, %.critedge ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !112 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp eq i32 %i.cx, 1
  %i.da = icmp ugt i32 %i.bk, 2
  %or.cond = and i1 %i.da, %i.cz
  br i1 %or.cond, label %bb.ag, label %set_wraparound_pointers.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !74 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph49.i, label %set_wraparound_pointers.exit

.lr.ph49.i:                                       ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !88
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !113
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !113
  %i.dl = add nsw i32 %i.be, 1
  %i.dm = add nsw i32 %i.be, 2
  %wide.trip.count55.i = zext nneg i32 %i.dc to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i193, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next53.i, %._crit_edge.i193 ] ; 3 uses
  %.047.i = phi ptr [ %i.df, %.lr.ph49.i ], [ %i.gq, %._crit_edge.i193 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.047.i, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !116
  %i.dp = getelementptr inbounds nuw i8, ptr %.047.i, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !92
  %i.dr = mul nsw i32 %i.dq, %i.do
  %i.ds = sdiv i32 %i.dr, %i.be                   ; 5 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv52.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !117 ; 9 uses
  %i.dv = ptrtoaddr ptr %i.du to i64              ; 10 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv52.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117 ; 9 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64              ; 10 uses
  %i.dz = icmp sgt i32 %i.ds, 0
  br i1 %i.dz, label %.lr.ph.i194, label %._crit_edge.i193

.lr.ph.i194:                                      ; preds = %bb.ah
  %i.ea = mul nsw i32 %i.ds, %i.dl
  %i.eb = mul nsw i32 %i.ds, %i.dm
  %i.ec = sext i32 %i.ea to i64                   ; 4 uses
  %i.ed = zext nneg i32 %i.ds to i64              ; 8 uses
  %i.ee = sext i32 %i.eb to i64                   ; 4 uses
  %min.iters.check = icmp ult i32 %i.ds, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i194
  %i.ef = sub i64 %i.dv, %i.dy
  %diff.check = icmp ugt i64 %i.ef, -16
  %i.eg = add nsw i64 %i.ee, %i.ed
  %i.eh = shl nsw i64 %i.eg, 3
  %i.ei = add nsw i64 %i.eh, -1
  %diff.check266 = icmp ult i64 %i.ei, 15
  %conflict.rdx = or i1 %diff.check, %diff.check266
  %i.ej = shl nsw i64 %i.ee, 3                    ; 7 uses
  %i.ek = add i64 %i.ej, %i.dy
  %i.el = shl nuw nsw i64 %i.ed, 3                ; 6 uses
  %i.em = add i64 %i.ek, %i.el
  %i.en = sub i64 %i.dv, %i.em
  %diff.check267 = icmp ugt i64 %i.en, -16
  %conflict.rdx268 = or i1 %conflict.rdx, %diff.check267
  %i.eo = add nsw i64 %i.ec, %i.ed
  %i.ep = shl nsw i64 %i.eo, 3
  %diff.check269 = icmp ugt i64 %i.ep, -16
  %conflict.rdx270 = or i1 %conflict.rdx268, %diff.check269
  %i.eq = shl nsw i64 %i.ec, 3                    ; 5 uses
  %i.er = add i64 %i.eq, %i.dy
  %i.es = add i64 %i.er, %i.el
  %i.et = sub i64 %i.dv, %i.es
  %diff.check271 = icmp ugt i64 %i.et, -16
  %conflict.rdx272 = or i1 %conflict.rdx270, %diff.check271
  %i.eu = add i64 %i.el, %i.dy
  %i.ev = sub i64 %i.dv, %i.eu
  %diff.check275 = icmp ugt i64 %i.ev, -16
  %conflict.rdx276 = or i1 %conflict.rdx272, %diff.check275
  %i.ew = add i64 %i.ej, %i.dv
  %i.ex = add i64 %i.ew, %i.el
  %i.ey = sub i64 %i.dy, %i.ex
  %diff.check277 = icmp ugt i64 %i.ey, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.ez = add i64 %i.eq, %i.dv
  %i.fa = add i64 %i.ez, %i.el
  %i.fb = sub i64 %i.fa, %i.dy
  %diff.check279 = icmp ugt i64 %i.fb, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  %i.fc = add i64 %i.el, %i.dv
  %i.fd = sub i64 %i.dy, %i.fc
  %diff.check281 = icmp ugt i64 %i.fd, -16
  %conflict.rdx282 = or i1 %conflict.rdx280, %diff.check281
  %i.fe = sub nsw i64 %i.eq, %i.ej
  %diff.check283 = icmp ugt i64 %i.fe, -16
  %conflict.rdx284 = or i1 %conflict.rdx282, %diff.check283
  %i.ff = add i64 %i.ej, %i.dv
  %i.fg = add i64 %i.eq, %i.dy
  %i.fh = sub i64 %i.fg, %i.ff
  %diff.check285 = icmp ugt i64 %i.fh, -16
  %conflict.rdx286 = or i1 %conflict.rdx284, %diff.check285
  %i.fi = add nsw i64 %i.ej, -1
  %diff.check287 = icmp ult i64 %i.fi, 15
  %conflict.rdx288 = or i1 %conflict.rdx286, %diff.check287
  %i.fj = add i64 %i.ej, %i.dv
  %i.fk = sub i64 %i.fj, %i.dy
  %diff.check289 = icmp ugt i64 %i.fk, -16
  %conflict.rdx290 = or i1 %conflict.rdx288, %diff.check289
  %i.fl = add i64 %i.ej, %i.dy
  %i.fm = sub i64 %i.fl, %i.dv                    ; 2 uses
  %i.fn = sub i64 %i.eq, %i.fm
  %diff.check291 = icmp ugt i64 %i.fn, -16
  %conflict.rdx292 = or i1 %conflict.rdx290, %diff.check291
  %i.fo = add i64 %i.fm, -1
  %diff.check293 = icmp ult i64 %i.fo, 15
  %conflict.rdx294 = or i1 %conflict.rdx292, %diff.check293
  br i1 %conflict.rdx294, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fp = add nsw i64 %index, %i.ec               ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fp
  %wide.load = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !104
  %i.fr = sub nsw i64 %index, %i.ed               ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fr
  store <2 x ptr> %wide.load, ptr %i.fs, align 8, !tbaa !104
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fp
  %wide.load295 = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !104
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fr
  store <2 x ptr> %wide.load295, ptr %i.fu, align 8, !tbaa !104
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index
  %wide.load296 = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !104
  %i.fw = add nsw i64 %index, %i.ee               ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.fw
  store <2 x ptr> %wide.load296, ptr %i.fx, align 8, !tbaa !104
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index
  %wide.load297 = load <2 x ptr>, ptr %i.fy, align 8, !tbaa !104
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fw
  store <2 x ptr> %wide.load297, ptr %i.fz, align 8, !tbaa !104
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br i1 %cmp.n, label %._crit_edge.i193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i194, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i194 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.gb = add nsw i64 %indvars.iv.i, %i.ec        ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !104
  %i.ge = sub nsw i64 %indvars.iv.i, %i.ed        ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.ge
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !104
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.gb
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !104
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ge
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !104
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !104
  %i.gl = add nsw i64 %indvars.iv.i, %i.ee        ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.gl
  store ptr %i.gk, ptr %i.gm, align 8, !tbaa !104
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !104
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.gl
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !104
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i, %i.ed
  br i1 %exitcond.not.i195, label %._crit_edge.i193, label %scalar.ph, !llvm.loop !121

._crit_edge.i193:                                 ; preds = %scalar.ph, %middle.block, %bb.ah
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.047.i, i64 96
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %set_wraparound_pointers.exit, label %bb.ah, !llvm.loop !122

set_wraparound_pointers.exit:                     ; preds = %._crit_edge.i193, %bb.ag, %bb.af
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.gr, align 8, !tbaa !102
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.gs, align 4, !tbaa !123
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 0, ptr %i.gt, align 4, !tbaa !124
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !77
  %.not182 = icmp eq i32 %i.gv, 0
  br i1 %.not182, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %set_wraparound_pointers.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store i32 %i.bg, ptr %i.gw, align 8, !tbaa !125
  %i.gx = sub i32 %i.at, %i.cv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !127
  br label %bb.an

bb.aj:                                            ; preds = %bb.m
  %i.gz = icmp ult i32 %1, %i.bk
  br i1 %i.gz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.bs

bb.al:                                            ; preds = %bb.aj
  %i.ha = add i32 %i.bk, %.fr224                  ; 4 uses
  store i32 %i.ha, ptr %i.an, align 8, !tbaa !56
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 0, ptr %i.hb, align 8, !tbaa !102
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.hc, align 4, !tbaa !123
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !77
  %.not179 = icmp eq i32 %i.he, 0
  br i1 %.not179, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store i32 %i.bg, ptr %i.hf, align 8, !tbaa !125
  %i.hg = sub i32 %i.at, %i.ha
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !127
  br label %.thread

bb.an:                                            ; preds = %bb.ai, %set_wraparound_pointers.exit
  %i.hi = add i32 %.0164, -1
  br label %.thread

.thread:                                          ; preds = %bb.am, %bb.al, %bb.an
  %.sink265 = phi i32 [ %i.hi, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 5 uses
  %i.hj = phi i32 [ %i.cv, %bb.an ], [ %i.ha, %bb.al ], [ %i.ha, %bb.am ] ; 2 uses
  %.1.fr218 = phi i32 [ %.0164, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %bb.am ] ; 2 uses
  %i.hk = urem i32 %.sink265, %.fr222             ; 2 uses
  %i.hl = udiv i32 %.sink265, %.fr222
  %i.hm = sub nuw i32 %.sink265, %i.hk            ; 5 uses
  %i.hn = sub i32 %.1.fr218, %i.hm                ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !35
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !36
  %.not184 = icmp eq i32 %i.hr, 0
  br i1 %.not184, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !34
  %.not185 = icmp eq i32 %i.ht, 0
  br i1 %.not185, label %.preheader226, label %bb.ap

.preheader226:                                    ; preds = %bb.ao
  %.not232 = icmp eq i32 %.sink265, %i.hk
  br i1 %.not232, label %._crit_edge231, label %.preheader225.lr.ph

.preheader225.lr.ph:                              ; preds = %.preheader226
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %.preheader225

bb.ap:                                            ; preds = %bb.ao, %.thread
  %i.ic = add i32 %i.hj, %i.hm
  store i32 %i.ic, ptr %i.an, align 8, !tbaa !56
  %i.id = udiv i32 %.sink265, %.fr222             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !128
  %i.ig = add i32 %i.if, %i.id
  store i32 %i.ig, ptr %i.ie, align 8, !tbaa !128
  br i1 %.not178, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 148 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !112
  %i.ij = add i32 %i.ii, %i.id
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !112
  %i.ik = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %i.a, ptr %i.b, align 8, !tbaa !104
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !105 ; 2 uses
  %.not.i196 = icmp eq ptr %i.im, null
  br i1 %.not.i196, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 148
  %i.io = load i32, ptr %i.in, align 4, !tbaa !77
  %.not32.i197 = icmp eq i32 %i.io, 0
  br i1 %.not32.i197, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !106 ; 2 uses
  %.not33.i213 = icmp eq ptr %i.iq, null
  br i1 %.not33.i213, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr @noop_convert, ptr %i.ip, align 8, !tbaa !106
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.027.i198 = phi ptr [ null, %bb.ar ], [ %i.b, %bb.at ], [ null, %bb.as ], [ null, %bb.aq ]
  %.026.i199 = phi ptr [ null, %bb.ar ], [ %i.iq, %bb.at ], [ null, %bb.as ], [ null, %bb.aq ] ; 2 uses
  %i.ir = load i32, ptr %i.z, align 4, !tbaa !97
  %.not34.i200 = icmp eq i32 %i.ir, 0
  br i1 %.not34.i200, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !108 ; 2 uses
  %.not35.i201 = icmp eq ptr %i.it, null
  br i1 %.not35.i201, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !109 ; 2 uses
  %.not36.i202 = icmp eq ptr %i.iv, null
  br i1 %.not36.i202, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr @noop_quantize, ptr %i.iu, align 8, !tbaa !109
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.025.i203 = phi ptr [ %i.iv, %bb.ax ], [ null, %bb.aw ], [ null, %bb.av ], [ null, %bb.au ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 148
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !77
  %.not37.i204 = icmp ne i32 %i.ix, 0
  %i.iy = icmp eq i32 %i.bg, 2
  %or.cond220 = and i1 %i.iy, %.not37.i204
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %.1.i205 = select i1 %or.cond220, ptr %i.iz, ptr %.027.i198
  %.not41.i206 = icmp eq i32 %.1.fr218, %i.hm
  br i1 %.not41.i206, label %._crit_edge.i210, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.ay, %.lr.ph.i207
  %.040.i208 = phi i32 [ %i.jb, %.lr.ph.i207 ], [ 0, %bb.ay ]
  %i.ja = call i32 @jpeg_read_scanlines(ptr noundef nonnull %0, ptr noundef %.1.i205, i32 noundef 1) ; 0 uses
  %i.jb = add nuw i32 %.040.i208, 1               ; 2 uses
  %exitcond.not.i209 = icmp eq i32 %i.jb, %i.hn
  br i1 %exitcond.not.i209, label %._crit_edge.i210, label %.lr.ph.i207, !llvm.loop !111

._crit_edge.i210:                                 ; preds = %.lr.ph.i207, %bb.ay
  %.not38.i211 = icmp eq ptr %.026.i199, null
  br i1 %.not38.i211, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i210
  %i.jc = load ptr, ptr %i.il, align 8, !tbaa !105
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %.026.i199, ptr %i.jd, align 8, !tbaa !106
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i210
  %.not39.i212 = icmp eq ptr %.025.i203, null
  br i1 %.not39.i212, label %read_and_discard_scanlines.exit214, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !108
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %.025.i203, ptr %i.jg, align 8, !tbaa !109
  br label %read_and_discard_scanlines.exit214

read_and_discard_scanlines.exit214:               ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ap
  tail call fastcc void @increment_simple_rowgroup_ctr(ptr noundef nonnull %0, i32 noundef %i.hn)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %read_and_discard_scanlines.exit214
  %i.jh = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !77
  %.not190 = icmp eq i32 %i.ji, 0
  br i1 %.not190, label %bb.be, label %bb.bs

bb.be:                                            ; preds = %bb.bd
  %i.jj = load i32, ptr %i.as, align 4, !tbaa !58
  %i.jk = load i32, ptr %i.an, align 8, !tbaa !56
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !127
  br label %bb.bs

.preheader225:                                    ; preds = %.preheader225.lr.ph, %bb.bn
  %.0167230 = phi i32 [ 0, %.preheader225.lr.ph ], [ %i.lf, %bb.bn ]
  %i.jn = load i32, ptr %i.hu, align 8, !tbaa !129 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.preheader.lr.ph, label %._crit_edge229

.preheader.lr.ph:                                 ; preds = %.preheader225
  %i.jp = load i32, ptr %i.hv, align 8, !tbaa !134
  %.not233 = icmp eq i32 %i.jp, 0
  br i1 %.not233, label %._crit_edge229, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.jq = phi i32 [ %i.ke, %._crit_edge ], [ %i.jn, %.preheader.lr.ph ]
  %i.jr = phi i32 [ %i.kf, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.0165228 = phi i32 [ %i.kg, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.not234 = icmp eq i32 %i.jr, 0
  br i1 %.not234, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.bg
  %.0166227 = phi i32 [ %i.kb, %bb.bg ], [ 0, %.preheader ]
  %i.js = load ptr, ptr %i.hw, align 8, !tbaa !135 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !136
  %.not188 = icmp eq i32 %i.ju, 0
  br i1 %.not188, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph
  %i.jv = load i32, ptr %i.hx, align 8, !tbaa !138
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 116
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !139
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !140
  %i.ka = tail call i32 %i.jz(ptr noundef nonnull %0, ptr noundef null) #5 ; 0 uses
  %i.kb = add nuw i32 %.0166227, 1                ; 2 uses
  %i.kc = load i32, ptr %i.hv, align 8, !tbaa !134 ; 2 uses
  %i.kd = icmp ult i32 %i.kb, %i.kc
  br i1 %i.kd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141

._crit_edge.loopexit:                             ; preds = %bb.bg
  %.pre236 = load i32, ptr %i.hu, align 8, !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ke = phi i32 [ %.pre236, %._crit_edge.loopexit ], [ %i.jq, %.preheader ] ; 2 uses
  %i.kf = phi i32 [ %i.kc, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.kg = add nuw nsw i32 %.0165228, 1            ; 2 uses
  %i.kh = icmp slt i32 %i.kg, %i.ke
  br i1 %i.kh, label %.preheader, label %._crit_edge229, !llvm.loop !142

._crit_edge229:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader225
  %i.ki = load i32, ptr %i.hx, align 8, !tbaa !138
  %i.kj = add i32 %i.ki, 1                        ; 3 uses
  store i32 %i.kj, ptr %i.hx, align 8, !tbaa !138
  %i.kk = load i32, ptr %i.hy, align 8, !tbaa !128
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.hy, align 8, !tbaa !128
end_hunk_0
