inline.NumInlined: 25
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pefromupx:bb.a
  %i.u = add nsw i64 %i.h, %i.t                   ; 2 uses
  %.not352 = icmp slt i64 %i.u, 2
  br i1 %.not352, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.v = getelementptr i8, ptr %0, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %.not353 = icmp ule i64 %i.y, %i.j
  %i.z = icmp ugt i64 %i.y, %i.i
  %or.cond390 = and i1 %.not353, %i.z
  %i.aa = icmp ugt i64 %i.j, %i.x
  %or.cond391 = and i1 %i.aa, %or.cond390
  br i1 %or.cond391, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = add i32 %i.r, %i.k                      ; 2 uses
  %i.ac = add i32 %i.ab, -2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, -115
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = add i32 %i.ab, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, -66
  br i1 %i.al, label %.loopexit.loopexit578, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split
  %i.am = add i32 %i.s, 1                         ; 2 uses
  %i.an = zext i32 %i.s to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9  ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.e, %.preheader492
  %.lcssa502 = phi i32 [ 1, %.preheader492 ], [ %i.am, %bb.e ] ; 2 uses
  %i.aq = add i32 %1, -8                          ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 7
  br i1 %i.ar, label %bb.f, label %.thread454

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.in = phi i32 [ %i.q, %._crit_edge.thread ], [ %i.aq, %._crit_edge ]
  %.lcssa502641 = phi i32 [ %i.m, %._crit_edge.thread ], [ %.lcssa502, %._crit_edge ] ; 5 uses
  %i.as = zext i32 %4 to i64                      ; 2 uses
  %i.at = zext i32 %6 to i64
  %i.au = sub nsw i64 %i.as, %i.at                ; 2 uses
  %i.av = ptrtoint ptr %0 to i64                  ; 4 uses
  %.not356 = icmp slt i64 %i.au, -128
  br i1 %.not356, label %.thread454, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = zext i32 %.in to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.au
  %i.ay = getelementptr i8, ptr %i.ax, i64 128
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %i.bb = add i64 %i.aw, %i.av                    ; 2 uses
  %.not357 = icmp ule i64 %i.ba, %i.bb
  %i.bc = icmp ugt i64 %i.ba, %i.av
  %or.cond393 = and i1 %.not357, %i.bc
  %i.bd = icmp ugt i64 %i.bb, %i.az
  %or.cond394 = and i1 %i.bd, %or.cond393
  br i1 %or.cond394, label %bb.h, label %.thread454

bb.h:                                             ; preds = %bb.g
  %i.be = add i32 %4, 128
  %i.bf = sub i32 %i.be, %6
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #7
  %i.bi = zext i32 %1 to i64                      ; 2 uses
  %.neg = add i64 %i.av, -8
  %i.bj = add i64 %.neg, %i.bi                    ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = tail call ptr @cli_memstr(ptr noundef %i.bh, i64 noundef %i.bl, ptr noundef nonnull @.str.1, i64 noundef 2) #7 ; 2 uses
  %.not358508 = icmp eq ptr %i.bm, null
  br i1 %.not358508, label %.thread454, label %.lr.ph510

.lr.ph510:                                        ; preds = %bb.h, %bb.k
  %i.bn = phi ptr [ %i.cc, %bb.k ], [ %i.bm, %bb.h ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = icmp eq i8 %i.bp, -117
  br i1 %i.bq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph510
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = icmp eq i8 %i.bs, 7
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = add i64 %i.av, %i.as
  %reass.sub = sub i64 %i.bu, %i.bv
  %i.bw = trunc i64 %reass.sub to i32
  %i.bx = add i32 %i.bw, 2
  %i.by = add i32 %i.bx, %6
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %.lr.ph510
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.bj, %i.ca
  %i.cc = tail call ptr @cli_memstr(ptr noundef nonnull %i.bz, i64 noundef %i.cb, ptr noundef nonnull @.str.1, i64 noundef 2) #7 ; 2 uses
  %.not358 = icmp eq ptr %i.cc, null
  br i1 %.not358, label %.thread454, label %.lr.ph510

.loopexit.loopexit578:                            ; preds = %bb.d
  %.pre = zext i32 %1 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit578, %bb.j
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit578 ], [ %i.bi, %bb.j ]
  %i.cd = phi i32 [ %i.s, %.loopexit.loopexit578 ], [ %.lcssa502641, %bb.j ] ; 9 uses
  %.0440 = phi i32 [ %i.r, %.loopexit.loopexit578 ], [ %i.by, %bb.j ] ; 10 uses
  %i.ce = icmp ne i32 %.0440, 0
  %i.cf = icmp ugt i32 %1, 3
  %or.cond8 = and i1 %i.cf, %i.ce
  br i1 %or.cond8, label %bb.l, label %.thread454

bb.l:                                             ; preds = %.loopexit
  %i.cg = zext i32 %4 to i64
  %i.ch = zext i32 %6 to i64
  %i.ci = sub nsw i64 %i.cg, %i.ch
  %i.cj = zext i32 %.0440 to i64
  %i.ck = add nsw i64 %i.ci, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck ; 2 uses
  %.not359 = icmp slt i64 %i.ck, 0
  br i1 %.not359, label %.thread454, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = add i64 %i.cn, 4                        ; 2 uses
  %i.cp = add i64 %.pre-phi, %i.cm                ; 2 uses
  %.not360 = icmp ule i64 %i.co, %i.cp
  %i.cq = icmp ugt i64 %i.co, %i.cm
  %or.cond395 = and i1 %.not360, %i.cq
  %i.cr = icmp ugt i64 %i.cp, %i.cn
  %or.cond396 = and i1 %i.cr, %or.cond395
  br i1 %or.cond396, label %bb.n, label %.thread454

bb.n:                                             ; preds = %bb.m
  %i.cs = load i32, ptr %i.cl, align 1, !tbaa !8  ; 5 uses
  %i.ct = ptrtoint ptr %2 to i64                  ; 6 uses
  %i.cu = load i32, ptr %3, align 4, !tbaa !9     ; 5 uses
  %.not361 = icmp ult i32 %i.cs, %i.cu
  br i1 %.not361, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #7
  br label %.thread454

bb.p:                                             ; preds = %bb.n
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv ; 3 uses
  %i.cx = icmp ult i32 %i.cu, 8
  br i1 %i.cx, label %.critedge.thread, label %.lr.ph522

.lr.ph522:                                        ; preds = %bb.p
  %i.cy = zext i32 %i.cu to i64
  %i.cz = add i64 %i.cy, %i.ct                    ; 10 uses
  %.not363527 = icmp slt i32 %i.cs, 0
  br i1 %.not363527, label %.critedge, label %.lr.ph529

.critedge.thread:                                 ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  br label %checkpe.exit

.lr.ph529:                                        ; preds = %.lr.ph522, %.critedge10
  %.0281520528 = phi ptr [ %i.ds, %.critedge10 ], [ %i.cw, %.lr.ph522 ] ; 5 uses
  %i.db = ptrtoint ptr %.0281520528 to i64        ; 2 uses
  %i.dc = add i64 %i.db, 8                        ; 2 uses
  %.not364 = icmp ule i64 %i.dc, %i.cz
  %i.dd = icmp ugt i64 %i.dc, %i.ct
  %or.cond398 = and i1 %.not364, %i.dd
  %i.de = icmp ugt i64 %i.cz, %i.db
  %or.cond399 = and i1 %i.de, %or.cond398
  br i1 %or.cond399, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph529
  %i.df = load i32, ptr %.0281520528, align 1, !tbaa !8
  %.not365 = icmp eq i32 %i.df, 0
  br i1 %.not365, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.0281520528, i64 8 ; 3 uses
  %.not369511 = icmp ult ptr %i.dg, %2
  br i1 %.not369511, label %.critedge10, label %.lr.ph514

.lr.ph514:                                        ; preds = %bb.r, %.critedge12
  %.1282512 = phi ptr [ %i.dr, %.critedge12 ], [ %i.dg, %bb.r ] ; 5 uses
  %i.dh = ptrtoint ptr %.1282512 to i64           ; 2 uses
  %i.di = add i64 %i.dh, 2                        ; 2 uses
  %.not370 = icmp ule i64 %i.di, %i.cz
  %i.dj = icmp ugt i64 %i.di, %i.ct
  %or.cond400 = and i1 %.not370, %i.dj
  %i.dk = icmp ugt i64 %i.cz, %i.dh
  %or.cond401 = and i1 %i.dk, %or.cond400
  br i1 %or.cond401, label %bb.s, label %.critedge10

bb.s:                                             ; preds = %.lr.ph514
  %i.dl = load i8, ptr %.1282512, align 1, !tbaa !8
  %.not371 = icmp eq i8 %i.dl, 0
  br i1 %.not371, label %.critedge10, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.u
  %.1282.pn = phi ptr [ %.2, %bb.u ], [ %.1282512, %bb.s ] ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.1282.pn, i64 1 ; 3 uses
  %i.dm = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.dn = add i64 %i.dm, 2                        ; 2 uses
  %.not375 = icmp ule i64 %i.dn, %i.cz
  %i.do = icmp ugt i64 %i.dn, %i.ct
  %or.cond402 = and i1 %.not375, %i.do
  %i.dp = icmp ugt i64 %i.cz, %i.dm
  %or.cond403 = and i1 %i.dp, %or.cond402
  br i1 %or.cond403, label %bb.u, label %.critedge12

bb.u:                                             ; preds = %bb.t
  %i.dq = load i8, ptr %.2, align 1, !tbaa !8
  %.not376 = icmp eq i8 %i.dq, 0
  br i1 %.not376, label %.critedge12, label %bb.t

.critedge12:                                      ; preds = %bb.t, %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %.1282.pn, i64 2 ; 3 uses
  %.not369 = icmp ult ptr %i.dr, %2
  br i1 %.not369, label %.critedge10, label %.lr.ph514

.critedge10:                                      ; preds = %bb.s, %.critedge12, %.lr.ph514, %bb.r
  %.1282.lcssa = phi ptr [ %i.dg, %bb.r ], [ %.1282512, %.lr.ph514 ], [ %i.dr, %.critedge12 ], [ %.1282512, %bb.s ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.1282.lcssa, i64 1 ; 3 uses
  %.not363 = icmp ult ptr %i.ds, %2
  br i1 %.not363, label %.critedge, label %.lr.ph529

.critedge:                                        ; preds = %.lr.ph529, %.critedge10, %bb.q, %.lr.ph522
  %.0281.lcssa499 = phi ptr [ %i.cw, %.lr.ph522 ], [ %.0281520528, %.lr.ph529 ], [ %i.ds, %.critedge10 ], [ %.0281520528, %bb.q ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 4 ; 10 uses
  %i.du = icmp ult i32 %i.cu, 248
  %.not.i = icmp ult ptr %i.dt, %2
  %or.cond482 = select i1 %i.du, i1 true, i1 %.not.i
  br i1 %or.cond482, label %checkpe.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = add i64 %i.dv, 248                      ; 2 uses
  %.not47.i = icmp ule i64 %i.dw, %i.cz
  %i.dx = icmp ugt i64 %i.dw, %i.ct
  %or.cond.i = and i1 %.not47.i, %i.dx
  %i.dy = icmp ugt i64 %i.cz, %i.dv
  %or.cond54.i = and i1 %i.dy, %or.cond.i
  br i1 %or.cond54.i, label %bb.w, label %checkpe.exit

bb.w:                                             ; preds = %bb.v
  %i.dz = load i32, ptr %i.dt, align 1, !tbaa !8
  %.not48.i = icmp eq i32 %i.dz, 17744
  br i1 %.not48.i, label %bb.x, label %checkpe.exit

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 60
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !8  ; 4 uses
  %.not49.i = icmp eq i32 %i.eb, 0
  br i1 %.not49.i, label %checkpe.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 252 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 10
  %i.ee = load i16, ptr %i.ed, align 1            ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 3 uses
  %.not50.i = icmp eq i16 %i.ee, 0
  br i1 %.not50.i, label %checkpe.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = mul nuw nsw i32 %i.ef, 40               ; 2 uses
  %.not51.i = icmp ugt i32 %i.eg, %i.cu
  br i1 %.not51.i, label %checkpe.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ej = add i64 %i.eh, %i.ei                    ; 2 uses
  %.not53.i = icmp ule i64 %i.ej, %i.cz
  %i.ek = icmp ugt i64 %i.ej, %i.ct
  %or.cond55.i = and i1 %.not53.i, %i.ek
  %i.el = icmp ugt i64 %i.cz, %i.ei
  %or.cond56.i = select i1 %or.cond55.i, i1 %i.el, i1 false
  %spec.select.i = select i1 %or.cond56.i, ptr %i.ec, ptr null
  br label %checkpe.exit

checkpe.exit:                                     ; preds = %.critedge.thread, %.critedge, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.em = phi ptr [ %i.da, %.critedge.thread ], [ %i.dt, %bb.x ], [ %i.dt, %bb.y ], [ %i.dt, %bb.z ], [ %i.dt, %bb.aa ], [ %i.dt, %bb.w ], [ %i.dt, %bb.v ], [ %i.dt, %.critedge ]
  %.6452 = phi i32 [ %i.cd, %.critedge.thread ], [ %i.cd, %bb.x ], [ 0, %bb.y ], [ %i.ef, %bb.z ], [ %i.ef, %bb.aa ], [ %i.cd, %bb.w ], [ %i.cd, %bb.v ], [ %i.cd, %.critedge ]
  %.5444 = phi i32 [ %.0440, %.critedge.thread ], [ 0, %bb.x ], [ %i.eb, %bb.y ], [ %i.eb, %bb.z ], [ %i.eb, %bb.aa ], [ %.0440, %bb.w ], [ %.0440, %bb.v ], [ %.0440, %.critedge ]
  %.0.i = phi ptr [ null, %.critedge.thread ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ %spec.select.i, %bb.aa ], [ null, %bb.w ], [ null, %bb.v ], [ null, %.critedge ] ; 2 uses
  %.not366 = icmp eq ptr %.0.i, null
  %spec.select404 = select i1 %.not366, ptr null, ptr %i.em
  br label %.thread454

.thread454:                                       ; preds = %bb.k, %bb.h, %._crit_edge, %bb.g, %bb.f, %checkpe.exit, %bb.o, %bb.m, %bb.l, %.loopexit
  %.1447 = phi i32 [ %i.cd, %bb.l ], [ %.6452, %checkpe.exit ], [ %i.cd, %bb.o ], [ %i.cd, %bb.m ], [ %i.cd, %.loopexit ], [ %.lcssa502641, %bb.f ], [ %.lcssa502641, %bb.g ], [ %.lcssa502, %._crit_edge ], [ %.lcssa502641, %bb.h ], [ %.lcssa502641, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %.0440, %bb.l ], [ %.5444, %checkpe.exit ], [ %.0440, %bb.o ], [ %.0440, %bb.m ], [ %.0440, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.k ] ; 3 uses
  %.0283 = phi ptr [ null, %bb.l ], [ %.0.i, %checkpe.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %.loopexit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %._crit_edge ], [ null, %bb.h ], [ null, %bb.k ]
  %.3 = phi ptr [ null, %bb.l ], [ %spec.select404, %checkpe.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %.loopexit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %._crit_edge ], [ null, %bb.h ], [ null, %bb.k ] ; 2 uses
  %.0277 = phi i32 [ 0, %bb.l ], [ %i.cs, %checkpe.exit ], [ %i.cs, %bb.o ], [ 0, %bb.m ], [ 0, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.k ]
  %i.en = icmp eq ptr %.3, null
  %i.eo = icmp ugt i32 %8, 288
  %or.cond14 = and i1 %i.eo, %i.en
  br i1 %or.cond14, label %.lr.ph542, label %bb.ah

.lr.ph542:                                        ; preds = %.thread454
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #7
  %i.ep = add i32 %8, -288
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = load i32, ptr %3, align 4, !tbaa !9     ; 3 uses
  %i.es = icmp ugt i32 %i.er, 247
  %i.et = zext i32 %i.er to i64
  %i.eu = ptrtoint ptr %2 to i64                  ; 6 uses
  %i.ev = add i64 %i.et, %i.eu                    ; 4 uses
  br i1 %i.es, label %.lr.ph542.split.us.preheader, label %.lr.ph542.split.preheader

.lr.ph542.split.us.preheader:                     ; preds = %.lr.ph542
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  br label %.lr.ph542.split.us

.lr.ph542.split.preheader:                        ; preds = %.lr.ph542
  %i.ex = add i64 %i.eu, %i.eq
  %i.ey = add i64 %i.ex, -1
  %i.ez = tail call i64 @llvm.usub.sat.i64(i64 %i.eu, i64 %i.ey)
  %i.fa = sub i64 0, %i.ez
  %scevgep595 = getelementptr i8, ptr %2, i64 %i.fa
  br label %checkpe.exit428

.lr.ph542.split.us:                               ; preds = %.lr.ph542.split.us.preheader, %bb.ag
  %.4540.us = phi ptr [ %i.fs, %bb.ag ], [ %i.ew, %.lr.ph542.split.us.preheader ] ; 7 uses
  %.2441539.us = phi i32 [ %.6445.ph.us, %bb.ag ], [ %.1, %.lr.ph542.split.us.preheader ] ; 2 uses
  %.2448538.us = phi i32 [ %.7453.ph.us, %bb.ag ], [ %.1447, %.lr.ph542.split.us.preheader ] ; 3 uses
  %i.fb = ptrtoint ptr %.4540.us to i64           ; 2 uses
  %i.fc = add i64 %i.fb, 248                      ; 2 uses
  %.not47.i417.us = icmp ule i64 %i.fc, %i.ev
  %i.fd = icmp ugt i64 %i.fc, %i.eu
  %or.cond.i418.us = and i1 %i.fd, %.not47.i417.us
  %i.fe = icmp ugt i64 %i.ev, %i.fb
  %or.cond54.i419.us = and i1 %i.fe, %or.cond.i418.us
  br i1 %or.cond54.i419.us, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph542.split.us
  %i.ff = load i32, ptr %.4540.us, align 1, !tbaa !8
  %.not48.i420.us = icmp eq i32 %i.ff, 17744
  br i1 %.not48.i420.us, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %.4540.us, i64 56
  %i.fh = load i32, ptr %i.fg, align 1, !tbaa !8  ; 5 uses
  %.not49.i421.us = icmp eq i32 %i.fh, 0
  br i1 %.not49.i421.us, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %.4540.us, i64 248 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.4540.us, i64 6
  %i.fk = load i16, ptr %i.fj, align 1            ; 2 uses
  %i.fl = zext i16 %i.fk to i32                   ; 4 uses
  %.not50.i422.us = icmp eq i16 %i.fk, 0
  br i1 %.not50.i422.us, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = mul nuw nsw i32 %i.fl, 40               ; 2 uses
  %.not51.i423.us = icmp ugt i32 %i.fm, %i.er
  br i1 %.not51.i423.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fp = add i64 %i.fn, %i.fo                    ; 2 uses
  %.not53.i424.us = icmp ule i64 %i.fp, %i.ev
  %i.fq = icmp ugt i64 %i.fp, %i.eu
  %or.cond55.i425.us = and i1 %.not53.i424.us, %i.fq
  %i.fr = icmp ugt i64 %i.ev, %i.fo
  %or.cond56.i426.us = and i1 %i.fr, %or.cond55.i425.us
  br i1 %or.cond56.i426.us, label %checkpe.exit428, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph542.split.us
  %.7453.ph.us = phi i32 [ %.2448538.us, %.lr.ph542.split.us ], [ %.2448538.us, %bb.ab ], [ %i.fl, %bb.af ], [ %i.fl, %bb.ae ], [ 0, %bb.ad ], [ %.2448538.us, %bb.ac ] ; 2 uses
  %.6445.ph.us = phi i32 [ %.2441539.us, %.lr.ph542.split.us ], [ %.2441539.us, %bb.ab ], [ %i.fh, %bb.af ], [ %i.fh, %bb.ae ], [ %i.fh, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.4540.us, i64 -1 ; 3 uses
  %i.ft = icmp ugt ptr %i.fs, %2
  br i1 %i.ft, label %.lr.ph542.split.us, label %checkpe.exit428

checkpe.exit428:                                  ; preds = %bb.ag, %bb.af, %.lr.ph542.split.preheader
  %.4.lcssa = phi ptr [ %scevgep595, %.lr.ph542.split.preheader ], [ %.4540.us, %bb.af ], [ %i.fs, %bb.ag ] ; 2 uses
  %.3449 = phi i32 [ %.1447, %.lr.ph542.split.preheader ], [ %i.fl, %bb.af ], [ %.7453.ph.us, %bb.ag ]
  %.3442 = phi i32 [ %.1, %.lr.ph542.split.preheader ], [ %i.fh, %bb.af ], [ %.6445.ph.us, %bb.ag ]
  %.2285 = phi ptr [ null, %.lr.ph542.split.preheader ], [ %i.fi, %bb.af ], [ null, %bb.ag ]
  %i.fu = ptrtoint ptr %.4.lcssa to i64
  %i.fv = sub i64 %i.fu, %i.eu
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %.not378 = icmp eq i32 %i.fw, 0
  br i1 %.not378, label %.thread464, label %bb.ah

bb.ah:                                            ; preds = %checkpe.exit428, %.thread454
  %.4450 = phi i32 [ %.3449, %checkpe.exit428 ], [ %.1447, %.thread454 ]
  %.4443 = phi i32 [ %.3442, %checkpe.exit428 ], [ %.1, %.thread454 ] ; 9 uses
  %.3286 = phi ptr [ %.2285, %checkpe.exit428 ], [ %.0283, %.thread454 ] ; 2 uses
  %.5 = phi ptr [ %.4.lcssa, %checkpe.exit428 ], [ %.3, %.thread454 ] ; 5 uses
  %.1278 = phi i32 [ %i.fw, %checkpe.exit428 ], [ %.0277, %.thread454 ]
  %.1278.fr = freeze i32 %.1278                   ; 3 uses
  %.not379 = icmp eq ptr %.5, null
  br i1 %.not379, label %.thread464, label %bb.ak

.thread464:                                       ; preds = %checkpe.exit428, %bb.ah
  %i.fx = and i32 %8, 4095
  %.not380 = icmp eq i32 %i.fx, 0
  %i.fy = select i1 %.not380, i32 0, i32 4096
  %i.fz = add i32 %i.fy, %8
  %i.ga = and i32 %i.fz, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #7
  %i.gb = or disjoint i32 %i.ga, 512              ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = tail call ptr @cli_max_calloc(i64 noundef %i.gc, i64 noundef 1) #7 ; 6 uses
  %.not381 = icmp eq ptr %i.gd, null
  br i1 %.not381, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread464
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %.thread473

end_hunk_0
