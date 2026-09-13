Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/upx?download=true
inline.NumInlined: 25
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pefromupx:bb.a

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
  br i1 %.not371, label %.critedge10, label %.preheader

.preheader:                                       ; preds = %bb.s, %bb.t
  %.1282.pn = phi ptr [ %.2, %bb.t ], [ %.1282512, %bb.s ] ; 2 uses
  %.2 = getelementptr inbounds nuw i8, ptr %.1282.pn, i64 1 ; 3 uses
  %i.dm = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.dn = add i64 %i.dm, 2                        ; 2 uses
  %.not375 = icmp ule i64 %i.dn, %i.cz
  %i.do = icmp ugt i64 %i.dn, %i.ct
  %or.cond402 = and i1 %.not375, %i.do
  %i.dp = icmp ugt i64 %i.cz, %i.dm
  %or.cond403 = and i1 %i.dp, %or.cond402
  br i1 %or.cond403, label %bb.t, label %.critedge12

bb.t:                                             ; preds = %.preheader
  %i.dq = load i8, ptr %.2, align 1, !tbaa !8
  %.not376 = icmp eq i8 %i.dq, 0
  br i1 %.not376, label %.critedge12, label %.preheader

.critedge12:                                      ; preds = %.preheader, %bb.t
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
  br i1 %or.cond482, label %checkpe.exit, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = add i64 %i.dv, 248                      ; 2 uses
  %.not47.i = icmp ule i64 %i.dw, %i.cz
  %i.dx = icmp ugt i64 %i.dw, %i.ct
  %or.cond.i = and i1 %.not47.i, %i.dx
  %i.dy = icmp ugt i64 %i.cz, %i.dv
  %or.cond54.i = and i1 %i.dy, %or.cond.i
  br i1 %or.cond54.i, label %bb.v, label %checkpe.exit

bb.v:                                             ; preds = %bb.u
  %i.dz = load i32, ptr %i.dt, align 1, !tbaa !8
  %.not48.i = icmp eq i32 %i.dz, 17744
  br i1 %.not48.i, label %bb.w, label %checkpe.exit

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 60
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !8  ; 4 uses
  %.not49.i = icmp eq i32 %i.eb, 0
  br i1 %.not49.i, label %checkpe.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 252 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0281.lcssa499, i64 10
  %i.ee = load i16, ptr %i.ed, align 1            ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 3 uses
  %.not50.i = icmp eq i16 %i.ee, 0
  br i1 %.not50.i, label %checkpe.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = mul nuw nsw i32 %i.ef, 40               ; 2 uses
  %.not51.i = icmp ugt i32 %i.eg, %i.cu
  br i1 %.not51.i, label %checkpe.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
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

checkpe.exit:                                     ; preds = %.critedge.thread, %.critedge, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %i.em = phi ptr [ %i.da, %.critedge.thread ], [ %i.dt, %bb.w ], [ %i.dt, %bb.x ], [ %i.dt, %bb.y ], [ %i.dt, %bb.z ], [ %i.dt, %bb.v ], [ %i.dt, %bb.u ], [ %i.dt, %.critedge ]
  %.6452 = phi i32 [ %i.cd, %.critedge.thread ], [ %i.cd, %bb.w ], [ 0, %bb.x ], [ %i.ef, %bb.y ], [ %i.ef, %bb.z ], [ %i.cd, %bb.v ], [ %i.cd, %bb.u ], [ %i.cd, %.critedge ]
  %.5444 = phi i32 [ %.0440, %.critedge.thread ], [ 0, %bb.w ], [ %i.eb, %bb.x ], [ %i.eb, %bb.y ], [ %i.eb, %bb.z ], [ %.0440, %bb.v ], [ %.0440, %bb.u ], [ %.0440, %.critedge ]
  %.0.i = phi ptr [ null, %.critedge.thread ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.y ], [ %spec.select.i, %bb.z ], [ null, %bb.v ], [ null, %bb.u ], [ null, %.critedge ] ; 2 uses
  %.not366 = icmp eq ptr %.0.i, null
  %spec.select404 = select i1 %.not366, ptr null, ptr %i.em
  br label %.thread454

.thread454:                                       ; preds = %bb.k, %bb.h, %._crit_edge, %bb.g, %bb.f, %checkpe.exit, %bb.o, %bb.m, %bb.l, %.loopexit
  %.1447 = phi i32 [ %i.cd, %bb.l ], [ %.6452, %checkpe.exit ], [ %i.cd, %bb.o ], [ %i.cd, %bb.m ], [ %i.cd, %.loopexit ], [ %.lcssa502640, %bb.f ], [ %.lcssa502640, %bb.g ], [ %.lcssa502, %._crit_edge ], [ %.lcssa502640, %bb.h ], [ %.lcssa502640, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %.0440, %bb.l ], [ %.5444, %checkpe.exit ], [ %.0440, %bb.o ], [ %.0440, %bb.m ], [ %.0440, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.k ] ; 3 uses
  %.0283 = phi ptr [ null, %bb.l ], [ %.0.i, %checkpe.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %.loopexit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %._crit_edge ], [ null, %bb.h ], [ null, %bb.k ]
  %.3 = phi ptr [ null, %bb.l ], [ %spec.select404, %checkpe.exit ], [ null, %bb.o ], [ null, %bb.m ], [ null, %.loopexit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %._crit_edge ], [ null, %bb.h ], [ null, %bb.k ] ; 2 uses
  %.0277 = phi i32 [ 0, %bb.l ], [ %i.cs, %checkpe.exit ], [ %i.cs, %bb.o ], [ 0, %bb.m ], [ 0, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.k ]
  %i.en = icmp eq ptr %.3, null
  %i.eo = icmp ugt i32 %8, 288
  %or.cond14 = and i1 %i.eo, %i.en
  br i1 %or.cond14, label %.lr.ph542, label %bb.ag

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

.lr.ph542.split.preheader:                        ; preds = %.lr.ph542
  %i.ew = add i64 %i.eu, %i.eq
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call i64 @llvm.usub.sat.i64(i64 %i.eu, i64 %i.ex)
  %i.ez = sub i64 0, %i.ey
  %scevgep = getelementptr i8, ptr %2, i64 %i.ez
  br label %checkpe.exit428

.lr.ph542.split.us.preheader:                     ; preds = %.lr.ph542
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  br label %.lr.ph542.split.us

.lr.ph542.split.us:                               ; preds = %.lr.ph542.split.us.preheader, %bb.af
  %.4540.us = phi ptr [ %i.fr, %bb.af ], [ %9, %.lr.ph542.split.us.preheader ] ; 7 uses
  %.2441539.us = phi i32 [ %.6445.ph.us, %bb.af ], [ %.1, %.lr.ph542.split.us.preheader ] ; 2 uses
  %.2448538.us = phi i32 [ %.7453.ph.us, %bb.af ], [ %.1447, %.lr.ph542.split.us.preheader ] ; 3 uses
  %i.fa = ptrtoint ptr %.4540.us to i64           ; 2 uses
  %i.fb = add i64 %i.fa, 248                      ; 2 uses
  %.not47.i417.us = icmp ule i64 %i.fb, %i.ev
  %i.fc = icmp ugt i64 %i.fb, %i.eu
  %or.cond.i418.us = and i1 %i.fc, %.not47.i417.us
  %i.fd = icmp ugt i64 %i.ev, %i.fa
  %or.cond54.i419.us = and i1 %i.fd, %or.cond.i418.us
  br i1 %or.cond54.i419.us, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %.lr.ph542.split.us
  %i.fe = load i32, ptr %.4540.us, align 1, !tbaa !8
  %.not48.i420.us = icmp eq i32 %i.fe, 17744
  br i1 %.not48.i420.us, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %.4540.us, i64 56
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !8  ; 5 uses
  %.not49.i421.us = icmp eq i32 %i.fg, 0
  br i1 %.not49.i421.us, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %.4540.us, i64 248 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.4540.us, i64 6
  %i.fj = load i16, ptr %i.fi, align 1            ; 2 uses
  %i.fk = zext i16 %i.fj to i32                   ; 4 uses
  %.not50.i422.us = icmp eq i16 %i.fj, 0
  br i1 %.not50.i422.us, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = mul nuw nsw i32 %i.fk, 40               ; 2 uses
  %.not51.i423.us = icmp ugt i32 %i.fl, %i.er
  br i1 %.not51.i423.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fo = add i64 %i.fm, %i.fn                    ; 2 uses
  %.not53.i424.us = icmp ule i64 %i.fo, %i.ev
  %i.fp = icmp ugt i64 %i.fo, %i.eu
  %or.cond55.i425.us = and i1 %.not53.i424.us, %i.fp
  %i.fq = icmp ugt i64 %i.ev, %i.fn
  %or.cond56.i426.us = and i1 %i.fq, %or.cond55.i425.us
  br i1 %or.cond56.i426.us, label %checkpe.exit428, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.lr.ph542.split.us
  %.7453.ph.us = phi i32 [ %.2448538.us, %.lr.ph542.split.us ], [ %.2448538.us, %bb.aa ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.ad ], [ 0, %bb.ac ], [ %.2448538.us, %bb.ab ] ; 2 uses
  %.6445.ph.us = phi i32 [ %.2441539.us, %.lr.ph542.split.us ], [ %.2441539.us, %bb.aa ], [ %i.fg, %bb.ae ], [ %i.fg, %bb.ad ], [ %i.fg, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.4540.us, i64 -1 ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %2
  br i1 %i.fs, label %.lr.ph542.split.us, label %checkpe.exit428

checkpe.exit428:                                  ; preds = %bb.af, %bb.ae, %.lr.ph542.split.preheader
  %.4.lcssa = phi ptr [ %scevgep, %.lr.ph542.split.preheader ], [ %.4540.us, %bb.ae ], [ %i.fr, %bb.af ] ; 2 uses
  %.3449 = phi i32 [ %.1447, %.lr.ph542.split.preheader ], [ %i.fk, %bb.ae ], [ %.7453.ph.us, %bb.af ]
  %.3442 = phi i32 [ %.1, %.lr.ph542.split.preheader ], [ %i.fg, %bb.ae ], [ %.6445.ph.us, %bb.af ]
  %.2285 = phi ptr [ null, %.lr.ph542.split.preheader ], [ %i.fh, %bb.ae ], [ null, %bb.af ]
  %i.ft = ptrtoint ptr %.4.lcssa to i64
  %i.fu = sub i64 %i.ft, %i.eu
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  %.not378 = icmp eq i32 %i.fv, 0
  br i1 %.not378, label %.thread464, label %bb.ag

bb.ag:                                            ; preds = %checkpe.exit428, %.thread454
  %.4450 = phi i32 [ %.3449, %checkpe.exit428 ], [ %.1447, %.thread454 ]
  %.4443 = phi i32 [ %.3442, %checkpe.exit428 ], [ %.1, %.thread454 ] ; 9 uses
  %.3286 = phi ptr [ %.2285, %checkpe.exit428 ], [ %.0283, %.thread454 ] ; 2 uses
  %.5 = phi ptr [ %.4.lcssa, %checkpe.exit428 ], [ %.3, %.thread454 ] ; 5 uses
  %.1278 = phi i32 [ %i.fv, %checkpe.exit428 ], [ %.0277, %.thread454 ]
  %.1278.fr = freeze i32 %.1278                   ; 3 uses
  %.not379 = icmp eq ptr %.5, null
  br i1 %.not379, label %.thread464, label %bb.aj

.thread464:                                       ; preds = %checkpe.exit428, %bb.ag
  %i.fw = add i32 %8, 4095
  %i.fx = and i32 %i.fw, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #7
  %i.fy = or disjoint i32 %i.fx, 512              ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = tail call ptr @cli_max_calloc(i64 noundef %i.fz, i64 noundef 1) #7 ; 6 uses
  %.not381 = icmp eq ptr %i.ga, null
  br i1 %.not381, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread464
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %.thread473

bb.ai:                                            ; preds = %.thread464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.ga, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.gb, ptr noundef nonnull align 1 dereferenceable(288) @.str.7, i64 288, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 512
  %i.gd = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr align 1 %2, i64 %i.gd, i1 false)
  %i.ge = add i32 %8, 512
  %i.gf = zext i32 %i.ge to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.ga, i64 %i.gf, i1 false)
  tail call void @free(ptr noundef nonnull %i.ga) #7
  %i.gg = add i32 %i.fx, 4096
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i32 %i.gg, ptr %i.gh, align 1, !tbaa !8
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i32 %i.fx, ptr %i.gi, align 1, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i32 %i.fx, ptr %i.gj, align 1, !tbaa !8
  store i32 %i.fy, ptr %3, align 4, !tbaa !9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %.thread473

bb.aj:                                            ; preds = %bb.ag
  %.not382 = icmp eq ptr %.3286, null
  %spec.select = select i1 %.not382, i32 0, i32 %.4450 ; 5 uses
  %.not383 = icmp eq i32 %.4443, 0                ; 2 uses
  %i.gk = mul i32 %spec.select, 40
  %i.gl = add i32 %i.gk, 456                      ; 3 uses
  br i1 %.not383, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = udiv i32 %i.gl, %.4443
  %i.gn = urem i32 %i.gl, %.4443
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = add i32 %i.gm, %i.gp
  %i.gr = mul i32 %i.gq, %.4443
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.gs = phi i32 [ %i.gr, %bb.ak ], [ %i.gl, %bb.aj ] ; 2 uses
  %.not575 = icmp eq i32 %spec.select, 0          ; 2 uses
  br i1 %.not575, label %._crit_edge565, label %.lr.ph564

.lr.ph564:                                        ; preds = %bb.al
  %i.gt = zext i32 %.1278.fr to i64
  %i.gu = icmp eq i32 %.1278.fr, 0
  %i.gv = zext i32 %5 to i64                      ; 2 uses
  %i.gw = add nuw nsw i64 %i.gt, %i.gv            ; 2 uses
  br i1 %i.gu, label %.split, label %.lr.ph564.split

.lr.ph564.split:                                  ; preds = %.lr.ph564, %bb.ar
  %.0275562 = phi i32 [ %i.hy, %bb.ar ], [ %i.gs, %.lr.ph564 ] ; 3 uses
  %.0279561 = phi i32 [ %i.ib, %bb.ar ], [ 0, %.lr.ph564 ] ; 3 uses
  %.4287560 = phi ptr [ %i.ia, %bb.ar ], [ %.3286, %.lr.ph564 ] ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4287560, i64 8
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !8  ; 3 uses
  br i1 %.not383, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph564.split
  %i.gz = udiv i32 %i.gy, %.4443
  %i.ha = urem i32 %i.gy, %.4443
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = zext i1 %i.hb to i32
  %i.hd = add i32 %i.gz, %i.hc
  %i.he = mul i32 %i.hd, %.4443
  %i.hf = getelementptr inbounds nuw i8, ptr %.4287560, i64 12
  %i.hg = load i32, ptr %i.hf, align 1, !tbaa !8
  %.fr = freeze i32 %i.hg                         ; 2 uses
  %i.hh = urem i32 %.fr, %.4443
  %i.hi = sub nuw i32 %.fr, %i.hh
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph564.split
  %i.hj = getelementptr inbounds nuw i8, ptr %.4287560, i64 12
  %i.hk = load i32, ptr %i.hj, align 1, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hl = phi i32 [ %i.he, %bb.am ], [ %i.gy, %bb.an ] ; 5 uses
  %i.hm = phi i32 [ %i.hi, %bb.am ], [ %i.hk, %bb.an ] ; 3 uses
  %i.hn = add i32 %i.hl, -1
  %i.ho = icmp uge i32 %i.hn, %.1278.fr
  %.not388 = icmp ult i32 %i.hm, %5
  %or.cond486 = select i1 %i.ho, i1 true, i1 %.not388
  br i1 %or.cond486, label %.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hp = zext i32 %i.hl to i64
  %i.hq = zext i32 %i.hm to i64                   ; 2 uses
  %i.hr = add nuw nsw i64 %i.hq, %i.hp            ; 2 uses
  %.not389 = icmp samesign ule i64 %i.hr, %i.gw
  %i.hs = icmp samesign ugt i64 %i.hr, %i.gv
  %or.cond408 = select i1 %.not389, i1 %i.hs, i1 false
  %i.ht = icmp samesign ugt i64 %i.gw, %i.hq
  %or.cond409 = select i1 %or.cond408, i1 %i.ht, i1 false
  br i1 %or.cond409, label %bb.aq, label %.split

.split:                                           ; preds = %bb.ao, %bb.ap, %.lr.ph564
  %.us-phi567 = phi i32 [ 0, %.lr.ph564 ], [ %.0279561, %bb.ap ], [ %.0279561, %bb.ao ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %.us-phi567) #7
  br label %.thread473

bb.aq:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %.4287560, i64 8
  store i32 %i.hl, ptr %i.hu, align 1, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %.4287560, i64 12
  store i32 %i.hm, ptr %i.hv, align 1, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.4287560, i64 16
  store i32 %i.hl, ptr %i.hw, align 1, !tbaa !8
end_hunk_0
