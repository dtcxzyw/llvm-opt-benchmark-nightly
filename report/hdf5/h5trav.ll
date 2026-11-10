Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5trav?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@trav_token_add:bb.a
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !73
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !70
  %i.ir = icmp eq ptr %i.fk, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  br i1 %i.ir, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !60
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  tail call void @free(ptr noundef nonnull %i.fl) #19
  %i.iv = load ptr, ptr %0, align 8, !tbaa !163
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.ix) #19
  store ptr null, ptr %0, align 8, !tbaa !163
  br label %bb.av

bb.ap:                                            ; preds = %bb.am
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.iz = getelementptr inbounds i8, ptr %i.fk, i64 %i.fj
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !65
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.fk, i64 %i.fj
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr %i.jb, ptr %i.jd, align 8, !tbaa !60
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.je = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.jf = getelementptr inbounds i8, ptr %i.fk, i64 %i.fj
  store ptr %i.jf, ptr %i.je, align 8, !tbaa !65
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !60 ; 3 uses
  store ptr %i.jh, ptr %0, align 8, !tbaa !163
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ji = phi ptr [ %i.jh, %bb.aq ], [ %i.fo, %bb.ap ]
  %i.jj = phi ptr [ %i.jh, %bb.aq ], [ %i.jb, %bb.ap ] ; 2 uses
  %.not383 = icmp eq ptr %i.jj, null
  %.phi.trans.insert455 = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %.pre456 = load ptr, ptr %.phi.trans.insert455, align 8, !tbaa !61 ; 4 uses
  br i1 %.not383, label %._crit_edge454, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre456, i64 32
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !66
  %i.jm = getelementptr inbounds i8, ptr %i.jj, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.fk, ptr %i.jn, align 8, !tbaa !59
  br label %._crit_edge454

._crit_edge454:                                   ; preds = %bb.ar, %bb.as
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre456, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !68
  %i.jq = add i32 %i.jp, -1
  %i.jr = and i32 %i.jq, %i.em
  %i.js = load ptr, ptr %.pre456, align 8, !tbaa !64
  %i.jt = zext i32 %i.jr to i64
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.jt ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !70
  %i.jx = add i32 %i.jw, -1
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !70
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !71
  %i.jz = icmp eq ptr %i.jy, %i.en
  br i1 %i.jz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge454
  store ptr null, ptr %i.ju, align 8, !tbaa !71
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge454
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre456, i64 16 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !74
  %i.kc = add i32 %i.kb, -1
  store i32 %i.kc, ptr %i.ka, align 8, !tbaa !74
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ao
  store ptr null, ptr %i.en, align 8, !tbaa !61
  br label %.critedge391

.critedge:                                        ; preds = %bb.r, %bb.t
  store ptr null, ptr %i.en, align 8, !tbaa !61
  br label %.critedge391

.critedge391:                                     ; preds = %bb.ah, %bb.ag, %.thread, %bb.av, %bb.x, %bb.y, %.critedge
  %.not386 = icmp eq ptr %4, null
  br i1 %.not386, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge391
  store ptr %i.b, ptr %4, align 8, !tbaa !119
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge391, %bb.aw, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.d ], [ 0, %bb.aw ], [ 0, %.critedge391 ]
  ret i32 %.0
}

declare i32 @H5Lvisit_by_name2(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @traverse_cb(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.H5O_info2_t, align 8        ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !48, !range !26, !noundef !27
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #21 ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp ne i8 %i.k, 47
  %i.m = zext i1 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.m, %bb.c ], [ 1, %bb.b ]    ; 2 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.p = add i64 %i.h, 4
  %i.q = add i64 %i.p, %i.n
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #22 ; 4 uses
  %.not64 = icmp eq ptr %i.s, null
  br i1 %.not64, label %.critedge, label %.sink.split

.sink.split:                                      ; preds = %bb.d
  %.not63 = icmp eq i64 %i.n, 0
  %.str.13..str.12 = select i1 %.not63, ptr @.str.13, ptr @.str.12
  %i.t = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noundef nonnull %.str.13..str.12, ptr noundef nonnull %i.g, ptr noundef nonnull %1) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.056 = phi ptr [ null, %bb.a ], [ %i.s, %.sink.split ] ; 7 uses
  %.155 = phi ptr [ %1, %bb.a ], [ %i.s, %.sink.split ] ; 3 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !35
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !51
  %i.y = call i32 @H5Oget_info_by_name3(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %i.x, i64 noundef 0) #19
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not69 = icmp eq ptr %.056, null
  br i1 %.not69, label %.critedge72, label %.critedge72.sink.split

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %.not.i = icmp eq ptr %i.ad, null
  %or.cond.i = or i1 %.not.i, %i.ah
  br i1 %or.cond.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc i64 %i.ag to i32                  ; 4 uses
  %i.aj = icmp ugt i32 %i.ai, 11
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.0251.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.ae, %bb.j ] ; 4 uses
  %.0180250.i = phi i32 [ %i.cc, %.lr.ph.i ], [ %i.ai, %bb.j ]
  %.0181249.i = phi i32 [ %i.bw, %.lr.ph.i ], [ -1640531527, %bb.j ]
  %.0182248.i = phi i32 [ %i.bs, %.lr.ph.i ], [ -1640531527, %bb.j ]
  %.0187247.i = phi i32 [ %i.ca, %.lr.ph.i ], [ -17973521, %bb.j ]
  %i.ak = load i32, ptr %.0251.i, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.0251.i, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, %.0181249.i              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0251.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %.0187247.i              ; 4 uses
  %.neg76 = add i32 %i.ak, %.0182248.i
  %i.ar = add i32 %i.an, %i.aq
  %i.as = sub i32 %.neg76, %i.ar
  %i.at = lshr i32 %i.aq, 13
  %i.au = xor i32 %i.as, %i.at                    ; 4 uses
  %i.av = add i32 %i.aq, %i.au
  %i.aw = sub i32 %i.an, %i.av
  %i.ax = shl i32 %i.au, 8
  %i.ay = xor i32 %i.aw, %i.ax                    ; 4 uses
  %i.az = add i32 %i.au, %i.ay
  %i.ba = sub i32 %i.aq, %i.az
  %i.bb = lshr i32 %i.ay, 13
  %i.bc = xor i32 %i.ba, %i.bb                    ; 4 uses
  %i.bd = add i32 %i.ay, %i.bc
  %i.be = sub i32 %i.au, %i.bd
  %i.bf = lshr i32 %i.bc, 12
  %i.bg = xor i32 %i.be, %i.bf                    ; 4 uses
  %i.bh = add i32 %i.bc, %i.bg
  %i.bi = sub i32 %i.ay, %i.bh
  %i.bj = shl i32 %i.bg, 16
  %i.bk = xor i32 %i.bi, %i.bj                    ; 4 uses
  %i.bl = add i32 %i.bg, %i.bk
  %i.bm = sub i32 %i.bc, %i.bl
  %i.bn = lshr i32 %i.bk, 5
  %i.bo = xor i32 %i.bm, %i.bn                    ; 4 uses
  %i.bp = add i32 %i.bk, %i.bo
  %i.bq = sub i32 %i.bg, %i.bp
  %i.br = lshr i32 %i.bo, 3
  %i.bs = xor i32 %i.bq, %i.br                    ; 5 uses
  %i.bt = add i32 %i.bo, %i.bs
  %i.bu = sub i32 %i.bk, %i.bt
  %i.bv = shl i32 %i.bs, 10
  %i.bw = xor i32 %i.bu, %i.bv                    ; 4 uses
  %i.bx = add i32 %i.bs, %i.bw
  %i.by = sub i32 %i.bo, %i.bx
  %i.bz = lshr i32 %i.bw, 15
  %i.ca = xor i32 %i.by, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0251.i, i64 12 ; 2 uses
  %i.cc = add i32 %.0180250.i, -12                ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 11
  br i1 %i.cd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !166

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.0187.lcssa.i = phi i32 [ -17973521, %bb.j ], [ %i.ca, %.lr.ph.i ]
  %.0182.lcssa.i = phi i32 [ -1640531527, %bb.j ], [ %i.bs, %.lr.ph.i ] ; 5 uses
  %.0181.lcssa.i = phi i32 [ -1640531527, %bb.j ], [ %i.bw, %.lr.ph.i ] ; 9 uses
  %.0180.lcssa.i = phi i32 [ %i.ai, %bb.j ], [ %i.cc, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.ae, %bb.j ], [ %i.cb, %.lr.ph.i ] ; 11 uses
  %i.ce = add i32 %.0187.lcssa.i, %i.ai           ; 12 uses
  switch i32 %.0180.lcssa.i, label %bb.v [
    i32 11, label %bb.k
    i32 10, label %bb.l
    i32 9, label %bb.m
    i32 8, label %bb.n
    i32 7, label %bb.o
    i32 6, label %bb.p
    i32 5, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.k:                                             ; preds = %._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 10
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw i32 %i.ch, 24
  %i.cj = add i32 %i.ci, %i.ce
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1188.i = phi i32 [ %i.cj, %bb.k ], [ %i.ce, %._crit_edge.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = add i32 %i.cn, %.1188.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.2189.i = phi i32 [ %i.co, %bb.l ], [ %i.ce, %._crit_edge.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = add i32 %i.cs, %.2189.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.3190.i = phi i32 [ %i.ct, %bb.m ], [ %i.ce, %._crit_edge.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw i32 %i.cw, 24
  %i.cy = add i32 %i.cx, %.0181.lcssa.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.4191.i = phi i32 [ %.3190.i, %bb.n ], [ %i.ce, %._crit_edge.i ]
  %.1.i = phi i32 [ %i.cy, %bb.n ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 6
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 16
  %i.dd = add i32 %i.dc, %.1.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.5192.i = phi i32 [ %.4191.i, %bb.o ], [ %i.ce, %._crit_edge.i ]
  %.2.i = phi i32 [ %i.dd, %bb.o ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = add i32 %i.dh, %.2.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.6193.i = phi i32 [ %.5192.i, %bb.p ], [ %i.ce, %._crit_edge.i ]
  %.3.i = phi i32 [ %i.di, %bb.p ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !29
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add i32 %.3.i, %i.dl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %.7194.i = phi i32 [ %.6193.i, %bb.q ], [ %i.ce, %._crit_edge.i ]
  %.4.i = phi i32 [ %i.dm, %bb.q ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !29
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 24
  %i.dr = add i32 %i.dq, %.0182.lcssa.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.8195.i = phi i32 [ %.7194.i, %bb.r ], [ %i.ce, %._crit_edge.i ]
  %.1183.i = phi i32 [ %i.dr, %bb.r ], [ %.0182.lcssa.i, %._crit_edge.i ]
  %.5.i = phi i32 [ %.4.i, %bb.r ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = add i32 %i.dv, %.1183.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %.9.i = phi i32 [ %.8195.i, %bb.s ], [ %i.ce, %._crit_edge.i ]
  %.2184.i = phi i32 [ %i.dw, %bb.s ], [ %.0182.lcssa.i, %._crit_edge.i ]
  %.6.i = phi i32 [ %.5.i, %bb.s ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !29
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = add i32 %i.ea, %.2184.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %.10.i = phi i32 [ %.9.i, %bb.t ], [ %i.ce, %._crit_edge.i ]
  %.3185.i = phi i32 [ %i.eb, %bb.t ], [ %.0182.lcssa.i, %._crit_edge.i ]
  %.7.i = phi i32 [ %.6.i, %bb.t ], [ %.0181.lcssa.i, %._crit_edge.i ]
  %i.ec = load i8, ptr %.0.lcssa.i, align 1, !tbaa !29
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add i32 %.3185.i, %i.ed
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.11.i = phi i32 [ %i.ce, %._crit_edge.i ], [ %.10.i, %bb.u ] ; 4 uses
  %.4186.i = phi i32 [ %.0182.lcssa.i, %._crit_edge.i ], [ %i.ee, %bb.u ]
  %.8.i = phi i32 [ %.0181.lcssa.i, %._crit_edge.i ], [ %.7.i, %bb.u ] ; 2 uses
  %i.ef = add i32 %.11.i, %.8.i
  %i.eg = sub i32 %.4186.i, %i.ef
  %i.eh = lshr i32 %.11.i, 13
  %i.ei = xor i32 %i.eg, %i.eh                    ; 4 uses
  %i.ej = add i32 %.11.i, %i.ei
  %i.ek = sub i32 %.8.i, %i.ej
  %i.el = shl i32 %i.ei, 8
  %i.em = xor i32 %i.ek, %i.el                    ; 4 uses
  %i.en = add i32 %i.ei, %i.em
  %i.eo = sub i32 %.11.i, %i.en
  %i.ep = lshr i32 %i.em, 13
  %i.eq = xor i32 %i.eo, %i.ep                    ; 4 uses
  %i.er = add i32 %i.em, %i.eq
  %i.es = sub i32 %i.ei, %i.er
  %i.et = lshr i32 %i.eq, 12
  %i.eu = xor i32 %i.es, %i.et                    ; 4 uses
  %i.ev = add i32 %i.eq, %i.eu
  %i.ew = sub i32 %i.em, %i.ev
  %i.ex = shl i32 %i.eu, 16
  %i.ey = xor i32 %i.ew, %i.ex                    ; 4 uses
  %i.ez = add i32 %i.eu, %i.ey
  %i.fa = sub i32 %i.eq, %i.ez
  %i.fb = lshr i32 %i.ey, 5
  %i.fc = xor i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = add i32 %i.ey, %i.fc
  %i.fe = sub i32 %i.eu, %i.fd
  %i.ff = lshr i32 %i.fc, 3
end_hunk_0
