Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_pal_posix-3f6d1eecbd222b5d.iceoryx2_pal_posix.65c26a911a73b24d-cgu.1?download=true
begin_hunk_0_@_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid:bb.a
  %i.dw = phi i64 [ %.promoted98.i.i, %.lr.ph219.i.i ], [ %spec.select86.i, %.split69.us.i.us.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.dx = add i64 %.sink132.i.us.i49.lcssa51.us61.i, %i.cd ; 4 uses
  %i.dy = icmp ult i64 %i.dx, %i.bv
  br i1 %i.dy, label %.lr.ph.i.i.us.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.i.i.us.i.i:                                ; preds = %bb.o
  %i.dz = icmp eq i64 %i.dw, -1
  %invariant.op.i.i.us.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.sink132.i.us.i49.lcssa51.us61.i, %invariant.op ; 3 uses
  %i.ea = add i64 %.sink132.i.us.i49.lcssa51.us61.i, %i.dt ; 2 uses
  %i.eb = add i64 %.sink132.i.us.i49.lcssa51.us61.i, %i.cc ; 5 uses
  br i1 %i.dz, label %.lr.ph.i.split.us.i.us.i.preheader.i, label %.lr.ph.i.split.i.us.i.i

.lr.ph.i.split.us.i.us.i.preheader.i:             ; preds = %.lr.ph.i.i.us.i.i
  br i1 %.first_iter.i.fr.us.i.i, label %.lr.ph.i.split.us.i.us.i.us.i, label %.lr.ph.i.split.us.i.us.i.i

.lr.ph.i.split.us.i.us.i.us.i:                    ; preds = %.lr.ph.i.split.us.i.us.i.preheader.i, %.loopexit.split.us.us.i.us.i
  %.sink132.i.us.i49.us.i = phi i64 [ %.sink132.i.us.i.us.i, %.loopexit.split.us.us.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.split.us.i.us.i.preheader.i ]
  %i.ec = phi i64 [ %i.ex, %.loopexit.split.us.us.i.us.i ], [ %i.dx, %.lr.ph.i.split.us.i.us.i.preheader.i ]
  %.not.i46.us.i.us.i.us.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61.i, %.sink132.i.us.i49.us.i
  br i1 %.not.i46.us.i.us.i.us.i, label %bb.p, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

bb.p:                                             ; preds = %.lr.ph.i.split.us.i.us.i.us.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.cg
  %.not20.i.us.i.us.i.us.i = icmp eq i64 %i.ei, 0
  br i1 %.not20.i.us.i.us.i.us.i, label %.loopexit.split.us.us.i.us.i, label %.preheader74.i.us.i.us.i.preheader

.preheader74.i.us.i.us.i.preheader:               ; preds = %bb.p
  br i1 %exitcond.not.i.us.i.us.i.us.i306.not, label %.lr.ph308, label %.preheader.i.us.us.i.us.i.preheader

.preheader74.i.us.i.us.i:                         ; preds = %.lr.ph308
  %i.ej = add i64 %.sroa.04.0.i.us.i.us.i.us.i307, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i.us.i = icmp eq i64 %i.ej, %umax.i.us.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i.us.i, label %.preheader.i.us.us.i.us.i.preheader, label %.lr.ph308

.preheader.i.us.us.i.us.i.preheader:              ; preds = %.preheader74.i.us.i.us.i, %.preheader74.i.us.i.us.i.preheader
  br i1 %.not73.i.us.us.i.us.i309, label %.split69.us.i.us.i.i, label %.lr.ph311

.lr.ph308:                                        ; preds = %.preheader74.i.us.i.us.i.preheader, %.preheader74.i.us.i.us.i
  %.sroa.04.0.i.us.i.us.i.us.i307 = phi i64 [ %i.ej, %.preheader74.i.us.i.us.i ], [ %.promoted99.i.i, %.preheader74.i.us.i.us.i.preheader ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.us.i.us.i.us.i307
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !172, !noalias !174, !noundef !8
  %i.em = add i64 %.sroa.04.0.i.us.i.us.i.us.i307, %.sink132.i.us.i49.lcssa51.us61.i ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.bv
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %.not22.i.us.i.us.i.us.i = icmp eq i8 %i.el, %i.ep
  br i1 %.not22.i.us.i.us.i.us.i, label %.preheader74.i.us.i.us.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph308
  %.reass.i.us.i.us.i.us.i = add i64 %.sroa.04.0.i.us.i.us.i.us.i307, %invariant.op.i.i.us.reass.reass.i.reass.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i.us.i

.preheader.i.us.us.i.us.i:                        ; preds = %.lr.ph311
  %.not73.i.us.us.i.us.i = icmp eq i64 %i.eq, 0
  br i1 %.not73.i.us.us.i.us.i, label %.split69.us.i.us.i.i, label %.lr.ph311

.lr.ph311:                                        ; preds = %.preheader.i.us.us.i.us.i.preheader, %.preheader.i.us.us.i.us.i
  %.sroa.2.0.i.us.i.us.us.i.us.i310 = phi i64 [ %i.eq, %.preheader.i.us.us.i.us.i ], [ %.promoted99.i.i, %.preheader.i.us.us.i.us.i.preheader ]
  %i.eq = add i64 %.sroa.2.0.i.us.i.us.us.i.us.i310, -1 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !172, !noalias !174, !noundef !8
  %i.et = add i64 %i.eq, %.sink132.i.us.i49.lcssa51.us61.i ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.bv
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %.not21.i.us.i.us.us.i.us.i = icmp eq i8 %i.es, %i.ew
  br i1 %.not21.i.us.i.us.us.i.us.i, label %.preheader.i.us.us.i.us.i, label %.loopexit.split.us.us.i.us.i

.loopexit.split.us.us.i.us.i:                     ; preds = %.lr.ph311, %bb.q, %bb.p
  %.sink132.i.us.i.us.i = phi i64 [ %i.eb, %bb.p ], [ %.reass.i.us.i.us.i.us.i, %bb.q ], [ %i.ea, %.lr.ph311 ] ; 2 uses
  %i.ex = add i64 %.sink132.i.us.i.us.i, %i.cd    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.bv
  br i1 %i.ey, label %.lr.ph.i.split.us.i.us.i.us.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.i.split.i.us.i.i:                          ; preds = %.lr.ph.i.i.us.i.i, %.sink.split.i.i.us.i.i
  %i.ez = phi i64 [ %.sink55.i.i.us.i.i, %.sink.split.i.i.us.i.i ], [ %i.dw, %.lr.ph.i.i.us.i.i ] ; 3 uses
  %i.fa = phi i64 [ %i.ga, %.sink.split.i.i.us.i.i ], [ %i.dx, %.lr.ph.i.i.us.i.i ]
  %i.fb = phi i64 [ %.ph54.i.i.us.i.i, %.sink.split.i.i.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.i.us.i.i ]
  %.not.i46.i.us.i.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61.i, %i.fb
  br i1 %.not.i46.i.us.i.i, label %bb.r, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

bb.r:                                             ; preds = %.lr.ph.i.split.i.us.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %i.fe = and i8 %i.fd, 63
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.cg
  %.not20.i.i.us.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not20.i.i.us.i.i, label %.sink.split.i.i.us.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = call i64 @llvm.umax.i64(i64 %.promoted99.i.i, i64 %i.ez) ; 3 uses
  %umax.i.i.us.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 range(i64 0, -9223372036854775808) %i.cc)
  %exitcond.not.i.i.us.i.i299.not = icmp ult i64 %i.fi, %i.cc
  br i1 %exitcond.not.i.i.us.i.i299.not, label %.lr.ph, label %.preheader75.i.us.i.i.preheader

bb.t:                                             ; preds = %.lr.ph
  %i.fj = add i64 %.sroa.04.0.i.i.us.i.i300, 1    ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.fj, %umax.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i, label %.preheader75.i.us.i.i.preheader, label %.lr.ph

.preheader75.i.us.i.i.preheader:                  ; preds = %bb.t, %bb.s
  %i.fk = icmp ult i64 %i.ez, %.promoted99.i.i
  br i1 %i.fk, label %.lr.ph302, label %.split69.us.i.us.i.i

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.04.0.i.i.us.i.i300 = phi i64 [ %i.fj, %bb.t ], [ %i.fi, %bb.s ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.i.us.i.i300
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !172, !noalias !174, !noundef !8
  %i.fn = add i64 %.sroa.04.0.i.i.us.i.i300, %.sink132.i.us.i49.lcssa51.us61.i ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.bv
  call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %.not22.i.i.us.i.i = icmp eq i8 %i.fm, %i.fq
  br i1 %.not22.i.i.us.i.i, label %bb.t, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %.reass.i.i.us.i.i = add i64 %.sroa.04.0.i.i.us.i.i300, %invariant.op.i.i.us.reass.reass.i.reass.reass.i.reass.reass.reass
  br label %.sink.split.i.i.us.i.i

.preheader75.i.us.i.i:                            ; preds = %bb.v
  %i.fr = icmp ult i64 %i.ez, %i.fs
  br i1 %i.fr, label %.lr.ph302, label %.split69.us.i.us.i.i

.lr.ph302:                                        ; preds = %.preheader75.i.us.i.i.preheader, %.preheader75.i.us.i.i
  %.sroa.2.0.i.i.us.i.i301 = phi i64 [ %i.fs, %.preheader75.i.us.i.i ], [ %.promoted99.i.i, %.preheader75.i.us.i.i.preheader ]
  %i.fs = add i64 %.sroa.2.0.i.i.us.i.i301, -1    ; 6 uses
  %i.ft = icmp ult i64 %i.fs, %i.cc
  br i1 %i.ft, label %bb.v, label %.split71.us.i.i.i

bb.v:                                             ; preds = %.lr.ph302
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !172, !noalias !174, !noundef !8
  %i.fw = add i64 %i.fs, %.sink132.i.us.i49.lcssa51.us61.i ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.bv
  call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %.not21.i.i.us.i.i = icmp eq i8 %i.fv, %i.fz
  br i1 %.not21.i.i.us.i.i, label %.preheader75.i.us.i.i, label %.sink.split.i.i.us.i.i

.sink.split.i.i.us.i.i:                           ; preds = %bb.v, %bb.u, %bb.r
  %.sink55.i.i.us.i.i = phi i64 [ 0, %bb.r ], [ 0, %bb.u ], [ %i.du, %bb.v ]
  %.ph54.i.i.us.i.i = phi i64 [ %i.eb, %bb.r ], [ %.reass.i.i.us.i.i, %bb.u ], [ %i.ea, %bb.v ] ; 2 uses
  %i.ga = add i64 %.ph54.i.i.us.i.i, %i.cd        ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.bv
  br i1 %i.gb, label %.lr.ph.i.split.i.us.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.i.split.us.i.us.i.i:                       ; preds = %.lr.ph.i.split.us.i.us.i.preheader.i, %.loopexit.split.us.us.i.i
  %.sink132.i.us.i49.i = phi i64 [ %.sink132.i.us.i.i, %.loopexit.split.us.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.split.us.i.us.i.preheader.i ]
  %i.gc = phi i64 [ %i.gq, %.loopexit.split.us.us.i.i ], [ %i.dx, %.lr.ph.i.split.us.i.us.i.preheader.i ]
  %.not.i46.us.i.us.i.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61.i, %.sink132.i.us.i49.i
  br i1 %.not.i46.us.i.us.i.i, label %bb.w, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

bb.w:                                             ; preds = %.lr.ph.i.split.us.i.us.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %i.gf = and i8 %i.ge, 63
  %i.gg = zext nneg i8 %i.gf to i64
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = and i64 %i.gh, %i.cg
  %.not20.i.us.i.us.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not20.i.us.i.us.i.i, label %.loopexit.split.us.us.i.i, label %.preheader74.i.us.i.i.preheader

.preheader74.i.us.i.i.preheader:                  ; preds = %bb.w
  br i1 %exitcond.not.i.us.i.us.i.i303.not, label %.lr.ph305, label %.preheader.i.preheader.us.i.i

.preheader74.i.us.i.i:                            ; preds = %.lr.ph305
  %i.gj = add i64 %.sroa.04.0.i.us.i.us.i.i304, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i.i = icmp eq i64 %i.gj, %umax.i.us.i.us.i.i
  br i1 %exitcond.not.i.us.i.us.i.i, label %.preheader.i.preheader.us.i.i, label %.lr.ph305

.lr.ph305:                                        ; preds = %.preheader74.i.us.i.i.preheader, %.preheader74.i.us.i.i
  %.sroa.04.0.i.us.i.us.i.i304 = phi i64 [ %i.gj, %.preheader74.i.us.i.i ], [ %.promoted99.i.i, %.preheader74.i.us.i.i.preheader ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.us.i.us.i.i304
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !172, !noalias !174, !noundef !8
  %i.gm = add i64 %.sroa.04.0.i.us.i.us.i.i304, %.sink132.i.us.i49.lcssa51.us61.i ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.bv
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.gm
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !171, !noalias !173, !noundef !8
  %.not22.i.us.i.us.i.i = icmp eq i8 %i.gl, %i.gp
  br i1 %.not22.i.us.i.us.i.i, label %.preheader74.i.us.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph305
  %.reass.i.us.i.us.i.i = add i64 %.sroa.04.0.i.us.i.us.i.i304, %invariant.op.i.i.us.reass.reass.i.reass.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i.i

.loopexit.split.us.us.i.i:                        ; preds = %bb.x, %bb.w
  %.sink132.i.us.i.i = phi i64 [ %i.eb, %bb.w ], [ %.reass.i.us.i.us.i.i, %bb.x ] ; 2 uses
  %i.gq = add i64 %.sink132.i.us.i.i, %i.cd       ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.bv
  br i1 %i.gr, label %.lr.ph.i.split.us.i.us.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.split69.us.i.us.i.i:                             ; preds = %.preheader75.i.us.i.i.preheader, %.preheader.i.us.us.i.us.i.preheader, %.preheader75.i.us.i.i, %.preheader.i.us.us.i.us.i, %.preheader.i.preheader.us.i.i
  %spec.select86.i = phi i64 [ -1, %.preheader.i.us.us.i.us.i ], [ -1, %.preheader.i.preheader.us.i.i ], [ 0, %.preheader75.i.us.i.i ], [ -1, %.preheader.i.us.us.i.us.i.preheader ], [ 0, %.preheader75.i.us.i.i.preheader ]
  %i.gs = icmp eq i64 %i.eb, %i.bv
  br i1 %i.gs, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %bb.o

.preheader.i.preheader.us.i.i:                    ; preds = %.preheader74.i.us.i.i.preheader, %.preheader74.i.us.i.i
  br i1 %.not73.i.us130.i.i, label %.split69.us.i.us.i.i, label %.split71.us.i.i.i

default.unreachable:                              ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81
  unreachable

.split71.us.i.i.i:                                ; preds = %.preheader.i.preheader.us.i.i, %.lr.ph302
  %.us-phi72.i.i.i = phi i64 [ %i.fs, %.lr.ph302 ], [ %i.dv, %.preheader.i.preheader.us.i.i ]
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.us-phi72.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36, !noalias !175
  unreachable

_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit: ; preds = %bb.o, %.split69.us.i.us.i.i, %.sink.split.i.i.us.i.i, %.lr.ph.i.split.i.us.i.i, %.loopexit.split.us.us.i.i, %.lr.ph.i.split.us.i.us.i.i, %.loopexit.split.us.us.i.us.i, %.lr.ph.i.split.us.i.us.i.us.i, %.lr.ph313, %.lr.ph.i56, %.lr.ph.i56.preheader, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.i, %thread-pre-split.i.i, %.lr.ph217.i.i, %bb.n, %.split.us.i.i, %.lr.ph.split.us.split.split.us.i.i, %.lr.ph206.split.us.i.i, %.lr.ph201.split.us.i.i, %.split114.us.i.sink.split.i, %.split.us115.i.i, %.split.us125.i.i
  %.sroa.0.0.i55 = phi i64 [ %.promoted99.i.i, %.lr.ph217.i.i ], [ %i.bf, %.lr.ph.split.us.split.split.us.i.i ], [ %.promoted99.i.i, %bb.n ], [ %i.bf, %.split114.us.i.sink.split.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.sink.split.i.i.us.i.i ], [ %i.bf, %.split.us.i.i ], [ %i.bf, %.split.us115.i.i ], [ %i.bf, %.split.us125.i.i ], [ %i.bf, %.lr.ph206.split.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.loopexit.split.us.us.i.i ], [ %i.bf, %.lr.ph201.split.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.loopexit.split.us.us.i.us.i ], [ %.mux.i, %.lr.ph.i56 ], [ %.promoted99.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.i ], [ %.promoted99.i.i, %thread-pre-split.i.i ], [ %.promoted99.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.i ], [ %.promoted99.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.i ], [ %.mux.i, %.lr.ph.i56.preheader ], [ %i.dn, %.lr.ph313 ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.split.us.i.us.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.split.us.i.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %.lr.ph.i.split.i.us.i.i ], [ %.sink132.i.us.i49.lcssa51.us61.i, %bb.o ], [ %.mux.i, %.split69.us.i.us.i.i ] ; 2 uses
  %i.gt = sub nuw i64 %.mux.i, %.sroa.0.0.i55     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.0.0.i55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  %i.gv = getelementptr inbounds nuw i8, ptr %i.be, i64 %.mux.i
  store i64 0, ptr %i.d, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.gt, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.gu, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.gt, ptr %.sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx, align 8
  %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.gu, ptr %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx, align 8
  %.sroa.544.sroa.6.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.gv, ptr %.sroa.544.sroa.6.0..sroa.544.0..sroa_idx.sroa_idx, align 8
  %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 1, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 0, ptr %.sroa.746.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  %i.gw = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter15SplitWhitespaceNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #37, !noalias !177 ; 2 uses
  %i.gx = extractvalue { i32, i32 } %i.gw, 0
  %i.gy = trunc i32 %i.gx to i1
  br i1 %i.gy, label %bb.y, label %.thread228

bb.y:                                             ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !178
  %i.gz = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, -9223372036854775807) 4) #33, !noalias !178 ; 5 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.z, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #34, !noalias !176
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i: ; preds = %bb.y
  %i.hb = extractvalue { i32, i32 } %i.gw, 1      ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !noalias !176
  store i64 4, ptr %i.b, align 8, !noalias !176
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.gz, ptr %.sroa.4.0..sroa_idx.i57, align 8, !noalias !176
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !177
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.hc = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter15SplitWhitespaceNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #37, !noalias !181 ; 2 uses
  %i.hd = extractvalue { i32, i32 } %i.hc, 0
  %i.he = trunc i32 %i.hd to i1
  br i1 %i.he, label %.lr.ph.i.i.i, label %.thread233

.lr.ph.i.i.i:                                     ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i, %bb.aa
  %i.hf = phi ptr [ %i.hl, %bb.aa ], [ %i.gz, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i ]
  %i.hg = phi i64 [ %i.hm, %bb.aa ], [ 4, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i ] ; 3 uses
  %i.hh = phi i64 [ %i.ho, %bb.aa ], [ 1, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i ] ; 4 uses
  %.pn.i.i.i = phi { i32, i32 } [ %i.hp, %bb.aa ], [ %i.hc, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i ]
  %i.hi = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.hj = icmp samesign ult i64 %i.hh, 2305843009213693952
  call void @llvm.assume(i1 %i.hj)
  %i.hk = icmp eq i64 %i.hh, %i.hg
  br i1 %i.hk, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i, label %bb.aa

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  call fastcc void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8JF6YcdXpCX_18iceoryx2_pal_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.hg, i64 noundef range(i64 1, 0) 1) #33
  %.pre3.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !182, !noalias !183
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i57, align 8, !alias.scope !182, !noalias !183
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i, %.lr.ph.i.i.i
  %i.hl = phi ptr [ %i.hf, %.lr.ph.i.i.i ], [ %.pre.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i ] ; 2 uses
  %i.hm = phi i64 [ %i.hg, %.lr.ph.i.i.i ], [ %.pre3.i.i.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hh
  store i32 %i.hi, ptr %i.hn, align 4, !noalias !184
  %i.ho = add nuw nsw i64 %i.hh, 1                ; 2 uses
  store i64 %i.ho, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !182, !noalias !183
  %i.hp = call fastcc { i32, i32 } @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter15SplitWhitespaceNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #37, !noalias !181 ; 2 uses
  %i.hq = extractvalue { i32, i32 } %i.hp, 0
  %i.hr = trunc i32 %i.hq to i1
  br i1 %i.hr, label %.lr.ph.i.i.i, label %bb.ad

_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0B1o_.exit.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i, %_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit
  %i.hs = call noundef i32 @getpid() #33
  %i.ht = icmp sgt i64 %i.m, 0
  br i1 %i.ht, label %bb.ab, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

bb.ab:                                            ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !185
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit: ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, %bb.j
  %.sroa.0.0 = phi i32 [ %i.br, %bb.j ], [ %i.hs, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

.thread233:                                       ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

.thread228:                                       ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hu = call noundef i32 @getpid() #33
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  %.sroa.0.0.copyload97 = load i64, ptr %i.b, align 8, !noalias !186 ; 2 uses
  %.sroa.5.0.copyload98 = load ptr, ptr %.sroa.4.0..sroa_idx.i57, align 8, !noalias !186, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hv = load i32, ptr %.sroa.5.0.copyload98, align 4, !noundef !8 ; 2 uses
  %i.hw = icmp eq i64 %.sroa.0.0.copyload97, 0
  br i1 %i.hw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread233, %bb.ad
  %.sroa.0.1239 = phi i32 [ %i.hb, %.thread233 ], [ %i.hv, %bb.ad ]
  %.sroa.5.092238 = phi ptr [ %i.gz, %.thread233 ], [ %.sroa.5.0.copyload98, %bb.ad ]
  %.sroa.0.07493237 = phi i64 [ 4, %.thread233 ], [ %.sroa.0.0.copyload97, %bb.ad ]
  %i.hx = shl nuw i64 %.sroa.0.07493237, 2
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.092238, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 4) #33
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit: ; preds = %.thread228, %bb.ad, %bb.ae
  %.sroa.0.1232 = phi i32 [ %i.hu, %.thread228 ], [ %i.hv, %bb.ad ], [ %.sroa.0.1239, %bb.ae ]
  %.val = load i64, ptr %i.e, align 8, !range !151, !noundef !8 ; 2 uses
  %i.hy = icmp sgt i64 %.val, 0
  br i1 %i.hy, label %bb.af, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit60

bb.af:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit
  %.val50 = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !187
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit60

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit60: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.c, %bb.ac, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit60
  %.sroa.0.2 = phi i32 [ %i.l, %bb.c ], [ %.sroa.0.0, %bb.ac ], [ %.sroa.0.1232, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit60 ]
  ret i32 %.sroa.0.2
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd12proc_pidpath(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.e, align 4
  %i.f = tail call noundef i32 @getpid() #33
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.e, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @8, ptr noundef nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %.sroa.0.0.copyload6.i = load i64, ptr %i.d, align 8, !alias.scope !202, !noalias !203 ; 3 uses
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload10.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i, align 8, !alias.scope !202, !noalias !203, !nonnull !8, !noundef !8 ; 5 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload14.i = load i64, ptr %.sroa.6.0..sroa_idx13.i, align 8, !alias.scope !202, !noalias !203 ; 8 uses
  %i.h = icmp samesign ult i64 %.sroa.6.0.copyload14.i, 16
  br i1 %i.h, label %.preheader.i.i, label %bb.b

.preheader.i.i:                                   ; preds = %.split
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload14.i, 0
  br i1 %.not.i.i, label %_RNvXNvMs_NtNtCsbqH9stoieM8_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split
  %i.i = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload10.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.copyload14.i) #33, !noalias !204 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
end_hunk_0
