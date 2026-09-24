Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rtf?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rtf_object_process:bb.a
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i64 %2, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %.critedge257

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !87
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = tail call ptr @__ctype_b_loc() #10
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.0200287 = phi i64 [ 0, %.preheader ], [ %i.q, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.0200287
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = and i16 %i.o, 4096
  %.not242 = icmp eq i16 %i.p, 0
  br i1 %.not242, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw i64 %.0200287, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %.critedge257, label %bb.c

.critedge:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !88
  %i.t = add nuw i64 %.0200287, 1
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.m
  %i.v = load i16, ptr %i.u, align 2, !tbaa !63
  %i.w = zext i16 %i.v to i32
  %i.x = or i32 %i.s, %i.w
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %i.a, align 16, !tbaa !8
  store i32 0, ptr %i.g, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %.critedge
  %.0204 = phi i64 [ 1, %.critedge ], [ 0, %bb.b ] ; 2 uses
  %.1201 = phi i64 [ %i.t, %.critedge ], [ 0, %bb.b ] ; 2 uses
  %i.z = icmp ult i64 %.1201, %2
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.aa = tail call ptr @__ctype_b_loc() #10
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %.2202289 = phi i64 [ %.1201, %.lr.ph ], [ %i.bg, %bb.j ] ; 5 uses
  %.1205288 = phi i64 [ %.0204, %.lr.ph ], [ %.3207, %bb.j ] ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.2202289
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !63
  %i.ah = and i16 %i.ag, 4096
  %.not243 = icmp eq i16 %i.ah, 0
  br i1 %.not243, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.ae
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !63
  %i.ak = trunc i16 %i.aj to i8
  %i.al = shl i8 %i.ak, 4                         ; 2 uses
  %i.am = add nuw i64 %.2202289, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.am) ; 3 uses
  %i.an = add i64 %umax, -1                       ; 2 uses
  %exitcond324.not393 = icmp eq i64 %.2202289, %i.an
  br i1 %exitcond324.not393, label %.critedge5, label %.lr.ph396

bb.h:                                             ; preds = %.lr.ph396
  %exitcond324.not = icmp eq i64 %.3203, %i.an
  br i1 %exitcond324.not, label %.critedge5, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.g, %bb.h
  %.3203.in394 = phi i64 [ %.3203, %bb.h ], [ %.2202289, %bb.g ]
  %.3203 = add nuw i64 %.3203.in394, 1            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.3203
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !63
  %i.at = and i16 %i.as, 4096
  %.not244 = icmp eq i16 %i.at, 0
  br i1 %.not244, label %bb.h, label %.critedge5

.critedge5:                                       ; preds = %.lr.ph396, %bb.h, %bb.g
  %.3203.lcssa = phi i64 [ %umax, %bb.g ], [ %.3203, %.lr.ph396 ], [ %umax, %bb.h ] ; 3 uses
  %i.au = icmp eq i64 %.3203.lcssa, %2
  br i1 %i.au, label %bb.i, label %.thread

.thread:                                          ; preds = %.critedge5
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.3203.lcssa
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @hextable, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63
  %i.ba = trunc i16 %i.az to i8
  %i.bb = or i8 %i.al, %i.ba
  %i.bc = add nuw nsw i64 %.1205288, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1205288
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !8
  br label %bb.j

bb.i:                                             ; preds = %.critedge5
  %i.be = zext i8 %i.al to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !88
  store i32 1, ptr %i.g, align 8, !tbaa !87
  br label %.loopexit

bb.j:                                             ; preds = %.thread, %bb.f
  %.3207 = phi i64 [ %i.bc, %.thread ], [ %.1205288, %bb.f ] ; 2 uses
  %.4 = phi i64 [ %.3203.lcssa, %.thread ], [ %.2202289, %bb.f ]
  %i.bg = add i64 %.4, 1                          ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %2
  br i1 %i.bh, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.i
  %.1205283 = phi i64 [ %.1205288, %bb.i ], [ %.0204, %bb.e ], [ %.3207, %bb.j ] ; 2 uses
  %.not245295 = icmp eq i64 %.1205283, 0
  br i1 %.not245295, label %.critedge257, label %.lr.ph298

.lr.ph298:                                        ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 33 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 29 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph298, %bb.br
  %.5209297 = phi i64 [ %.1205283, %.lr.ph298 ], [ %.8212, %bb.br ] ; 30 uses
  %.0213296 = phi ptr [ %i.a, %.lr.ph298 ], [ %.2215, %bb.br ] ; 24 uses
  %i.bp = load i32, ptr %i.bi, align 4, !tbaa !89
  switch i32 %i.bp, label %.critedge257 [
    i32 0, label %bb.l
    i32 1, label %bb.r
    i32 2, label %bb.aj
    i32 3, label %bb.ar
    i32 4, label %bb.au
    i32 5, label %bb.bi
  ]

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #9
  %.pre339 = load i64, ptr %i.bk, align 8, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.p
  %i.bq = phi i64 [ %.pre339, %bb.l ], [ %i.cc, %bb.p ] ; 5 uses
  %.5294 = phi i64 [ 0, %bb.l ], [ %i.cb, %bb.p ] ; 4 uses
  %i.br = icmp ult i64 %i.bq, 8
  br i1 %i.br, label %bb.n, label %.critedge7

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr @rtf_data_magic, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.5294
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8   ; 2 uses
  %.not256 = icmp eq i8 %i.bt, %i.bv
  br i1 %.not256, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr @rtf_data_magic, i64 %.5294
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = zext i8 %i.by to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %i.bz, i32 noundef %i.bw, i64 noundef %i.bq) #9
  %.pre340 = load i64, ptr %i.bk, align 8, !tbaa !66
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ca = phi i64 [ %i.bq, %bb.n ], [ %.pre340, %bb.o ]
  %i.cb = add nuw i64 %.5294, 1                   ; 2 uses
  %i.cc = add i64 %i.ca, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.bk, align 8, !tbaa !66
  %exitcond336.not = icmp eq i64 %i.cb, %.5209297
  br i1 %exitcond336.not, label %.critedge7, label %bb.m

.critedge7:                                       ; preds = %bb.p, %bb.m
  %i.cd = phi i64 [ %i.cc, %bb.p ], [ %i.bq, %bb.m ]
  %.5.lcssa = phi i64 [ %.5209297, %bb.p ], [ %.5294, %bb.m ] ; 2 uses
  %i.ce = sub nuw i64 %.5209297, %.5.lcssa        ; 2 uses
  %i.cf = icmp eq i64 %i.cd, 8
  br i1 %i.cf, label %bb.q, label %bb.br

bb.q:                                             ; preds = %.critedge7
  %i.cg = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.5.lcssa
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  store i32 1, ptr %i.bi, align 4, !tbaa !89
  br label %bb.br

bb.r:                                             ; preds = %bb.k
  %i.ch = load i64, ptr %i.bk, align 8, !tbaa !66 ; 10 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.bj, align 8, !tbaa !90
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = call i64 @llvm.usub.sat.i64(i64 4, i64 %i.ch) ; 9 uses
  %exitcond332.not = icmp ugt i64 %i.ch, 3
  br i1 %exitcond332.not, label %.critedge9, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load i8, ptr %.0213296, align 1, !tbaa !8
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.ch, 3
  %i.cn = shl nuw nsw i64 %i.cl, %i.cm
  %i.co = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.bj, align 8, !tbaa !90
  %i.cq = add nuw nsw i64 %i.ch, 1                ; 4 uses
  store i64 %i.cq, ptr %i.bk, align 8, !tbaa !66
  %exitcond334.not = icmp eq i64 %.5209297, 1
  br i1 %exitcond334.not, label %.critedge9, label %bb.v

bb.v:                                             ; preds = %bb.u
  %exitcond332.not.1 = icmp eq i64 %i.cj, 1
  br i1 %exitcond332.not.1, label %.critedge9, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.0213296, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.cq, 3
  %i.cv = shl nuw nsw i64 %i.ct, %i.cu
  %i.cw = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.cx = or i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.bj, align 8, !tbaa !90
  %i.cy = add nuw nsw i64 %i.ch, 2                ; 4 uses
  store i64 %i.cy, ptr %i.bk, align 8, !tbaa !66
  %exitcond334.not.1 = icmp eq i64 %.5209297, 2
  br i1 %exitcond334.not.1, label %.critedge9, label %bb.x

bb.x:                                             ; preds = %bb.w
  %exitcond332.not.2 = icmp eq i64 %i.cj, 2
  br i1 %exitcond332.not.2, label %.critedge9, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.0213296, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.cy, 3
  %i.dd = shl nuw nsw i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.df = or i64 %i.dd, %i.de
  store i64 %i.df, ptr %i.bj, align 8, !tbaa !90
  %i.dg = add nuw nsw i64 %i.ch, 3                ; 4 uses
  store i64 %i.dg, ptr %i.bk, align 8, !tbaa !66
  %exitcond334.not.2 = icmp eq i64 %.5209297, 3
  br i1 %exitcond334.not.2, label %.critedge9, label %bb.z

bb.z:                                             ; preds = %bb.y
  %exitcond332.not.3 = icmp eq i64 %i.cj, 3
  br i1 %exitcond332.not.3, label %.critedge9, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %.0213296, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dg, 3
  %i.dl = shl nuw nsw i64 %i.dj, %i.dk
  %i.dm = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.dn = or i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.bj, align 8, !tbaa !90
  %i.do = or disjoint i64 %i.ch, 4                ; 4 uses
  store i64 %i.do, ptr %i.bk, align 8, !tbaa !66
  %exitcond334.not.3 = icmp eq i64 %.5209297, 4
  br i1 %exitcond334.not.3, label %.critedge9, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %exitcond332.not.4 = icmp eq i64 %i.cj, 4
  br i1 %exitcond332.not.4, label %.critedge9, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.0213296, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !8
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.do, 3
  %i.dt = shl nuw nsw i64 %i.dr, %i.ds
  %i.du = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.dv = or i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.bj, align 8, !tbaa !90
  %i.dw = add nuw nsw i64 %i.ch, 5                ; 2 uses
  store i64 %i.dw, ptr %i.bk, align 8, !tbaa !66
  br label %.critedge9

.critedge9:                                       ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.u
  %.6275 = phi i64 [ %.5209297, %bb.u ], [ %i.cj, %bb.t ], [ %i.cj, %bb.v ], [ %.5209297, %bb.w ], [ %i.cj, %bb.x ], [ %.5209297, %bb.y ], [ %i.cj, %bb.z ], [ %.5209297, %bb.aa ], [ %i.cj, %bb.ab ], [ %.5209297, %bb.ac ] ; 2 uses
  %i.dx = phi i64 [ %i.cq, %bb.u ], [ %i.ch, %bb.t ], [ %i.cq, %bb.v ], [ %i.cy, %bb.w ], [ %i.cy, %bb.x ], [ %i.dg, %bb.y ], [ %i.dg, %bb.z ], [ %i.do, %bb.aa ], [ %i.do, %bb.ab ], [ %i.dw, %bb.ac ]
  %i.dy = sub nuw i64 %.5209297, %.6275           ; 2 uses
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.ad, label %bb.br

bb.ad:                                            ; preds = %.critedge9
  %i.ea = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.6275
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  %i.eb = load i64, ptr %i.bj, align 8, !tbaa !90 ; 3 uses
  %i.ec = icmp ugt i64 %i.eb, 64
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17, i64 noundef %i.eb) #9
  %i.ed = call noalias dereferenceable_or_null(65) ptr @malloc(i64 noundef 65) #11
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ee = add nuw nsw i64 %i.eb, 1
  %i.ef = call ptr @cli_max_malloc(i64 noundef %i.ee) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eg = phi ptr [ %i.ef, %bb.af ], [ %i.ed, %bb.ae ] ; 2 uses
  store ptr %i.eg, ptr %i.bo, align 8, !tbaa !70
  %.not255 = icmp eq ptr %i.eg, null
  br i1 %.not255, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.18) #9
  br label %.critedge257

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.bi, align 4, !tbaa !89
  %i.eh = load i64, ptr %i.bj, align 8, !tbaa !90
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i64 noundef %i.eh) #9
  br label %bb.br

bb.aj:                                            ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #9
  %.pre337 = load i64, ptr %i.bk, align 8, !tbaa !66
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.al
  %i.ei = phi i64 [ %.pre337, %bb.aj ], [ %i.es, %bb.al ] ; 4 uses
  %.7291 = phi i64 [ 0, %bb.aj ], [ %i.eq, %bb.al ] ; 3 uses
  %i.ej = load i64, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.ek = icmp ult i64 %i.ei, %i.ej
  %i.el = icmp ult i64 %i.ei, 64
  %or.cond258 = and i1 %i.el, %i.ek
  br i1 %or.cond258, label %bb.al, label %.critedge11

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.7291
  %i.en = load i8, ptr %i.em, align 1, !tbaa !8
  %i.eo = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ei
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !8
  %i.eq = add nuw i64 %.7291, 1                   ; 2 uses
  %i.er = load i64, ptr %i.bk, align 8, !tbaa !66
  %i.es = add i64 %i.er, 1                        ; 3 uses
  store i64 %i.es, ptr %i.bk, align 8, !tbaa !66
  %exitcond330.not = icmp eq i64 %i.eq, %.5209297
  br i1 %exitcond330.not, label %..critedge11_crit_edge, label %bb.ak

..critedge11_crit_edge:                           ; preds = %bb.al
  %.pre338 = load i64, ptr %i.bj, align 8, !tbaa !90
  br label %.critedge11

.critedge11:                                      ; preds = %bb.ak, %..critedge11_crit_edge
  %i.et = phi i64 [ %.pre338, %..critedge11_crit_edge ], [ %i.ej, %bb.ak ]
  %i.eu = phi i64 [ %i.es, %..critedge11_crit_edge ], [ %i.ei, %bb.ak ] ; 3 uses
  %.7.lcssa = phi i64 [ %.5209297, %..critedge11_crit_edge ], [ %.7291, %bb.ak ] ; 2 uses
  %i.ev = sub nuw i64 %.5209297, %.7.lcssa        ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.7.lcssa ; 2 uses
  %i.ex = icmp ult i64 %i.eu, %i.et
  %i.ey = icmp ult i64 %i.eu, 64
  %or.cond259 = and i1 %i.ey, %i.ex
  br i1 %or.cond259, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #9
  br label %.critedge257

bb.an:                                            ; preds = %.critedge11
  %i.ez = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eu
  store i8 0, ptr %i.fa, align 1, !tbaa !8
  %i.fb = load i64, ptr %i.bj, align 8, !tbaa !90 ; 3 uses
  %i.fc = load i64, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 3 uses
  %i.fe = icmp ugt i64 %i.fd, %i.ev
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = sub i64 %i.fb, %i.ev
  store i64 %i.ff, ptr %i.bj, align 8, !tbaa !90
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22) #9
  br label %.critedge257

bb.ap:                                            ; preds = %bb.an
  %i.fg = sub nuw i64 %i.ev, %i.fd                ; 2 uses
  %.not254 = icmp ult i64 %i.fc, %i.fb
  br i1 %.not254, label %bb.br, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fd
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  %i.fi = load ptr, ptr %i.bo, align 8, !tbaa !70
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23, ptr noundef %i.fi) #9
  %i.fj = load ptr, ptr %i.bo, align 8, !tbaa !70
  call void @free(ptr noundef %i.fj) #9
  store ptr null, ptr %i.bo, align 8, !tbaa !70
  store i32 3, ptr %i.bi, align 4, !tbaa !89
  br label %bb.br

bb.ar:                                            ; preds = %bb.k
  %i.fk = load i64, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %i.fl = sub i64 8, %i.fk                        ; 2 uses
  %i.fm = icmp ult i64 %.5209297, %i.fl
  br i1 %i.fm, label %bb.as, label %.thread262

.thread262:                                       ; preds = %bb.ar
  %i.fn = sub nuw i64 %.5209297, %i.fl
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fo = icmp eq i64 %i.fk, 8
  br i1 %i.fo, label %bb.at, label %.critedge257

bb.at:                                            ; preds = %.thread262, %bb.as
  %.6210264 = phi i64 [ %i.fn, %.thread262 ], [ 0, %bb.as ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0213296, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #9
  store i32 4, ptr %i.bi, align 4, !tbaa !89
  br label %bb.br

bb.au:                                            ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #9
  %i.fq = load i64, ptr %i.bk, align 8, !tbaa !66 ; 10 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 0, ptr %i.bj, align 8, !tbaa !90
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fs = call i64 @llvm.usub.sat.i64(i64 4, i64 %i.fq) ; 9 uses
  %exitcond326.not = icmp ugt i64 %i.fq, 3
  br i1 %exitcond326.not, label %.critedge13, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load i8, ptr %.0213296, align 1, !tbaa !8
  %i.fu = zext i8 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fq, 3
  %i.fw = shl nuw nsw i64 %i.fu, %i.fv
  %i.fx = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.fy = or i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %i.bj, align 8, !tbaa !90
  %i.fz = add nuw nsw i64 %i.fq, 1                ; 4 uses
  store i64 %i.fz, ptr %i.bk, align 8, !tbaa !66
  %exitcond328.not = icmp eq i64 %.5209297, 1
  br i1 %exitcond328.not, label %.critedge13, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %exitcond326.not.1 = icmp eq i64 %i.fs, 1
  br i1 %exitcond326.not.1, label %.critedge13, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = getelementptr inbounds nuw i8, ptr %.0213296, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8
  %i.gc = zext i8 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.fz, 3
  %i.ge = shl nuw nsw i64 %i.gc, %i.gd
  %i.gf = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.gg = or i64 %i.ge, %i.gf
  store i64 %i.gg, ptr %i.bj, align 8, !tbaa !90
  %i.gh = add nuw nsw i64 %i.fq, 2                ; 4 uses
  store i64 %i.gh, ptr %i.bk, align 8, !tbaa !66
  %exitcond328.not.1 = icmp eq i64 %.5209297, 2
  br i1 %exitcond328.not.1, label %.critedge13, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %exitcond326.not.2 = icmp eq i64 %i.fs, 2
  br i1 %exitcond326.not.2, label %.critedge13, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = getelementptr inbounds nuw i8, ptr %.0213296, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = zext i8 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gh, 3
  %i.gm = shl nuw nsw i64 %i.gk, %i.gl
  %i.gn = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.go = or i64 %i.gm, %i.gn
  store i64 %i.go, ptr %i.bj, align 8, !tbaa !90
  %i.gp = add nuw nsw i64 %i.fq, 3                ; 4 uses
  store i64 %i.gp, ptr %i.bk, align 8, !tbaa !66
  %exitcond328.not.2 = icmp eq i64 %.5209297, 3
  br i1 %exitcond328.not.2, label %.critedge13, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %exitcond326.not.3 = icmp eq i64 %i.fs, 3
  br i1 %exitcond326.not.3, label %.critedge13, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gq = getelementptr inbounds nuw i8, ptr %.0213296, i64 3
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !8
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gp, 3
  %i.gu = shl nuw nsw i64 %i.gs, %i.gt
  %i.gv = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.gw = or i64 %i.gu, %i.gv
  store i64 %i.gw, ptr %i.bj, align 8, !tbaa !90
  %i.gx = or disjoint i64 %i.fq, 4                ; 4 uses
  store i64 %i.gx, ptr %i.bk, align 8, !tbaa !66
  %exitcond328.not.3 = icmp eq i64 %.5209297, 4
  br i1 %exitcond328.not.3, label %.critedge13, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %exitcond326.not.4 = icmp eq i64 %i.fs, 4
  br i1 %exitcond326.not.4, label %.critedge13, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gy = getelementptr inbounds nuw i8, ptr %.0213296, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !8
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.gx, 3
  %i.hc = shl nuw nsw i64 %i.ha, %i.hb
  %i.hd = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.he = or i64 %i.hc, %i.hd
  store i64 %i.he, ptr %i.bj, align 8, !tbaa !90
  %i.hf = add nuw nsw i64 %i.fq, 5                ; 2 uses
  store i64 %i.hf, ptr %i.bk, align 8, !tbaa !66
  br label %.critedge13

.critedge13:                                      ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.ax
  %.8273 = phi i64 [ %.5209297, %bb.ax ], [ %i.fs, %bb.aw ], [ %i.fs, %bb.ay ], [ %.5209297, %bb.az ], [ %i.fs, %bb.ba ], [ %.5209297, %bb.bb ], [ %i.fs, %bb.bc ], [ %.5209297, %bb.bd ], [ %i.fs, %bb.be ], [ %.5209297, %bb.bf ] ; 2 uses
  %i.hg = phi i64 [ %i.fz, %bb.ax ], [ %i.fq, %bb.aw ], [ %i.fz, %bb.ay ], [ %i.gh, %bb.az ], [ %i.gh, %bb.ba ], [ %i.gp, %bb.bb ], [ %i.gp, %bb.bc ], [ %i.gx, %bb.bd ], [ %i.gx, %bb.be ], [ %i.hf, %bb.bf ]
  %i.hh = sub nuw i64 %.5209297, %.8273           ; 2 uses
  %i.hi = icmp eq i64 %i.hg, 4
  br i1 %i.hi, label %bb.bg, label %bb.br

bb.bg:                                            ; preds = %.critedge13
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  %i.hj = load i64, ptr %i.bj, align 8, !tbaa !90
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i64 noundef %i.hj) #9
  %i.hk = load ptr, ptr %i.bn, align 8, !tbaa !67
  %i.hl = call i32 @cli_gentempfd(ptr noundef %i.hk, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bl) #9 ; 2 uses
  %.not253 = icmp eq i32 %i.hl, 0
  br i1 %.not253, label %bb.bh, label %.critedge257

bb.bh:                                            ; preds = %bb.bg
  %i.hm = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.8273
  store i32 5, ptr %i.bi, align 4, !tbaa !89
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #9
  br label %bb.br

bb.bi:                                            ; preds = %bb.k
  %i.hn = load i64, ptr %i.bj, align 8, !tbaa !90 ; 4 uses
  %.5209. = call i64 @llvm.umin.i64(i64 %.5209297, i64 %i.hn) ; 5 uses
  %i.ho = load i64, ptr %i.bk, align 8, !tbaa !66
  %.not246 = icmp eq i64 %i.ho, 0
  br i1 %.not246, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.hp = load i8, ptr %.0213296, align 1, !tbaa !8
  %.not247 = icmp eq i8 %i.hp, -48
  br i1 %.not247, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hq = getelementptr inbounds nuw i8, ptr %.0213296, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8
  %.not248 = icmp eq i8 %i.hr, -49
  br i1 %.not248, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 1, ptr %i.bk, align 8, !tbaa !66
  %i.hs = trunc i64 %i.hn to i32
  store i32 %i.hs, ptr %i.b, align 4, !tbaa !8
  %i.ht = load i32, ptr %i.bl, align 8, !tbaa !71
  %i.hu = call i64 @cli_writen(i32 noundef %i.ht, ptr noundef nonnull %i.b, i64 noundef 4) #9
  %.not249 = icmp eq i64 %i.hu, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not249, label %._crit_edge, label %.critedge257

._crit_edge:                                      ; preds = %bb.bl
  %.pre = load i64, ptr %i.bj, align 8, !tbaa !90
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store i64 2, ptr %i.bk, align 8, !tbaa !66
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge, %bb.bm, %bb.bi
  %i.hv = phi i64 [ %.pre, %._crit_edge ], [ %i.hn, %bb.bm ], [ %i.hn, %bb.bi ]
  %i.hw = sub i64 %i.hv, %.5209.
  store i64 %i.hw, ptr %i.bj, align 8, !tbaa !90
  %i.hx = load i32, ptr %i.bl, align 8, !tbaa !71
  %i.hy = call i64 @cli_writen(i32 noundef %i.hx, ptr noundef %.0213296, i64 noundef %.5209.) #9
  %.not250 = icmp eq i64 %i.hy, %.5209.
  br i1 %.not250, label %bb.bo, label %.critedge257

bb.bo:                                            ; preds = %bb.bn
  %i.hz = getelementptr inbounds nuw i8, ptr %.0213296, i64 %.5209. ; 2 uses
  %i.ia = sub i64 %.5209297, %.5209.              ; 2 uses
  %i.ib = load i64, ptr %i.bj, align 8, !tbaa !90
  %.not251 = icmp eq i64 %i.ib, 0
  br i1 %.not251, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ic = load ptr, ptr %i.bm, align 8, !tbaa !68
  %i.id = call fastcc i32 @decode_and_scan(ptr noundef %i.d, ptr noundef %i.ic) ; 2 uses
  %.not252 = icmp eq i32 %i.id, 0
  br i1 %.not252, label %bb.bq, label %.critedge257

bb.bq:                                            ; preds = %bb.bp
  store i64 0, ptr %i.bk, align 8, !tbaa !66
  store i32 0, ptr %i.bi, align 4, !tbaa !89
  br label %bb.br

bb.br:                                            ; preds = %bb.bo, %bb.bq, %.critedge13, %bb.bh, %bb.at, %bb.ap, %bb.aq, %.critedge9, %bb.ai, %.critedge7, %bb.q
  %.2215 = phi ptr [ %i.hz, %bb.bo ], [ %i.cg, %bb.q ], [ %.0213296, %.critedge7 ], [ %i.ea, %bb.ai ], [ %.0213296, %.critedge9 ], [ %i.fh, %bb.aq ], [ %i.ew, %bb.ap ], [ %i.fp, %bb.at ], [ %i.hz, %bb.bq ], [ %i.hm, %bb.bh ], [ %.0213296, %.critedge13 ]
  %.8212 = phi i64 [ %i.ia, %bb.bo ], [ %i.ce, %bb.q ], [ %i.ce, %.critedge7 ], [ %i.dy, %bb.ai ], [ %i.dy, %.critedge9 ], [ %i.fg, %bb.aq ], [ %i.fg, %bb.ap ], [ %.6210264, %bb.at ], [ %i.ia, %bb.bq ], [ %i.hh, %bb.bh ], [ %i.hh, %.critedge13 ] ; 2 uses
  %.not245 = icmp eq i64 %.8212, 0
  br i1 %.not245, label %.critedge257, label %bb.k

.critedge257:                                     ; preds = %bb.d, %bb.as, %bb.k, %bb.bg, %bb.br, %bb.bl, %bb.bn, %bb.bp, %.loopexit, %bb.a, %bb.ao, %bb.am, %bb.ah
  %.7223 = phi i32 [ 20, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %bb.a ], [ 0, %.loopexit ], [ %i.hl, %bb.bg ], [ 0, %bb.as ], [ 0, %bb.k ], [ %i.id, %bb.bp ], [ 0, %bb.br ], [ 14, %bb.bl ], [ 14, %bb.bn ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.7223
}

; Function Attrs: nounwind uwtable
define internal i32 @rtf_object_end(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @decode_and_scan(ptr noundef %i.b, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.i) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %i.b) #9
  store ptr null, ptr %i.a, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.012 = phi i32 [ %.0, %bb.h ], [ 0, %bb.a ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare i32 @cli_gentempfd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_and_scan(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #9
  %i.h = load i32, ptr %i.b, align 8, !tbaa !71
  %i.i = tail call i32 @cli_scan_ole10(i32 noundef %i.h, ptr noundef %1) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !69
  %i.k = tail call i32 @cli_magic_scan_desc(i32 noundef %i.c, ptr noundef %i.j, ptr noundef %1, ptr noundef null, i32 noundef 0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = load i32, ptr %i.b, align 8, !tbaa !71
  %i.m = tail call i32 @close(i32 noundef %i.l) #9 ; 0 uses
  store i32 -1, ptr %i.b, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.1 = phi i32 [ %.0, %bb.e ], [ 0, %bb.a ]      ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %.not17 = icmp eq i32 %i.r, 0
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @cli_unlink(ptr noundef nonnull %i.n) #9
  %.not18 = icmp eq i32 %i.s, 0
end_hunk_0
