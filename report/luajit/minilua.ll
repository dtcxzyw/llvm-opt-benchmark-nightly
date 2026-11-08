Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@luaB_next:bb.a

bb.e:                                             ; preds = %.thread28.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  br label %mainposition.exit.split.us.preheader.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.thread28.i.i.i
  %.sroa.0.4.extract.shift.i.i.i.i.i = lshr i64 %i.v, 32
  %i.ae = add i64 %.sroa.0.4.extract.shift.i.i.i.i.i, %i.v
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %i.ah = and i64 %i.ae, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !120
  %i.ak = zext nneg i8 %i.aj to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ak
  %i.al = xor i64 %notmask.i.i.i.i.i, -1
  %i.am = or i64 %i.al, 1
  %i.an = urem i64 %i.ah, %i.am
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.an
  br label %mainposition.exit.split.us.preheader.i.i.i

mainposition.exit.thread48.i.i.i:                 ; preds = %lua_settop.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 2 uses
  %i.ar = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !120
  %i.aw = zext nneg i8 %i.av to i64
  %notmask17.i.i.i.i = shl nsw i64 -1, %i.aw
  %i.ax = trunc i64 %notmask17.i.i.i.i to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %i.at, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [40 x i8], ptr %i.aq, i64 %i.ba
  br label %mainposition.exit.split.preheader.i.i.i

bb.f:                                             ; preds = %lua_settop.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 2 uses
  %i.be = load i32, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !120
  %i.bh = zext nneg i8 %i.bg to i64
  %notmask16.i.i.i.i = shl nsw i64 -1, %i.bh
  %i.bi = trunc i64 %notmask16.i.i.i.i to i32
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %i.be, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [40 x i8], ptr %i.bd, i64 %i.bl
  br label %mainposition.exit.split.us.preheader.i.i.i

bb.g:                                             ; preds = %lua_settop.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !103 ; 2 uses
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !120
  %i.bu = zext nneg i8 %i.bt to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.bu
  %i.bv = xor i64 %notmask.i.i.i.i, -1
  %i.bw = or i64 %i.bv, 1
  %i.bx = urem i64 %i.br, %i.bw
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.bx
  %i.bz = trunc i64 %i.bq to i32
  br label %mainposition.exit.split.us.preheader.i.i.i

mainposition.exit.i.i.i:                          ; preds = %lua_settop.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !103 ; 3 uses
  %i.cc = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !120
  %i.ch = zext nneg i8 %i.cg to i64
  %notmask18.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = xor i64 %notmask18.i.i.i.i, -1
  %i.cj = or i64 %i.ci, 1
  %i.ck = urem i64 %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.ck ; 2 uses
  %i.cm = trunc i64 %i.cd to i32
  %i.cn = icmp sgt i32 %i.q, 3
  br i1 %i.cn, label %mainposition.exit.split.preheader.i.i.i, label %mainposition.exit.split.us.preheader.i.i.i

mainposition.exit.split.us.preheader.i.i.i:       ; preds = %mainposition.exit.i.i.i, %bb.g, %bb.f, %.critedge.i.i.i.i.i, %bb.e
  %.0.i47.i.i.i = phi ptr [ %i.cl, %mainposition.exit.i.i.i ], [ %i.ao, %.critedge.i.i.i.i.i ], [ %i.ad, %bb.e ], [ %i.bm, %bb.f ], [ %i.by, %bb.g ]
  %i.co = phi i32 [ %i.cm, %mainposition.exit.i.i.i ], [ %i.w, %.critedge.i.i.i.i.i ], [ %i.w, %bb.e ], [ %i.be, %bb.f ], [ %i.bz, %bb.g ]
  %i.cp = phi ptr [ %i.cb, %mainposition.exit.i.i.i ], [ %i.ag, %.critedge.i.i.i.i.i ], [ %i.ad, %bb.e ], [ %i.bd, %bb.f ], [ %i.bo, %bb.g ] ; 5 uses
  br label %mainposition.exit.split.us.i.i.i

mainposition.exit.split.preheader.i.i.i:          ; preds = %mainposition.exit.i.i.i, %mainposition.exit.thread48.i.i.i
  %i.cq = phi ptr [ %i.ar, %mainposition.exit.thread48.i.i.i ], [ %i.cc, %mainposition.exit.i.i.i ] ; 2 uses
  %.0.i50.i.i.i = phi ptr [ %i.bb, %mainposition.exit.thread48.i.i.i ], [ %i.cl, %mainposition.exit.i.i.i ]
  %i.cr = phi ptr [ %i.aq, %mainposition.exit.thread48.i.i.i ], [ %i.cb, %mainposition.exit.i.i.i ] ; 2 uses
  br label %mainposition.exit.split.i.i.i

mainposition.exit.split.us.i.i.i:                 ; preds = %luaO_rawequalObj.exit.thread.us.i.i.i, %mainposition.exit.split.us.preheader.i.i.i
  %i.cs = phi i32 [ %i.dn, %luaO_rawequalObj.exit.thread.us.i.i.i ], [ %i.co, %mainposition.exit.split.us.preheader.i.i.i ] ; 3 uses
  %.0.us.i.i.i = phi ptr [ %i.dp, %luaO_rawequalObj.exit.thread.us.i.i.i ], [ %.0.i47.i.i.i, %mainposition.exit.split.us.preheader.i.i.i ] ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !99
  %.not.i.us.i.i.i = icmp eq i32 %i.cv, %i.q
  br i1 %.not.i.us.i.i.i, label %bb.h, label %luaO_rawequalObj.exit.thread.us.i.i.i

bb.h:                                             ; preds = %mainposition.exit.split.us.i.i.i
  switch i32 %i.q, label %luaO_rawequalObj.exit.us.i.i.i [
    i32 0, label %luaO_rawequalObj.exit.thread32.i.i.i
    i32 3, label %.split51.i.i.i
    i32 1, label %.split52.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.h
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !81
  %i.cx = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = trunc i64 %i.cz to i32
  br i1 %i.cy, label %luaO_rawequalObj.exit.thread32.i.i.i, label %luaO_rawequalObj.exit.thread.us.i.i.i

.split52.i.i.i:                                   ; preds = %bb.h
  %i.db = load i32, ptr %i.ct, align 8, !tbaa !81
  %i.dc = icmp eq i32 %i.db, %i.cs
  br i1 %i.dc, label %luaO_rawequalObj.exit.thread32.i.i.i, label %luaO_rawequalObj.exit.thread.us.i.i.i

.split51.i.i.i:                                   ; preds = %bb.h
  %i.dd = load double, ptr %i.ct, align 8, !tbaa !81
  %i.de = load double, ptr %i.o, align 8          ; 2 uses
  %i.df = fcmp oeq double %i.dd, %i.de
  %i.dg = bitcast double %i.de to i64
  %i.dh = trunc i64 %i.dg to i32
  br i1 %i.df, label %luaO_rawequalObj.exit.thread32.i.i.i, label %luaO_rawequalObj.exit.thread.us.i.i.i

luaO_rawequalObj.exit.us.i.i.i:                   ; preds = %bb.h
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !81
  %i.dj = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = trunc i64 %i.dl to i32
  br i1 %i.dk, label %luaO_rawequalObj.exit.thread32.i.i.i, label %luaO_rawequalObj.exit.thread.us.i.i.i

luaO_rawequalObj.exit.thread.us.i.i.i:            ; preds = %luaO_rawequalObj.exit.us.i.i.i, %.split51.i.i.i, %.split52.i.i.i, %.split.i.i.i, %mainposition.exit.split.us.i.i.i
  %i.dn = phi i32 [ %i.dm, %luaO_rawequalObj.exit.us.i.i.i ], [ %i.cs, %mainposition.exit.split.us.i.i.i ], [ %i.da, %.split.i.i.i ], [ %i.dh, %.split51.i.i.i ], [ %i.cs, %.split52.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81 ; 2 uses
  %.not25.us.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not25.us.i.i.i, label %.split.us.i.i.i, label %mainposition.exit.split.us.i.i.i, !llvm.loop !428

mainposition.exit.split.i.i.i:                    ; preds = %bb.j, %mainposition.exit.split.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.ei, %bb.j ], [ %.0.i50.i.i.i, %mainposition.exit.split.preheader.i.i.i ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ds, %i.q
  br i1 %.not.i.i.i.i, label %luaO_rawequalObj.exit.i.i.i, label %luaO_rawequalObj.exit.thread.i.i.i

luaO_rawequalObj.exit.i.i.i:                      ; preds = %mainposition.exit.split.i.i.i
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !81
  %i.du = icmp eq ptr %i.dt, %i.cq
  br i1 %i.du, label %luaO_rawequalObj.exit.thread32.i.i.i, label %luaO_rawequalObj.exit.thread.i.i.i

luaO_rawequalObj.exit.thread.i.i.i:               ; preds = %luaO_rawequalObj.exit.i.i.i, %mainposition.exit.split.i.i.i
  %i.dv = icmp eq i32 %i.ds, 11
  br i1 %i.dv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %luaO_rawequalObj.exit.thread.i.i.i
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !81
  %i.dx = icmp eq ptr %i.dw, %i.cq
  br i1 %i.dx, label %luaO_rawequalObj.exit.thread32.i.i.i, label %bb.j

luaO_rawequalObj.exit.thread32.i.i.i:             ; preds = %luaO_rawequalObj.exit.us.i.i.i, %.split51.i.i.i, %.split52.i.i.i, %.split.i.i.i, %bb.h, %bb.i, %luaO_rawequalObj.exit.i.i.i
  %i.dy = phi ptr [ %i.cr, %bb.i ], [ %i.cr, %luaO_rawequalObj.exit.i.i.i ], [ %i.cp, %bb.h ], [ %i.cp, %.split.i.i.i ], [ %i.cp, %.split52.i.i.i ], [ %i.cp, %.split51.i.i.i ], [ %i.cp, %luaO_rawequalObj.exit.us.i.i.i ]
  %.us-phi.i.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i, %luaO_rawequalObj.exit.i.i.i ], [ %.0.us.i.i.i, %bb.h ], [ %.0.us.i.i.i, %.split.i.i.i ], [ %.0.us.i.i.i, %.split52.i.i.i ], [ %.0.us.i.i.i, %.split51.i.i.i ], [ %.0.us.i.i.i, %luaO_rawequalObj.exit.us.i.i.i ]
  %i.dz = ptrtoint ptr %.us-phi.i.i.i to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 40
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !118 ; 2 uses
  %i.eg = add nsw i32 %i.ef, %i.ed
  br label %findindex.exit.i.i

bb.j:                                             ; preds = %bb.i, %luaO_rawequalObj.exit.thread.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !81 ; 2 uses
  %.not25.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not25.i.i.i, label %.split.us.i.i.i, label %mainposition.exit.split.i.i.i, !llvm.loop !428

.split.us.i.i.i:                                  ; preds = %luaO_rawequalObj.exit.thread.us.i.i.i, %bb.j
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.187)
  unreachable

findindex.exit.i.i:                               ; preds = %luaO_rawequalObj.exit.thread32.i.i.i, %bb.d, %.findindex.exit_crit_edge.i.i
  %i.ej = phi i32 [ %.pre.i.i, %.findindex.exit_crit_edge.i.i ], [ %i.z, %bb.d ], [ %i.ef, %luaO_rawequalObj.exit.thread32.i.i.i ] ; 3 uses
  %.1.i.i.i = phi i32 [ -1, %.findindex.exit_crit_edge.i.i ], [ %i.aa, %bb.d ], [ %i.eg, %luaO_rawequalObj.exit.thread32.i.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.el = sext i32 %.1.i.i.i to i64               ; 3 uses
  %i.em = sext i32 %i.ej to i64                   ; 3 uses
  %reass.sub.i = sub i32 %.1.i.i.i, %i.ej
  %i.en = add nsw i64 %i.el, 1
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.en, i64 %i.em)
  %indvars.iv67.i.i54 = add i32 %reass.sub.i, 1   ; 2 uses
  %indvars.iv.next.i.i55 = add nsw i64 %i.el, 1   ; 2 uses
  %i.eo = icmp slt i64 %indvars.iv.next.i.i55, %i.em
  br i1 %i.eo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %findindex.exit.i.i
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !119
  br label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv67.i.i = add i32 %indvars.iv67.i.i57, 1 ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i58, 1 ; 2 uses
  %i.eq = icmp slt i64 %indvars.iv.next.i.i, %i.em
  br i1 %i.eq, label %.lr.ph, label %._crit_edge, !llvm.loop !429

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv.next.i.i58 = phi i64 [ %indvars.iv.next.i.i, %bb.k ], [ %indvars.iv.next.i.i55, %.lr.ph.preheader ] ; 4 uses
  %indvars.iv67.i.i57 = phi i32 [ %indvars.iv67.i.i, %bb.k ], [ %indvars.iv67.i.i54, %.lr.ph.preheader ]
  %indvars.iv.i.i56 = phi i64 [ %indvars.iv.next.i.i58, %bb.k ], [ %i.el, %.lr.ph.preheader ]
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %indvars.iv.next.i.i58
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !99
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.k, label %bb.l, !llvm.loop !429

bb.l:                                             ; preds = %.lr.ph
  %i.ev = trunc nsw i64 %indvars.iv.i.i56 to i32
  %i.ew = add nsw i32 %i.ev, 2
  %i.ex = sitofp i32 %i.ew to double
  store double %i.ex, ptr %i.o, align 8, !tbaa !81
  store i32 3, ptr %i.p, align 8, !tbaa !99
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !119
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i58
  br label %lua_next.exit

._crit_edge:                                      ; preds = %bb.k, %findindex.exit.i.i
  %indvars.iv67.i.i.lcssa = phi i32 [ %indvars.iv67.i.i54, %findindex.exit.i.i ], [ %indvars.iv67.i.i, %bb.k ]
  %i.fa = trunc nsw i64 %smax.i to i32
  %i.fb = sub nsw i32 %i.fa, %i.ej
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !120
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fh = icmp slt i32 %i.fb, %i.fg
  br i1 %i.fh, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !103
  %i.fk = zext i32 %indvars.iv67.i.i.lcssa to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %i.fl = trunc nuw i64 %indvars.iv.next71.i.i to i32
  %i.fm = icmp slt i32 %i.fl, %i.fg
  br i1 %i.fm, label %bb.n, label %.loopexit, !llvm.loop !430

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv70.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ %indvars.iv.next71.i.i, %bb.m ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fj, i64 %indvars.iv70.i.i ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !185
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !81
  store i64 %i.fs, ptr %i.o, align 8, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !99
  store i32 %i.fu, ptr %i.p, align 8, !tbaa !99
  %i.fv = load ptr, ptr %i.fi, align 8, !tbaa !103
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fv, i64 %indvars.iv70.i.i
  br label %lua_next.exit

lua_next.exit:                                    ; preds = %bb.l, %bb.o
  %storemerge12.in.i = phi ptr [ %i.ez, %bb.l ], [ %i.fw, %bb.o ] ; 2 uses
  %storemerge12.i = load i64, ptr %storemerge12.in.i, align 8, !tbaa !81
  store i64 %storemerge12.i, ptr %i.h, align 8, !tbaa !81
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge12.in.i, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !99
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !99
  %i.ga = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  br label %bb.p

.loopexit:                                        ; preds = %bb.m, %._crit_edge
  store i32 0, ptr %i.p, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %lua_next.exit, %.loopexit
  %storemerge = phi ptr [ %i.h, %.loopexit ], [ %i.gb, %lua_next.exit ]
  %.0 = phi i32 [ 1, %.loopexit ], [ 2, %lua_next.exit ]
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !95
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @lua_setmetatable(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2, 3) %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %.not28.i = icmp ult ptr %i.f, %i.h
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.f, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %.luaO_nilobject_.i, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %index2adr.exit
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %index2adr.exit, %bb.d
  %.0 = phi ptr [ %i.r, %bb.d ], [ null, %index2adr.exit ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  switch i32 %i.t, label %bb.p [
    i32 5, label %bb.f
    i32 7, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0, ptr %i.v, align 8, !tbaa !81
  %.not25 = icmp eq ptr %.0, null
  br i1 %.not25, label %luaC_barrierf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !81
  %i.y = and i8 %i.x, 3
  %.not26 = icmp eq i8 %i.y, 0
  br i1 %.not26, label %luaC_barrierf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.1.i, align 8, !tbaa !81  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !81  ; 2 uses
  %i.ac = and i8 %i.ab, 4
  %.not27 = icmp eq i8 %i.ac, 0
  br i1 %.not27, label %luaC_barrierf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.ae = and i8 %i.ab, -5
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !105
  store ptr %i.z, ptr %i.af, align 8, !tbaa !104
  br label %luaC_barrierf.exit

bb.j:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.0, ptr %i.aj, align 8, !tbaa !81
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %luaC_barrierf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = and i8 %i.al, 3
  %.not23 = icmp eq i8 %i.am, 0
  br i1 %.not23, label %luaC_barrierf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 9 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81  ; 2 uses
  %i.aq = and i8 %i.ap, 4
  %.not24 = icmp eq i8 %i.aq, 0
  br i1 %.not24, label %luaC_barrierf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val28, i64 33
  %i.at = load i8, ptr %i.as, align 1, !tbaa !85
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %.val28, ptr noundef nonnull %.0)
  br label %luaC_barrierf.exit

bb.o:                                             ; preds = %bb.m
  %i.av = and i8 %i.ap, -8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val28, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !67
  %i.ay = and i8 %i.ax, 3
  %i.az = or disjoint i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.ao, align 1, !tbaa !81
  br label %luaC_barrierf.exit

bb.p:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  %i.bd = sext i32 %i.t to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr %.0, ptr %i.be, align 8, !tbaa !94
  br label %luaC_barrierf.exit

luaC_barrierf.exit:                               ; preds = %bb.o, %bb.n, %bb.j, %bb.l, %bb.k, %bb.f, %bb.i, %bb.h, %bb.g, %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @luaB_newproxy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.d
end_hunk_0
