inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh15initializepoolsEv:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !308
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16   ; 3 uses
  %i.r = icmp sgt i32 %i.q, %i.k
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.q, ptr %i.l, align 8, !tbaa !340
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = phi i32 [ %i.k, %bb.d ], [ %i.q, %bb.e ], [ %i.k, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !345  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 3 uses
  %i.x = icmp sgt i32 %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.w, ptr %i.l, align 8, !tbaa !340
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.y = phi i32 [ %i.s, %bb.g ], [ %i.w, %bb.h ], [ %i.s, %bb.f ] ; 4 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !292  ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !191
  %.not34 = icmp eq i32 %i.ab, 0
  br i1 %.not34, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !203
  %.not35 = icmp ne i32 %i.ad, 0
  %i.ae = icmp eq i32 %i.y, 0
  %or.cond = select i1 %.not35, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %.old = icmp eq i32 %i.y, 0
  br i1 %.old, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 1, ptr %i.l, align 8, !tbaa !340
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.af = phi i32 [ %i.y, %bb.k ], [ 1, %bb.l ], [ %i.y, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %.not36 = icmp eq ptr %i.ah, null
  br i1 %.not36, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %.not37 = icmp eq ptr %i.aj, null
  br i1 %.not37, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68708
  store i32 1, ptr %i.ak, align 4, !tbaa !336
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = load i32, ptr %i.z, align 8, !tbaa !163
  %.not38 = icmp eq i32 %i.al, 0                  ; 2 uses
  br i1 %.not38, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !177
  %.not39 = icmp eq i32 %i.an, 0
  br i1 %.not39, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !182
  %.not40 = icmp eq i32 %i.ap, 0
  br i1 %.not40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68720
  store i32 1, ptr %i.aq, align 8, !tbaa !339
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !346
  %.not41 = icmp eq i32 %i.as, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = add nsw i32 %i.af, 5
  %i.au = add nsw i32 %i.af, 3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68656
  store i32 %i.au, ptr %i.av, align 8, !tbaa !347
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aw = add nsw i32 %i.af, 3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ax = phi i32 [ %i.aw, %bb.v ], [ %i.at, %bb.u ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68652 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !342
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !204
  %.not42 = icmp eq i32 %i.ba, 0                  ; 2 uses
  br i1 %.not42, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !308 ; 2 uses
  %.not45 = icmp eq ptr %i.bb, null
  %spec.select70 = select i1 %.not45, ptr %i.i, ptr %i.bb
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn = phi ptr [ %spec.select70, %bb.y ], [ %i.i, %bb.x ]
  %.sink77.in = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %.sink77 = load i32, ptr %.sink77.in, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sink77, i32 1) ; 2 uses
  store i32 %spec.select, ptr %i.bc, align 8, !tbaa !341
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !182
  %.not43 = icmp ne i32 %i.be, 0
  %i.bf = zext i1 %.not43 to i32                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 68648
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !341
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bh = phi i32 [ %i.bf, %bb.aa ], [ %spec.select, %bb.z ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68720 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !339
  %.not46 = icmp eq i32 %i.bj, 0
  br i1 %.not46, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.bl = add nuw nsw i32 %i.bh, 1                ; 2 uses
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !341
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bm = phi i32 [ %i.bl, %bb.ac ], [ %i.bh, %bb.ab ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.bo = add nsw i32 %i.bm, %i.ax                ; 4 uses
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68668
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !348
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 2 uses
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !343
  br i1 %.not38, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !177
  %.not48 = icmp eq i32 %i.bt, 0
  br i1 %.not48, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %brmerge = or i1 %.not32, %.not42
  %i.bu = shl i32 %i.bo, 3                        ; 2 uses
  br i1 %brmerge, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = add i32 %i.bu, 32
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.bw = add i32 %i.bu, 24
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.bx = shl i32 %i.bo, 3
  %i.by = add i32 %i.bx, 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.024 = phi i32 [ %i.bv, %bb.ag ], [ %i.bw, %bb.ah ], [ %i.by, %bb.ai ]
  %i.bz = sext i32 %.024 to i64
  %i.ca = add nsw i64 %i.bz, 3
  %i.cb = lshr i64 %i.ca, 2                       ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 2 uses
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !312
  %i.ce = shl i64 %i.cb, 3
  %1 = trunc i64 %i.ce to i32
  %2 = add i32 %1, 24                             ; 2 uses
  %i.cf = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #41 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !261
  invoke void @_ZN10tetgenmesh10memorypoolC1Eiiii(ptr noundef nonnull align 8 dereferenceable(88) %i.cf, i32 noundef %2, i32 noundef %i.ch, i32 noundef 8, i32 noundef 0)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !305
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 156
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !258
  %.not51 = icmp eq i32 %i.cl, 0
  br i1 %.not51, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !279
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.256, i32 noundef %i.cn) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 88) #42
  br label %bb.da

bb.an:                                            ; preds = %bb.al, %bb.ak
  %3 = sext i32 %2 to i64
  %i.cq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %3) #41 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 68584
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !349
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.cs = load i32, ptr %i.l, align 8, !tbaa !340 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  %scevgep = getelementptr i8, ptr %i.cq, i64 24
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cv, i1 false), !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.an
  %i.cw = load i32, ptr %i.bn, align 8, !tbaa !341 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %.preheader
  %i.cy = load i32, ptr %i.ay, align 4, !tbaa !342
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3
  %scevgep75 = getelementptr i8, ptr %i.cq, i64 %i.da
  %i.db = zext nneg i32 %i.cw to i64
  %i.dc = shl nuw nsw i64 %i.db, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep75, i8 0, i64 %i.dc, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph73, %.preheader
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !343
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.de ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !292 ; 8 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !163
  %.not53.a = icmp eq i32 %i.dh, 0
  br i1 %.not53.a, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !346
  %.not54.a = icmp eq i32 %i.dj, 0
  br i1 %.not54.a, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !177
  %.not55.a = icmp eq i32 %i.dl, 0
  br i1 %.not55.a, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge
  %i.dm = getelementptr i8, ptr %i.df, i64 16
  store ptr null, ptr %i.dm, align 8, !tbaa !306
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !204
  %.not56.a = icmp eq i32 %i.do, 0
  br i1 %.not56.a, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !344
  %.not57.a = icmp eq ptr %i.dp, null
  br i1 %.not57.a, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = getelementptr i8, ptr %i.df, i64 24
  store ptr null, ptr %i.dq, align 8, !tbaa !306
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as, %bb.ap
  %i.dr = load i32, ptr %i.cd, align 8, !tbaa !312
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ds ; 2 uses
  store i32 -1, ptr %i.dt, align 4, !tbaa !33
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  store i32 0, ptr %i.du, align 4, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 68684
  store i32 22, ptr %i.dv, align 4, !tbaa !331
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 68676
  store i32 12, ptr %i.dw, align 4, !tbaa !350
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 68672
  store i32 12, ptr %i.dx, align 8, !tbaa !333
  %i.dy = load ptr, ptr %0, align 8, !tbaa !308   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !212
  %i.ed = icmp sgt i32 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = add nsw i32 %i.ea, %i.ee                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 68644
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !332
  %i.eh = add nsw i32 %i.ef, 12                   ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 68680
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !334
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !211
  %.not58.a = icmp eq i32 %i.ek, 0
  br i1 %.not58.a, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !177
  %.not59.a = icmp eq i32 %i.em, 0
  br i1 %.not59.a, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 200
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65
  %.not60 = icmp eq ptr %i.eo, null
  br i1 %.not60, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.ej, align 8, !tbaa !211
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.aw
  %i.ep = shl i32 %i.eh, 3
  %i.eq = add i32 %i.ep, 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.er = shl i32 %i.eh, 3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread
  %.023 = phi i32 [ %i.eq, %.thread ], [ %i.er, %bb.ax ] ; 2 uses
  %i.es = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #41 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 164
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !260
  invoke void @_ZN10tetgenmesh10memorypoolC1Eiiii(ptr noundef nonnull align 8 dereferenceable(88) %i.es, i32 noundef %.023, i32 noundef %i.eu, i32 noundef 8, i32 noundef 16)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !327
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !292 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 156
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !258
  %.not62.a = icmp eq i32 %i.ey, 0
  br i1 %.not62.a, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !279
  %i.fb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.257, i32 noundef %.023, i32 noundef %i.fa) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !292
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 88) #42
  br label %bb.da

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.fd = phi ptr [ %.pre, %bb.ba ], [ %i.ew, %bb.az ] ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !163
  %.not63.a = icmp eq i32 %i.fe, 0
  br i1 %.not63.a, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !177
  %.not64.a = icmp eq i32 %i.fg, 0
  br i1 %.not64.a, label %bb.cj, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 68692
  store i32 11, ptr %i.fh, align 4, !tbaa !337
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 68708
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !336
  %.not65.a = icmp eq i32 %i.fj, 0
  %. = select i1 %.not65.a, i32 22, i32 24        ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 68688
  store i32 %., ptr %i.fk, align 8, !tbaa !338
  %i.fl = add nuw nsw i32 %., 2
  %i.fm = load i32, ptr %i.bi, align 8, !tbaa !339
  %i.fn = add nsw i32 %i.fl, %i.fm
  %i.fo = shl i32 %i.fn, 3                        ; 3 uses
  %i.fp = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #41 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 168
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !262
  invoke void @_ZN10tetgenmesh10memorypoolC1Eiiii(ptr noundef nonnull align 8 dereferenceable(88) %i.fp, i32 noundef %i.fo, i32 noundef %i.fr, i32 noundef 8, i32 noundef 8)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fp, ptr %i.fs, align 8, !tbaa !351
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 156
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !258
  %.not66 = icmp eq i32 %i.fv, 0
  br i1 %.not66, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 52
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !279
  %i.fy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.258, i32 noundef %i.fo, i32 noundef %i.fx) ; 0 uses
end_hunk_0
