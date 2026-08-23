Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandAbc9If:bb.a
  %i.mg = icmp ne i32 %i.mc, 0
  %not..not436 = xor i1 %.not436, true
  %narrow = select i1 %not..not436, i1 true, i1 %i.mg
  %i.mh = zext i1 %narrow to i32
  store i32 %i.mh, ptr %i.n, align 4, !tbaa !539
  store ptr null, ptr %i.g, align 8, !tbaa !498
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  %i.mi = load i32, ptr %i.av, align 8, !tbaa !506 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i32 1, ptr %i.mk, align 8, !tbaa !548
  store i32 1, ptr %i.ac, align 4, !tbaa !527
  store i32 0, ptr %i.ag, align 8, !tbaa !523
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 236
  store i32 1, ptr %i.ml, align 4, !tbaa !549
  store ptr null, ptr %i.g, align 8, !tbaa !498
  store i32 %i.mi, ptr %3, align 8, !tbaa !502
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.mm = load i32, ptr %i.n, align 4, !tbaa !539
  %.not440 = icmp eq i32 %i.mm, 0                 ; 2 uses
  %i.mn = load i32, ptr %i.m, align 4
  %.not441 = icmp eq i32 %i.mn, 0
  %or.cond536 = select i1 %.not440, i1 %.not441, i1 false
  %i.mo = load i32, ptr %i.af, align 8
  %.not442 = icmp eq i32 %i.mo, 0
  %or.cond538 = select i1 %or.cond536, i1 %.not442, i1 false
  br i1 %or.cond538, label %.critedge540, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i32 1, ptr %i.mp, align 8, !tbaa !548
  store i32 1, ptr %i.ac, align 4, !tbaa !527
  store i32 0, ptr %i.ag, align 8, !tbaa !523
  br i1 %.not440, label %.critedge540, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  br i1 %.not422, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !110
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.mt = load i8, ptr %i.ky, align 1, !tbaa !110
  %i.mu = sext i8 %i.mt to i32
  %i.mv = add nsw i32 %i.mu, -48
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ew, %bb.ex, %bb.ey
  %i.mw = phi i32 [ %i.mv, %bb.ey ], [ 0, %bb.ex ], [ 0, %bb.ew ] ; 4 uses
  %i.mx = call ptr (...) @Abc_FrameReadManDsd() #37 ; 3 uses
  %i.my = load ptr, ptr %i.al, align 8, !tbaa !518 ; 2 uses
  %.not445 = icmp eq ptr %i.my, null
  br i1 %.not445, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !110
  %.not446 = icmp eq i8 %i.na, 0
  br i1 %.not446, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %puts451 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  br label %.critedge

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  %.not447 = icmp eq ptr %i.mx, null
  br i1 %.not447, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nb = load i32, ptr %3, align 8, !tbaa !502
  %i.nc = call i32 @If_DsdManVarNum(ptr noundef nonnull %i.mx) #37
  %i.nd = icmp sgt i32 %i.nb, %i.nc
  br i1 %i.nd, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %puts450 = call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  br label %.critedge

bb.ff:                                            ; preds = %bb.fd
  %i.ne = call i32 @If_DsdManLutSize(ptr noundef nonnull %i.mx) #37
  %.not448 = icmp ne i32 %i.mw, %i.ne
  %i.nf = load i32, ptr %i.x, align 4
  %.not449 = icmp eq i32 %i.nf, 0
  %or.cond542 = select i1 %.not448, i1 %.not449, i1 false
  br i1 %or.cond542, label %bb.fg, label %.critedge540

bb.fg:                                            ; preds = %bb.ff
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  br label %.critedge

bb.fh:                                            ; preds = %bb.fc
  %i.ng = icmp sgt i32 %i.mw, 12
  br i1 %i.ng, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.nh = load i32, ptr %3, align 8, !tbaa !502   ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, 12
  br i1 %i.ni, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.nj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2512, i32 noundef %i.mw, i32 noundef 12) ; 0 uses
  br label %.critedge

bb.fk:                                            ; preds = %bb.fi
  %i.nk = call ptr @If_DsdManAlloc(i32 noundef %i.nh, i32 noundef %i.mw) #37
  call void @Abc_FrameSetManDsd(ptr noundef %i.nk) #37
  br label %.critedge540

.critedge540:                                     ; preds = %bb.eu, %bb.fk, %bb.ff, %bb.ev
  %i.nl = load i32, ptr %i.w, align 8, !tbaa !533
  %.not452 = icmp eq i32 %i.nl, 0
  br i1 %.not452, label %.critedge540._crit_edge, label %bb.fl

.critedge540._crit_edge:                          ; preds = %.critedge540
  %.pre593 = load i32, ptr %3, align 8
  br label %bb.fp

bb.fl:                                            ; preds = %.critedge540
  %i.nm = call i32 (...) @Abc_NtkRecIsRunning3() #37
  %.not453 = icmp eq i32 %i.nm, 0
  br i1 %.not453, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %puts454 = call i32 @puts(ptr nonnull dereferenceable(1) @str.38) ; 0 uses
  br label %.critedge

bb.fn:                                            ; preds = %bb.fl
  %i.nn = call i32 (...) @Abc_NtkRecInputNum3() #37 ; 2 uses
  %i.no = load i32, ptr %3, align 8, !tbaa !502
  %.not455 = icmp eq i32 %i.nn, %i.no
  br i1 %.not455, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.np = call i32 (...) @Abc_NtkRecInputNum3() #37
  %i.nq = load i32, ptr %3, align 8, !tbaa !502
  %i.nr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4327, i32 noundef %i.np, i32 noundef %i.nq) ; 0 uses
  br label %.critedge

bb.fp:                                            ; preds = %.critedge540._crit_edge, %bb.fn
  %i.ns = phi i32 [ %.pre593, %.critedge540._crit_edge ], [ %i.nn, %bb.fn ]
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !548
  %.not456 = icmp ne i32 %i.nu, 0
  %i.nv = icmp sgt i32 %i.ns, 15
  %or.cond544 = select i1 %.not456, i1 %i.nv, i1 false
  br i1 %or.cond544, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2517, i32 noundef 15)
  br label %.critedge

bb.fr:                                            ; preds = %bb.fp
  %i.nw = load ptr, ptr %i.iq, align 8, !tbaa !67 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 752
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1176
  %.not457 = icmp eq ptr %i.ny, null
  br i1 %.not457, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !1177
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4328)
  br label %.critedge

bb.fu:                                            ; preds = %bb.fs, %bb.fr
  %i.oc = load float, ptr %i.an, align 4, !tbaa !517
  %i.od = fcmp ule float %i.oc, 0.000000e+00
  %i.oe = load ptr, ptr %i.g, align 8             ; 4 uses
  %.not458 = icmp eq ptr %i.oe, null
  %or.cond545 = select i1 %i.od, i1 true, i1 %.not458
  br i1 %or.cond545, label %.loopexit558, label %.preheader557

.preheader557:                                    ; preds = %bb.fu
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load i32, ptr %i.of, align 8, !tbaa !544 ; 2 uses
  %.not459560 = icmp slt i32 %i.og, 0
  br i1 %.not459560, label %.loopexit558, label %.preheader556.lr.ph

.preheader556.lr.ph:                              ; preds = %.preheader557
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 148
  %i.oi = add nuw i32 %i.og, 1
  %wide.trip.count575 = zext i32 %i.oi to i64
  %scevgep633 = getelementptr inbounds nuw i8, ptr %3, i64 224
  br label %.preheader556

.preheader556:                                    ; preds = %.preheader556.lr.ph, %.loopexit656
  %indvars.iv570 = phi i64 [ 0, %.preheader556.lr.ph ], [ %indvars.iv.next571, %.loopexit656 ] ; 3 uses
  %indvars.iv568 = phi i64 [ 1, %.preheader556.lr.ph ], [ %indvars.iv.next569, %.loopexit656 ] ; 7 uses
  %i.oj = getelementptr inbounds nuw [132 x i8], ptr %i.oh, i64 %indvars.iv570 ; 7 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv568, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader556
  %i.ok = mul nuw nsw i64 %indvars.iv568, 136
  %i.ol = getelementptr i8, ptr %i.oe, i64 %i.ok
  %scevgep = getelementptr i8, ptr %i.ol, i64 16
  %bound0 = icmp ult ptr %i.oj, %scevgep633
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv568, 9223372036854775800 ; 3 uses
  %i.om = load <4 x float>, ptr %i.an, align 4
  %broadcast.splat = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.on, align 4, !tbaa !555, !alias.scope !1178, !noalias !1181
  %wide.load634 = load <4 x float>, ptr %i.oo, align 4, !tbaa !555, !alias.scope !1178, !noalias !1181
  %i.op = fadd <4 x float> %broadcast.splat, %wide.load
  %i.oq = fadd <4 x float> %broadcast.splat, %wide.load634
  store <4 x float> %i.op, ptr %i.on, align 4, !tbaa !555, !alias.scope !1178, !noalias !1181
  store <4 x float> %i.oq, ptr %i.oo, align 4, !tbaa !555, !alias.scope !1178, !noalias !1181
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.or = icmp eq i64 %index.next, %n.vec
  br i1 %i.or, label %middle.block, label %vector.body, !llvm.loop !1183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv568, %n.vec
  br i1 %cmp.n, label %.loopexit656, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader556, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader556 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.os = sub nsw i64 %indvars.iv570, %indvars.iv.ph
  %xtraiter = and i64 %indvars.iv568, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ot = load float, ptr %i.an, align 4, !tbaa !517
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.prol ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !555
  %i.ow = fadd float %i.ot, %i.ov
  store float %i.ow, ptr %i.ou, align 4, !tbaa !555
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1184

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ox = icmp ult i64 %i.os, 3
  br i1 %i.ox, label %.loopexit656, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.oy = load float, ptr %i.an, align 4, !tbaa !517
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !555
  %i.pb = fadd float %i.oy, %i.pa
  store float %i.pb, ptr %i.oz, align 4, !tbaa !555
  %i.pc = load float, ptr %i.an, align 4, !tbaa !517
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4 ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !555
  %i.pg = fadd float %i.pc, %i.pf
  store float %i.pg, ptr %i.pe, align 4, !tbaa !555
  %i.ph = load float, ptr %i.an, align 4, !tbaa !517
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !555
  %i.pl = fadd float %i.ph, %i.pk
  store float %i.pl, ptr %i.pj, align 4, !tbaa !555
  %i.pm = load float, ptr %i.an, align 4, !tbaa !517
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !555
  %i.pq = fadd float %i.pm, %i.pp
  store float %i.pq, ptr %i.po, align 4, !tbaa !555
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %indvars.iv568
  br i1 %exitcond.not.3, label %.loopexit656, label %scalar.ph, !llvm.loop !1186

.loopexit656:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1
  %exitcond576.not = icmp eq i64 %indvars.iv.next571, %wide.trip.count575
  br i1 %exitcond576.not, label %.loopexit558, label %.preheader556, !llvm.loop !1187

.loopexit558:                                     ; preds = %.loopexit656, %.preheader557, %bb.fu
  %i.pr = call ptr @Gia_ManPerformMapping(ptr noundef %i.nw, ptr noundef nonnull %3) #37 ; 2 uses
  %i.ps = load float, ptr %i.an, align 4, !tbaa !517
  %i.pt = fcmp ule float %i.ps, 0.000000e+00
  %i.pu = load ptr, ptr %i.g, align 8             ; 4 uses
  %.not460 = icmp eq ptr %i.pu, null
  %or.cond546 = select i1 %i.pt, i1 true, i1 %.not460
  br i1 %or.cond546, label %.loopexit, label %.preheader555

.preheader555:                                    ; preds = %.loopexit558
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !544 ; 2 uses
  %.not461563 = icmp slt i32 %i.pw, 0
  br i1 %.not461563, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader555
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 148
  %i.py = add nuw i32 %i.pw, 1
  %wide.trip.count590 = zext i32 %i.py to i64
  %scevgep637 = getelementptr inbounds nuw i8, ptr %3, i64 224
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit655
  %indvars.iv585 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next586, %.loopexit655 ] ; 3 uses
  %indvars.iv583 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next584, %.loopexit655 ] ; 7 uses
  %i.pz = getelementptr inbounds nuw [132 x i8], ptr %i.px, i64 %indvars.iv585 ; 7 uses
  %min.iters.check642 = icmp samesign ult i64 %indvars.iv583, 8
  br i1 %min.iters.check642, label %scalar.ph641.preheader, label %vector.memcheck635

vector.memcheck635:                               ; preds = %.preheader
  %i.qa = mul nuw nsw i64 %indvars.iv583, 136
  %i.qb = getelementptr i8, ptr %i.pu, i64 %i.qa
  %scevgep636 = getelementptr i8, ptr %i.qb, i64 16
  %bound0638 = icmp ult ptr %i.pz, %scevgep637
  %bound1639 = icmp ult ptr %i.an, %scevgep636
  %found.conflict640 = and i1 %bound0638, %bound1639
  br i1 %found.conflict640, label %scalar.ph641.preheader, label %vector.ph643

vector.ph643:                                     ; preds = %vector.memcheck635
  %n.vec644 = and i64 %indvars.iv583, 9223372036854775800 ; 3 uses
  %i.qc = load <4 x float>, ptr %i.an, align 4
  %broadcast.splat650 = shufflevector <4 x float> %i.qc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph643
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next651, %vector.body645 ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %index646 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 2 uses
  %wide.load647 = load <4 x float>, ptr %i.qd, align 4, !tbaa !555, !alias.scope !1188, !noalias !1191
  %wide.load648 = load <4 x float>, ptr %i.qe, align 4, !tbaa !555, !alias.scope !1188, !noalias !1191
  %i.qf = fsub <4 x float> %wide.load647, %broadcast.splat650
  %i.qg = fsub <4 x float> %wide.load648, %broadcast.splat650
  store <4 x float> %i.qf, ptr %i.qd, align 4, !tbaa !555, !alias.scope !1188, !noalias !1191
  store <4 x float> %i.qg, ptr %i.qe, align 4, !tbaa !555, !alias.scope !1188, !noalias !1191
  %index.next651 = add nuw i64 %index646, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next651, %n.vec644
  br i1 %i.qh, label %middle.block652, label %vector.body645, !llvm.loop !1193

middle.block652:                                  ; preds = %vector.body645
  %cmp.n653 = icmp eq i64 %indvars.iv583, %n.vec644
  br i1 %cmp.n653, label %.loopexit655, label %scalar.ph641.preheader

scalar.ph641.preheader:                           ; preds = %vector.memcheck635, %.preheader, %middle.block652
  %indvars.iv577.ph = phi i64 [ 0, %vector.memcheck635 ], [ 0, %.preheader ], [ %n.vec644, %middle.block652 ] ; 3 uses
  %i.qi = sub nsw i64 %indvars.iv585, %indvars.iv577.ph
  %xtraiter657 = and i64 %indvars.iv583, 3        ; 2 uses
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %scalar.ph641.prol.loopexit, label %scalar.ph641.prol

scalar.ph641.prol:                                ; preds = %scalar.ph641.preheader, %scalar.ph641.prol
  %indvars.iv577.prol = phi i64 [ %indvars.iv.next578.prol, %scalar.ph641.prol ], [ %indvars.iv577.ph, %scalar.ph641.preheader ] ; 2 uses
  %prol.iter659 = phi i64 [ %prol.iter659.next, %scalar.ph641.prol ], [ 0, %scalar.ph641.preheader ]
  %i.qj = load float, ptr %i.an, align 4, !tbaa !517
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv577.prol ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !555
  %i.qm = fsub float %i.ql, %i.qj
  store float %i.qm, ptr %i.qk, align 4, !tbaa !555
  %indvars.iv.next578.prol = add nuw nsw i64 %indvars.iv577.prol, 1 ; 2 uses
  %prol.iter659.next = add i64 %prol.iter659, 1   ; 2 uses
  %prol.iter659.cmp.not = icmp eq i64 %prol.iter659.next, %xtraiter657
  br i1 %prol.iter659.cmp.not, label %scalar.ph641.prol.loopexit, label %scalar.ph641.prol, !llvm.loop !1194

scalar.ph641.prol.loopexit:                       ; preds = %scalar.ph641.prol, %scalar.ph641.preheader
  %indvars.iv577.unr = phi i64 [ %indvars.iv577.ph, %scalar.ph641.preheader ], [ %indvars.iv.next578.prol, %scalar.ph641.prol ]
  %i.qn = icmp ult i64 %i.qi, 3
  br i1 %i.qn, label %.loopexit655, label %scalar.ph641

scalar.ph641:                                     ; preds = %scalar.ph641.prol.loopexit, %scalar.ph641
  %indvars.iv577 = phi i64 [ %indvars.iv.next578.3, %scalar.ph641 ], [ %indvars.iv577.unr, %scalar.ph641.prol.loopexit ] ; 5 uses
  %i.qo = load float, ptr %i.an, align 4, !tbaa !517
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv577 ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !555
  %i.qr = fsub float %i.qq, %i.qo
  store float %i.qr, ptr %i.qp, align 4, !tbaa !555
  %i.qs = load float, ptr %i.an, align 4, !tbaa !517
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv577
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4 ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !555
  %i.qw = fsub float %i.qv, %i.qs
  store float %i.qw, ptr %i.qu, align 4, !tbaa !555
  %i.qx = load float, ptr %i.an, align 4, !tbaa !517
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv577
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !555
  %i.rb = fsub float %i.ra, %i.qx
  store float %i.rb, ptr %i.qz, align 4, !tbaa !555
  %i.rc = load float, ptr %i.an, align 4, !tbaa !517
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv577
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12 ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !555
  %i.rg = fsub float %i.rf, %i.rc
  store float %i.rg, ptr %i.re, align 4, !tbaa !555
  %indvars.iv.next578.3 = add nuw nsw i64 %indvars.iv577, 4 ; 2 uses
  %exitcond582.not.3 = icmp eq i64 %indvars.iv.next578.3, %indvars.iv583
  br i1 %exitcond582.not.3, label %.loopexit655, label %scalar.ph641, !llvm.loop !1195

.loopexit655:                                     ; preds = %scalar.ph641.prol.loopexit, %scalar.ph641, %middle.block652
  %indvars.iv.next586 = add nuw nsw i64 %indvars.iv585, 1 ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1
  %exitcond591.not = icmp eq i64 %indvars.iv.next586, %wide.trip.count590
  br i1 %exitcond591.not, label %.loopexit, label %.preheader, !llvm.loop !1196

.loopexit:                                        ; preds = %.loopexit655, %.preheader555, %.loopexit558
  %i.rh = icmp eq ptr %i.pr, null
  br i1 %i.rh, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.loopexit
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4329)
  br label %.critedge

bb.fw:                                            ; preds = %.loopexit
  call void @Abc_FrameUpdateGia(ptr noundef %0, ptr noundef nonnull %i.pr)
  br label %.critedge

.threadthread-pre-split.sink.split:               ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.s, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e
  %.str.1098.sink = phi ptr [ @.str.2488, %bb.w ], [ @.str.1098, %bb.e ], [ @.str.2482, %bb.h ], [ @.str.895, %bb.j ], [ @.str.896, %bb.l ], [ @.str.2483, %bb.n ], [ @.str.2486, %bb.s ], [ @.str.2487, %bb.u ], [ @.str.4318, %bb.y ], [ @.str.2363, %bb.ab ], [ @.str.2395, %bb.ad ], [ @.str.2491, %bb.af ], [ @.str.2492, %bb.ah ], [ @.str.2493, %bb.ai ], [ @.str.2492, %bb.aj ], [ @.str.4319, %bb.ak ], [ @.str.2490, %bb.al ]
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.1098.sink)
  br label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %bb.f, %bb.i, %bb.k, %bb.m, %bb.o, %bb.r, %bb.t, %bb.v, %bb.x, %bb.ae, %bb.ag, %bb.am, %bb.d, %bb.z, %.threadthread-pre-split.sink.split
  %.pr = load float, ptr %i.ap, align 8, !tbaa !515
  br label %.thread

.thread:                                          ; preds = %bb.ac, %.threadthread-pre-split
  %i.ri = phi float [ %.pr, %.threadthread-pre-split ], [ %i.eq, %bb.ac ] ; 2 uses
  %i.rj = fcmp oeq float %i.ri, -1.000000e+00
  br i1 %i.rj, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.2523, i64 14, i1 false)
  br label %bb.fz

bb.fy:                                            ; preds = %.thread
  %i.rk = fpext float %i.ri to double
  %i.rl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.655, double noundef %i.rk) #37 ; 0 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.rm = load i32, ptr %3, align 8, !tbaa !502   ; 2 uses
  %i.rn = icmp eq i32 %i.rm, -1
  br i1 %i.rn, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i64 34184235038435692, ptr %i.b, align 16
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %i.ro = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.1251, i32 noundef %i.rm) #37 ; 0 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4330)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2526)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2527, i32 noundef 33, ptr noundef nonnull %i.b)
  %i.rp = load i32, ptr %i.ay, align 4, !tbaa !503
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2528, i32 noundef %i.rp)
  %i.rq = load i32, ptr %i.ax, align 8, !tbaa !504
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2529, i32 noundef %i.rq)
  %i.rr = load i32, ptr %i.aw, align 4, !tbaa !505
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2530, i32 noundef %i.rr)
  %i.rs = load i32, ptr %i.av, align 8, !tbaa !506
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2531, i32 noundef %i.rs)
  %i.rt = load i32, ptr %i.au, align 8, !tbaa !507
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2532, i32 noundef %i.rt)
  %i.ru = load i32, ptr %i.at, align 4, !tbaa !509
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2534, i32 noundef %i.ru)
  %i.rv = load i32, ptr %i.as, align 8, !tbaa !510
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2535, i32 noundef %i.rv)
  %i.rw = load i32, ptr %i.ar, align 4, !tbaa !511
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2536, i32 noundef %i.rw)
  %i.rx = load i32, ptr %i.aq, align 8, !tbaa !1165
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4331, i32 noundef %i.rx)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2539, ptr noundef nonnull %i.a)
  %i.ry = load float, ptr %i.ao, align 4, !tbaa !516
  %i.rz = fpext float %i.ry to double
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2401, double noundef %i.rz)
  %i.sa = load float, ptr %i.an, align 4, !tbaa !517
  %i.sb = fpext float %i.sa to double
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2540, double noundef %i.sb)
  %i.sc = load ptr, ptr %i.al, align 8, !tbaa !518 ; 2 uses
  %.not484 = icmp eq ptr %i.sc, null
  %spec.select = select i1 %.not484, ptr @.str.2374, ptr %i.sc
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2541, ptr noundef nonnull %spec.select)
  %i.sd = load ptr, ptr %i.al, align 8, !tbaa !518 ; 2 uses
  %.not485 = icmp eq ptr %i.sd, null
  %i.se = select i1 %.not485, ptr @.str.2374, ptr %i.sd
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4332, ptr noundef nonnull %i.se)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2538)
  %i.sf = load i32, ptr %i.ai, align 4, !tbaa !521
  %.not486 = icmp eq i32 %i.sf, 0
  %i.sg = select i1 %.not486, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2543, ptr noundef nonnull %i.sg)
  %i.sh = load i32, ptr %i.ah, align 8, !tbaa !522
  %.not487 = icmp eq i32 %i.sh, 0
  %i.si = select i1 %.not487, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2544, ptr noundef nonnull %i.si)
  %i.sj = load i32, ptr %i.ag, align 8, !tbaa !523
  %.not488 = icmp eq i32 %i.sj, 0
  %i.sk = select i1 %.not488, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2545, ptr noundef nonnull %i.sk)
  %i.sl = load i32, ptr %i.af, align 8, !tbaa !1167
  %.not489 = icmp eq i32 %i.sl, 0
  %i.sm = select i1 %.not489, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4333, ptr noundef nonnull %i.sm)
  %i.sn = load i32, ptr %i.ae, align 4, !tbaa !525
  %.not490 = icmp eq i32 %i.sn, 0
  %i.so = select i1 %.not490, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2547, ptr noundef nonnull %i.so)
  %i.sp = load i32, ptr %i.ad, align 8, !tbaa !526
  %.not491 = icmp eq i32 %i.sp, 0
  %i.sq = select i1 %.not491, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2548, ptr noundef nonnull %i.sq)
  %i.sr = load i32, ptr %i.ac, align 4, !tbaa !527
end_hunk_0
