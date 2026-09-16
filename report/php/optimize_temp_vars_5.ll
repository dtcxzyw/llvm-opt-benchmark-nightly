Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/optimize_temp_vars_5?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zend_optimize_temporary_variables:bb.a
bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !47
  br label %zend_arena_alloc.exit200

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw nsw i64 %i.i, 24
  %i.q = ptrtoint ptr %i.e to i64
  %i.r = sub i64 %i.l, %i.q
  %..i199 = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.s = tail call noalias ptr @_emalloc(i64 noundef %..i199) #5 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %..i199 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.e, ptr %i.x, align 8, !tbaa !50
  store ptr %i.s, ptr %1, align 8, !tbaa !51
  %.pre = ptrtoint ptr %i.v to i64
  br label %zend_arena_alloc.exit200

zend_arena_alloc.exit200:                         ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.l, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.o, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %i.e, %bb.b ], [ %i.s, %bb.c ] ; 4 uses
  %.0.i198 = phi ptr [ %i.f, %bb.b ], [ %i.t, %bb.c ] ; 15 uses
  %i.aa = shl nuw nsw i64 %i.g, 3                 ; 4 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %.pre-phi, %i.ab
  %.not.i193 = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i193, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %zend_arena_alloc.exit200
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !47
  br label %zend_arena_alloc.exit196

bb.e:                                             ; preds = %zend_arena_alloc.exit200
  %i.ae = add nuw nsw i64 %i.aa, 24
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %.pre-phi, %i.af
  %..i195 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ag) ; 2 uses
  %i.ah = tail call noalias ptr @_emalloc(i64 noundef %..i195) #5 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i195 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.z, ptr %i.am, align 8, !tbaa !50
  store ptr %i.ah, ptr %1, align 8, !tbaa !51
  %.pre275 = ptrtoint ptr %i.ak to i64
  br label %zend_arena_alloc.exit196

zend_arena_alloc.exit196:                         ; preds = %bb.d, %bb.e
  %.pre-phi276 = phi i64 [ %.pre-phi, %bb.d ], [ %.pre275, %bb.e ] ; 2 uses
  %i.an = phi ptr [ %i.ad, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ao = phi ptr [ %i.z, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %.0.i194 = phi ptr [ %i.y, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ap = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %i.ar = and i64 %i.aq, 34359738360              ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %.pre-phi276, %i.as
  %.not.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %zend_arena_alloc.exit196
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !47
  br label %.lr.ph

bb.g:                                             ; preds = %zend_arena_alloc.exit196
  %i.av = add nuw nsw i64 %i.ar, 24
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = sub i64 %.pre-phi276, %i.aw
  %..i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ax) ; 2 uses
  %i.ay = tail call noalias ptr @_emalloc(i64 noundef %..i) #5 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %..i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !50
  store ptr %i.ay, ptr %1, align 8, !tbaa !51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.0.i = phi ptr [ %i.an, %bb.f ], [ %i.az, %bb.g ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i, i8 -1, i64 %i.ap, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bi = add i32 %i.bh, -1
  %i.bj = zext i32 %i.bi to i64
  %.idx = shl nuw nsw i64 %i.bj, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %invariant.op = sub i32 -5, %i.d
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.0170205 = phi ptr [ %i.bk, %.lr.ph ], [ %i.bt, %bb.j ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0170205, i64 31
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !55
  %i.bn = and i8 %i.bm, 6
  %.not188 = icmp eq i8 %i.bn, 0
  br i1 %.not188, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.0170205, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !56
  %i.bq = lshr i32 %i.bp, 4
  %.reass.reass = add i32 %i.bq, %invariant.op
  %i.br = zext i32 %.reass.reass to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i194, i64 %i.br
  store ptr %.0170205, ptr %i.bs, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = getelementptr inbounds i8, ptr %.0170205, i64 -32 ; 2 uses
  %.not = icmp ult ptr %i.bt, %i.bf
  br i1 %.not, label %.lr.ph247, label %bb.h, !llvm.loop !12

.lr.ph247:                                        ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i198, i8 0, i64 %i.i, i1 false)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !52 ; 4 uses
  %i.bv = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bw = add i32 %i.bv, -1
  %i.bx = zext i32 %i.bw to i64
  %.idx254 = shl nuw nsw i64 %i.bx, 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx254
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not255 = icmp eq i32 %i.b, 0                  ; 3 uses
  %invariant.op328 = sub i32 -5, %i.d
  %invariant.op329 = sub i32 -5, %i.d
  %invariant.op330 = sub i32 -5, %i.d
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph247, %.thread
  %.0164245 = phi i32 [ -1, %.lr.ph247 ], [ %.9, %.thread ] ; 8 uses
  %.1171240 = phi ptr [ %i.by, %.lr.ph247 ], [ %i.jy, %.thread ] ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1171240, i64 29
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !59
  %i.cc = and i8 %i.cb, 6
  %.not177 = icmp eq i8 %i.cc, 0
  br i1 %.not177, label %.loopexit.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.1171240, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !56
  %i.cf = lshr i32 %i.ce, 4
  %.reass307.reass = add i32 %i.cf, %invariant.op328 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1171240, i64 28
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !60  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 56
  br i1 %i.ci, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.1171240, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !61
  %i.cl = add i32 %i.ck, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 8
  %i.cp = lshr i64 %i.co, 4                       ; 2 uses
  %i.cq = trunc nuw i64 %i.cp to i32              ; 6 uses
  %i.cr = icmp sgt i32 %.0164245, -1
  br i1 %i.cr, label %.lr.ph218.preheader, label %.critedge

.lr.ph218.preheader:                              ; preds = %bb.m
  %i.cs = zext nneg i32 %.0164245 to i64
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %bb.n
  %indvars.iv262 = phi i64 [ %i.cs, %.lr.ph218.preheader ], [ %indvars.iv.next263, %bb.n ] ; 5 uses
  %i.ct = lshr i64 %indvars.iv262, 6
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !62
  %i.cw = and i64 %indvars.iv262, 63
  %i.cx = lshr i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %.critedge.loopexit.split.loop.exit300, label %bb.n

bb.n:                                             ; preds = %.lr.ph218
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, -1
  %i.cz = icmp sgt i64 %indvars.iv262, 0
  br i1 %i.cz, label %.lr.ph218, label %.critedge, !llvm.loop !13

.critedge.loopexit.split.loop.exit300:            ; preds = %.lr.ph218
  %i.da = trunc nuw nsw i64 %indvars.iv262 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit300, %bb.m
  %.0162.lcssa = phi i32 [ %.0164245, %bb.m ], [ %i.da, %.critedge.loopexit.split.loop.exit300 ], [ -1, %bb.n ] ; 5 uses
  %i.db = add nsw i32 %.0162.lcssa, 1             ; 4 uses
  %i.dc = sext i32 %.reass307.reass to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.dc
  store i32 %i.db, ptr %i.dd, align 4, !tbaa !63
  %i.de = and i32 %i.db, 63
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = lshr i32 %i.db, 6
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !62
  %i.dl = or i64 %i.dk, %i.dg
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !62
  %i.dm = add nsw i32 %i.db, %i.d
  %i.dn = shl i32 %i.dm, 4
  %i.do = add i32 %i.dn, 80
  store i32 %i.do, ptr %i.cd, align 8, !tbaa !56
  %i.dp = icmp sgt i32 %i.cq, 1
  br i1 %i.dp, label %.lr.ph223.preheader, label %.loopexit

.lr.ph223.preheader:                              ; preds = %.critedge
  %i.dq = and i32 %i.cq, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph223.prol, label %.lr.ph223.prol.loopexit

.lr.ph223.prol:                                   ; preds = %.lr.ph223.preheader
  %i.dr = add nsw i32 %i.cq, -1
  %i.ds = add i32 %.0162.lcssa, %i.cq             ; 2 uses
  %i.dt = and i32 %i.ds, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = lshr i32 %i.ds, 6
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.dx ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !62
  %i.ea = or i64 %i.dz, %i.dv
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !62
  br label %.lr.ph223.prol.loopexit

.lr.ph223.prol.loopexit:                          ; preds = %.lr.ph223.prol, %.lr.ph223.preheader
  %.0163222.unr = phi i32 [ %i.cq, %.lr.ph223.preheader ], [ %i.dr, %.lr.ph223.prol ]
  %i.eb = icmp eq i64 %i.cp, 2
  br i1 %i.eb, label %.loopexit, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.prol.loopexit
  %invariant.op327 = add i32 -1, %.0162.lcssa
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223, %.lr.ph223.preheader.new
  %.0163222 = phi i32 [ %.0163222.unr, %.lr.ph223.preheader.new ], [ %i.el, %.lr.ph223 ] ; 4 uses
  %i.ec = add i32 %.0163222, %.0162.lcssa         ; 2 uses
  %i.ed = and i32 %i.ec, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = lshr i32 %i.ec, 6
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.eh ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !62
  %i.ek = or i64 %i.ej, %i.ef
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !62
  %i.el = add nsw i32 %.0163222, -2
  %.reass = add i32 %.0163222, %invariant.op327   ; 2 uses
  %i.em = and i32 %.reass, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = lshr i32 %.reass, 6
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.eq ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !62
  %i.et = or i64 %i.es, %i.eo
  store i64 %i.et, ptr %i.er, align 8, !tbaa !62
  %i.eu = icmp sgt i32 %.0163222, 3
  br i1 %i.eu, label %.lr.ph223, label %.loopexit, !llvm.loop !14

bb.o:                                             ; preds = %bb.l
  %i.ev = sext i32 %.reass307.reass to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !63 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ez = load i32, ptr %i.bz, align 4, !tbaa !64
  %i.fa = and i32 %i.ez, 32768
  %.not178 = icmp eq i32 %i.fa, 0
  br i1 %.not178, label %.critedge190, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i8 %i.ch, label %.critedge190 [
    i8 62, label %bb.r
    i8 -95, label %bb.r
    i8 111, label %bb.r
    i8 70, label %bb.r
    i8 127, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.fb = getelementptr inbounds i8, ptr %.1171240, i64 -32 ; 2 uses
  %.not179206 = icmp ult ptr %i.fb, %i.bu
  br i1 %.not179206, label %.critedge190, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.r, %bb.s
  %i.fc = phi ptr [ %i.ff, %bb.s ], [ %i.fb, %bb.r ] ; 2 uses
  %.0160207 = phi ptr [ %i.fc, %bb.s ], [ %.1171240, %bb.r ]
  %i.fd = getelementptr inbounds i8, ptr %.0160207, i64 -4
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !60
  switch i8 %i.fe, label %.critedge190 [
    i8 -94, label %bb.t
    i8 70, label %bb.s
    i8 127, label %bb.s
    i8 124, label %bb.s
    i8 -97, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph209, %.lr.ph209, %.lr.ph209, %.lr.ph209
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 -32 ; 2 uses
  %.not179 = icmp ult ptr %i.ff, %i.bu
  br i1 %.not179, label %.critedge190, label %.lr.ph209, !llvm.loop !15

bb.t:                                             ; preds = %.lr.ph209
  %i.fg = add nsw i32 %.0164245, 1                ; 4 uses
  %i.fh = and i32 %i.fg, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl nuw i64 1, %i.fi
  %i.fk = lshr i32 %i.fg, 6
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !62
  %i.fo = or i64 %i.fn, %i.fj
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !62
  br label %bb.v

.critedge190:                                     ; preds = %bb.s, %.lr.ph209, %bb.r, %bb.p, %bb.q
  br i1 %.not255, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %.critedge190, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %.critedge190 ] ; 4 uses
  %i.fp = lshr i64 %indvars.iv, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !62
  %i.fs = and i64 %indvars.iv, 63
  %i.ft = lshr i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i1
  br i1 %i.fu, label %bb.u, label %._crit_edge213.loopexit.split.loop.exit

bb.u:                                             ; preds = %.lr.ph212
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge213, label %.lr.ph212, !llvm.loop !16

._crit_edge213.loopexit.split.loop.exit:          ; preds = %.lr.ph212
  %i.fv = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %bb.u, %._crit_edge213.loopexit.split.loop.exit, %.critedge190
  %.0166.lcssa = phi i32 [ 0, %.critedge190 ], [ %i.fv, %._crit_edge213.loopexit.split.loop.exit ], [ %i.b, %bb.u ] ; 4 uses
  %i.fw = and i32 %.0166.lcssa, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = lshr i32 %.0166.lcssa, 6
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.ga ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !62
  %i.gd = or i64 %i.gc, %i.fy
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !62
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0166.lcssa, i32 %.0164245)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge213, %bb.t
  %.1167 = phi i32 [ %i.fg, %bb.t ], [ %.0166.lcssa, %._crit_edge213 ] ; 2 uses
  %.1165 = phi i32 [ %i.fg, %bb.t ], [ %spec.select, %._crit_edge213 ]
  store i32 %.1167, ptr %i.ew, align 4, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.ge = phi i32 [ %.1167, %bb.v ], [ %i.ex, %bb.o ]
  %.2 = phi i32 [ %.1165, %bb.v ], [ %.0164245, %bb.o ]
  %i.gf = add nsw i32 %i.ge, %i.d
  %i.gg = shl i32 %i.gf, 4
  %i.gh = add i32 %i.gg, 80
  store i32 %i.gh, ptr %i.cd, align 8, !tbaa !56
  br label %.loopexit.a

.loopexit:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %.critedge
  %2 = add nsw i32 %.0162.lcssa, %i.cq
  %3 = tail call i32 @llvm.smax.i32(i32 %.0164245, i32 %2)
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.loopexit, %bb.w, %bb.k
  %.3 = phi i32 [ %.0164245, %bb.k ], [ %.2, %bb.w ], [ %3, %.loopexit ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1171240, i64 30
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !65
  %i.gk = and i8 %i.gj, 6
  %.not185 = icmp eq i8 %i.gk, 0
  br i1 %.not185, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.loopexit.a
  %i.gl = getelementptr inbounds nuw i8, ptr %.1171240, i64 12 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !56
  %i.gn = lshr i32 %i.gm, 4
  %.reass309.reass = add i32 %i.gn, %invariant.op329
  %i.go = sext i32 %.reass309.reass to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !63 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, -1
  br i1 %i.gr, label %.preheader203, label %bb.z

.preheader203:                                    ; preds = %bb.x
  br i1 %.not255, label %._crit_edge226, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader203, %bb.y
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %bb.y ], [ 0, %.preheader203 ] ; 4 uses
  %i.gs = lshr i64 %indvars.iv265, 6
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !62
  %i.gv = and i64 %indvars.iv265, 63
  %i.gw = lshr i64 %i.gu, %i.gv
  %i.gx = trunc i64 %i.gw to i1
  br i1 %i.gx, label %bb.y, label %._crit_edge226.loopexit.split.loop.exit

bb.y:                                             ; preds = %.lr.ph225
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %i.g
  br i1 %exitcond269.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !17

._crit_edge226.loopexit.split.loop.exit:          ; preds = %.lr.ph225
  %i.gy = trunc nuw nsw i64 %indvars.iv265 to i32
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.y, %._crit_edge226.loopexit.split.loop.exit, %.preheader203
  %.2168.lcssa = phi i32 [ 0, %.preheader203 ], [ %i.gy, %._crit_edge226.loopexit.split.loop.exit ], [ %i.b, %bb.y ] ; 5 uses
  %i.gz = and i32 %.2168.lcssa, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = lshr i32 %.2168.lcssa, 6
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.hd ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !62
  %i.hg = or i64 %i.hf, %i.hb
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !62
  %spec.select191 = tail call i32 @llvm.smax.i32(i32 %.2168.lcssa, i32 %.3)
  store i32 %.2168.lcssa, ptr %i.gp, align 4, !tbaa !63
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge226, %bb.x
  %i.hh = phi i32 [ %.2168.lcssa, %._crit_edge226 ], [ %i.gq, %bb.x ]
  %.5 = phi i32 [ %spec.select191, %._crit_edge226 ], [ %.3, %bb.x ]
  %i.hi = add nsw i32 %i.hh, %i.d
  %i.hj = shl i32 %i.hi, 4
  %i.hk = add i32 %i.hj, 80
  store i32 %i.hk, ptr %i.gl, align 4, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit.a
  %.6 = phi i32 [ %.5, %bb.z ], [ %.3, %.loopexit.a ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1171240, i64 31
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !55
  %i.hn = and i8 %i.hm, 6
  %.not186 = icmp eq i8 %i.hn, 0
  br i1 %.not186, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ho = getelementptr inbounds nuw i8, ptr %.1171240, i64 16 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !56
  %i.hq = lshr i32 %i.hp, 4
  %.reass311.reass = add i32 %i.hq, %invariant.op330
  %i.hr = sext i32 %.reass311.reass to i64        ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.hr ; 3 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !63 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.ab
  br i1 %.not255, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %.preheader, %bb.ac
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %bb.ac ], [ 0, %.preheader ] ; 4 uses
  %i.hv = lshr i64 %indvars.iv270, 6
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !62
  %i.hy = and i64 %indvars.iv270, 63
  %i.hz = lshr i64 %i.hx, %i.hy
  %i.ia = trunc i64 %i.hz to i1
  br i1 %i.ia, label %bb.ac, label %._crit_edge232.loopexit.split.loop.exit

bb.ac:                                            ; preds = %.lr.ph231
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %i.g
  br i1 %exitcond274.not, label %._crit_edge232, label %.lr.ph231, !llvm.loop !18

._crit_edge232.loopexit.split.loop.exit:          ; preds = %.lr.ph231
  %i.ib = trunc nuw nsw i64 %indvars.iv270 to i32
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.ac, %._crit_edge232.loopexit.split.loop.exit, %.preheader
  %.3169.lcssa = phi i32 [ 0, %.preheader ], [ %i.ib, %._crit_edge232.loopexit.split.loop.exit ], [ %i.b, %bb.ac ] ; 5 uses
  %i.ic = and i32 %.3169.lcssa, 63
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl nuw i64 1, %i.id
  %i.if = lshr i32 %.3169.lcssa, 6
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !62
  %i.ij = or i64 %i.ii, %i.ie
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !62
  %spec.select192 = tail call i32 @llvm.smax.i32(i32 %.3169.lcssa, i32 %.6)
  store i32 %.3169.lcssa, ptr %i.hs, align 4, !tbaa !63
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge232, %bb.ab
  %i.ik = phi i32 [ %.3169.lcssa, %._crit_edge232 ], [ %i.ht, %bb.ab ]
  %.8 = phi i32 [ %spec.select192, %._crit_edge232 ], [ %.6, %bb.ab ] ; 5 uses
  %i.il = add nsw i32 %i.ik, %i.d
  %i.im = shl i32 %i.il, 4
  %i.in = add i32 %i.im, 80
  store i32 %i.in, ptr %i.ho, align 8, !tbaa !56
  %i.io = getelementptr inbounds [8 x i8], ptr %.0.i194, i64 %i.hr
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !57
  %i.iq = icmp eq ptr %i.ip, %.1171240
  br i1 %i.iq, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ir = getelementptr inbounds nuw i8, ptr %.1171240, i64 28
  %i.is = load i8, ptr %i.ir, align 4, !tbaa !60  ; 2 uses
  %.not187 = icmp eq i8 %i.is, -94
  br i1 %.not187, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.it = load i32, ptr %i.hs, align 4, !tbaa !63 ; 3 uses
  %i.iu = and i32 %i.it, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = xor i64 %i.iw, -1
  %i.iy = lshr i32 %i.it, 6
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.iz ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !62
  %i.jc = and i64 %i.jb, %i.ix
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !62
  %i.jd = icmp eq i8 %i.is, 54
  br i1 %i.jd, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.je = getelementptr inbounds nuw i8, ptr %.1171240, i64 20
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !61 ; 2 uses
  %i.jg = icmp ugt i32 %i.jf, 2
  br i1 %i.jg, label %.lr.ph238, label %.thread

.lr.ph238:                                        ; preds = %bb.ag
  %i.jh = zext i32 %i.jf to i64
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = add nuw nsw i64 %i.ji, 8
  %i.jk = lshr i64 %i.jj, 4
  %i.jl = trunc nuw i64 %i.jk to i32
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph238, %bb.ah
  %.0236 = phi i32 [ %i.jl, %.lr.ph238 ], [ %i.jm, %bb.ah ]
  %i.jm = add i32 %.0236, -1                      ; 3 uses
  %i.jn = add i32 %i.it, %i.jm                    ; 2 uses
  %i.jo = and i32 %i.jn, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nuw i64 1, %i.jp
  %i.jr = xor i64 %i.jq, -1
  %i.js = lshr i32 %i.jn, 6
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.0.i198, i64 %i.jt ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !62
  %i.jw = and i64 %i.jv, %i.jr
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !62
  %i.jx = icmp ugt i32 %i.jm, 1
  br i1 %i.jx, label %bb.ah, label %.thread, !llvm.loop !19

.thread:                                          ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.af, %bb.aa
  %.9 = phi i32 [ %.6, %bb.aa ], [ %.8, %bb.af ], [ %.8, %bb.ad ], [ %.8, %bb.ae ], [ %.8, %bb.ag ], [ %.8, %bb.ah ] ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.1171240, i64 -32 ; 2 uses
  %.not176 = icmp ult ptr %i.jy, %i.bu
  br i1 %.not176, label %._crit_edge248, label %bb.k, !llvm.loop !20

._crit_edge248:                                   ; preds = %.thread
  %i.jz = load ptr, ptr %1, align 8, !tbaa !51    ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !48
  %i.kc = icmp ule ptr %i.f, %i.kb
  %.not.i202250 = icmp ugt ptr %i.f, %i.jz
  %or.cond.i251 = and i1 %.not.i202250, %i.kc
  br i1 %or.cond.i251, label %zend_arena_release.exit, label %.critedge.i, !prof !66

.critedge.i:                                      ; preds = %._crit_edge248, %.critedge.i
  %.0.i201252 = phi ptr [ %i.ke, %.critedge.i ], [ %i.jz, %._crit_edge248 ] ; 2 uses
end_hunk_0
