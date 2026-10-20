Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/canny?download=true
inline.NumInlined: 652
inline.NumDeleted: 197
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK2cv13parallelCannyclERKNS_5RangeE:bb.a
  %i.ca = load ptr, ptr %16, align 8, !tbaa !161  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ca, %i.r
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %i.r, ptr %16, align 8, !tbaa !161
  br label %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i: ; preds = %bb.ai, %bb.af
  store i64 %i.by, ptr %i.s, align 8, !tbaa !162
  %i.cc = icmp ugt i32 %i.bx, 520
  br i1 %i.cc, label %bb.aj, label %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit

bb.aj:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i
  %i.cd = shl nuw nsw i64 %i.by, 1
  %.inv.i = icmp sgt i32 %i.bw, -1
  %i.ce = select i1 %.inv.i, i64 %i.cd, i64 -1
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #22
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.aj
  store ptr %i.cf, ptr %16, align 8, !tbaa !161
  br label %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit

_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit:      ; preds = %.noexc, %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i, %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33 ; 2 uses
  %i.ci = shl nsw i32 %i.ch, 1                    ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 4 uses
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !162
  %.not.i250 = icmp ult i64 %i.ck, %i.cj
  br i1 %.not.i250, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit
  store i64 %i.cj, ptr %i.u, align 8, !tbaa !162
  %.pre = load ptr, ptr %17, align 8, !tbaa !161
  br label %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255

bb.al:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit
  %i.cl = load ptr, ptr %17, align 8, !tbaa !161  ; 4 uses
  %.not.i.i251 = icmp eq ptr %i.cl, %i.t
  br i1 %.not.i.i251, label %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr %i.t, ptr %17, align 8, !tbaa !161
  br label %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252

_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252: ; preds = %bb.ao, %bb.al
  %i.cn = phi ptr [ %i.t, %bb.ao ], [ %i.cl, %bb.al ]
  store i64 %i.cj, ptr %i.u, align 8, !tbaa !162
  %i.co = icmp ugt i32 %i.ci, 520
  br i1 %i.co, label %bb.ap, label %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255

bb.ap:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252
  %i.cp = shl nuw nsw i64 %i.cj, 1
  %.inv.i253 = icmp sgt i32 %i.ch, -1
  %i.cq = select i1 %.inv.i253, i64 %i.cp, i64 -1
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #22
          to label %.noexc254 unwind label %bb.ar ; 2 uses

.noexc254:                                        ; preds = %bb.ap
  store ptr %i.cr, ptr %17, align 8, !tbaa !161
  br label %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255

_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255:   ; preds = %.noexc254, %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252, %bb.ak
  %i.cs = phi ptr [ %i.cr, %.noexc254 ], [ %i.cn, %_ZN2cv10AutoBufferIsLm520EE10deallocateEv.exit.i252 ], [ %.pre, %bb.ak ] ; 2 uses
  %i.ct = load ptr, ptr %16, align 8, !tbaa !161  ; 2 uses
  %i.cu = load i32, ptr %i.bv, align 4, !tbaa !33
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i32, ptr %i.cg, align 4, !tbaa !33
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.cy
  %.pre483 = load i32, ptr %i.bs, align 8, !tbaa !85
  br label %bb.as

bb.aq:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ar:                                            ; preds = %bb.ap, %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.as:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255, %bb.ac
  %i.dc = phi i32 [ %.pre483, %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255 ], [ %i.bt, %bb.ac ]
  %.0411 = phi ptr [ %i.cz, %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255 ], [ null, %bb.ac ]
  %.0406 = phi ptr [ %i.cw, %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255 ], [ null, %bb.ac ]
  %.0401 = phi ptr [ %i.cs, %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255 ], [ null, %bb.ac ]
  %.0400 = phi ptr [ %i.ct, %_ZN2cv10AutoBufferIsLm520EE8allocateEm.exit255 ], [ null, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 18 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %i.df = sext i32 %i.dc to i64
  %i.dg = mul nsw i64 %i.de, %i.df                ; 3 uses
  %i.dh = mul nsw i64 %i.dg, 3                    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  store ptr %i.di, ptr %30, align 8, !tbaa !173
  %i.dj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.not.i.i256 = icmp ugt i64 %i.dh, 264
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !174
  br i1 %.not.i.i256, label %bb.at, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.dh, 4611686018427387903
  %i.dl = mul i64 %i.dg, 12
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl
  %i.dn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #22
          to label %.noexc257 unwind label %bb.av ; 2 uses

.noexc257:                                        ; preds = %bb.at
  store ptr %i.dn, ptr %30, align 8, !tbaa !173
  %.pre484 = load i64, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %.pre485 = load i32, ptr %i.bs, align 8, !tbaa !85
  %.pre508 = sext i32 %.pre485 to i64
  %.pre509 = mul nsw i64 %.pre484, %.pre508
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %.noexc257, %bb.as
  %.pre-phi510 = phi i64 [ %.pre509, %.noexc257 ], [ %i.dg, %bb.as ] ; 2 uses
  %i.do = phi i64 [ %.pre484, %.noexc257 ], [ %i.de, %bb.as ]
  %i.dp = phi ptr [ %i.dn, %.noexc257 ], [ %i.di, %bb.as ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 3 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.pre-phi510 ; 4 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %.pre-phi510 ; 3 uses
  %i.dt = load i32, ptr %1, align 4, !tbaa !31
  %i.du = icmp eq i32 %.sroa.speculated392, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 2 uses
  br i1 %i.du, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.dw = shl i64 %i.do, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dv, i8 0, i64 %i.dw, i1 false)
  %.pre486 = load ptr, ptr %i.x, align 8, !tbaa !82
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit336

bb.aw:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  store i32 0, ptr %i.dv, align 4, !tbaa !21
  %i.dy = load ptr, ptr %i.x, align 8, !tbaa !82, !nonnull !77, !align !78 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.eb
  store i32 0, ptr %i.ec, align 4, !tbaa !21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.ed = phi ptr [ %i.dy, %bb.aw ], [ %.pre486, %bb.au ] ; 5 uses
  store i32 0, ptr %i.dp, align 4, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !33
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.eg
  store i32 0, ptr %i.eh, align 4, !tbaa !21
  %i.ei = getelementptr inbounds i8, ptr %i.dr, i64 -4
  store i32 0, ptr %i.ei, align 4, !tbaa !21
  %i.ej = load i32, ptr %i.ee, align 4, !tbaa !33
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.ek
  store i32 0, ptr %i.el, align 4, !tbaa !21
  %i.em = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  %.not444 = icmp sgt i32 %.sroa.speculated392, %i.em
  br i1 %.not444, label %._crit_edge456, label %.lr.ph455

.lr.ph455:                                        ; preds = %bb.ax
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.ex = zext nneg i32 %i.w to i64
  %i.ey = add nsw i64 %i.ex, -1
  %i.ez = zext nneg i32 %.sroa.speculated392 to i64
  %i.fa = sext i32 %.sroa.speculated to i64
  br label %bb.ay

._crit_edge456:                                   ; preds = %.loopexit, %bb.ax
  %i.fb = phi ptr [ %i.ed, %bb.ax ], [ %i.ob, %.loopexit ]
  %.lcssa426 = phi i32 [ %i.em, %bb.ax ], [ %i.oe, %.loopexit ]
  %i.fc = icmp eq i32 %.sroa.speculated392, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !27 ; 3 uses
  br i1 %i.fc, label %bb.cj, label %bb.ci

bb.ay:                                            ; preds = %.lr.ph455, %.loopexit
  %i.fh = phi ptr [ %i.ed, %.lr.ph455 ], [ %i.ob, %.loopexit ] ; 4 uses
  %i.fi = phi ptr [ %i.ed, %.lr.ph455 ], [ %i.oc, %.loopexit ] ; 5 uses
  %i.fj = phi ptr [ %i.ed, %.lr.ph455 ], [ %i.od, %.loopexit ] ; 4 uses
  %indvars.iv480 = phi i64 [ %i.ey, %.lr.ph455 ], [ %indvars.iv.next481, %.loopexit ] ; 6 uses
  %.0397451 = phi ptr [ %i.dq, %.lr.ph455 ], [ %.0398450, %.loopexit ] ; 15 uses
  %.0398450 = phi ptr [ %i.dr, %.lr.ph455 ], [ %.0399449, %.loopexit ] ; 3 uses
  %.0399449 = phi ptr [ %i.ds, %.lr.ph455 ], [ %.0397451, %.loopexit ] ; 2 uses
  %.1448 = phi ptr [ %.0400, %.lr.ph455 ], [ %.4, %.loopexit ] ; 5 uses
  %.1402447 = phi ptr [ %.0401, %.lr.ph455 ], [ %.4405, %.loopexit ] ; 5 uses
  %.1407446 = phi ptr [ %.0406, %.lr.ph455 ], [ %.4410, %.loopexit ] ; 4 uses
  %.1412445 = phi ptr [ %.0411, %.lr.ph455 ], [ %.4415, %.loopexit ] ; 4 uses
  %i.fk = icmp slt i64 %indvars.iv480, %i.fa
  br i1 %i.fk, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.fl = sub nuw nsw i64 %indvars.iv480, %i.ez   ; 2 uses
  %i.fm = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.fn = load i64, ptr %i.eo, align 8, !tbaa !28
  %i.fo = mul i64 %i.fn, %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 5 uses
  %i.fq = load ptr, ptr %i.ep, align 8, !tbaa !27
  %i.fr = load i64, ptr %i.eq, align 8, !tbaa !28
  %i.fs = mul i64 %i.fr, %i.fl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs ; 5 uses
  %i.fu = load i8, ptr %i.er, align 4, !tbaa !70, !range !163, !noundef !77
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = load i32, ptr %i.bs, align 8, !tbaa !85 ; 4 uses
  br i1 %i.fv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !33
  %i.fz = mul nsw i32 %i.fw, %i.fy                ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph432.preheader, label %.loopexit424

.lr.ph432.preheader:                              ; preds = %bb.ba
  %wide.trip.count467 = zext nneg i32 %i.fz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fz, 8
  br i1 %min.iters.check, label %.lr.ph432.preheader588, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph432.preheader
  %n.vec = and i64 %wide.trip.count467, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %index ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %wide.load = load <4 x i16>, ptr %i.gb, align 2, !tbaa !175
  %wide.load571 = load <4 x i16>, ptr %i.gc, align 2, !tbaa !175
  %i.gd = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.ge = sext <4 x i16> %wide.load571 to <4 x i32> ; 2 uses
  %i.gf = mul nsw <4 x i32> %i.gd, %i.gd
  %i.gg = mul nsw <4 x i32> %i.ge, %i.ge
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %wide.load572 = load <4 x i16>, ptr %i.gh, align 2, !tbaa !175
  %wide.load573 = load <4 x i16>, ptr %i.gi, align 2, !tbaa !175
  %i.gj = sext <4 x i16> %wide.load572 to <4 x i32> ; 2 uses
  %i.gk = sext <4 x i16> %wide.load573 to <4 x i32> ; 2 uses
  %i.gl = mul nsw <4 x i32> %i.gj, %i.gj
  %i.gm = mul nsw <4 x i32> %i.gk, %i.gk
  %i.gn = add nuw nsw <4 x i32> %i.gl, %i.gf
  %i.go = add nuw nsw <4 x i32> %i.gm, %i.gg
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %i.gn, ptr %i.gp, align 4, !tbaa !21
  store <4 x i32> %i.go, ptr %i.gq, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count467
  br i1 %cmp.n, label %.loopexit424thread-pre-split, label %.lr.ph432.preheader588

.lr.ph432.preheader588:                           ; preds = %.lr.ph432.preheader, %middle.block
  %indvars.iv464.ph = phi i64 [ 0, %.lr.ph432.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph432

.lr.ph432:                                        ; preds = %.lr.ph432.preheader588, %.lr.ph432
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %.lr.ph432 ], [ %indvars.iv464.ph, %.lr.ph432.preheader588 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv464
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !175
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %i.gv = mul nsw i32 %i.gu, %i.gu
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv464
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !175
  %i.gy = sext i16 %i.gx to i32                   ; 2 uses
  %i.gz = mul nsw i32 %i.gy, %i.gy
  %i.ha = add nuw nsw i32 %i.gz, %i.gv
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %indvars.iv464
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !21
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %exitcond468.not = icmp eq i64 %indvars.iv.next465, %wide.trip.count467
  br i1 %exitcond468.not, label %.loopexit424thread-pre-split, label %.lr.ph432, !llvm.loop !139

bb.bb:                                            ; preds = %bb.az
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !33
  %i.he = mul nsw i32 %i.fw, %i.hd                ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph.preheader, label %.loopexit424

.lr.ph.preheader:                                 ; preds = %bb.bb
  %wide.trip.count = zext nneg i32 %i.he to i64   ; 3 uses
  %min.iters.check575 = icmp ult i32 %i.he, 8
  br i1 %min.iters.check575, label %.lr.ph.preheader589, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph.preheader
  %n.vec577 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph576
  %index579 = phi i64 [ 0, %vector.ph576 ], [ %index.next584, %vector.body578 ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %index579 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %wide.load580 = load <4 x i16>, ptr %i.hg, align 2, !tbaa !175
  %wide.load581 = load <4 x i16>, ptr %i.hh, align 2, !tbaa !175
  %i.hi = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load580, i1 false)
  %i.hj = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load581, i1 false)
  %i.hk = zext <4 x i16> %i.hi to <4 x i32>
  %i.hl = zext <4 x i16> %i.hj to <4 x i32>
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %index579 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %wide.load582 = load <4 x i16>, ptr %i.hm, align 2, !tbaa !175
  %wide.load583 = load <4 x i16>, ptr %i.hn, align 2, !tbaa !175
  %i.ho = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load582, i1 false)
  %i.hp = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load583, i1 false)
  %i.hq = zext <4 x i16> %i.ho to <4 x i32>
  %i.hr = zext <4 x i16> %i.hp to <4 x i32>
  %i.hs = add nuw nsw <4 x i32> %i.hq, %i.hk
  %i.ht = add nuw nsw <4 x i32> %i.hr, %i.hl
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %index579 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %i.hs, ptr %i.hu, align 4, !tbaa !21
  store <4 x i32> %i.ht, ptr %i.hv, align 4, !tbaa !21
  %index.next584 = add nuw i64 %index579, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next584, %n.vec577
  br i1 %i.hw, label %middle.block585, label %vector.body578, !llvm.loop !140

middle.block585:                                  ; preds = %vector.body578
  %cmp.n586 = icmp eq i64 %n.vec577, %wide.trip.count
  br i1 %cmp.n586, label %.loopexit424thread-pre-split, label %.lr.ph.preheader589

.lr.ph.preheader589:                              ; preds = %.lr.ph.preheader, %middle.block585
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec577, %middle.block585 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader589, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader589 ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !175
  %i.hz = call i16 @llvm.abs.i16(i16 %i.hy, i1 false)
  %i.ia = zext i16 %i.hz to i32
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !175
  %i.id = call i16 @llvm.abs.i16(i16 %i.ic, i1 false)
  %i.ie = zext i16 %i.id to i32
  %i.if = add nuw nsw i32 %i.ie, %i.ia
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %indvars.iv
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit424thread-pre-split, label %.lr.ph, !llvm.loop !141

.loopexit424thread-pre-split:                     ; preds = %.lr.ph, %.lr.ph432, %middle.block585, %middle.block
  %.ph = phi ptr [ %i.fi, %middle.block ], [ %i.fj, %middle.block585 ], [ %i.fi, %.lr.ph432 ], [ %i.fj, %.lr.ph ]
  %.pr = load i32, ptr %i.bs, align 8, !tbaa !85
  br label %.loopexit424

.loopexit424:                                     ; preds = %.loopexit424thread-pre-split, %bb.bb, %bb.ba
  %i.ih = phi i32 [ %.pr, %.loopexit424thread-pre-split ], [ %i.fw, %bb.bb ], [ %i.fw, %bb.ba ] ; 2 uses
  %i.ii = phi ptr [ %.ph, %.loopexit424thread-pre-split ], [ %i.fj, %bb.bb ], [ %i.fi, %bb.ba ]
  %i.ij = icmp sgt i32 %i.ih, 1
  br i1 %i.ij, label %.preheader423, label %bb.bc

.preheader423:                                    ; preds = %.loopexit424
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fh, i64 12 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !33 ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.preheader422, label %.preheader423.._crit_edge438_crit_edge

.preheader423.._crit_edge438_crit_edge:           ; preds = %.preheader423
  %.pre511 = sext i32 %i.il to i64
  br label %._crit_edge438

.preheader422:                                    ; preds = %.preheader423, %._crit_edge
  %i.in = phi i32 [ %i.ji, %._crit_edge ], [ %i.ih, %.preheader423 ] ; 3 uses
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %._crit_edge ], [ 0, %.preheader423 ] ; 4 uses
  %.0154437 = phi i32 [ %i.jj, %._crit_edge ], [ 0, %.preheader423 ] ; 5 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %.lr.ph435.preheader, label %._crit_edge

.lr.ph435.preheader:                              ; preds = %.preheader422
  %i.ip = sext i32 %.0154437 to i64               ; 4 uses
  %wide.trip.count472 = zext nneg i32 %i.in to i64
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %i.ip
  %.pre487 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21 ; 2 uses
  %i.iq = add nsw i64 %wide.trip.count472, -1     ; 3 uses
  %xtraiter = and i64 %i.iq, 1
  %i.ir = icmp eq i32 %i.in, 2
  br i1 %i.ir, label %.lr.ph435.epil.preheader, label %.lr.ph435.preheader.new

.lr.ph435.preheader.new:                          ; preds = %.lr.ph435.preheader
  %unroll_iter = and i64 %i.iq, -2
  %invariant.op = add nsw i64 1, %i.ip
  br label %.lr.ph435

._crit_edge438:                                   ; preds = %._crit_edge, %.preheader423.._crit_edge438_crit_edge
  %.pre-phi512 = phi i64 [ %.pre511, %.preheader423.._crit_edge438_crit_edge ], [ %i.jl, %._crit_edge ]
  %i.is = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %.pre-phi512
  store i32 0, ptr %i.is, align 4, !tbaa !21
  br label %bb.bc

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph435
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph435.epil.preheader

.lr.ph435.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph435.preheader
  %.epil.init = phi i32 [ %.pre487, %.lr.ph435.preheader ], [ %i.jy, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv469.epil.init = phi i64 [ 1, %.lr.ph435.preheader ], [ %indvars.iv.next470.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0153433.epil.init = phi i32 [ %.0154437, %.lr.ph435.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod595 = trunc i64 %i.iq to i1
  call void @llvm.assume(i1 %lcmp.mod595)
  %i.it = add nsw i64 %indvars.iv469.epil.init, %i.ip ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !21
  %i.iw = icmp sgt i32 %i.iv, %.epil.init
  %i.ix = trunc nsw i64 %i.it to i32
  %spec.select.epil = select i1 %i.iw, i32 %i.ix, i32 %.0153433.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph435.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader422
  %.0153.lcssa = phi i32 [ %.0154437, %.preheader422 ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph435.epil.preheader ]
  %i.iy = sext i32 %.0153.lcssa to i64            ; 3 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !21
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %indvars.iv474
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !21
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.iy
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !175
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.1448, i64 %indvars.iv474
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !175
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.iy
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !175
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.1402447, i64 %indvars.iv474
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !175
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %i.ji = load i32, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  %i.jj = add nsw i32 %i.ji, %.0154437
  %i.jk = load i32, ptr %i.ik, align 4, !tbaa !33
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = icmp slt i64 %indvars.iv.next475, %i.jl
  br i1 %i.jm, label %.preheader422, label %._crit_edge438, !llvm.loop !142

.lr.ph435:                                        ; preds = %.lr.ph435, %.lr.ph435.preheader.new
  %i.jn = phi i32 [ %.pre487, %.lr.ph435.preheader.new ], [ %i.jy, %.lr.ph435 ] ; 2 uses
  %indvars.iv469 = phi i64 [ 1, %.lr.ph435.preheader.new ], [ %indvars.iv.next470.1, %.lr.ph435 ] ; 3 uses
  %.0153433 = phi i32 [ %.0154437, %.lr.ph435.preheader.new ], [ %spec.select.1, %.lr.ph435 ]
  %niter = phi i64 [ 0, %.lr.ph435.preheader.new ], [ %niter.next.1, %.lr.ph435 ]
  %i.jo = add nsw i64 %indvars.iv469, %i.ip       ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !21 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, %i.jn
  %i.js = trunc nsw i64 %i.jo to i32
  %spec.select = select i1 %i.jr, i32 %i.js, i32 %.0153433
  %i.jt = call i32 @llvm.smax.i32(i32 %i.jq, i32 %i.jn) ; 2 uses
  %.reass = add nsw i64 %indvars.iv469, %invariant.op ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %.reass
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !21 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, %i.jt
  %i.jx = trunc nsw i64 %.reass to i32
  %spec.select.1 = select i1 %i.jw, i32 %i.jx, i32 %spec.select ; 3 uses
  %indvars.iv.next470.1 = add nuw nsw i64 %indvars.iv469, 2 ; 2 uses
  %i.jy = call i32 @llvm.smax.i32(i32 %i.jv, i32 %i.jt) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph435, !llvm.loop !143

bb.bc:                                            ; preds = %._crit_edge438, %.loopexit424
  %i.jz = phi ptr [ %i.fh, %._crit_edge438 ], [ %i.fi, %.loopexit424 ]
  %i.ka = phi ptr [ %i.fh, %._crit_edge438 ], [ %i.ii, %.loopexit424 ]
  %.2413 = phi ptr [ %.1402447, %._crit_edge438 ], [ %.1412445, %.loopexit424 ] ; 2 uses
  %.2408 = phi ptr [ %.1448, %._crit_edge438 ], [ %.1407446, %.loopexit424 ] ; 2 uses
  %.2403 = phi ptr [ %.1412445, %._crit_edge438 ], [ %.1402447, %.loopexit424 ] ; 2 uses
  %.2 = phi ptr [ %.1407446, %._crit_edge438 ], [ %.1448, %.loopexit424 ] ; 2 uses
  %i.kb = load i32, ptr %1, align 4, !tbaa !31
  %i.kc = sext i32 %i.kb to i64
  %.not228 = icmp sgt i64 %indvars.iv480, %i.kc
  br i1 %.not228, label %bb.bf, label %.loopexit

bb.bd:                                            ; preds = %bb.ay
  %i.kd = getelementptr inbounds i8, ptr %.0397451, i64 -4
  %i.ke = load i64, ptr %i.dd, align 8, !tbaa !83
  %i.kf = shl i64 %i.ke, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kd, i8 0, i64 %i.kf, i1 false)
  %i.kg = load i32, ptr %i.bs, align 8, !tbaa !85
  %i.kh = icmp sgt i32 %i.kg, 1
  br i1 %i.kh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %.3414 = phi ptr [ %.2413, %bb.bc ], [ %.1402447, %bb.be ], [ %.1412445, %bb.bd ] ; 2 uses
  %.3409 = phi ptr [ %.2408, %bb.bc ], [ %.1448, %bb.be ], [ %.1407446, %bb.bd ] ; 2 uses
  %.3404 = phi ptr [ %.2403, %bb.bc ], [ %.1412445, %bb.be ], [ %.1402447, %bb.bd ] ; 3 uses
  %.3 = phi ptr [ %.2, %bb.bc ], [ %.1407446, %bb.be ], [ %.1448, %bb.bd ] ; 3 uses
  %i.ki = load ptr, ptr %i.es, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !27
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 128
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !28
  %i.kn = mul i64 %i.km, %indvars.iv480
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 5 uses
  store i8 1, ptr %i.ko, align 1, !tbaa !15
  %i.kq = load ptr, ptr %i.x, align 8, !tbaa !82, !nonnull !77, !align !78
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !33
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %i.kp, i64 %i.kt
  store i8 1, ptr %i.ku, align 1, !tbaa !15
  %i.kv = load i32, ptr %i.bs, align 8, !tbaa !85
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %32 = trunc nuw nsw i64 %indvars.iv480 to i32
  %33 = sub nsw i32 %32, %i.w
  %i.kx = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.ky = load i64, ptr %i.eo, align 8, !tbaa !28
  %34 = sext i32 %33 to i64                       ; 2 uses
  %i.kz = mul i64 %i.ky, %34
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  %i.lb = load ptr, ptr %i.ep, align 8, !tbaa !27
  %i.lc = load i64, ptr %i.eq, align 8, !tbaa !28
  %i.ld = mul i64 %i.lc, %34
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.ld
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.0163 = phi ptr [ %i.la, %bb.bg ], [ %.3, %bb.bf ]
  %.0162 = phi ptr [ %i.le, %bb.bg ], [ %.3404, %bb.bf ]
  %i.lf = load ptr, ptr %i.x, align 8, !tbaa !82, !nonnull !77, !align !78 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !33
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %.lr.ph443, label %.loopexit

.lr.ph443:                                        ; preds = %bb.bh, %.critedge
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %.critedge ], [ 0, %bb.bh ] ; 11 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.0399449, i64 %indvars.iv477 ; 3 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !21 ; 10 uses
  %i.ll = load i32, ptr %i.et, align 8, !tbaa !67
  %i.lm = icmp sgt i32 %i.lk, %i.ll
  br i1 %i.lm, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %.lr.ph443
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.0163, i64 %indvars.iv477
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !175
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.0162, i64 %indvars.iv477
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !175
  %i.lr = sext i16 %i.lo to i32                   ; 2 uses
  %i.ls = call i32 @llvm.abs.i32(i32 %i.lr, i1 true) ; 2 uses
  %i.lt = sext i16 %i.lq to i32                   ; 2 uses
  %i.lu = call i32 @llvm.abs.i32(i32 %i.lt, i1 true)
  %i.lv = shl nuw nsw i32 %i.lu, 15               ; 2 uses
  %i.lw = mul nuw nsw i32 %i.ls, 13573
  %i.lx = icmp samesign ult i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %bb.bi
  %i.ly = getelementptr i8, ptr %i.lj, i64 -4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !21
  %i.ma = icmp sgt i32 %i.lk, %i.lz
  br i1 %i.ma, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !21
  %.not232 = icmp slt i32 %i.lk, %i.mc
  br i1 %.not232, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.md = load i32, ptr %i.eu, align 4, !tbaa !68
  %i.me = icmp sgt i32 %i.lk, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv477 ; 4 uses
  br i1 %i.me, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  store i8 2, ptr %i.mf, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.mf, ptr %i.a, align 8, !tbaa !41
  %i.mg = load ptr, ptr %i.ev, align 8, !tbaa !47 ; 3 uses
  %i.mh = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -8
  %.not.i.i258 = icmp eq ptr %i.mg, %i.mi
  br i1 %.not.i.i258, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !41
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.mj, ptr %i.ev, align 8, !tbaa !47
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit

bb.bo:                                            ; preds = %bb.bm
  invoke void @_ZNSt5dequeIPhSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit unwind label %bb.bp

_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit:       ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.gd

bb.bq:                                            ; preds = %bb.bl
  store i8 0, ptr %i.mf, align 1, !tbaa !15
  br label %.critedge

bb.br:                                            ; preds = %bb.bi
  %i.ml = mul nuw i32 %i.ls, 79109
  %i.mm = icmp sgt i32 %i.lv, %i.ml
  br i1 %i.mm, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0398450, i64 %indvars.iv477
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !21
  %i.mp = icmp sgt i32 %i.lk, %i.mo
  br i1 %i.mp, label %bb.bt, label %.thread

bb.bt:                                            ; preds = %bb.bs
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.0397451, i64 %indvars.iv477
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !21
  %.not229 = icmp slt i32 %i.lk, %i.mr
  br i1 %.not229, label %.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ms = load i32, ptr %i.eu, align 4, !tbaa !68
  %i.mt = icmp sgt i32 %i.lk, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv477 ; 4 uses
  br i1 %i.mt, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  store i8 2, ptr %i.mu, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.mu, ptr %i.b, align 8, !tbaa !41
  %i.mv = load ptr, ptr %i.ev, align 8, !tbaa !47 ; 3 uses
  %i.mw = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -8
  %.not.i.i260 = icmp eq ptr %i.mv, %i.mx
  br i1 %.not.i.i260, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !41
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.my, ptr %i.ev, align 8, !tbaa !47
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit262

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZNSt5dequeIPhSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit262 unwind label %bb.by

_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit262:    ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.gd

bb.bz:                                            ; preds = %bb.bu
  store i8 0, ptr %i.mu, align 1, !tbaa !15
  br label %.critedge

bb.ca:                                            ; preds = %bb.br
  %i.na = xor i32 %i.lt, %i.lr
  %.inv = icmp sgt i32 %i.na, -1
  %i.nb = select i1 %.inv, i32 1, i32 -1          ; 2 uses
  %i.nc = trunc nuw nsw i64 %indvars.iv477 to i32 ; 2 uses
  %i.nd = sub nsw i32 %i.nc, %i.nb
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %.0398450, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !21
  %i.nh = icmp sgt i32 %i.lk, %i.ng
  br i1 %i.nh, label %bb.cb, label %.thread

bb.cb:                                            ; preds = %bb.ca
  %i.ni = add nsw i32 %i.nb, %i.nc
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %.0397451, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !21
  %i.nm = icmp sgt i32 %i.lk, %i.nl
  br i1 %i.nm, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %bb.cb
  %i.nn = load i32, ptr %i.eu, align 4, !tbaa !68
  %i.no = icmp sgt i32 %i.lk, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv477 ; 4 uses
  br i1 %i.no, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  store i8 2, ptr %i.np, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.np, ptr %i.c, align 8, !tbaa !41
  %i.nq = load ptr, ptr %i.ev, align 8, !tbaa !47 ; 3 uses
  %i.nr = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -8
  %.not.i.i263 = icmp eq ptr %i.nq, %i.ns
  br i1 %.not.i.i263, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.np, ptr %i.nq, align 8, !tbaa !41
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.nt, ptr %i.ev, align 8, !tbaa !47
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit265

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZNSt5dequeIPhSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit265 unwind label %bb.cg

_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit265:    ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.gd

bb.ch:                                            ; preds = %bb.cc
  store i8 0, ptr %i.np, align 1, !tbaa !15
  br label %.critedge

.thread:                                          ; preds = %bb.ca, %bb.cb, %bb.bs, %bb.bt, %bb.bk, %bb.bj, %.lr.ph443
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv477
  store i8 1, ptr %i.nv, align 1, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit265, %bb.bz, %bb.ch, %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit262, %bb.bq, %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit, %.thread
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %i.nw = load ptr, ptr %i.x, align 8, !tbaa !82, !nonnull !77, !align !78 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !33
  %i.nz = sext i32 %i.ny to i64
  %i.oa = icmp slt i64 %indvars.iv.next478, %i.nz
  br i1 %i.oa, label %.lr.ph443, label %.loopexit, !llvm.loop !144

.loopexit:                                        ; preds = %.critedge, %bb.bh, %bb.bc
  %i.ob = phi ptr [ %i.fh, %bb.bc ], [ %i.lf, %bb.bh ], [ %i.nw, %.critedge ] ; 2 uses
  %i.oc = phi ptr [ %i.jz, %bb.bc ], [ %i.lf, %bb.bh ], [ %i.nw, %.critedge ]
  %i.od = phi ptr [ %i.ka, %bb.bc ], [ %i.lf, %bb.bh ], [ %i.nw, %.critedge ]
  %.4415 = phi ptr [ %.2413, %bb.bc ], [ %.3414, %bb.bh ], [ %.3414, %.critedge ]
  %.4410 = phi ptr [ %.2408, %bb.bc ], [ %.3409, %bb.bh ], [ %.3409, %.critedge ]
  %.4405 = phi ptr [ %.2403, %bb.bc ], [ %.3404, %bb.bh ], [ %.3404, %.critedge ]
  %.4 = phi ptr [ %.2, %bb.bc ], [ %.3, %bb.bh ], [ %.3, %.critedge ]
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %i.oe = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %.not = icmp sgt i64 %indvars.iv.next481, %i.of
  br i1 %.not, label %._crit_edge456, label %bb.ay, !llvm.loop !145

bb.ci:                                            ; preds = %._crit_edge456
  %i.og = load i32, ptr %1, align 4, !tbaa !31
  %i.oh = add nsw i32 %i.og, 2
  %i.oi = sext i32 %i.oh to i64
  %i.oj = load i64, ptr %i.dd, align 8, !tbaa !83
  %i.ok = mul nsw i64 %i.oj, %i.oi
  %i.ol = getelementptr inbounds i8, ptr %i.fg, i64 %i.ok
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge456, %bb.ci
  %i.om = phi ptr [ %i.ol, %bb.ci ], [ %i.fg, %._crit_edge456 ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !29
  %i.op = icmp eq i32 %.sroa.speculated, %i.oo
  br i1 %i.op, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.oq = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !178
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.os = sext i32 %.lcssa426 to i64
  %i.ot = load i64, ptr %i.dd, align 8, !tbaa !83
  %i.ou = mul nsw i64 %i.ot, %i.os
  %i.ov = getelementptr inbounds i8, ptr %i.fg, i64 %i.ou
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ow = phi ptr [ %i.or, %bb.ck ], [ %i.ov, %bb.cl ]
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.om to i64               ; 2 uses
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = trunc i64 %i.oz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv13parallelCannyclERKNS_5RangeEE29__cv_trace_location_region646)
          to label %.preheader unwind label %bb.cu

.preheader:                                       ; preds = %bb.cm
  %i.pb = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 29 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.pd = load ptr, ptr %i.pb, align 8, !tbaa !39 ; 2 uses
  %i.pe = load ptr, ptr %i.pc, align 8, !tbaa !39
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader
  %i.pg = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 14 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %19, i64 64
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph458, %bb.fh
  %i.pl = phi ptr [ %i.pd, %.lr.ph458 ], [ %i.ww, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.pm = load ptr, ptr %i.pg, align 8, !tbaa !40, !noalias !179 ; 2 uses
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.po = getelementptr inbounds i8, ptr %i.pl, i64 -8 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !41 ; 2 uses
  store ptr %i.pp, ptr %i.d, align 8, !tbaa !41
  br label %_ZNSt5dequeIPhSaIS0_EE8pop_backEv.exit

bb.cp:                                            ; preds = %bb.cn
  %i.pq = load ptr, ptr %i.ph, align 8, !tbaa !42, !noalias !179
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !43
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 504
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !41
  store ptr %i.pu, ptr %i.d, align 8, !tbaa !41
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef 512) #20
  %i.pv = load ptr, ptr %i.ph, align 8, !tbaa !45
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -8 ; 2 uses
  store ptr %i.pw, ptr %i.ph, align 8, !tbaa !42
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !43 ; 3 uses
  store ptr %i.px, ptr %i.pg, align 8, !tbaa !40
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 512
  store ptr %i.py, ptr %i.pi, align 8, !tbaa !46
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 504
  %.pre488 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %_ZNSt5dequeIPhSaIS0_EE8pop_backEv.exit

_ZNSt5dequeIPhSaIS0_EE8pop_backEv.exit:           ; preds = %bb.co, %bb.cp
  %i.qa = phi ptr [ %i.pp, %bb.co ], [ %.pre488, %bb.cp ] ; 5 uses
  %storemerge.i = phi ptr [ %i.po, %bb.co ], [ %i.pz, %bb.cp ]
  store ptr %storemerge.i, ptr %i.pb, align 8, !tbaa !47
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = sub i64 %i.qb, %i.oy
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = icmp ult i32 %i.qd, %i.pa
  br i1 %i.qe, label %bb.cq, label %bb.ef

bb.cq:                                            ; preds = %_ZNSt5dequeIPhSaIS0_EE8pop_backEv.exit
  %i.qf = load i64, ptr %i.dd, align 8, !tbaa !83 ; 3 uses
  %i.qg = xor i64 %i.qf, -1
  %i.qh = getelementptr inbounds i8, ptr %i.qa, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !15
  %.not216 = icmp eq i8 %i.qi, 0
  br i1 %.not216, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.qj = sub nsw i64 0, %i.qf
  %i.qk = getelementptr inbounds i8, ptr %i.qa, i64 %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.qk, i64 -1
  store i8 2, ptr %i.ql, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.qm = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.qn = load i64, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %i.qo = sub i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.qm, i64 %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 -1 ; 2 uses
  store ptr %i.qq, ptr %i.e, align 8, !tbaa !41
  %i.qr = load ptr, ptr %i.pb, align 8, !tbaa !47 ; 3 uses
  %i.qs = load ptr, ptr %i.pi, align 8, !tbaa !48
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 -8
  %.not.i.i267 = icmp eq ptr %i.qr, %i.qt
  br i1 %.not.i.i267, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !41
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store ptr %i.qu, ptr %i.pb, align 8, !tbaa !47
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269

bb.ct:                                            ; preds = %bb.cr
  invoke void @_ZNSt5dequeIPhSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269_crit_edge unwind label %bb.cv

._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269_crit_edge: ; preds = %bb.ct
  %.pre494.pre = load i64, ptr %i.dd, align 8, !tbaa !83
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269

_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269:    ; preds = %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269_crit_edge, %bb.cs
  %.pre494 = phi i64 [ %.pre494.pre, %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269_crit_edge ], [ %i.qn, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.pre493 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cm
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.cv:                                            ; preds = %bb.ct
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.fi

bb.cw:                                            ; preds = %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269, %bb.cq
  %i.qx = phi i64 [ %.pre494, %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269 ], [ %i.qf, %bb.cq ] ; 2 uses
  %i.qy = phi ptr [ %.pre493, %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit269 ], [ %i.qa, %bb.cq ] ; 2 uses
  %i.qz = sub nsw i64 0, %i.qx
  %i.ra = getelementptr inbounds i8, ptr %i.qy, i64 %i.qz ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !15
  %.not217 = icmp eq i8 %i.rb, 0
  br i1 %.not217, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  store i8 2, ptr %i.ra, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.rc = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.rd = load i64, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %i.re = sub i64 0, %i.rd
  %i.rf = getelementptr inbounds i8, ptr %i.rc, i64 %i.re ; 2 uses
  store ptr %i.rf, ptr %i.f, align 8, !tbaa !41
  %i.rg = load ptr, ptr %i.pb, align 8, !tbaa !47 ; 3 uses
  %i.rh = load ptr, ptr %i.pi, align 8, !tbaa !48
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -8
  %.not.i.i270 = icmp eq ptr %i.rg, %i.ri
  br i1 %.not.i.i270, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !41
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.rj, ptr %i.pb, align 8, !tbaa !47
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272

bb.cz:                                            ; preds = %bb.cx
  invoke void @_ZNSt5dequeIPhSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272_crit_edge unwind label %bb.da

._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272_crit_edge: ; preds = %bb.cz
  %.pre496.pre = load i64, ptr %i.dd, align 8, !tbaa !83
  br label %_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272

_ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272:    ; preds = %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272_crit_edge, %bb.cy
  %.pre496 = phi i64 [ %.pre496.pre, %._ZNSt5dequeIPhSaIS0_EE9push_backEOS0_.exit272_crit_edge ], [ %i.rd, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %.pre495 = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rk = landingpad { ptr, i32 }
          cleanup
end_hunk_0
