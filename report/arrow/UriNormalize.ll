inline.NumInlined: 48
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uriNormalizeSyntaxEngineA:bb.a

pred.store.if560:                                 ; preds = %pred.store.continue559
  %i.jl = extractelement <4 x i8> %wide.load553, i64 3
  %i.jm = or disjoint i8 %i.jl, 32
  store i8 %i.jm, ptr %next.gep552, align 1, !tbaa !17
  br label %pred.store.continue561

pred.store.continue561:                           ; preds = %pred.store.if560, %pred.store.continue559
  %index.next562 = add nuw i64 %index548, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next562, %n.vec546
  br i1 %i.jn, label %vec.epilog.middle.block563, label %vec.epilog.vector.body547, !llvm.loop !37

vec.epilog.middle.block563:                       ; preds = %pred.store.continue561
  %cmp.n564 = icmp eq i64 %i.gf, %n.vec546
  br i1 %cmp.n564, label %uriLowercaseInplaceA.exit231.loopexit, label %.preheader.i227.preheader

.preheader.i227.preheader:                        ; preds = %iter.check540, %vec.epilog.iter.check542, %vec.epilog.middle.block563
  %.018.i228.ph = phi ptr [ %i.fx, %iter.check540 ], [ %i.gg, %vec.epilog.iter.check542 ], [ %i.iv, %vec.epilog.middle.block563 ]
  br label %.preheader.i227

.preheader.i227:                                  ; preds = %.preheader.i227.preheader, %bb.ad
  %.018.i228 = phi ptr [ %i.jr, %bb.ad ], [ %.018.i228.ph, %.preheader.i227.preheader ] ; 3 uses
  %i.jo = load i8, ptr %.018.i228, align 1, !tbaa !17 ; 2 uses
  %i.jp = add i8 %i.jo, -65
  %or.cond17.i229 = icmp ult i8 %i.jp, 26
  br i1 %or.cond17.i229, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i227
  %i.jq = or disjoint i8 %i.jo, 32
  store i8 %i.jq, ptr %.018.i228, align 1, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i227
  %i.jr = getelementptr inbounds nuw i8, ptr %.018.i228, i64 1 ; 2 uses
  %exitcond.not.i230 = icmp eq ptr %i.jr, %i.gc
  br i1 %exitcond.not.i230, label %uriLowercaseInplaceA.exit231.loopexit, label %.preheader.i227, !llvm.loop !38

bb.ae:                                            ; preds = %bb.aa
  %i.js = icmp eq ptr %i.gc, null
  br i1 %i.js, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jt = ptrtoint ptr %i.gc to i64
  %i.ju = ptrtoint ptr %i.fx to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 5 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %uriLowercaseMallocA.exit242, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jy = icmp slt i32 %i.jw, 0
  br i1 %i.jy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jz = load ptr, ptr %3, align 8, !tbaa !31
  %i.ka = and i64 %i.jv, 2147483647               ; 3 uses
  %i.kb = tail call ptr %i.jz(ptr noundef nonnull %3, i64 noundef %i.ka) #7, !inline_history !33 ; 7 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.ai, label %.lr.ph.i234.preheader

.lr.ph.i234.preheader:                            ; preds = %bb.ah
  %xtraiter658 = and i64 %i.jv, 1
  %i.kd = icmp eq i64 %i.ka, 1
  br i1 %i.kd, label %.lr.ph.i234.epil.preheader, label %.lr.ph.i234.preheader.new

.lr.ph.i234.preheader.new:                        ; preds = %.lr.ph.i234.preheader
  %unroll_iter661 = and i64 %i.jv, 2147483646
  br label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234, %.lr.ph.i234.preheader.new
  %indvars.iv.i235 = phi i64 [ 0, %.lr.ph.i234.preheader.new ], [ %indvars.iv.next.i238.1, %.lr.ph.i234 ] ; 4 uses
  %niter662 = phi i64 [ 0, %.lr.ph.i234.preheader.new ], [ %niter662.next.1, %.lr.ph.i234 ]
  %i.ke = load ptr, ptr %i.fw, align 8, !tbaa !24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %indvars.iv.i235
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !17  ; 3 uses
  %i.kh = add i8 %i.kg, -65
  %or.cond.i236 = icmp ult i8 %i.kh, 26
  %i.ki = or disjoint i8 %i.kg, 32
  %spec.select.i237 = select i1 %or.cond.i236, i8 %i.ki, i8 %i.kg
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv.i235
  store i8 %spec.select.i237, ptr %i.kj, align 1, !tbaa !17
  %indvars.iv.next.i238 = or disjoint i64 %indvars.iv.i235, 1 ; 2 uses
  %i.kk = load ptr, ptr %i.fw, align 8, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv.next.i238
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !17  ; 3 uses
  %i.kn = add i8 %i.km, -65
  %or.cond.i236.1 = icmp ult i8 %i.kn, 26
  %i.ko = or disjoint i8 %i.km, 32
  %spec.select.i237.1 = select i1 %or.cond.i236.1, i8 %i.ko, i8 %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv.next.i238
  store i8 %spec.select.i237.1, ptr %i.kp, align 1, !tbaa !17
  %indvars.iv.next.i238.1 = add nuw nsw i64 %indvars.iv.i235, 2 ; 2 uses
  %niter662.next.1 = add i64 %niter662, 2         ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %._crit_edge.i240.unr-lcssa, label %.lr.ph.i234, !llvm.loop !34

._crit_edge.i240.unr-lcssa:                       ; preds = %.lr.ph.i234
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %._crit_edge.i240, label %.lr.ph.i234.epil.preheader

.lr.ph.i234.epil.preheader:                       ; preds = %._crit_edge.i240.unr-lcssa, %.lr.ph.i234.preheader
  %indvars.iv.i235.epil.init = phi i64 [ 0, %.lr.ph.i234.preheader ], [ %indvars.iv.next.i238.1, %._crit_edge.i240.unr-lcssa ] ; 2 uses
  %lcmp.mod660 = trunc i64 %i.jv to i1
  tail call void @llvm.assume(i1 %lcmp.mod660)
  %i.kq = load ptr, ptr %i.fw, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.i235.epil.init
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !17  ; 3 uses
  %i.kt = add i8 %i.ks, -65
  %or.cond.i236.epil = icmp ult i8 %i.kt, 26
  %i.ku = or disjoint i8 %i.ks, 32
  %spec.select.i237.epil = select i1 %or.cond.i236.epil, i8 %i.ku, i8 %i.ks
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv.i235.epil.init
  store i8 %spec.select.i237.epil, ptr %i.kv, align 1, !tbaa !17
  br label %._crit_edge.i240

._crit_edge.i240:                                 ; preds = %._crit_edge.i240.unr-lcssa, %.lr.ph.i234.epil.preheader
  store ptr %i.kb, ptr %i.fw, align 8, !tbaa !24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka ; 2 uses
  store ptr %i.kw, ptr %i.gb, align 8, !tbaa !24
  br label %uriLowercaseMallocA.exit242

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.ft, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit242:                      ; preds = %._crit_edge.i240, %bb.af
  %i.kx = phi ptr [ %i.kw, %._crit_edge.i240 ], [ %i.gc, %bb.af ]
  %i.ky = phi ptr [ %i.kb, %._crit_edge.i240 ], [ %i.fx, %bb.af ]
  %i.kz = or disjoint i32 %i.ft, 4                ; 2 uses
  store i32 %i.kz, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceA.exit231

uriLowercaseInplaceA.exit231.loopexit:            ; preds = %bb.ad, %vec.epilog.middle.block563, %middle.block537
  %.pre = load ptr, ptr %i.fw, align 8, !tbaa !35
  %.pre331 = load ptr, ptr %i.gb, align 8, !tbaa !39
  br label %uriLowercaseInplaceA.exit231

uriLowercaseInplaceA.exit231:                     ; preds = %uriLowercaseInplaceA.exit231.loopexit, %bb.ab, %uriLowercaseMallocA.exit242
  %i.la = phi i32 [ %i.ft, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.ft, %bb.ab ], [ %i.kz, %uriLowercaseMallocA.exit242 ]
  %i.lb = phi ptr [ %.pre331, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.gc, %bb.ab ], [ %i.kx, %uriLowercaseMallocA.exit242 ]
  %i.lc = phi ptr [ %.pre, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.fx, %bb.ab ], [ %i.ky, %uriLowercaseMallocA.exit242 ]
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.lb, ptr %i.le, align 8, !tbaa !21
  br label %uriContainsUglyPercentEncodingA.exit

bb.aj:                                            ; preds = %bb.z
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !20 ; 2 uses
  %.not177 = icmp eq ptr %i.lg, null
  br i1 %.not177, label %uriContainsUglyPercentEncodingA.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lh = load ptr, ptr %i.fv, align 8, !tbaa !40
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.al, label %uriContainsUglyPercentEncodingA.exit

bb.al:                                            ; preds = %bb.ak
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !41
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.am, label %uriContainsUglyPercentEncodingA.exit

bb.am:                                            ; preds = %bb.al
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !23
  %.not178 = icmp eq i32 %i.ln, 0
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not178, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.lg, ptr noundef %i.lo)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.lp = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.lf, ptr noundef %i.lo, ptr noundef %3)
  %.not179 = icmp eq i32 %i.lp, 0
  br i1 %.not179, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.ft, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.lq = or disjoint i32 %i.ft, 4                ; 2 uses
  store i32 %i.lq, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.lr = phi i32 [ %i.lq, %bb.aq ], [ %i.ft, %bb.an ] ; 4 uses
  %i.ls = load ptr, ptr %i.lf, align 8, !tbaa !20 ; 26 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !21 ; 3 uses
  %i.lv = icmp ne ptr %i.ls, null
  %i.lw = icmp ugt ptr %i.lu, %i.ls
  %or.cond16.i243 = and i1 %i.lv, %i.lw
  br i1 %or.cond16.i243, label %iter.check627, label %uriContainsUglyPercentEncodingA.exit

iter.check627:                                    ; preds = %bb.ar
  %4 = ptrtoaddr ptr %i.lu to i64
  %5 = ptrtoaddr ptr %i.ls to i64
  %i.lx = sub i64 %4, %5                          ; 7 uses
  %min.iters.check566 = icmp ult i64 %i.lx, 4
  br i1 %min.iters.check566, label %.preheader.i244.preheader, label %vector.main.loop.iter.check567

vector.main.loop.iter.check567:                   ; preds = %iter.check627
  %min.iters.check568 = icmp ult i64 %i.lx, 16
  br i1 %min.iters.check568, label %vec.epilog.ph631, label %vector.ph569

vector.ph569:                                     ; preds = %vector.main.loop.iter.check567
  %n.mod.vf570 = and i64 %i.lx, 12
  %n.vec571 = and i64 %i.lx, -16                  ; 4 uses
  %i.ly = getelementptr i8, ptr %i.ls, i64 %n.vec571
  br label %vector.body572

vector.body572:                                   ; preds = %pred.store.continue622, %vector.ph569
  %index573 = phi i64 [ 0, %vector.ph569 ], [ %index.next623, %pred.store.continue622 ] ; 17 uses
  %next.gep574 = getelementptr i8, ptr %i.ls, i64 %index573 ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep575 = getelementptr i8, ptr %i.lz, i64 1
  %i.ma = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep576 = getelementptr i8, ptr %i.ma, i64 2
  %i.mb = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep577 = getelementptr i8, ptr %i.mb, i64 3
  %i.mc = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep578 = getelementptr i8, ptr %i.mc, i64 4
  %i.md = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep579 = getelementptr i8, ptr %i.md, i64 5
  %i.me = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep580 = getelementptr i8, ptr %i.me, i64 6
  %i.mf = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep581 = getelementptr i8, ptr %i.mf, i64 7
  %i.mg = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep582 = getelementptr i8, ptr %i.mg, i64 8
  %i.mh = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep583 = getelementptr i8, ptr %i.mh, i64 9
  %i.mi = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep584 = getelementptr i8, ptr %i.mi, i64 10
  %i.mj = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep585 = getelementptr i8, ptr %i.mj, i64 11
  %i.mk = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep586 = getelementptr i8, ptr %i.mk, i64 12
  %i.ml = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep587 = getelementptr i8, ptr %i.ml, i64 13
  %i.mm = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep588 = getelementptr i8, ptr %i.mm, i64 14
  %i.mn = getelementptr i8, ptr %i.ls, i64 %index573
  %next.gep589 = getelementptr i8, ptr %i.mn, i64 15
  %wide.load590 = load <16 x i8>, ptr %next.gep574, align 1, !tbaa !17 ; 17 uses
  %i.mo = add <16 x i8> %wide.load590, splat (i8 -65)
  %i.mp = icmp ult <16 x i8> %i.mo, splat (i8 26) ; 16 uses
  %i.mq = extractelement <16 x i1> %i.mp, i64 0
  br i1 %i.mq, label %pred.store.if591, label %pred.store.continue592

pred.store.if591:                                 ; preds = %vector.body572
  %i.mr = extractelement <16 x i8> %wide.load590, i64 0
  %i.ms = or disjoint i8 %i.mr, 32
  store i8 %i.ms, ptr %next.gep574, align 1, !tbaa !17
  br label %pred.store.continue592

pred.store.continue592:                           ; preds = %pred.store.if591, %vector.body572
  %i.mt = extractelement <16 x i1> %i.mp, i64 1
  br i1 %i.mt, label %pred.store.if593, label %pred.store.continue594

pred.store.if593:                                 ; preds = %pred.store.continue592
  %i.mu = extractelement <16 x i8> %wide.load590, i64 1
  %i.mv = or disjoint i8 %i.mu, 32
  store i8 %i.mv, ptr %next.gep575, align 1, !tbaa !17
  br label %pred.store.continue594

pred.store.continue594:                           ; preds = %pred.store.if593, %pred.store.continue592
  %i.mw = extractelement <16 x i1> %i.mp, i64 2
  br i1 %i.mw, label %pred.store.if595, label %pred.store.continue596

pred.store.if595:                                 ; preds = %pred.store.continue594
  %i.mx = extractelement <16 x i8> %wide.load590, i64 2
  %i.my = or disjoint i8 %i.mx, 32
  store i8 %i.my, ptr %next.gep576, align 1, !tbaa !17
  br label %pred.store.continue596

pred.store.continue596:                           ; preds = %pred.store.if595, %pred.store.continue594
  %i.mz = extractelement <16 x i1> %i.mp, i64 3
  br i1 %i.mz, label %pred.store.if597, label %pred.store.continue598

pred.store.if597:                                 ; preds = %pred.store.continue596
  %i.na = extractelement <16 x i8> %wide.load590, i64 3
  %i.nb = or disjoint i8 %i.na, 32
  store i8 %i.nb, ptr %next.gep577, align 1, !tbaa !17
  br label %pred.store.continue598

pred.store.continue598:                           ; preds = %pred.store.if597, %pred.store.continue596
  %i.nc = extractelement <16 x i1> %i.mp, i64 4
  br i1 %i.nc, label %pred.store.if599, label %pred.store.continue600

pred.store.if599:                                 ; preds = %pred.store.continue598
  %i.nd = extractelement <16 x i8> %wide.load590, i64 4
  %i.ne = or disjoint i8 %i.nd, 32
  store i8 %i.ne, ptr %next.gep578, align 1, !tbaa !17
  br label %pred.store.continue600

pred.store.continue600:                           ; preds = %pred.store.if599, %pred.store.continue598
  %i.nf = extractelement <16 x i1> %i.mp, i64 5
  br i1 %i.nf, label %pred.store.if601, label %pred.store.continue602

pred.store.if601:                                 ; preds = %pred.store.continue600
  %i.ng = extractelement <16 x i8> %wide.load590, i64 5
  %i.nh = or disjoint i8 %i.ng, 32
  store i8 %i.nh, ptr %next.gep579, align 1, !tbaa !17
  br label %pred.store.continue602

pred.store.continue602:                           ; preds = %pred.store.if601, %pred.store.continue600
  %i.ni = extractelement <16 x i1> %i.mp, i64 6
  br i1 %i.ni, label %pred.store.if603, label %pred.store.continue604

pred.store.if603:                                 ; preds = %pred.store.continue602
  %i.nj = extractelement <16 x i8> %wide.load590, i64 6
  %i.nk = or disjoint i8 %i.nj, 32
  store i8 %i.nk, ptr %next.gep580, align 1, !tbaa !17
  br label %pred.store.continue604

pred.store.continue604:                           ; preds = %pred.store.if603, %pred.store.continue602
  %i.nl = extractelement <16 x i1> %i.mp, i64 7
  br i1 %i.nl, label %pred.store.if605, label %pred.store.continue606

pred.store.if605:                                 ; preds = %pred.store.continue604
  %i.nm = extractelement <16 x i8> %wide.load590, i64 7
  %i.nn = or disjoint i8 %i.nm, 32
  store i8 %i.nn, ptr %next.gep581, align 1, !tbaa !17
  br label %pred.store.continue606

pred.store.continue606:                           ; preds = %pred.store.if605, %pred.store.continue604
  %i.no = extractelement <16 x i1> %i.mp, i64 8
  br i1 %i.no, label %pred.store.if607, label %pred.store.continue608

pred.store.if607:                                 ; preds = %pred.store.continue606
  %i.np = extractelement <16 x i8> %wide.load590, i64 8
  %i.nq = or disjoint i8 %i.np, 32
  store i8 %i.nq, ptr %next.gep582, align 1, !tbaa !17
  br label %pred.store.continue608

pred.store.continue608:                           ; preds = %pred.store.if607, %pred.store.continue606
  %i.nr = extractelement <16 x i1> %i.mp, i64 9
  br i1 %i.nr, label %pred.store.if609, label %pred.store.continue610

pred.store.if609:                                 ; preds = %pred.store.continue608
  %i.ns = extractelement <16 x i8> %wide.load590, i64 9
  %i.nt = or disjoint i8 %i.ns, 32
  store i8 %i.nt, ptr %next.gep583, align 1, !tbaa !17
  br label %pred.store.continue610

pred.store.continue610:                           ; preds = %pred.store.if609, %pred.store.continue608
  %i.nu = extractelement <16 x i1> %i.mp, i64 10
  br i1 %i.nu, label %pred.store.if611, label %pred.store.continue612

pred.store.if611:                                 ; preds = %pred.store.continue610
  %i.nv = extractelement <16 x i8> %wide.load590, i64 10
  %i.nw = or disjoint i8 %i.nv, 32
  store i8 %i.nw, ptr %next.gep584, align 1, !tbaa !17
  br label %pred.store.continue612

pred.store.continue612:                           ; preds = %pred.store.if611, %pred.store.continue610
  %i.nx = extractelement <16 x i1> %i.mp, i64 11
  br i1 %i.nx, label %pred.store.if613, label %pred.store.continue614

pred.store.if613:                                 ; preds = %pred.store.continue612
  %i.ny = extractelement <16 x i8> %wide.load590, i64 11
  %i.nz = or disjoint i8 %i.ny, 32
  store i8 %i.nz, ptr %next.gep585, align 1, !tbaa !17
  br label %pred.store.continue614

pred.store.continue614:                           ; preds = %pred.store.if613, %pred.store.continue612
  %i.oa = extractelement <16 x i1> %i.mp, i64 12
  br i1 %i.oa, label %pred.store.if615, label %pred.store.continue616

pred.store.if615:                                 ; preds = %pred.store.continue614
  %i.ob = extractelement <16 x i8> %wide.load590, i64 12
  %i.oc = or disjoint i8 %i.ob, 32
  store i8 %i.oc, ptr %next.gep586, align 1, !tbaa !17
  br label %pred.store.continue616

pred.store.continue616:                           ; preds = %pred.store.if615, %pred.store.continue614
  %i.od = extractelement <16 x i1> %i.mp, i64 13
  br i1 %i.od, label %pred.store.if617, label %pred.store.continue618

pred.store.if617:                                 ; preds = %pred.store.continue616
  %i.oe = extractelement <16 x i8> %wide.load590, i64 13
  %i.of = or disjoint i8 %i.oe, 32
  store i8 %i.of, ptr %next.gep587, align 1, !tbaa !17
  br label %pred.store.continue618

pred.store.continue618:                           ; preds = %pred.store.if617, %pred.store.continue616
  %i.og = extractelement <16 x i1> %i.mp, i64 14
  br i1 %i.og, label %pred.store.if619, label %pred.store.continue620

pred.store.if619:                                 ; preds = %pred.store.continue618
  %i.oh = extractelement <16 x i8> %wide.load590, i64 14
  %i.oi = or disjoint i8 %i.oh, 32
  store i8 %i.oi, ptr %next.gep588, align 1, !tbaa !17
  br label %pred.store.continue620

pred.store.continue620:                           ; preds = %pred.store.if619, %pred.store.continue618
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxA
define range(i32 0, 4) i32 @uriNormalizeSyntaxA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @uriNormalizeSyntaxMaskRequiredW(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %uriNormalizeSyntaxMaskRequiredExW.exit

uriNormalizeSyntaxMaskRequiredExW.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = icmp eq ptr %0, null
  %.not211 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not211, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not211, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.ef, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.d = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersW.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i32, ptr %.01219.i, align 4, !tbaa !3
  %i.j = add i32 %i.i, -91
  %or.cond18.i = icmp ult i32 %i.j, -26           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 4 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  %or.cond = select i1 %or.cond18.i, i1 %i.l, i1 false
  br i1 %or.cond, label %.preheader.i, label %uriContainsUppercaseLettersW.exit, !llvm.loop !75

uriContainsUppercaseLettersW.exit:                ; preds = %.preheader.i, %bb.f
  %.not182 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ugt ptr %i.p, %i.n
  %or.cond17.i213 = and i1 %i.q, %i.r             ; 2 uses
  br i1 %or.cond17.i213, label %.preheader.i215, label %uriContainsUppercaseLettersW.exit218

.preheader.i215:                                  ; preds = %uriContainsUppercaseLettersW.exit, %.preheader.i215
  %.01219.i216 = phi ptr [ %i.u, %.preheader.i215 ], [ %i.n, %uriContainsUppercaseLettersW.exit ] ; 2 uses
  %i.s = load i32, ptr %.01219.i216, align 4, !tbaa !3
  %i.t = add i32 %i.s, -91
  %or.cond18.i217 = icmp ult i32 %i.t, -26        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01219.i216, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.p
  %or.cond533 = select i1 %or.cond18.i217, i1 %i.v, i1 false
  br i1 %or.cond533, label %.preheader.i215, label %uriContainsUppercaseLettersW.exit218, !llvm.loop !75

uriContainsUppercaseLettersW.exit218:             ; preds = %.preheader.i215, %uriContainsUppercaseLettersW.exit
  %.not183 = phi i1 [ true, %uriContainsUppercaseLettersW.exit ], [ %or.cond18.i217, %.preheader.i215 ]
  br i1 %.not182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersW.exit218
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersW.exit218
  %i.w = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersW.exit218 ]
  br i1 %.not183, label %bb.i, label %uriContainsUglyPercentEncodingW.exit.thread289.sink.split

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  %or.cond.i = select i1 %or.cond17.i213, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %i.z = phi ptr [ %i.aq, %bb.m ], [ %i.x, %bb.i ] ; 2 uses
  %.02132.i = phi ptr [ %i.ap, %bb.m ], [ %i.n, %bb.i ] ; 4 uses
  %i.aa = load i32, ptr %.02132.i, align 4, !tbaa !3
  %i.ab = icmp eq i32 %i.aa, 37
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.ae = add i32 %i.ad, -97
  %or.cond30.i = icmp ult i32 %i.ae, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ag = add i32 %i.af, -97
  %or.cond31.i = icmp ult i32 %i.ag, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ad) #7
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !3
  %i.aj = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ai) #7
  %i.ak = zext i8 %i.ah to i32
  %i.al = shl nuw nsw i32 %i.ak, 4
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = tail call i32 @uriIsUnreserved(i32 noundef %i.an) #7
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.02132.i, i64 12 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.p
  br i1 %i.ar, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !78

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.as = load i32, ptr %2, align 4, !tbaa !3
  %i.at = or i32 %i.as, 4
  br label %uriContainsUglyPercentEncodingW.exit.thread289.sink.split

bb.o:                                             ; preds = %bb.e
  %i.au = and i32 %1, 1
  %.not171 = icmp eq i32 %i.au, 0
  br i1 %.not171, label %uriLowercaseInplaceW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !68    ; 14 uses
  %.not172 = icmp eq ptr %i.av, null
  br i1 %.not172, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  %.not173 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 5 uses
  br i1 %.not173, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.az, %i.av
  br i1 %i.ba, label %.preheader.i219.preheader, label %uriLowercaseInplaceW.exit

.preheader.i219.preheader:                        ; preds = %bb.r
  %4 = ptrtoaddr ptr %i.az to i64
  %5 = ptrtoaddr ptr %i.av to i64                 ; 2 uses
  %i.bb = add i64 %5, 4
  %i.bc = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.bb)
  %i.bd = xor i64 %5, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.preheader.i219.preheader542, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i219.preheader
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue428, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue428 ] ; 2 uses
  %i.bj = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep407 = getelementptr i8, ptr %i.bk, i64 4
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep408 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep409 = getelementptr i8, ptr %i.bm, i64 12
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep410 = getelementptr i8, ptr %i.bn, i64 16
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep411 = getelementptr i8, ptr %i.bo, i64 20
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep412 = getelementptr i8, ptr %i.bp, i64 24
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep413 = getelementptr i8, ptr %i.bq, i64 28
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 5 uses
  %wide.load414 = load <4 x i32>, ptr %i.br, align 4, !tbaa !3 ; 5 uses
  %i.bs = add <4 x i32> %wide.load, splat (i32 -65)
  %i.bt = add <4 x i32> %wide.load414, splat (i32 -65)
  %i.bu = icmp ult <4 x i32> %i.bs, splat (i32 26) ; 4 uses
  %i.bv = icmp ult <4 x i32> %i.bt, splat (i32 26) ; 4 uses
  %i.bw = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.bw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bx = extractelement <4 x i32> %wide.load, i64 0
  %i.by = or disjoint i32 %i.bx, 32
  store i32 %i.by, ptr %next.gep, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.bz, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue
  %i.ca = extractelement <4 x i32> %wide.load, i64 1
  %i.cb = or disjoint i32 %i.ca, 32
  store i32 %i.cb, ptr %next.gep407, align 4, !tbaa !3
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cc = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cc, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.cd = extractelement <4 x i32> %wide.load, i64 2
  %i.ce = or disjoint i32 %i.cd, 32
  store i32 %i.ce, ptr %next.gep408, align 4, !tbaa !3
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cf = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cf, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.cg = extractelement <4 x i32> %wide.load, i64 3
  %i.ch = or disjoint i32 %i.cg, 32
  store i32 %i.ch, ptr %next.gep409, align 4, !tbaa !3
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.ci = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.ci, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.cj = extractelement <4 x i32> %wide.load414, i64 0
  %i.ck = or disjoint i32 %i.cj, 32
  store i32 %i.ck, ptr %next.gep410, align 4, !tbaa !3
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.cl = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.cl, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.cm = extractelement <4 x i32> %wide.load414, i64 1
  %i.cn = or disjoint i32 %i.cm, 32
  store i32 %i.cn, ptr %next.gep411, align 4, !tbaa !3
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.co = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.co, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.cp = extractelement <4 x i32> %wide.load414, i64 2
  %i.cq = or disjoint i32 %i.cp, 32
  store i32 %i.cq, ptr %next.gep412, align 4, !tbaa !3
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cr = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cr, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.cs = extractelement <4 x i32> %wide.load414, i64 3
  %i.ct = or disjoint i32 %i.cs, 32
  store i32 %i.ct, ptr %next.gep413, align 4, !tbaa !3
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %pred.store.continue428
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i219.preheader542

.preheader.i219.preheader542:                     ; preds = %.preheader.i219.preheader, %middle.block
  %.018.i.ph = phi ptr [ %i.av, %.preheader.i219.preheader ], [ %i.bi, %middle.block ]
  br label %.preheader.i219

.preheader.i219:                                  ; preds = %.preheader.i219.preheader542, %bb.t
  %.018.i = phi ptr [ %i.cy, %bb.t ], [ %.018.i.ph, %.preheader.i219.preheader542 ] ; 3 uses
  %i.cv = load i32, ptr %.018.i, align 4, !tbaa !3 ; 2 uses
  %i.cw = add i32 %i.cv, -65
  %or.cond17.i220 = icmp ult i32 %i.cw, 26
  br i1 %or.cond17.i220, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i219
  %i.cx = or disjoint i32 %i.cv, 32
  store i32 %i.cx, ptr %.018.i, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i219
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.az
  br i1 %i.cz, label %.preheader.i219, label %uriLowercaseInplaceW.exit, !llvm.loop !82

bb.u:                                             ; preds = %bb.q
  %i.da = icmp eq ptr %i.az, null
  br i1 %i.da, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = ptrtoint ptr %i.az to i64
  %i.dc = ptrtoint ptr %i.av to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = lshr exact i64 %i.dd, 2                 ; 3 uses
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %uriLowercaseMallocW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp slt i32 %i.df, 0
  br i1 %i.dh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr %3, align 8, !tbaa !31
  %i.dj = and i64 %i.de, 2147483647               ; 6 uses
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = tail call ptr %i.di(ptr noundef nonnull %3, i64 noundef %i.dk) #7, !inline_history !83 ; 8 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.y, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.x
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %i.do = load ptr, ptr %0, align 8, !tbaa !80    ; 5 uses
  %min.iters.check430 = icmp samesign ult i64 %i.dj, 8
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dn
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond535 = select i1 %min.iters.check430, i1 true, i1 %diff.check
  br i1 %or.cond535, label %scalar.ph429.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i221
  %n.vec433 = and i64 %i.de, 2147483640           ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next438, %vector.body434 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index435 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !3 ; 3 uses
  %wide.load437 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !3 ; 3 uses
  %i.dt = add <4 x i32> %wide.load436, splat (i32 -65)
  %i.du = add <4 x i32> %wide.load437, splat (i32 -65)
  %i.dv = icmp ult <4 x i32> %i.dt, splat (i32 26)
  %i.dw = icmp ult <4 x i32> %i.du, splat (i32 26)
  %i.dx = or disjoint <4 x i32> %wide.load436, splat (i32 32)
  %i.dy = or disjoint <4 x i32> %wide.load437, splat (i32 32)
  %i.dz = select <4 x i1> %i.dv, <4 x i32> %i.dx, <4 x i32> %wide.load436
  %i.ea = select <4 x i1> %i.dw, <4 x i32> %i.dy, <4 x i32> %wide.load437
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index435 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> %i.dz, ptr %i.eb, align 4, !tbaa !3
  store <4 x i32> %i.ea, ptr %i.ec, align 4, !tbaa !3
  %index.next438 = add nuw i64 %index435, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.ed, label %middle.block439, label %vector.body434, !llvm.loop !84

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.dj, %n.vec433
  br i1 %cmp.n440, label %._crit_edge.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %.lr.ph.i221, %middle.block439
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i221 ], [ %n.vec433, %middle.block439 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %i.ee = and i64 %i.dd, 4
  %lcmp.mod.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.ph
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3  ; 3 uses
  %i.eh = add i32 %i.eg, -65
  %or.cond.i222.prol = icmp ult i32 %i.eh, 26
  %i.ei = or disjoint i32 %i.eg, 32
  %spec.select.i.prol = select i1 %or.cond.i222.prol, i32 %i.ei, i32 %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ej, align 4, !tbaa !3
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.ek = icmp eq i64 %i.dj, %.neg
  br i1 %i.ek, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3  ; 3 uses
  %i.en = add i32 %i.em, -65
  %or.cond.i222 = icmp ult i32 %i.en, 26
  %i.eo = or disjoint i32 %i.em, 32
  %spec.select.i = select i1 %or.cond.i222, i32 %i.eo, i32 %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.ep, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 3 uses
  %i.es = add i32 %i.er, -65
  %or.cond.i222.1 = icmp ult i32 %i.es, 26
  %i.et = or disjoint i32 %i.er, 32
  %spec.select.i.1 = select i1 %or.cond.i222.1, i32 %i.et, i32 %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.eu, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.dj
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !85

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block439
  store ptr %i.dl, ptr %0, align 8, !tbaa !80
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ev, ptr %i.ay, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ew = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ex = and i32 %1, 4
  %.not175 = icmp eq i32 %i.ex, 0
  br i1 %.not175, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !86 ; 18 uses
  %.not176 = icmp eq ptr %i.fa, null
  br i1 %.not176, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !79
  %.not180 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !80 ; 9 uses
  br i1 %.not180, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = icmp ugt ptr %i.fe, %i.fa
  br i1 %i.ff, label %.preheader.i224.preheader, label %uriLowercaseInplaceW.exit227

.preheader.i224.preheader:                        ; preds = %bb.ab
  %6 = ptrtoaddr ptr %i.fe to i64
  %7 = ptrtoaddr ptr %i.fa to i64                 ; 2 uses
  %i.fg = add i64 %7, 4
  %i.fh = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.fg)
  %i.fi = xor i64 %7, -1
  %i.fj = add i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.fj, 28
  br i1 %min.iters.check443, label %.preheader.i224.preheader541, label %vector.ph444

vector.ph444:                                     ; preds = %.preheader.i224.preheader
  %n.vec446 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fm = shl i64 %n.vec446, 2
  %i.fn = getelementptr i8, ptr %i.fa, i64 %i.fm
  br label %vector.body447

vector.body447:                                   ; preds = %pred.store.continue474, %vector.ph444
  %index448 = phi i64 [ 0, %vector.ph444 ], [ %index.next475, %pred.store.continue474 ] ; 2 uses
  %i.fo = shl i64 %index448, 2                    ; 8 uses
  %next.gep449 = getelementptr i8, ptr %i.fa, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep450 = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep451 = getelementptr i8, ptr %i.fq, i64 8
  %i.fr = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep452 = getelementptr i8, ptr %i.fr, i64 12
  %i.fs = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep453 = getelementptr i8, ptr %i.fs, i64 16
  %i.ft = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep454 = getelementptr i8, ptr %i.ft, i64 20
  %i.fu = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep455 = getelementptr i8, ptr %i.fu, i64 24
  %i.fv = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep456 = getelementptr i8, ptr %i.fv, i64 28
  %i.fw = getelementptr i8, ptr %next.gep449, i64 16
  %wide.load457 = load <4 x i32>, ptr %next.gep449, align 4, !tbaa !3 ; 5 uses
  %wide.load458 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3 ; 5 uses
  %i.fx = add <4 x i32> %wide.load457, splat (i32 -65)
  %i.fy = add <4 x i32> %wide.load458, splat (i32 -65)
  %i.fz = icmp ult <4 x i32> %i.fx, splat (i32 26) ; 4 uses
  %i.ga = icmp ult <4 x i32> %i.fy, splat (i32 26) ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %vector.body447
  %i.gc = extractelement <4 x i32> %wide.load457, i64 0
  %i.gd = or disjoint i32 %i.gc, 32
  store i32 %i.gd, ptr %next.gep449, align 4, !tbaa !3
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %vector.body447
  %i.ge = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.ge, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  %i.gf = extractelement <4 x i32> %wide.load457, i64 1
  %i.gg = or disjoint i32 %i.gf, 32
  store i32 %i.gg, ptr %next.gep450, align 4, !tbaa !3
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.gh = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gh, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.gi = extractelement <4 x i32> %wide.load457, i64 2
  %i.gj = or disjoint i32 %i.gi, 32
  store i32 %i.gj, ptr %next.gep451, align 4, !tbaa !3
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.gk = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.gk, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.gl = extractelement <4 x i32> %wide.load457, i64 3
  %i.gm = or disjoint i32 %i.gl, 32
  store i32 %i.gm, ptr %next.gep452, align 4, !tbaa !3
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gn = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gn, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  %i.go = extractelement <4 x i32> %wide.load458, i64 0
  %i.gp = or disjoint i32 %i.go, 32
  store i32 %i.gp, ptr %next.gep453, align 4, !tbaa !3
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %i.gq = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gq, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.gr = extractelement <4 x i32> %wide.load458, i64 1
  %i.gs = or disjoint i32 %i.gr, 32
  store i32 %i.gs, ptr %next.gep454, align 4, !tbaa !3
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.gt = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gt, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gu = extractelement <4 x i32> %wide.load458, i64 2
  %i.gv = or disjoint i32 %i.gu, 32
  store i32 %i.gv, ptr %next.gep455, align 4, !tbaa !3
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.gw = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gw, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.gx = extractelement <4 x i32> %wide.load458, i64 3
  %i.gy = or disjoint i32 %i.gx, 32
  store i32 %i.gy, ptr %next.gep456, align 4, !tbaa !3
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %index.next475 = add nuw i64 %index448, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next475, %n.vec446
  br i1 %i.gz, label %middle.block476, label %vector.body447, !llvm.loop !87

middle.block476:                                  ; preds = %pred.store.continue474
  %cmp.n477 = icmp eq i64 %i.fl, %n.vec446
  br i1 %cmp.n477, label %uriLowercaseInplaceW.exit227, label %.preheader.i224.preheader541

.preheader.i224.preheader541:                     ; preds = %.preheader.i224.preheader, %middle.block476
  %.018.i225.ph = phi ptr [ %i.fa, %.preheader.i224.preheader ], [ %i.fn, %middle.block476 ]
  br label %.preheader.i224

.preheader.i224:                                  ; preds = %.preheader.i224.preheader541, %bb.ad
  %.018.i225 = phi ptr [ %i.hd, %bb.ad ], [ %.018.i225.ph, %.preheader.i224.preheader541 ] ; 3 uses
  %i.ha = load i32, ptr %.018.i225, align 4, !tbaa !3 ; 2 uses
  %i.hb = add i32 %i.ha, -65
  %or.cond17.i226 = icmp ult i32 %i.hb, 26
  br i1 %or.cond17.i226, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i224
  %i.hc = or disjoint i32 %i.ha, 32
  store i32 %i.hc, ptr %.018.i225, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i224
  %i.hd = getelementptr inbounds nuw i8, ptr %.018.i225, i64 4 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.fe
  br i1 %i.he, label %.preheader.i224, label %uriLowercaseInplaceW.exit227, !llvm.loop !88

bb.ae:                                            ; preds = %bb.aa
  %i.hf = icmp eq ptr %i.fe, null
  br i1 %i.hf, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = ptrtoint ptr %i.fe to i64
  %i.hh = ptrtoint ptr %i.fa to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = lshr exact i64 %i.hi, 2                 ; 3 uses
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %uriLowercaseMallocW.exit237, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = icmp slt i32 %i.hk, 0
  br i1 %i.hm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hn = load ptr, ptr %3, align 8, !tbaa !31
  %i.ho = and i64 %i.hj, 2147483647               ; 6 uses
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call ptr %i.hn(ptr noundef nonnull %3, i64 noundef %i.hp) #7, !inline_history !83 ; 9 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ai, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.ah
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %i.ht = load ptr, ptr %i.ez, align 8, !tbaa !80 ; 5 uses
  %min.iters.check482 = icmp samesign ult i64 %i.ho, 8
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.hs
  %diff.check480 = icmp ugt i64 %i.hv, -32
  %or.cond537 = select i1 %min.iters.check482, i1 true, i1 %diff.check480
  br i1 %or.cond537, label %scalar.ph481.preheader, label %vector.ph483

vector.ph483:                                     ; preds = %.lr.ph.i228
  %n.vec485 = and i64 %i.hj, 2147483640           ; 3 uses
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph483
  %index487 = phi i64 [ 0, %vector.ph483 ], [ %index.next490, %vector.body486 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index487 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load488 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !3 ; 3 uses
  %wide.load489 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3 ; 3 uses
  %i.hy = add <4 x i32> %wide.load488, splat (i32 -65)
  %i.hz = add <4 x i32> %wide.load489, splat (i32 -65)
  %i.ia = icmp ult <4 x i32> %i.hy, splat (i32 26)
  %i.ib = icmp ult <4 x i32> %i.hz, splat (i32 26)
  %i.ic = or disjoint <4 x i32> %wide.load488, splat (i32 32)
  %i.id = or disjoint <4 x i32> %wide.load489, splat (i32 32)
  %i.ie = select <4 x i1> %i.ia, <4 x i32> %i.ic, <4 x i32> %wide.load488
  %i.if = select <4 x i1> %i.ib, <4 x i32> %i.id, <4 x i32> %wide.load489
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index487 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %i.ie, ptr %i.ig, align 4, !tbaa !3
  store <4 x i32> %i.if, ptr %i.ih, align 4, !tbaa !3
  %index.next490 = add nuw i64 %index487, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.ii, label %middle.block491, label %vector.body486, !llvm.loop !89

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.ho, %n.vec485
  br i1 %cmp.n492, label %._crit_edge.i235, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %.lr.ph.i228, %middle.block491
  %indvars.iv.i230.ph = phi i64 [ 0, %.lr.ph.i228 ], [ %n.vec485, %middle.block491 ] ; 5 uses
  %.neg546 = or disjoint i64 %indvars.iv.i230.ph, 1
  %i.ij = and i64 %i.hi, 4
  %lcmp.mod545.not = icmp eq i64 %i.ij, 0
  br i1 %lcmp.mod545.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol

scalar.ph481.prol:                                ; preds = %scalar.ph481.preheader
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i230.ph
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3  ; 3 uses
  %i.im = add i32 %i.il, -65
  %or.cond.i231.prol = icmp ult i32 %i.im, 26
  %i.in = or disjoint i32 %i.il, 32
  %spec.select.i232.prol = select i1 %or.cond.i231.prol, i32 %i.in, i32 %i.il
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i230.ph
  store i32 %spec.select.i232.prol, ptr %i.io, align 4, !tbaa !3
  %indvars.iv.next.i233.prol = or disjoint i64 %indvars.iv.i230.ph, 1
  br label %scalar.ph481.prol.loopexit

scalar.ph481.prol.loopexit:                       ; preds = %scalar.ph481.prol, %scalar.ph481.preheader
  %indvars.iv.i230.unr = phi i64 [ %indvars.iv.i230.ph, %scalar.ph481.preheader ], [ %indvars.iv.next.i233.prol, %scalar.ph481.prol ]
  %i.ip = icmp eq i64 %i.ho, %.neg546
  br i1 %i.ip, label %._crit_edge.i235, label %scalar.ph481

scalar.ph481:                                     ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233.1, %scalar.ph481 ], [ %indvars.iv.i230.unr, %scalar.ph481.prol.loopexit ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i230
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3  ; 3 uses
  %i.is = add i32 %i.ir, -65
  %or.cond.i231 = icmp ult i32 %i.is, 26
  %i.it = or disjoint i32 %i.ir, 32
  %spec.select.i232 = select i1 %or.cond.i231, i32 %i.it, i32 %i.ir
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i230
  store i32 %spec.select.i232, ptr %i.iu, align 4, !tbaa !3
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next.i233
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3  ; 3 uses
  %i.ix = add i32 %i.iw, -65
  %or.cond.i231.1 = icmp ult i32 %i.ix, 26
  %i.iy = or disjoint i32 %i.iw, 32
  %spec.select.i232.1 = select i1 %or.cond.i231.1, i32 %i.iy, i32 %i.iw
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next.i233
  store i32 %spec.select.i232.1, ptr %i.iz, align 4, !tbaa !3
  %indvars.iv.next.i233.1 = add nuw nsw i64 %indvars.iv.i230, 2 ; 2 uses
  %exitcond.not.i234.1 = icmp eq i64 %indvars.iv.next.i233.1, %i.ho
  br i1 %exitcond.not.i234.1, label %._crit_edge.i235, label %scalar.ph481, !llvm.loop !90

._crit_edge.i235:                                 ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481, %middle.block491
  store ptr %i.hq, ptr %i.ez, align 8, !tbaa !80
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho ; 2 uses
  store ptr %i.ja, ptr %i.fd, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit237

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ew, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit237:                      ; preds = %._crit_edge.i235, %bb.af
  %i.jb = phi ptr [ %i.ja, %._crit_edge.i235 ], [ %i.fe, %bb.af ]
  %i.jc = phi ptr [ %i.hq, %._crit_edge.i235 ], [ %i.fa, %bb.af ]
  %i.jd = or disjoint i32 %i.ew, 4                ; 2 uses
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit227

uriLowercaseInplaceW.exit227:                     ; preds = %bb.ad, %middle.block476, %bb.ab, %uriLowercaseMallocW.exit237
  %i.je = phi i32 [ %i.jd, %uriLowercaseMallocW.exit237 ], [ %i.ew, %bb.ab ], [ %i.ew, %middle.block476 ], [ %i.ew, %bb.ad ]
  %i.jf = phi ptr [ %i.jb, %uriLowercaseMallocW.exit237 ], [ %i.fe, %bb.ab ], [ %i.fe, %middle.block476 ], [ %i.fe, %bb.ad ]
  %i.jg = phi ptr [ %i.jc, %uriLowercaseMallocW.exit237 ], [ %i.fa, %bb.ab ], [ %i.fa, %middle.block476 ], [ %i.fa, %bb.ad ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !76
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !77
  br label %uriContainsUglyPercentEncodingW.exit

bb.aj:                                            ; preds = %bb.z
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !76 ; 2 uses
  %.not177 = icmp eq ptr %i.jk, null
  br i1 %.not177, label %uriContainsUglyPercentEncodingW.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = load ptr, ptr %i.ey, align 8, !tbaa !91
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.al, label %uriContainsUglyPercentEncodingW.exit

bb.al:                                            ; preds = %bb.ak
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !92
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.am, label %uriContainsUglyPercentEncodingW.exit

bb.am:                                            ; preds = %bb.al
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !79
  %.not178 = icmp eq i32 %i.jr, 0
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not178, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.jk, ptr noundef %i.js)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.jt = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.jj, ptr noundef %i.js, ptr noundef %3)
  %.not179 = icmp eq i32 %i.jt, 0
  br i1 %.not179, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ew, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.ju = or disjoint i32 %i.ew, 4                ; 2 uses
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.jv = phi i32 [ %i.ju, %bb.aq ], [ %i.ew, %bb.an ] ; 3 uses
  %i.jw = load ptr, ptr %i.jj, align 8, !tbaa !76 ; 13 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !77 ; 3 uses
  %i.jz = icmp ne ptr %i.jw, null
  %i.ka = icmp ugt ptr %i.jy, %i.jw
  %or.cond16.i238 = and i1 %i.jz, %i.ka
  br i1 %or.cond16.i238, label %.preheader.i239.preheader, label %uriContainsUglyPercentEncodingW.exit

.preheader.i239.preheader:                        ; preds = %bb.ar
  %8 = ptrtoaddr ptr %i.jy to i64
  %9 = ptrtoaddr ptr %i.jw to i64                 ; 2 uses
  %i.kb = add i64 %9, 4
  %i.kc = tail call i64 @llvm.umax.i64(i64 %8, i64 %i.kb)
  %i.kd = xor i64 %9, -1
  %i.ke = add i64 %i.kc, %i.kd                    ; 2 uses
  %i.kf = lshr i64 %i.ke, 2
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check495 = icmp ult i64 %i.ke, 28
  br i1 %min.iters.check495, label %.preheader.i239.preheader540, label %vector.ph496

vector.ph496:                                     ; preds = %.preheader.i239.preheader
  %n.vec498 = and i64 %i.kg, 9223372036854775800  ; 3 uses
  %i.kh = shl i64 %n.vec498, 2
  %i.ki = getelementptr i8, ptr %i.jw, i64 %i.kh
  br label %vector.body499

vector.body499:                                   ; preds = %pred.store.continue526, %vector.ph496
  %index500 = phi i64 [ 0, %vector.ph496 ], [ %index.next527, %pred.store.continue526 ] ; 2 uses
  %i.kj = shl i64 %index500, 2                    ; 8 uses
  %next.gep501 = getelementptr i8, ptr %i.jw, i64 %i.kj ; 3 uses
  %i.kk = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep502 = getelementptr i8, ptr %i.kk, i64 4
  %i.kl = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep503 = getelementptr i8, ptr %i.kl, i64 8
  %i.km = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep504 = getelementptr i8, ptr %i.km, i64 12
  %i.kn = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep505 = getelementptr i8, ptr %i.kn, i64 16
  %i.ko = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep506 = getelementptr i8, ptr %i.ko, i64 20
  %i.kp = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep507 = getelementptr i8, ptr %i.kp, i64 24
  %i.kq = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep508 = getelementptr i8, ptr %i.kq, i64 28
  %i.kr = getelementptr i8, ptr %next.gep501, i64 16
  %wide.load509 = load <4 x i32>, ptr %next.gep501, align 4, !tbaa !3 ; 5 uses
  %wide.load510 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !3 ; 5 uses
  %i.ks = add <4 x i32> %wide.load509, splat (i32 -65)
  %i.kt = add <4 x i32> %wide.load510, splat (i32 -65)
  %i.ku = icmp ult <4 x i32> %i.ks, splat (i32 26) ; 4 uses
  %i.kv = icmp ult <4 x i32> %i.kt, splat (i32 26) ; 4 uses
  %i.kw = extractelement <4 x i1> %i.ku, i64 0
  br i1 %i.kw, label %pred.store.if511, label %pred.store.continue512

pred.store.if511:                                 ; preds = %vector.body499
  %i.kx = extractelement <4 x i32> %wide.load509, i64 0
  %i.ky = or disjoint i32 %i.kx, 32
  store i32 %i.ky, ptr %next.gep501, align 4, !tbaa !3
  br label %pred.store.continue512

pred.store.continue512:                           ; preds = %pred.store.if511, %vector.body499
  %i.kz = extractelement <4 x i1> %i.ku, i64 1
  br i1 %i.kz, label %pred.store.if513, label %pred.store.continue514

pred.store.if513:                                 ; preds = %pred.store.continue512
  %i.la = extractelement <4 x i32> %wide.load509, i64 1
  %i.lb = or disjoint i32 %i.la, 32
  store i32 %i.lb, ptr %next.gep502, align 4, !tbaa !3
  br label %pred.store.continue514

pred.store.continue514:                           ; preds = %pred.store.if513, %pred.store.continue512
  %i.lc = extractelement <4 x i1> %i.ku, i64 2
  br i1 %i.lc, label %pred.store.if515, label %pred.store.continue516

pred.store.if515:                                 ; preds = %pred.store.continue514
  %i.ld = extractelement <4 x i32> %wide.load509, i64 2
  %i.le = or disjoint i32 %i.ld, 32
  store i32 %i.le, ptr %next.gep503, align 4, !tbaa !3
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %pred.store.continue514
  %i.lf = extractelement <4 x i1> %i.ku, i64 3
  br i1 %i.lf, label %pred.store.if517, label %pred.store.continue518

pred.store.if517:                                 ; preds = %pred.store.continue516
  %i.lg = extractelement <4 x i32> %wide.load509, i64 3
  %i.lh = or disjoint i32 %i.lg, 32
  store i32 %i.lh, ptr %next.gep504, align 4, !tbaa !3
  br label %pred.store.continue518

pred.store.continue518:                           ; preds = %pred.store.if517, %pred.store.continue516
  %i.li = extractelement <4 x i1> %i.kv, i64 0
  br i1 %i.li, label %pred.store.if519, label %pred.store.continue520

pred.store.if519:                                 ; preds = %pred.store.continue518
  %i.lj = extractelement <4 x i32> %wide.load510, i64 0
  %i.lk = or disjoint i32 %i.lj, 32
  store i32 %i.lk, ptr %next.gep505, align 4, !tbaa !3
  br label %pred.store.continue520

pred.store.continue520:                           ; preds = %pred.store.if519, %pred.store.continue518
  %i.ll = extractelement <4 x i1> %i.kv, i64 1
  br i1 %i.ll, label %pred.store.if521, label %pred.store.continue522

pred.store.if521:                                 ; preds = %pred.store.continue520
  %i.lm = extractelement <4 x i32> %wide.load510, i64 1
  %i.ln = or disjoint i32 %i.lm, 32
  store i32 %i.ln, ptr %next.gep506, align 4, !tbaa !3
  br label %pred.store.continue522

pred.store.continue522:                           ; preds = %pred.store.if521, %pred.store.continue520
  %i.lo = extractelement <4 x i1> %i.kv, i64 2
  br i1 %i.lo, label %pred.store.if523, label %pred.store.continue524

pred.store.if523:                                 ; preds = %pred.store.continue522
  %i.lp = extractelement <4 x i32> %wide.load510, i64 2
  %i.lq = or disjoint i32 %i.lp, 32
  store i32 %i.lq, ptr %next.gep507, align 4, !tbaa !3
  br label %pred.store.continue524

pred.store.continue524:                           ; preds = %pred.store.if523, %pred.store.continue522
  %i.lr = extractelement <4 x i1> %i.kv, i64 3
  br i1 %i.lr, label %pred.store.if525, label %pred.store.continue526

pred.store.if525:                                 ; preds = %pred.store.continue524
  %i.ls = extractelement <4 x i32> %wide.load510, i64 3
  %i.lt = or disjoint i32 %i.ls, 32
  store i32 %i.lt, ptr %next.gep508, align 4, !tbaa !3
  br label %pred.store.continue526

pred.store.continue526:                           ; preds = %pred.store.if525, %pred.store.continue524
  %index.next527 = add nuw i64 %index500, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next527, %n.vec498
  br i1 %i.lu, label %middle.block528, label %vector.body499, !llvm.loop !93

middle.block528:                                  ; preds = %pred.store.continue526
  %cmp.n529 = icmp eq i64 %i.kg, %n.vec498
  br i1 %cmp.n529, label %uriContainsUglyPercentEncodingW.exit, label %.preheader.i239.preheader540

.preheader.i239.preheader540:                     ; preds = %.preheader.i239.preheader, %middle.block528
  %.018.i240.ph = phi ptr [ %i.jw, %.preheader.i239.preheader ], [ %i.ki, %middle.block528 ]
  br label %.preheader.i239

.preheader.i239:                                  ; preds = %.preheader.i239.preheader540, %bb.at
  %.018.i240 = phi ptr [ %i.ly, %bb.at ], [ %.018.i240.ph, %.preheader.i239.preheader540 ] ; 3 uses
  %i.lv = load i32, ptr %.018.i240, align 4, !tbaa !3 ; 2 uses
  %i.lw = add i32 %i.lv, -65
  %or.cond17.i241 = icmp ult i32 %i.lw, 26
  br i1 %or.cond17.i241, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i239
  %i.lx = or disjoint i32 %i.lv, 32
  store i32 %i.lx, ptr %.018.i240, align 4, !tbaa !3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i239
  %i.ly = getelementptr inbounds nuw i8, ptr %.018.i240, i64 4 ; 2 uses
  %i.lz = icmp ult ptr %i.ly, %i.jy
  br i1 %i.lz, label %.preheader.i239, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !94

uriContainsUglyPercentEncodingW.exit:             ; preds = %bb.m, %bb.at, %middle.block528, %bb.ar, %bb.i, %uriLowercaseInplaceW.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceW.exit227
  %i.ma = phi i32 [ %i.jv, %middle.block528 ], [ %i.je, %uriLowercaseInplaceW.exit227 ], [ %i.jv, %bb.ar ], [ 0, %bb.i ], [ %i.ew, %uriLowercaseInplaceW.exit ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.ak ], [ %i.ew, %bb.al ], [ %i.jv, %bb.at ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not211, label %bb.az, label %uriContainsUglyPercentEncodingW.exit.thread289

uriContainsUglyPercentEncodingW.exit.thread289.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.at, %bb.n ], [ %i.w, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingW.exit.thread289

uriContainsUglyPercentEncodingW.exit.thread289:   ; preds = %uriContainsUglyPercentEncodingW.exit.thread289.sink.split, %uriContainsUglyPercentEncodingW.exit
  %i.mb = phi i32 [ %i.ma, %uriContainsUglyPercentEncodingW.exit ], [ 0, %uriContainsUglyPercentEncodingW.exit.thread289.sink.split ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !95 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !96 ; 3 uses
  %i.mg = icmp ne ptr %i.md, null
  %i.mh = icmp ugt ptr %i.mf, %i.md
  %or.cond29.i243 = and i1 %i.mg, %i.mh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mj = icmp ult ptr %i.mi, %i.mf
  %or.cond.i244 = select i1 %or.cond29.i243, i1 %i.mj, i1 false
  br i1 %or.cond.i244, label %.lr.ph.i246, label %uriContainsUglyPercentEncodingW.exit251.thread295

.lr.ph.i246:                                      ; preds = %uriContainsUglyPercentEncodingW.exit.thread289, %bb.ax
  %i.mk = phi ptr [ %i.nb, %bb.ax ], [ %i.mi, %uriContainsUglyPercentEncodingW.exit.thread289 ] ; 2 uses
  %.02132.i247 = phi ptr [ %i.na, %bb.ax ], [ %i.md, %uriContainsUglyPercentEncodingW.exit.thread289 ] ; 4 uses
  %i.ml = load i32, ptr %.02132.i247, align 4, !tbaa !3
  %i.mm = icmp eq i32 %i.ml, 37
  br i1 %i.mm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i246
  %i.mn = getelementptr inbounds nuw i8, ptr %.02132.i247, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3  ; 2 uses
  %i.mp = add i32 %i.mo, -97
  %or.cond30.i248 = icmp ult i32 %i.mp, 6
  br i1 %or.cond30.i248, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mr = add i32 %i.mq, -97
  %or.cond31.i249 = icmp ult i32 %i.mr, 6
  br i1 %or.cond31.i249, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ms = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.mo) #7
  %i.mt = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mu = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.mt) #7
  %i.mv = zext i8 %i.ms to i32
  %i.mw = shl nuw nsw i32 %i.mv, 4
  %i.mx = zext i8 %i.mu to i32
  %i.my = add nuw nsw i32 %i.mw, %i.mx
end_hunk_1
