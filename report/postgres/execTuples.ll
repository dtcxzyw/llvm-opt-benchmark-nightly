Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/execTuples?download=true
inline.NumInlined: 151
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@tts_heap_getsomeattrs:bb.a

bb.e:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bx = icmp slt i32 %i.k, %1
  br i1 %i.bx, label %bb.f, label %populate_isnull_array.exit

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = and i16 %i.bz, 2047
  %i.cb = zext nneg i16 %i.ca to i32
  %.144.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.cb) ; 2 uses
  br label %populate_isnull_array.exit

populate_isnull_array.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %populate_isnull_array.exit, label %.lr.ph.i6.epil.preheader

.lr.ph.i6.epil.preheader:                         ; preds = %populate_isnull_array.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i4
  %indvars.iv.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader.i4 ], [ %indvars.iv.next.i8.1, %populate_isnull_array.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %i.i, %.lr.ph.preheader.i4 ], [ %i.bv, %populate_isnull_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i7.epil.init
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = xor i8 %i.cd, -1
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = and i32 %i.cf, 15
  %i.ch = mul nuw nsw i32 %i.cg, 2113665
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = lshr i32 %i.cf, 4
  %i.ck = mul nuw nsw i32 %i.cj, 2113665
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.cm, %i.ci
  %i.co = and i64 %i.cn, 72340172838076673
  store i64 %i.co, ptr %.013.i.epil.init, align 1
  br label %populate_isnull_array.exit

populate_isnull_array.exit:                       ; preds = %.lr.ph.i6.epil.preheader, %populate_isnull_array.exit.loopexit.unr-lcssa, %first_null_attr.exit, %bb.f, %bb.e, %bb.b
  %.0128.i = phi i32 [ %1, %bb.e ], [ %i.y, %bb.b ], [ %.144.i, %bb.f ], [ %i.ao, %first_null_attr.exit ], [ %i.ao, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i6.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %1, %bb.e ], [ %i.y, %bb.b ], [ %.144.i, %bb.f ], [ %i.y, %first_null_attr.exit ], [ %i.y, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.y, %.lr.ph.i6.epil.preheader ]
  %.0126.i = phi ptr [ %i.bw, %bb.e ], [ %i.x, %bb.b ], [ %i.bw, %bb.f ], [ %i.x, %first_null_attr.exit ], [ %i.x, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.i6.epil.preheader ] ; 12 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = sext i16 %i.cq to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cu = trunc i32 %1 to i16
  store i16 %i.cu, ptr %i.cp, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.cw = sext i32 %..i to i64                    ; 3 uses
  %i.cx = icmp ult i64 %i.cr, %i.cw
  br i1 %i.cx, label %.preheader33, label %bb.l

.preheader33:                                     ; preds = %populate_isnull_array.exit, %fetch_att_noerr.exit
  %.0129.i = phi i64 [ %i.dp, %fetch_att_noerr.exit ], [ %i.cr, %populate_isnull_array.exit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0129.i
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0129.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2            ; 3 uses
  %i.dc = icmp sgt i16 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = load i16, ptr %i.cz, align 2
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.df ; 4 uses
  switch i16 %i.db, label %bb.j [
    i16 4, label %bb.g
    i16 2, label %bb.h
    i16 1, label %bb.i
  ]

bb.g:                                             ; preds = %.preheader33
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  br label %fetch_att_noerr.exit

bb.h:                                             ; preds = %.preheader33
  %i.dj = load i16, ptr %i.dg, align 2
  %i.dk = sext i16 %i.dj to i64
  br label %fetch_att_noerr.exit

bb.i:                                             ; preds = %.preheader33
  %i.dl = load i8, ptr %i.dg, align 1
  %i.dm = sext i8 %i.dl to i64
  br label %fetch_att_noerr.exit

bb.j:                                             ; preds = %.preheader33
  %i.dn = load i64, ptr %i.dg, align 8
  br label %fetch_att_noerr.exit

fetch_att_noerr.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.dn, %bb.j ], [ %i.di, %bb.g ], [ %i.dk, %bb.h ], [ %i.dm, %bb.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.0129.i
  store i64 %.0.i, ptr %i.do, align 8
  %i.dp = add nuw i64 %.0129.i, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.cw
  br i1 %exitcond.not, label %bb.k, label %.preheader33, !llvm.loop !14

bb.k:                                             ; preds = %fetch_att_noerr.exit
  %i.dq = zext nneg i16 %i.db to i32
  %i.dr = add nsw i32 %i.de, %i.dq                ; 2 uses
  %.not = icmp sgt i32 %1, %i.k
  br i1 %.not, label %bb.m, label %bb.bd

bb.l:                                             ; preds = %populate_isnull_array.exit
  %i.ds = load i32, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.dr, %bb.k ], [ %i.ds, %bb.l ]
  %.1130.i = phi i64 [ %i.cw, %bb.k ], [ %i.cr, %bb.l ] ; 3 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %.0128.i)
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = icmp ult i64 %.1130.i, %i.du
  br i1 %i.dv, label %.preheader32, label %bb.u

.preheader32:                                     ; preds = %bb.m, %fetch_att_noerr.exit11
  %.2.i = phi i64 [ %i.eq, %fetch_att_noerr.exit11 ], [ %.1130.i, %bb.m ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2.i
  store i8 0, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.2.i ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = load i16, ptr %i.dx, align 2
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ef = load i8, ptr %i.ee, align 2, !range !5, !noundef !6
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.preheader32
  switch i16 %i.dz, label %bb.r [
    i16 4, label %bb.o
    i16 2, label %bb.p
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.eh = load i32, ptr %i.ed, align 4
  %i.ei = sext i32 %i.eh to i64
  br label %fetch_att_noerr.exit11

bb.p:                                             ; preds = %bb.n
  %i.ej = load i16, ptr %i.ed, align 2
  %i.ek = sext i16 %i.ej to i64
  br label %fetch_att_noerr.exit11

bb.q:                                             ; preds = %bb.n
  %i.el = load i8, ptr %i.ed, align 1
  %i.em = sext i8 %i.el to i64
  br label %fetch_att_noerr.exit11

bb.r:                                             ; preds = %bb.n
  %i.en = load i64, ptr %i.ed, align 8
  br label %fetch_att_noerr.exit11

bb.s:                                             ; preds = %.preheader32
  %i.eo = ptrtoint ptr %i.ed to i64
  br label %fetch_att_noerr.exit11

fetch_att_noerr.exit11:                           ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i10 = phi i64 [ %i.en, %bb.r ], [ %i.ei, %bb.o ], [ %i.ek, %bb.p ], [ %i.em, %bb.q ], [ %i.eo, %bb.s ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.2.i
  store i64 %.0.i10, ptr %i.ep, align 8
  %i.eq = add nuw i64 %.2.i, 1                    ; 2 uses
  %exitcond58.not = icmp eq i64 %i.eq, %i.du
  br i1 %exitcond58.not, label %bb.t, label %.preheader32, !llvm.loop !15

bb.t:                                             ; preds = %fetch_att_noerr.exit11
  %i.er = sext i16 %i.dz to i32
  %i.es = add nsw i32 %i.eb, %i.er
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.1 = phi i32 [ %i.es, %bb.t ], [ %.0, %bb.m ]  ; 2 uses
  %.3.i = phi i64 [ %i.du, %bb.t ], [ %.1130.i, %bb.m ] ; 3 uses
  %i.et = sext i32 %.0128.i to i64                ; 3 uses
  %i.eu = icmp ult i64 %.3.i, %i.et
  br i1 %i.eu, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %align_fetch_then_add.exit, %bb.u
  %.2.lcssa = phi i32 [ %.1, %bb.u ], [ %.6, %align_fetch_then_add.exit ] ; 2 uses
  %.4.i.lcssa = phi i64 [ %.3.i, %bb.u ], [ %i.et, %align_fetch_then_add.exit ] ; 3 uses
  %i.ev = sext i32 %.1.i to i64                   ; 3 uses
  %i.ew = icmp ult i64 %.4.i.lcssa, %i.ev
  br i1 %i.ew, label %.lr.ph47, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u, %align_fetch_then_add.exit
  %.4.i43 = phi i64 [ %i.hj, %align_fetch_then_add.exit ], [ %.3.i, %bb.u ] ; 4 uses
  %.242 = phi i32 [ %.6, %align_fetch_then_add.exit ], [ %.1, %bb.u ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 %.4.i43
  store i8 0, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.4.i43 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i16, ptr %i.ez, align 2            ; 4 uses
  %i.fb = icmp sgt i16 %i.fa, 0                   ; 2 uses
  %2 = icmp eq i16 %i.fa, -1                      ; 2 uses
  %or.cond.i = or i1 %i.fb, %2
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 5
  %i.fd = load i8, ptr %i.fc, align 1             ; 3 uses
  br i1 %i.fb, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.lr.ph
  %i.fe = zext nneg i16 %i.fa to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fg = load i8, ptr %i.ff, align 2, !range !5, !noundef !6
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = zext i8 %i.fd to i32                    ; 2 uses
  %i.fj = add i32 %.242, -1
  %i.fk = add i32 %i.fj, %i.fi
  %i.fl = sub nsw i32 0, %i.fi
  %i.fm = and i32 %i.fk, %i.fl                    ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.fn ; 5 uses
  %i.fp = add i32 %i.fm, %i.fe                    ; 5 uses
  br i1 %i.fh, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  switch i16 %i.fa, label %bb.aa [
    i16 1, label %bb.x
    i16 2, label %bb.y
    i16 4, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.fq = load i8, ptr %i.fo, align 1
  %i.fr = sext i8 %i.fq to i64
  br label %align_fetch_then_add.exit

bb.y:                                             ; preds = %bb.w
  %i.fs = load i16, ptr %i.fo, align 2
  %i.ft = sext i16 %i.fs to i64
  br label %align_fetch_then_add.exit

bb.z:                                             ; preds = %bb.w
  %i.fu = load i32, ptr %i.fo, align 4
  %i.fv = sext i32 %i.fu to i64
  br label %align_fetch_then_add.exit

bb.aa:                                            ; preds = %bb.w
  %i.fw = load i64, ptr %i.fo, align 8
  br label %align_fetch_then_add.exit

bb.ab:                                            ; preds = %bb.v
  %i.fx = ptrtoint ptr %i.fo to i64
  br label %align_fetch_then_add.exit

bb.ac:                                            ; preds = %.lr.ph
  br i1 %2, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.fy = zext i32 %.242 to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.fy
  %.val.i = load i8, ptr %i.fz, align 1           ; 2 uses
  %i.ga = trunc i8 %.val.i to i1
  br i1 %i.ga, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gb = zext i8 %i.fd to i32                    ; 2 uses
  %i.gc = add i32 %.242, -1
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = sub nsw i32 0, %i.gb
  %i.gf = and i32 %i.gd, %i.ge                    ; 2 uses
  %.pre.i = zext i32 %i.gf to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre.i
  %.pre40.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gg = phi i8 [ %.pre40.i, %bb.ae ], [ %.val.i, %bb.ad ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ae ], [ %i.fy, %bb.ad ]
  %i.gh = phi i32 [ %i.gf, %bb.ae ], [ %.242, %bb.ad ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre-phi.i ; 3 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = zext i8 %i.gg to i32                    ; 2 uses
  %i.gl = icmp eq i8 %i.gg, 1
  br i1 %i.gl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gm = getelementptr i8, ptr %i.gi, i64 1
  %.val.i.i = load i8, ptr %i.gm, align 1         ; 2 uses
  %i.gn = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.gn, 3
  %i.go = icmp eq i8 %.val.i.i, 18
  %i.gp = select i1 %i.go, i32 18, i32 2
  %i.gq = select i1 %or.cond.i.i.i.i, i32 10, i32 %i.gp
  br label %VARSIZE_ANY.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gr = and i32 %i.gk, 1
  %.not.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gs = lshr i32 %i.gk, 1
  br label %VARSIZE_ANY.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gt = load i32, ptr %i.gi, align 4
  %i.gu = lshr i32 %i.gt, 2
  br label %VARSIZE_ANY.exit.i

VARSIZE_ANY.exit.i:                               ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i.i = phi i32 [ %i.gq, %bb.ag ], [ %i.gs, %bb.ai ], [ %i.gu, %bb.aj ]
  %i.gv = add i32 %.0.i.i, %i.gh
  br label %align_fetch_then_add.exit

bb.ak:                                            ; preds = %bb.ac
  %i.gw = zext i8 %i.fd to i32                    ; 2 uses
  %i.gx = add i32 %.242, -1
  %i.gy = add i32 %i.gx, %i.gw
  %i.gz = sub nsw i32 0, %i.gw
  %i.ha = and i32 %i.gy, %i.gz                    ; 2 uses
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.hb ; 2 uses
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #15
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.ha, 1
  %i.hh = add i32 %i.hg, %i.hf
  br label %align_fetch_then_add.exit

align_fetch_then_add.exit:                        ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %VARSIZE_ANY.exit.i, %bb.ak
  %.6 = phi i32 [ %i.fp, %bb.aa ], [ %i.fp, %bb.x ], [ %i.fp, %bb.y ], [ %i.fp, %bb.z ], [ %i.fp, %bb.ab ], [ %i.gv, %VARSIZE_ANY.exit.i ], [ %i.hh, %bb.ak ] ; 2 uses
  %.1.i12 = phi i64 [ %i.fw, %bb.aa ], [ %i.fr, %bb.x ], [ %i.ft, %bb.y ], [ %i.fv, %bb.z ], [ %i.fx, %bb.ab ], [ %i.gj, %VARSIZE_ANY.exit.i ], [ %i.hd, %bb.ak ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.4.i43
  store i64 %.1.i12, ptr %i.hi, align 8
  %i.hj = add nuw i64 %.4.i43, 1                  ; 2 uses
  %exitcond59.not = icmp eq i64 %i.hj, %i.et
  br i1 %exitcond59.not, label %.preheader, label %.lr.ph, !llvm.loop !16

.lr.ph47:                                         ; preds = %.preheader, %align_fetch_then_add.exit24
  %.5.i46 = phi i64 [ %i.jy, %align_fetch_then_add.exit24 ], [ %.4.i.lcssa, %.preheader ] ; 4 uses
  %.345 = phi i32 [ %.5, %align_fetch_then_add.exit24 ], [ %.2.lcssa, %.preheader ] ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 %.5.i46
  %i.hl = load i8, ptr %i.hk, align 1, !range !5, !noundef !6
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %align_fetch_then_add.exit24, label %bb.al

bb.al:                                            ; preds = %.lr.ph47
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.5.i46 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = load i16, ptr %i.ho, align 2            ; 4 uses
  %i.hq = icmp sgt i16 %i.hp, 0                   ; 2 uses
  %3 = icmp eq i16 %i.hp, -1                      ; 2 uses
  %or.cond3.i = or i1 %i.hq, %3
  tail call void @llvm.assume(i1 %or.cond3.i)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 5
  %i.hs = load i8, ptr %i.hr, align 1             ; 3 uses
  br i1 %i.hq, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.ht = zext nneg i16 %i.hp to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hv = load i8, ptr %i.hu, align 2, !range !5, !noundef !6
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = zext i8 %i.hs to i32                    ; 2 uses
  %i.hy = add i32 %.345, -1
  %i.hz = add i32 %i.hy, %i.hx
  %i.ia = sub nsw i32 0, %i.hx
  %i.ib = and i32 %i.hz, %i.ia                    ; 2 uses
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.ic ; 5 uses
  %i.ie = add i32 %i.ib, %i.ht                    ; 5 uses
  br i1 %i.hw, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  switch i16 %i.hp, label %bb.ar [
    i16 1, label %bb.ao
    i16 2, label %bb.ap
    i16 4, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.if = load i8, ptr %i.id, align 1
  %i.ig = sext i8 %i.if to i64
  br label %align_fetch_then_add.exit24

bb.ap:                                            ; preds = %bb.an
  %i.ih = load i16, ptr %i.id, align 2
  %i.ii = sext i16 %i.ih to i64
  br label %align_fetch_then_add.exit24

bb.aq:                                            ; preds = %bb.an
  %i.ij = load i32, ptr %i.id, align 4
  %i.ik = sext i32 %i.ij to i64
  br label %align_fetch_then_add.exit24

bb.ar:                                            ; preds = %bb.an
  %i.il = load i64, ptr %i.id, align 8
  br label %align_fetch_then_add.exit24

bb.as:                                            ; preds = %bb.am
  %i.im = ptrtoint ptr %i.id to i64
  br label %align_fetch_then_add.exit24

bb.at:                                            ; preds = %bb.al
  br i1 %3, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.in = zext i32 %.345 to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.in
  %.val.i14 = load i8, ptr %i.io, align 1         ; 2 uses
  %i.ip = trunc i8 %.val.i14 to i1
  br i1 %i.ip, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iq = zext i8 %i.hs to i32                    ; 2 uses
  %i.ir = add i32 %.345, -1
  %i.is = add i32 %i.ir, %i.iq
  %i.it = sub nsw i32 0, %i.iq
  %i.iu = and i32 %i.is, %i.it                    ; 2 uses
  %.pre.i15 = zext i32 %i.iu to i64               ; 2 uses
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre.i15
  %.pre40.i17 = load i8, ptr %.phi.trans.insert.i16, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.iv = phi i8 [ %.pre40.i17, %bb.av ], [ %.val.i14, %bb.au ] ; 2 uses
  %.pre-phi.i18 = phi i64 [ %.pre.i15, %bb.av ], [ %i.in, %bb.au ]
  %i.iw = phi i32 [ %i.iu, %bb.av ], [ %.345, %bb.au ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre-phi.i18 ; 3 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = zext i8 %i.iv to i32                    ; 2 uses
  %i.ja = icmp eq i8 %i.iv, 1
  br i1 %i.ja, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jb = getelementptr i8, ptr %i.ix, i64 1
  %.val.i.i22 = load i8, ptr %i.jb, align 1       ; 2 uses
  %i.jc = add i8 %.val.i.i22, -1
  %or.cond.i.i.i.i23 = icmp ult i8 %i.jc, 3
  %i.jd = icmp eq i8 %.val.i.i22, 18
  %i.je = select i1 %i.jd, i32 18, i32 2
  %i.jf = select i1 %or.cond.i.i.i.i23, i32 10, i32 %i.je
  br label %VARSIZE_ANY.exit.i20

bb.ay:                                            ; preds = %bb.aw
  %i.jg = and i32 %i.iz, 1
  %.not.i.i19 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i19, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = lshr i32 %i.iz, 1
  br label %VARSIZE_ANY.exit.i20

bb.ba:                                            ; preds = %bb.ay
  %i.ji = load i32, ptr %i.ix, align 4
  %i.jj = lshr i32 %i.ji, 2
  br label %VARSIZE_ANY.exit.i20

VARSIZE_ANY.exit.i20:                             ; preds = %bb.ba, %bb.az, %bb.ax
  %.0.i.i21 = phi i32 [ %i.jf, %bb.ax ], [ %i.jh, %bb.az ], [ %i.jj, %bb.ba ]
  %i.jk = add i32 %.0.i.i21, %i.iw
  br label %align_fetch_then_add.exit24

bb.bb:                                            ; preds = %bb.at
  %i.jl = zext i8 %i.hs to i32                    ; 2 uses
  %i.jm = add i32 %.345, -1
  %i.jn = add i32 %i.jm, %i.jl
  %i.jo = sub nsw i32 0, %i.jl
  %i.jp = and i32 %i.jn, %i.jo                    ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.jq ; 2 uses
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jr) #15
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = add i32 %i.jp, 1
  %i.jw = add i32 %i.jv, %i.ju
  br label %align_fetch_then_add.exit24

align_fetch_then_add.exit24:                      ; preds = %bb.bb, %VARSIZE_ANY.exit.i20, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.lr.ph47
  %.1.i13.sink = phi i64 [ 0, %.lr.ph47 ], [ %i.il, %bb.ar ], [ %i.ig, %bb.ao ], [ %i.ii, %bb.ap ], [ %i.ik, %bb.aq ], [ %i.im, %bb.as ], [ %i.iy, %VARSIZE_ANY.exit.i20 ], [ %i.js, %bb.bb ]
  %.5 = phi i32 [ %.345, %.lr.ph47 ], [ %i.ie, %bb.ar ], [ %i.ie, %bb.ao ], [ %i.ie, %bb.ap ], [ %i.ie, %bb.aq ], [ %i.ie, %bb.as ], [ %i.jk, %VARSIZE_ANY.exit.i20 ], [ %i.jw, %bb.bb ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.5.i46
  store i64 %.1.i13.sink, ptr %i.jx, align 8
  %i.jy = add nuw i64 %.5.i46, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.jy, %i.ev
  br i1 %exitcond60.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !17

._crit_edge:                                      ; preds = %align_fetch_then_add.exit24, %.preheader
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader ], [ %.5, %align_fetch_then_add.exit24 ] ; 2 uses
  %.5.i.lcssa = phi i64 [ %.4.i.lcssa, %.preheader ], [ %i.ev, %align_fetch_then_add.exit24 ] ; 2 uses
  %i.jz = sext i32 %1 to i64
  %i.ka = icmp ult i64 %.5.i.lcssa, %i.jz
  br i1 %i.ka, label %bb.bc, label %bb.bd, !prof !18

bb.bc:                                            ; preds = %._crit_edge
  store i32 %.3.lcssa, ptr %i.c, align 8
  %i.kb = trunc nsw i64 %.5.i.lcssa to i32
  tail call void @slot_getmissingattrs(ptr noundef %0, i32 noundef %i.kb, i32 noundef %1)
  br label %slot_deform_heap_tuple.exit

bb.bd:                                            ; preds = %._crit_edge, %bb.k
  %.4 = phi i32 [ %i.dr, %bb.k ], [ %.3.lcssa, %._crit_edge ]
  store i32 %.4, ptr %i.c, align 8
  br label %slot_deform_heap_tuple.exit

slot_deform_heap_tuple.exit:                      ; preds = %bb.bc, %bb.bd
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @tts_heap_getsysattr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 369, ptr noundef nonnull @__func__.tts_heap_getsysattr) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 @heap_getsysattr(ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %i.g, ptr noundef %2) #13
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tts_heap_is_current_xact_tuple(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 391, ptr noundef nonnull @__func__.tts_heap_is_current_xact_tuple) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %.val = load i32, ptr %i.g, align 4
  %i.h = tail call zeroext i1 @TransactionIdIsCurrentTransactionId(i32 noundef %.val) #13
  ret i1 %i.h
}

; Function Attrs: nounwind uwtable
define internal void @tts_heap_materialize(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 4
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @heap_form_tuple(ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = tail call ptr @heap_copytuple(ptr noundef nonnull %i.j) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.d ]
  store ptr %storemerge, ptr %i.i, align 8
  %i.s = load i16, ptr %i.a, align 4
  %i.t = or i16 %i.s, 4
  store i16 %i.t, ptr %i.a, align 4
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

end_hunk_0
begin_hunk_1_@tts_buffer_heap_getsomeattrs:bb.a

bb.e:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bx = icmp slt i32 %i.k, %1
  br i1 %i.bx, label %bb.f, label %populate_isnull_array.exit

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = and i16 %i.bz, 2047
  %i.cb = zext nneg i16 %i.ca to i32
  %.144.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.cb) ; 2 uses
  br label %populate_isnull_array.exit

populate_isnull_array.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %populate_isnull_array.exit, label %.lr.ph.i6.epil.preheader

.lr.ph.i6.epil.preheader:                         ; preds = %populate_isnull_array.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i4
  %indvars.iv.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader.i4 ], [ %indvars.iv.next.i8.1, %populate_isnull_array.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %i.i, %.lr.ph.preheader.i4 ], [ %i.bv, %populate_isnull_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i7.epil.init
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = xor i8 %i.cd, -1
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = and i32 %i.cf, 15
  %i.ch = mul nuw nsw i32 %i.cg, 2113665
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = lshr i32 %i.cf, 4
  %i.ck = mul nuw nsw i32 %i.cj, 2113665
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.cm, %i.ci
  %i.co = and i64 %i.cn, 72340172838076673
  store i64 %i.co, ptr %.013.i.epil.init, align 1
  br label %populate_isnull_array.exit

populate_isnull_array.exit:                       ; preds = %.lr.ph.i6.epil.preheader, %populate_isnull_array.exit.loopexit.unr-lcssa, %first_null_attr.exit, %bb.f, %bb.e, %bb.b
  %.0128.i = phi i32 [ %1, %bb.e ], [ %i.y, %bb.b ], [ %.144.i, %bb.f ], [ %i.ao, %first_null_attr.exit ], [ %i.ao, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i6.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %1, %bb.e ], [ %i.y, %bb.b ], [ %.144.i, %bb.f ], [ %i.y, %first_null_attr.exit ], [ %i.y, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.y, %.lr.ph.i6.epil.preheader ]
  %.0126.i = phi ptr [ %i.bw, %bb.e ], [ %i.x, %bb.b ], [ %i.bw, %bb.f ], [ %i.x, %first_null_attr.exit ], [ %i.x, %populate_isnull_array.exit.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.i6.epil.preheader ] ; 12 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = sext i16 %i.cq to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cu = trunc i32 %1 to i16
  store i16 %i.cu, ptr %i.cp, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.cw = sext i32 %..i to i64                    ; 3 uses
  %i.cx = icmp ult i64 %i.cr, %i.cw
  br i1 %i.cx, label %.preheader33, label %bb.l

.preheader33:                                     ; preds = %populate_isnull_array.exit, %fetch_att_noerr.exit
  %.0129.i = phi i64 [ %i.dp, %fetch_att_noerr.exit ], [ %i.cr, %populate_isnull_array.exit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0129.i
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0129.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2            ; 3 uses
  %i.dc = icmp sgt i16 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = load i16, ptr %i.cz, align 2
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.df ; 4 uses
  switch i16 %i.db, label %bb.j [
    i16 4, label %bb.g
    i16 2, label %bb.h
    i16 1, label %bb.i
  ]

bb.g:                                             ; preds = %.preheader33
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  br label %fetch_att_noerr.exit

bb.h:                                             ; preds = %.preheader33
  %i.dj = load i16, ptr %i.dg, align 2
  %i.dk = sext i16 %i.dj to i64
  br label %fetch_att_noerr.exit

bb.i:                                             ; preds = %.preheader33
  %i.dl = load i8, ptr %i.dg, align 1
  %i.dm = sext i8 %i.dl to i64
  br label %fetch_att_noerr.exit

bb.j:                                             ; preds = %.preheader33
  %i.dn = load i64, ptr %i.dg, align 8
  br label %fetch_att_noerr.exit

fetch_att_noerr.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.dn, %bb.j ], [ %i.di, %bb.g ], [ %i.dk, %bb.h ], [ %i.dm, %bb.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.0129.i
  store i64 %.0.i, ptr %i.do, align 8
  %i.dp = add nuw i64 %.0129.i, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.cw
  br i1 %exitcond.not, label %bb.k, label %.preheader33, !llvm.loop !14

bb.k:                                             ; preds = %fetch_att_noerr.exit
  %i.dq = zext nneg i16 %i.db to i32
  %i.dr = add nsw i32 %i.de, %i.dq                ; 2 uses
  %.not = icmp sgt i32 %1, %i.k
  br i1 %.not, label %bb.m, label %bb.bd

bb.l:                                             ; preds = %populate_isnull_array.exit
  %i.ds = load i32, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.dr, %bb.k ], [ %i.ds, %bb.l ]
  %.1130.i = phi i64 [ %i.cw, %bb.k ], [ %i.cr, %bb.l ] ; 3 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %.0128.i)
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = icmp ult i64 %.1130.i, %i.du
  br i1 %i.dv, label %.preheader32, label %bb.u

.preheader32:                                     ; preds = %bb.m, %fetch_att_noerr.exit11
  %.2.i = phi i64 [ %i.eq, %fetch_att_noerr.exit11 ], [ %.1130.i, %bb.m ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2.i
  store i8 0, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.2.i ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = load i16, ptr %i.dx, align 2
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ef = load i8, ptr %i.ee, align 2, !range !5, !noundef !6
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.preheader32
  switch i16 %i.dz, label %bb.r [
    i16 4, label %bb.o
    i16 2, label %bb.p
    i16 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.eh = load i32, ptr %i.ed, align 4
  %i.ei = sext i32 %i.eh to i64
  br label %fetch_att_noerr.exit11

bb.p:                                             ; preds = %bb.n
  %i.ej = load i16, ptr %i.ed, align 2
  %i.ek = sext i16 %i.ej to i64
  br label %fetch_att_noerr.exit11

bb.q:                                             ; preds = %bb.n
  %i.el = load i8, ptr %i.ed, align 1
  %i.em = sext i8 %i.el to i64
  br label %fetch_att_noerr.exit11

bb.r:                                             ; preds = %bb.n
  %i.en = load i64, ptr %i.ed, align 8
  br label %fetch_att_noerr.exit11

bb.s:                                             ; preds = %.preheader32
  %i.eo = ptrtoint ptr %i.ed to i64
  br label %fetch_att_noerr.exit11

fetch_att_noerr.exit11:                           ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i10 = phi i64 [ %i.en, %bb.r ], [ %i.ei, %bb.o ], [ %i.ek, %bb.p ], [ %i.em, %bb.q ], [ %i.eo, %bb.s ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.2.i
  store i64 %.0.i10, ptr %i.ep, align 8
  %i.eq = add nuw i64 %.2.i, 1                    ; 2 uses
  %exitcond58.not = icmp eq i64 %i.eq, %i.du
  br i1 %exitcond58.not, label %bb.t, label %.preheader32, !llvm.loop !15

bb.t:                                             ; preds = %fetch_att_noerr.exit11
  %i.er = sext i16 %i.dz to i32
  %i.es = add nsw i32 %i.eb, %i.er
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.1 = phi i32 [ %i.es, %bb.t ], [ %.0, %bb.m ]  ; 2 uses
  %.3.i = phi i64 [ %i.du, %bb.t ], [ %.1130.i, %bb.m ] ; 3 uses
  %i.et = sext i32 %.0128.i to i64                ; 3 uses
  %i.eu = icmp ult i64 %.3.i, %i.et
  br i1 %i.eu, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %align_fetch_then_add.exit, %bb.u
  %.2.lcssa = phi i32 [ %.1, %bb.u ], [ %.6, %align_fetch_then_add.exit ] ; 2 uses
  %.4.i.lcssa = phi i64 [ %.3.i, %bb.u ], [ %i.et, %align_fetch_then_add.exit ] ; 3 uses
  %i.ev = sext i32 %.1.i to i64                   ; 3 uses
  %i.ew = icmp ult i64 %.4.i.lcssa, %i.ev
  br i1 %i.ew, label %.lr.ph47, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u, %align_fetch_then_add.exit
  %.4.i43 = phi i64 [ %i.hj, %align_fetch_then_add.exit ], [ %.3.i, %bb.u ] ; 4 uses
  %.242 = phi i32 [ %.6, %align_fetch_then_add.exit ], [ %.1, %bb.u ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 %.4.i43
  store i8 0, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.4.i43 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i16, ptr %i.ez, align 2            ; 4 uses
  %i.fb = icmp sgt i16 %i.fa, 0                   ; 2 uses
  %2 = icmp eq i16 %i.fa, -1                      ; 2 uses
  %or.cond.i = or i1 %i.fb, %2
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 5
  %i.fd = load i8, ptr %i.fc, align 1             ; 3 uses
  br i1 %i.fb, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.lr.ph
  %i.fe = zext nneg i16 %i.fa to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fg = load i8, ptr %i.ff, align 2, !range !5, !noundef !6
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = zext i8 %i.fd to i32                    ; 2 uses
  %i.fj = add i32 %.242, -1
  %i.fk = add i32 %i.fj, %i.fi
  %i.fl = sub nsw i32 0, %i.fi
  %i.fm = and i32 %i.fk, %i.fl                    ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.fn ; 5 uses
  %i.fp = add i32 %i.fm, %i.fe                    ; 5 uses
  br i1 %i.fh, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  switch i16 %i.fa, label %bb.aa [
    i16 1, label %bb.x
    i16 2, label %bb.y
    i16 4, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.fq = load i8, ptr %i.fo, align 1
  %i.fr = sext i8 %i.fq to i64
  br label %align_fetch_then_add.exit

bb.y:                                             ; preds = %bb.w
  %i.fs = load i16, ptr %i.fo, align 2
  %i.ft = sext i16 %i.fs to i64
  br label %align_fetch_then_add.exit

bb.z:                                             ; preds = %bb.w
  %i.fu = load i32, ptr %i.fo, align 4
  %i.fv = sext i32 %i.fu to i64
  br label %align_fetch_then_add.exit

bb.aa:                                            ; preds = %bb.w
  %i.fw = load i64, ptr %i.fo, align 8
  br label %align_fetch_then_add.exit

bb.ab:                                            ; preds = %bb.v
  %i.fx = ptrtoint ptr %i.fo to i64
  br label %align_fetch_then_add.exit

bb.ac:                                            ; preds = %.lr.ph
  br i1 %2, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.fy = zext i32 %.242 to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.fy
  %.val.i = load i8, ptr %i.fz, align 1           ; 2 uses
  %i.ga = trunc i8 %.val.i to i1
  br i1 %i.ga, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gb = zext i8 %i.fd to i32                    ; 2 uses
  %i.gc = add i32 %.242, -1
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = sub nsw i32 0, %i.gb
  %i.gf = and i32 %i.gd, %i.ge                    ; 2 uses
  %.pre.i = zext i32 %i.gf to i64                 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre.i
  %.pre40.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gg = phi i8 [ %.pre40.i, %bb.ae ], [ %.val.i, %bb.ad ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ae ], [ %i.fy, %bb.ad ]
  %i.gh = phi i32 [ %i.gf, %bb.ae ], [ %.242, %bb.ad ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre-phi.i ; 3 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = zext i8 %i.gg to i32                    ; 2 uses
  %i.gl = icmp eq i8 %i.gg, 1
  br i1 %i.gl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gm = getelementptr i8, ptr %i.gi, i64 1
  %.val.i.i = load i8, ptr %i.gm, align 1         ; 2 uses
  %i.gn = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.gn, 3
  %i.go = icmp eq i8 %.val.i.i, 18
  %i.gp = select i1 %i.go, i32 18, i32 2
  %i.gq = select i1 %or.cond.i.i.i.i, i32 10, i32 %i.gp
  br label %VARSIZE_ANY.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gr = and i32 %i.gk, 1
  %.not.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gs = lshr i32 %i.gk, 1
  br label %VARSIZE_ANY.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gt = load i32, ptr %i.gi, align 4
  %i.gu = lshr i32 %i.gt, 2
  br label %VARSIZE_ANY.exit.i

VARSIZE_ANY.exit.i:                               ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i.i = phi i32 [ %i.gq, %bb.ag ], [ %i.gs, %bb.ai ], [ %i.gu, %bb.aj ]
  %i.gv = add i32 %.0.i.i, %i.gh
  br label %align_fetch_then_add.exit

bb.ak:                                            ; preds = %bb.ac
  %i.gw = zext i8 %i.fd to i32                    ; 2 uses
  %i.gx = add i32 %.242, -1
  %i.gy = add i32 %i.gx, %i.gw
  %i.gz = sub nsw i32 0, %i.gw
  %i.ha = and i32 %i.gy, %i.gz                    ; 2 uses
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.hb ; 2 uses
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #15
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.ha, 1
  %i.hh = add i32 %i.hg, %i.hf
  br label %align_fetch_then_add.exit

align_fetch_then_add.exit:                        ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %VARSIZE_ANY.exit.i, %bb.ak
  %.6 = phi i32 [ %i.fp, %bb.aa ], [ %i.fp, %bb.x ], [ %i.fp, %bb.y ], [ %i.fp, %bb.z ], [ %i.fp, %bb.ab ], [ %i.gv, %VARSIZE_ANY.exit.i ], [ %i.hh, %bb.ak ] ; 2 uses
  %.1.i12 = phi i64 [ %i.fw, %bb.aa ], [ %i.fr, %bb.x ], [ %i.ft, %bb.y ], [ %i.fv, %bb.z ], [ %i.fx, %bb.ab ], [ %i.gj, %VARSIZE_ANY.exit.i ], [ %i.hd, %bb.ak ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.4.i43
  store i64 %.1.i12, ptr %i.hi, align 8
  %i.hj = add nuw i64 %.4.i43, 1                  ; 2 uses
  %exitcond59.not = icmp eq i64 %i.hj, %i.et
  br i1 %exitcond59.not, label %.preheader, label %.lr.ph, !llvm.loop !16

.lr.ph47:                                         ; preds = %.preheader, %align_fetch_then_add.exit24
  %.5.i46 = phi i64 [ %i.jy, %align_fetch_then_add.exit24 ], [ %.4.i.lcssa, %.preheader ] ; 4 uses
  %.345 = phi i32 [ %.5, %align_fetch_then_add.exit24 ], [ %.2.lcssa, %.preheader ] ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 %.5.i46
  %i.hl = load i8, ptr %i.hk, align 1, !range !5, !noundef !6
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %align_fetch_then_add.exit24, label %bb.al

bb.al:                                            ; preds = %.lr.ph47
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.5.i46 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = load i16, ptr %i.ho, align 2            ; 4 uses
  %i.hq = icmp sgt i16 %i.hp, 0                   ; 2 uses
  %3 = icmp eq i16 %i.hp, -1                      ; 2 uses
  %or.cond3.i = or i1 %i.hq, %3
  tail call void @llvm.assume(i1 %or.cond3.i)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 5
  %i.hs = load i8, ptr %i.hr, align 1             ; 3 uses
  br i1 %i.hq, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.ht = zext nneg i16 %i.hp to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hv = load i8, ptr %i.hu, align 2, !range !5, !noundef !6
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = zext i8 %i.hs to i32                    ; 2 uses
  %i.hy = add i32 %.345, -1
  %i.hz = add i32 %i.hy, %i.hx
  %i.ia = sub nsw i32 0, %i.hx
  %i.ib = and i32 %i.hz, %i.ia                    ; 2 uses
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.ic ; 5 uses
  %i.ie = add i32 %i.ib, %i.ht                    ; 5 uses
  br i1 %i.hw, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  switch i16 %i.hp, label %bb.ar [
    i16 1, label %bb.ao
    i16 2, label %bb.ap
    i16 4, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.if = load i8, ptr %i.id, align 1
  %i.ig = sext i8 %i.if to i64
  br label %align_fetch_then_add.exit24

bb.ap:                                            ; preds = %bb.an
  %i.ih = load i16, ptr %i.id, align 2
  %i.ii = sext i16 %i.ih to i64
  br label %align_fetch_then_add.exit24

bb.aq:                                            ; preds = %bb.an
  %i.ij = load i32, ptr %i.id, align 4
  %i.ik = sext i32 %i.ij to i64
  br label %align_fetch_then_add.exit24

bb.ar:                                            ; preds = %bb.an
  %i.il = load i64, ptr %i.id, align 8
  br label %align_fetch_then_add.exit24

bb.as:                                            ; preds = %bb.am
  %i.im = ptrtoint ptr %i.id to i64
  br label %align_fetch_then_add.exit24

bb.at:                                            ; preds = %bb.al
  br i1 %3, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.in = zext i32 %.345 to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.in
  %.val.i14 = load i8, ptr %i.io, align 1         ; 2 uses
  %i.ip = trunc i8 %.val.i14 to i1
  br i1 %i.ip, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iq = zext i8 %i.hs to i32                    ; 2 uses
  %i.ir = add i32 %.345, -1
  %i.is = add i32 %i.ir, %i.iq
  %i.it = sub nsw i32 0, %i.iq
  %i.iu = and i32 %i.is, %i.it                    ; 2 uses
  %.pre.i15 = zext i32 %i.iu to i64               ; 2 uses
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre.i15
  %.pre40.i17 = load i8, ptr %.phi.trans.insert.i16, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.iv = phi i8 [ %.pre40.i17, %bb.av ], [ %.val.i14, %bb.au ] ; 2 uses
  %.pre-phi.i18 = phi i64 [ %.pre.i15, %bb.av ], [ %i.in, %bb.au ]
  %i.iw = phi i32 [ %i.iu, %bb.av ], [ %.345, %bb.au ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %.pre-phi.i18 ; 3 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = zext i8 %i.iv to i32                    ; 2 uses
  %i.ja = icmp eq i8 %i.iv, 1
  br i1 %i.ja, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jb = getelementptr i8, ptr %i.ix, i64 1
  %.val.i.i22 = load i8, ptr %i.jb, align 1       ; 2 uses
  %i.jc = add i8 %.val.i.i22, -1
  %or.cond.i.i.i.i23 = icmp ult i8 %i.jc, 3
  %i.jd = icmp eq i8 %.val.i.i22, 18
  %i.je = select i1 %i.jd, i32 18, i32 2
  %i.jf = select i1 %or.cond.i.i.i.i23, i32 10, i32 %i.je
  br label %VARSIZE_ANY.exit.i20

bb.ay:                                            ; preds = %bb.aw
  %i.jg = and i32 %i.iz, 1
  %.not.i.i19 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i19, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = lshr i32 %i.iz, 1
  br label %VARSIZE_ANY.exit.i20

bb.ba:                                            ; preds = %bb.ay
  %i.ji = load i32, ptr %i.ix, align 4
  %i.jj = lshr i32 %i.ji, 2
  br label %VARSIZE_ANY.exit.i20

VARSIZE_ANY.exit.i20:                             ; preds = %bb.ba, %bb.az, %bb.ax
  %.0.i.i21 = phi i32 [ %i.jf, %bb.ax ], [ %i.jh, %bb.az ], [ %i.jj, %bb.ba ]
  %i.jk = add i32 %.0.i.i21, %i.iw
  br label %align_fetch_then_add.exit24

bb.bb:                                            ; preds = %bb.at
  %i.jl = zext i8 %i.hs to i32                    ; 2 uses
  %i.jm = add i32 %.345, -1
  %i.jn = add i32 %i.jm, %i.jl
  %i.jo = sub nsw i32 0, %i.jl
  %i.jp = and i32 %i.jn, %i.jo                    ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.0126.i, i64 %i.jq ; 2 uses
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jr) #15
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = add i32 %i.jp, 1
  %i.jw = add i32 %i.jv, %i.ju
  br label %align_fetch_then_add.exit24

align_fetch_then_add.exit24:                      ; preds = %bb.bb, %VARSIZE_ANY.exit.i20, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.lr.ph47
  %.1.i13.sink = phi i64 [ 0, %.lr.ph47 ], [ %i.il, %bb.ar ], [ %i.ig, %bb.ao ], [ %i.ii, %bb.ap ], [ %i.ik, %bb.aq ], [ %i.im, %bb.as ], [ %i.iy, %VARSIZE_ANY.exit.i20 ], [ %i.js, %bb.bb ]
  %.5 = phi i32 [ %.345, %.lr.ph47 ], [ %i.ie, %bb.ar ], [ %i.ie, %bb.ao ], [ %i.ie, %bb.ap ], [ %i.ie, %bb.aq ], [ %i.ie, %bb.as ], [ %i.jk, %VARSIZE_ANY.exit.i20 ], [ %i.jw, %bb.bb ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.5.i46
  store i64 %.1.i13.sink, ptr %i.jx, align 8
  %i.jy = add nuw i64 %.5.i46, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.jy, %i.ev
  br i1 %exitcond60.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !17

._crit_edge:                                      ; preds = %align_fetch_then_add.exit24, %.preheader
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader ], [ %.5, %align_fetch_then_add.exit24 ] ; 2 uses
  %.5.i.lcssa = phi i64 [ %.4.i.lcssa, %.preheader ], [ %i.ev, %align_fetch_then_add.exit24 ] ; 2 uses
  %i.jz = sext i32 %1 to i64
  %i.ka = icmp ult i64 %.5.i.lcssa, %i.jz
  br i1 %i.ka, label %bb.bc, label %bb.bd, !prof !18

bb.bc:                                            ; preds = %._crit_edge
  store i32 %.3.lcssa, ptr %i.c, align 8
  %i.kb = trunc nsw i64 %.5.i.lcssa to i32
  tail call void @slot_getmissingattrs(ptr noundef %0, i32 noundef %i.kb, i32 noundef %1)
  br label %slot_deform_heap_tuple.exit

bb.bd:                                            ; preds = %._crit_edge, %bb.k
  %.4 = phi i32 [ %i.dr, %bb.k ], [ %.3.lcssa, %._crit_edge ]
  store i32 %.4, ptr %i.c, align 8
  br label %slot_deform_heap_tuple.exit

slot_deform_heap_tuple.exit:                      ; preds = %bb.bc, %bb.bd
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @tts_buffer_heap_getsysattr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 774, ptr noundef nonnull @__func__.tts_buffer_heap_getsysattr) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 @heap_getsysattr(ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %i.g, ptr noundef %2) #13
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tts_buffer_is_current_xact_tuple(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 796, ptr noundef nonnull @__func__.tts_buffer_is_current_xact_tuple) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %.val = load i32, ptr %i.g, align 4
  %i.h = tail call zeroext i1 @TransactionIdIsCurrentTransactionId(i32 noundef %.val) #13
  ret i1 %i.h
}

; Function Attrs: nounwind uwtable
define internal void @tts_buffer_heap_materialize(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 4
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @heap_form_tuple(ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p) #13
  store ptr %i.q, ptr %i.i, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = tail call ptr @heap_copytuple(ptr noundef nonnull %i.j) #13
  store ptr %i.r, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.t, 0
  br i1 %.not18, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @ReleaseBuffer(i32 noundef %i.t) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.s, align 8
  br label %bb.g

end_hunk_1
