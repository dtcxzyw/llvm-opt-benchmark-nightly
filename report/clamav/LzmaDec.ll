Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/LzmaDec?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@LzmaDec_DecodeToDic:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bv = ptrtoint ptr %i.bg to i64
  %i.bw = add i64 %i.a, 112
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph226, %bb.aj
  %i.by = phi i32 [ %i.bd, %.lr.ph226 ], [ %i.hh, %bb.aj ]
  %.0127225 = phi i64 [ %i.b, %.lr.ph226 ], [ %.6, %bb.aj ] ; 8 uses
  %.0139224 = phi ptr [ %2, %.lr.ph226 ], [ %.6145, %bb.aj ] ; 9 uses
  %i.bz = load i32, ptr %i.be, align 8, !tbaa !17
  %.not151 = icmp eq i32 %i.bz, 0
  br i1 %.not151, label %bb.n, label %.preheader189

.preheader189:                                    ; preds = %bb.f
  %.not152209 = icmp eq i64 %.0127225, 0
  %.pre254 = load i32, ptr %i.bf, align 4, !tbaa !19 ; 11 uses
  br i1 %.not152209, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader189
  %i.ca = icmp ult i32 %.pre254, 5
  br i1 %i.ca, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.0139224, i64 1 ; 3 uses
  %i.cc = load i8, ptr %.0139224, align 1, !tbaa !29
  %i.cd = add nuw nsw i32 %.pre254, 1             ; 3 uses
  store i32 %i.cd, ptr %i.bf, align 4, !tbaa !19
  %i.ce = zext nneg i32 %.pre254 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !29
  %i.cg = load i64, ptr %3, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %3, align 8, !tbaa !24
  %i.ci = add i64 %.0127225, -1                   ; 2 uses
  %.not152 = icmp eq i64 %i.ci, 0
  br i1 %.not152, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g
  %.not350 = icmp eq i32 %.pre254, 4
  br i1 %.not350, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0139224, i64 2 ; 3 uses
  %i.ck = load i8, ptr %i.cb, align 1, !tbaa !29
  %i.cl = add nuw nsw i32 %.pre254, 2             ; 3 uses
  store i32 %i.cl, ptr %i.bf, align 4, !tbaa !19
  %i.cm = zext nneg i32 %i.cd to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !29
  %i.co = load i64, ptr %3, align 8, !tbaa !24
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %3, align 8, !tbaa !24
  %i.cq = add i64 %.0127225, -2                   ; 2 uses
  %.not152.1 = icmp eq i64 %i.cq, 0
  br i1 %.not152.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.cr = icmp ult i32 %.pre254, 3
  br i1 %i.cr, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.lr.ph.2
  %i.cs = getelementptr inbounds nuw i8, ptr %.0139224, i64 3 ; 3 uses
  %i.ct = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cu = add nuw nsw i32 %.pre254, 3             ; 3 uses
  store i32 %i.cu, ptr %i.bf, align 4, !tbaa !19
  %i.cv = zext nneg i32 %i.cl to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !29
  %i.cx = load i64, ptr %3, align 8, !tbaa !24
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %3, align 8, !tbaa !24
  %i.cz = add i64 %.0127225, -3                   ; 2 uses
  %.not152.2 = icmp eq i64 %i.cz, 0
  br i1 %.not152.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %.not351 = icmp eq i32 %.pre254, 2
  br i1 %.not351, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.3
  %i.da = getelementptr inbounds nuw i8, ptr %.0139224, i64 4 ; 3 uses
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !29
  %i.dc = or disjoint i32 %.pre254, 4             ; 3 uses
  store i32 %i.dc, ptr %i.bf, align 4, !tbaa !19
  %i.dd = zext nneg i32 %i.cu to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dd
  store i8 %i.db, ptr %i.de, align 1, !tbaa !29
  %i.df = load i64, ptr %3, align 8, !tbaa !24
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %3, align 8, !tbaa !24
  %i.dh = add i64 %.0127225, -4                   ; 2 uses
  %.not152.3 = icmp eq i64 %i.dh, 0
  br i1 %.not152.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.j
  %i.di = icmp eq i32 %.pre254, 0
  br i1 %i.di, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph.4
  %i.dj = getelementptr inbounds nuw i8, ptr %.0139224, i64 5 ; 2 uses
  %i.dk = load i8, ptr %i.da, align 1, !tbaa !29
  store i32 5, ptr %i.bf, align 4, !tbaa !19
  %i.dl = zext nneg i32 %i.dc to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dl
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !29
  %i.dn = load i64, ptr %3, align 8, !tbaa !24
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %3, align 8, !tbaa !24
  %i.dp = add i64 %.0127225, -5                   ; 2 uses
  %.not152.4 = icmp eq i64 %i.dp, 0
  br i1 %.not152.4, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.preheader189
  %i.dq = phi i32 [ %.pre254, %.preheader189 ], [ %i.cd, %bb.g ], [ %i.cl, %bb.h ], [ %i.cu, %bb.i ], [ %i.dc, %bb.j ], [ 5, %bb.k ]
  %.1140.lcssa = phi ptr [ %.0139224, %.preheader189 ], [ %i.cb, %bb.g ], [ %i.cj, %bb.h ], [ %i.cs, %bb.i ], [ %i.da, %bb.j ], [ %i.dj, %bb.k ]
  %i.dr = icmp ult i32 %i.dq, 5
  br i1 %i.dr, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.k, %.critedge
  %.1128.lcssa266 = phi i64 [ 0, %.critedge ], [ %.0127225, %.lr.ph ], [ %i.ci, %.lr.ph.1 ], [ %i.cq, %.lr.ph.2 ], [ %i.cz, %.lr.ph.3 ], [ %i.dh, %.lr.ph.4 ], [ %i.dp, %bb.k ]
  %.1140.lcssa265 = phi ptr [ %.1140.lcssa, %.critedge ], [ %.0139224, %.lr.ph ], [ %i.cb, %.lr.ph.1 ], [ %i.cj, %.lr.ph.2 ], [ %i.cs, %.lr.ph.3 ], [ %i.da, %.lr.ph.4 ], [ %i.dj, %bb.k ]
  %i.ds = load i8, ptr %i.bg, align 8, !tbaa !29
  %.not153 = icmp eq i8 %i.ds, 0
  br i1 %.not153, label %bb.m, label %.thread182

bb.m:                                             ; preds = %.critedge.thread
  %i.dt = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 24
  %i.dw = load i8, ptr %i.bi, align 2, !tbaa !29
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = or disjoint i32 %i.dy, %i.dv
  %i.ea = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = or disjoint i32 %i.dz, %i.ec
  %i.ee = load i8, ptr %i.bk, align 4, !tbaa !29
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef
  store i32 %i.eg, ptr %i.bl, align 4, !tbaa !30
  store i32 -1, ptr %i.bm, align 8, !tbaa !31
  store i32 0, ptr %i.be, align 8, !tbaa !17
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.2141 = phi ptr [ %.1140.lcssa265, %bb.m ], [ %.0139224, %bb.f ] ; 13 uses
  %.2129 = phi i64 [ %.1128.lcssa266, %bb.m ], [ %.0127225, %bb.f ]
  %.2129.fr = freeze i64 %.2129                   ; 10 uses
  %.2141309 = ptrtoaddr ptr %.2141 to i64
  %i.eh = load i64, ptr %i.bn, align 8, !tbaa !23
  %.not154 = icmp uge i64 %i.eh, %1               ; 5 uses
  br i1 %.not154, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ei = icmp eq i32 %i.by, 0
  br i1 %i.ei, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ej = load i32, ptr %i.bl, align 4, !tbaa !30
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.r:                                             ; preds = %bb.p
  br i1 %i.bo, label %.loopexit, label %bb.t

.thread:                                          ; preds = %bb.o
  br i1 %i.bo, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.s:                                             ; preds = %.thread
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.t:                                             ; preds = %bb.r, %bb.n
  %i.el = load i32, ptr %i.bp, align 4, !tbaa !22
  %.not156 = icmp eq i32 %i.el, 0
  br i1 %.not156, label %bb.u, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.em = load i32, ptr %0, align 8, !tbaa !32
  %i.en = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.eo = add i32 %i.en, %i.em
  %i.ep = shl i32 768, %i.eo
  %6 = load ptr, ptr %i.br, align 8, !tbaa !34    ; 4 uses
  %7 = add nuw i32 %i.ep, 1846
  %wide.trip.count.i = zext i32 %7 to i64         ; 3 uses
  %n.vec314 = add nsw i64 %wide.trip.count.i, -6  ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %iter.check, %vector.body315
  %index316 = phi i64 [ 0, %iter.check ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index316 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.eq, align 2, !tbaa !36
  store <8 x i16> splat (i16 1024), ptr %i.er, align 2, !tbaa !36
  %index.next317 = add nuw i64 %index316, 16      ; 2 uses
  %i.es = icmp eq i64 %index.next317, %n.vec314
  br i1 %i.es, label %vec.epilog.vector.body, label %vector.body315, !llvm.loop !47

vec.epilog.vector.body:                           ; preds = %vector.body315
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %n.vec314
  store <4 x i16> splat (i16 1024), ptr %i.et, align 2, !tbaa !36
  %i.eu = getelementptr [2 x i8], ptr %6, i64 %wide.trip.count.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4
  store i16 1024, ptr %i.ev, align 2, !tbaa !36
  %i.ew = getelementptr [2 x i8], ptr %6, i64 %wide.trip.count.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  store i16 1024, ptr %i.ex, align 2, !tbaa !36
  store i32 1, ptr %i.bs, align 8, !tbaa !27
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.bt, align 8, !tbaa !27
  store i32 0, ptr %i.bp, align 4, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %vec.epilog.vector.body, %bb.t
  %i.ey = load i32, ptr %i.bf, align 4, !tbaa !19 ; 4 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.fa = icmp ult i32 %i.ey, 20                  ; 2 uses
  %i.fb = icmp ne i64 %.2129.fr, 0
  %i.fc = and i1 %i.fa, %i.fb
  br i1 %i.fc, label %.lr.ph218.preheader, label %._crit_edge

.lr.ph218.preheader:                              ; preds = %.preheader
  %i.fd = zext nneg i32 %i.ey to i64              ; 9 uses
  %i.fe = add i64 %.2129.fr, -1
  %i.ff = sub nsw i64 19, %i.fd
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fh, 8
  br i1 %min.iters.check, label %.lr.ph218.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph218.preheader
  %i.fi = add i64 %i.bw, %i.fd
  %i.fj = sub i64 %.2141309, %i.fi
  %diff.check = icmp ugt i64 %i.fj, -8
  br i1 %diff.check, label %.lr.ph218.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fh, -8                      ; 5 uses
  %i.fk = add i64 %n.vec, %i.fd                   ; 2 uses
  %i.fl = add nuw nsw i64 %i.fd, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %.2141, i64 4
  %wide.load = load <4 x i8>, ptr %.2141, align 1, !tbaa !29
  %wide.load310 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.fd ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store <4 x i8> %wide.load, ptr %i.fn, align 1, !tbaa !29
  store <4 x i8> %wide.load310, ptr %i.fo, align 1, !tbaa !29
  %i.fp = icmp eq i64 %n.vec, 8
  br i1 %i.fp, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.fq = add nuw nsw i64 %i.fd, 11
  %i.fr = getelementptr inbounds nuw i8, ptr %.2141, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.2141, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.fr, align 1, !tbaa !29
  %wide.load310.1 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !29
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.fd ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <4 x i8> %wide.load.1, ptr %i.ft, align 1, !tbaa !29
  store <4 x i8> %wide.load310.1, ptr %i.fu, align 1, !tbaa !29
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %.lcssa330 = phi i64 [ %i.fl, %vector.ph ], [ %i.fq, %vector.body.1 ]
  %i.fv = icmp samesign ult i64 %.lcssa330, 15
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph218.preheader325

.lr.ph218.preheader325:                           ; preds = %vector.memcheck, %.lr.ph218.preheader, %middle.block
  %indvars.iv249.ph = phi i64 [ %i.fd, %vector.memcheck ], [ %i.fd, %.lr.ph218.preheader ], [ %i.fk, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph218.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph218

bb.v:                                             ; preds = %bb.u
  %i.fw = icmp ult i64 %.2129.fr, 20
  %or.cond = or i1 %i.fw, %.not154
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fx = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef %.2141, i64 noundef %.2129.fr) ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %.2141, i64 %.2129.fr, i1 false)
  %i.fz = trunc i64 %.2129.fr to i32
  store i32 %i.fz, ptr %i.bf, align 4, !tbaa !19
  %i.ga = load i64, ptr %3, align 8, !tbaa !24
  %i.gb = add i64 %i.ga, %.2129.fr
  store i64 %i.gb, ptr %3, align 8, !tbaa !24
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.y:                                             ; preds = %bb.w
  %i.gc = icmp ne i32 %i.fx, 2
  %or.cond7 = and i1 %.not154, %i.gc
  br i1 %or.cond7, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.aa:                                            ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %.2141, i64 %.2129.fr
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.1 = phi ptr [ %i.ge, %bb.aa ], [ %.2141, %bb.y ]
  store ptr %.2141, ptr %i.bu, align 8, !tbaa !39
  %i.gf = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.1)
  %.not159 = icmp eq i32 %i.gf, 0
  br i1 %.not159, label %bb.ac, label %.thread182

bb.ac:                                            ; preds = %bb.ab
  %i.gg = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %.2141 to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = load i64, ptr %3, align 8, !tbaa !24
  %i.gl = add i64 %i.gj, %i.gk
  store i64 %i.gl, ptr %3, align 8, !tbaa !24
  br label %bb.aj

.lr.ph218:                                        ; preds = %.lr.ph218.preheader325, %.lr.ph218
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph218 ], [ %indvars.iv249.ph, %.lr.ph218.preheader325 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph218 ], [ %indvars.iv.ph, %.lr.ph218.preheader325 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.2141, i64 %indvars.iv
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !29
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv249
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !29
  %i.gp = icmp samesign ult i64 %indvars.iv249, 19 ; 2 uses
  %i.gq = icmp ugt i64 %.2129.fr, %indvars.iv.next
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %i.gr, label %.lr.ph218, label %._crit_edge.loopexit, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph218, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next, %.lr.ph218 ] ; 2 uses
  %indvars.iv.next250.lcssa = phi i64 [ %i.fk, %middle.block ], [ %indvars.iv.next250, %.lr.ph218 ]
  %.lcssa292 = phi i1 [ %i.fv, %middle.block ], [ %i.gp, %.lr.ph218 ]
  %i.gs = trunc nuw nsw i64 %indvars.iv.next250.lcssa to i32
  %i.gt = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0122.lcssa = phi i32 [ %i.ey, %.preheader ], [ %i.gs, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.gt, %._crit_edge.loopexit ]
  %.lcssa191 = phi i1 [ %i.fa, %.preheader ], [ %.lcssa292, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.lcssa, %._crit_edge.loopexit ]
  store i32 %.0122.lcssa, ptr %i.bf, align 4, !tbaa !19
  %or.cond9 = or i1 %.not154, %.lcssa191
  br i1 %or.cond9, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge
  %i.gu = zext i32 %.0122.lcssa to i64
  %i.gv = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %i.gu) ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gx = load i64, ptr %3, align 8, !tbaa !24
  %i.gy = add i64 %i.gx, %.lcssa
  store i64 %i.gy, ptr %3, align 8, !tbaa !24
  store i32 3, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.af:                                            ; preds = %bb.ad
  %i.gz = icmp ne i32 %i.gv, 2
  %or.cond11 = and i1 %.not154, %i.gz
  br i1 %or.cond11, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 2, ptr %5, align 4, !tbaa !27
  br label %.thread182

bb.ah:                                            ; preds = %bb.af, %._crit_edge
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !39
  %i.ha = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.bg)
  %.not157 = icmp eq i32 %i.ha, 0
  br i1 %.not157, label %bb.ai, label %.thread182

bb.ai:                                            ; preds = %bb.ah
  %i.hb = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.hc = ptrtoint ptr %i.hb to i64
  %.neg.neg = sub i64 %i.hc, %i.bv
  %.neg158.neg228 = trunc i64 %.neg.neg to i32
  %.neg188 = sub i32 %.0.lcssa, %.0122.lcssa
  %i.hd = add i32 %.neg188, %.neg158.neg228
  %i.he = zext i32 %i.hd to i64                   ; 2 uses
  %i.hf = load i64, ptr %3, align 8, !tbaa !24
  %i.hg = add i64 %i.hf, %i.he
  store i64 %i.hg, ptr %3, align 8, !tbaa !24
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.ai
  %.pn = phi i64 [ %i.he, %bb.ai ], [ %i.gj, %bb.ac ] ; 2 uses
  %.6 = sub i64 %.2129.fr, %.pn
  %.6145 = getelementptr inbounds nuw i8, ptr %.2141, i64 %.pn
  %i.hh = load i32, ptr %i.c, align 4, !tbaa !18  ; 2 uses
  %.not = icmp eq i32 %i.hh, 274
end_hunk_0
