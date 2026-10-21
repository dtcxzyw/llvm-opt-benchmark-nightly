Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/coo_converter?download=true
inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhhEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit34.us, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block39
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block39 ]
  br label %scalar.ph27

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %scalar.ph27
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph27 ], [ %.011.i.i.i.us.ph, %scalar.ph27.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph27 ], [ %.0910.i.i.i.us.ph, %scalar.ph27.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph27, !llvm.loop !351

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02137.us, i64 1 ; 4 uses
  store i8 %i.dx, ptr %.02137.us, align 1, !tbaa !28
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader42, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.02038.us, i64 %i.i
  %bound010 = icmp ult ptr %.02038.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.029.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader42, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.02038.us, i64 %n.vec16 ; 2 uses
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph15
  %index18 = phi i64 [ 0, %vector.ph15 ], [ %index.next22, %vector.body17 ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %.02038.us, i64 %index18 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load20 = load <2 x i64>, ptr %i.at, align 8, !tbaa !32, !alias.scope !365
  %wide.load21 = load <2 x i64>, ptr %i.au, align 8, !tbaa !32, !alias.scope !365
  %i.av = trunc <2 x i64> %wide.load20 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep19, i64 2
  store <2 x i8> %i.av, ptr %next.gep19, align 1, !tbaa !28, !alias.scope !366, !noalias !365
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !28, !alias.scope !366, !noalias !365
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.ay, label %middle.block23, label %vector.body17, !llvm.loop !355

middle.block23:                                   ; preds = %vector.body17
  br i1 %cmp.n24, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block23
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec16, %middle.block23 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.02038.us, %vector.memcheck7 ], [ %.02038.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block23 ] ; 2 uses
  %i.az = sub nsw i64 %i.i, %.01736.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.135.us.prol, align 1, !tbaa !28
  %i.be = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !356

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader42 ], [ %i.be, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01736.us.ph, %i.i
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bj, ptr %.135.us, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !28
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !28
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !28
  %i.cu = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.cu, %i.i
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !357

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block23, %bb.b, %.loopexit34.us
  %.122.us = phi ptr [ %.02137.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block23 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02038.us, %.loopexit34.us ], [ %.02038.us, %bb.b ], [ %i.as, %middle.block23 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cv = ptrtoint ptr %.val25.us to i64
  %i.cw = ptrtoint ptr %.val24.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !32
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !32
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.039.us, -1
  %i.ds = icmp sgt i64 %.039.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !358

.loopexit34.us:                                   ; preds = %scalar.ph27, %middle.block39
  %.lcssa = phi i64 [ %i.aj, %middle.block39 ], [ %i.ap, %scalar.ph27 ]
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28  ; 2 uses
  %.not.us = icmp eq i8 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !57

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split.preheader, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dy = shl nuw nsw i64 %i.i, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.029.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %.pre71 = load ptr, ptr %i.x, align 8, !tbaa !69
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61
  %.039.us41 = phi i64 [ %i.hc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %i.q, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.02038.us42 = phi ptr [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.02137.us43.a = phi ptr [ %.122.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %3 = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !28  ; 2 uses
  %.not.us44 = icmp eq i8 %i.eb, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us48, label %.lr.ph.us45, !prof !57

.lr.ph.us45:                                      ; preds = %.lr.ph40.split.split.us
  store i8 %i.eb, ptr %.02137.us43.a, align 1, !tbaa !28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us45
  %scevgep = getelementptr i8, ptr %.02038.us42, i64 %i.i
  %bound0 = icmp ult ptr %.02038.us42, %scevgep4
  %bound1 = icmp ult ptr %.sroa.029.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ec = getelementptr i8, ptr %.02038.us42, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02038.us42, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <2 x i64>, ptr %i.ed, align 8, !tbaa !32, !alias.scope !367
  %wide.load5 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !32, !alias.scope !367
  %i.ef = trunc <2 x i64> %wide.load to <2 x i8>
  %i.eg = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.eh = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.ef, ptr %next.gep, align 1, !tbaa !28, !alias.scope !368, !noalias !367
  store <2 x i8> %i.eg, ptr %i.eh, align 1, !tbaa !28, !alias.scope !368, !noalias !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us45, %middle.block
  %.01736.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us45 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us47.ph = phi ptr [ %.02038.us42, %vector.memcheck ], [ %.02038.us42, %.lr.ph.us45 ], [ %i.ec, %middle.block ] ; 2 uses
  %i.ej = sub nsw i64 %i.i, %.01736.us46.ph
  %xtraiter = and i64 %i.ej, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us46.prol = phi i64 [ %i.eo, %scalar.ph.prol ], [ %.01736.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us47.prol = phi ptr [ %i.en, %scalar.ph.prol ], [ %.135.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46.prol
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !32
  %i.em = trunc i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.135.us47.prol, i64 1 ; 3 uses
  store i8 %i.em, ptr %.135.us47.prol, align 1, !tbaa !28
  %i.eo = add nuw nsw i64 %.01736.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !363

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %.01736.us46.unr = phi i64 [ %.01736.us46.ph, %scalar.ph.preheader ], [ %i.eo, %scalar.ph.prol ]
  %.135.us47.unr = phi ptr [ %.135.us47.ph, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %i.ep = sub nsw i64 %.01736.us46.ph, %i.i
  %i.eq = icmp ugt i64 %i.ep, -8
  br i1 %i.eq, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us46 = phi i64 [ %i.ge, %scalar.ph ], [ %.01736.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us47 = phi ptr [ %i.gd, %scalar.ph ], [ %.135.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.es = load i64, ptr %i.er, align 8, !tbaa !32
  %i.et = trunc i64 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %.135.us47, i64 1
  store i8 %i.et, ptr %.135.us47, align 1, !tbaa !28
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !32
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.135.us47, i64 2
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !28
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !32
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.135.us47, i64 3
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !28
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !32
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.135.us47, i64 4
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !32
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.135.us47, i64 5
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !28
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !32
  %i.fs = trunc i64 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.135.us47, i64 6
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !28
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !32
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.135.us47, i64 7
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !28
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !32
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.135.us47, i64 8 ; 2 uses
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !28
  %i.ge = add nuw nsw i64 %.01736.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.ge, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph, !llvm.loop !364

..loopexit_crit_edge.us48.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.ec, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.gd, %scalar.ph ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.02137.us43.a, i64 1
  br label %..loopexit_crit_edge.us48

..loopexit_crit_edge.us48:                        ; preds = %..loopexit_crit_edge.us48.loopexit, %.lr.ph40.split.split.us
  %.122.us52 = phi ptr [ %.02137.us43.a, %.lr.ph40.split.split.us ], [ %i.gf, %..loopexit_crit_edge.us48.loopexit ]
  %.2.us53 = phi ptr [ %.02038.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us48.loopexit ]
  %.val24.us54 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25.us55 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.gg = ptrtoint ptr %.val25.us55 to i64
  %i.gh = ptrtoint ptr %.val24.us54 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 3                 ; 2 uses
  %i.gk = add nsw i64 %i.gj, -1                   ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gk ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.gn = add nsw i64 %i.gm, 1                    ; 3 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !32
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %i.gk
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !32
  %i.gq = icmp eq i64 %i.gn, %i.gp
  %i.gr = icmp sgt i64 %i.gj, 1
  %or.cond.i.us56 = and i1 %i.gq, %i.gr
  br i1 %or.cond.i.us56, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

.lr.ph.i.us58:                                    ; preds = %..loopexit_crit_edge.us48, %bb.d
  %i.gs = phi i64 [ %i.ha, %bb.d ], [ %i.gn, %..loopexit_crit_edge.us48 ]
  %.03.i.us59 = phi i64 [ %i.gx, %bb.d ], [ %i.gk, %..loopexit_crit_edge.us48 ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %.03.i.us59
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !32
  %i.gv = icmp eq i64 %i.gs, %i.gu
  br i1 %i.gv, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

bb.d:                                             ; preds = %.lr.ph.i.us58
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us59
  store i64 0, ptr %i.gw, align 8, !tbaa !32
  %i.gx = add nsw i64 %.03.i.us59, -1             ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gx ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !32
  %i.ha = add nsw i64 %i.gz, 1                    ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !32
  %i.hb = icmp sgt i64 %.03.i.us59, 1
  br i1 %i.hb, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61: ; preds = %.lr.ph.i.us58, %bb.d, %..loopexit_crit_edge.us48
  %i.hc = add nsw i64 %.039.us41, -1
  %i.hd = icmp sgt i64 %.039.us41, 1
  br i1 %i.hd, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !358

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.he = ptrtoint ptr %.sroa.029.0 to i64
  %i.hf = sub i64 %.sroa.13.0, %i.he
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hf) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hh = ptrtoint ptr %.sroa.029.0 to i64
  %i.hi = sub i64 %.sroa.13.0, %i.hh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hi) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %i.hj = phi ptr [ %i.ho, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %.pre71, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.039 = phi i64 [ %i.il, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.02137 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !28  ; 2 uses
  %.not = icmp eq i8 %i.hm, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !57

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.hn = getelementptr inbounds nuw i8, ptr %.02137, i64 1
  store i8 %i.hm, ptr %.02137, align 1, !tbaa !28
  %.pre.a = load ptr, ptr %i.x, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %i.ho = phi ptr [ %i.hj, %.lr.ph40.split.split ], [ %.pre.a, %.loopexit ]
  %.122 = phi ptr [ %.02137, %.lr.ph40.split.split ], [ %i.hn, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.hp = ptrtoint ptr %.val25 to i64
  %i.hq = ptrtoint ptr %.val24 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = add nsw i64 %i.hs, -1                   ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ht ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !32
  %i.hw = add nsw i64 %i.hv, 1                    ; 3 uses
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !32
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ht
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !32
  %i.hz = icmp eq i64 %i.hw, %i.hy
  %i.ia = icmp sgt i64 %i.hs, 1
  %or.cond.i = and i1 %i.hz, %i.ia
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ib = phi i64 [ %i.ij, %bb.h ], [ %i.hw, %bb.g ]
  %.03.i = phi i64 [ %i.ig, %bb.h ], [ %i.ht, %bb.g ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !32
  %i.ie = icmp eq i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.if, align 8, !tbaa !32
  %i.ig = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !32
  %i.ik = icmp sgt i64 %.03.i, 1
  br i1 %i.ik, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.il = add nsw i64 %.039, -1
  %i.im = icmp sgt i64 %.039, 1
  br i1 %i.im, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !358

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hg
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr63 = freeze i64 %i.g
  %i.h = shl i64 %.fr63, 29
  %i.i = ashr i64 %i.h, 32                        ; 20 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc26 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc26 ]
  %i.q = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.s = ptrtoint ptr %.sroa.029.0 to i64
  %i.t = sub i64 %.0.i.i.i.i.i.i.i, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.v, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.y = shl nuw nsw i64 %i.i, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.029.0, i64 %i.y
  %min.iters.check28 = icmp ult i64 %i.u, 4
  %n.vec30 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.u, %n.vec30
  %min.iters.check14 = icmp ult i64 %i.i, 4
  %n.vec16 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n24 = icmp eq i64 %i.i, %n.vec16
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02038.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02137.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  br i1 %min.iters.check28, label %scalar.ph27.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ah, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
  %wide.load35 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !32
  %wide.load37 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !32
  %i.ae = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.af = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.ai, label %middle.block39, label %vector.body31, !llvm.loop !369

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit34.us, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block39
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block39 ]
  br label %scalar.ph27

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %scalar.ph27
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph27 ], [ %.011.i.i.i.us.ph, %scalar.ph27.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph27 ], [ %.0910.i.i.i.us.ph, %scalar.ph27.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph27, !llvm.loop !370

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02137.us, i64 2 ; 4 uses
  store i16 %i.dx, ptr %.02137.us, align 2, !tbaa !30
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader42, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.02038.us, i64 %i.i
  %bound010 = icmp ult ptr %.02038.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.029.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader42, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.02038.us, i64 %n.vec16 ; 2 uses
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph15
  %index18 = phi i64 [ 0, %vector.ph15 ], [ %index.next22, %vector.body17 ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %.02038.us, i64 %index18 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load20 = load <2 x i64>, ptr %i.at, align 8, !tbaa !32, !alias.scope !384
  %wide.load21 = load <2 x i64>, ptr %i.au, align 8, !tbaa !32, !alias.scope !384
  %i.av = trunc <2 x i64> %wide.load20 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep19, i64 2
  store <2 x i8> %i.av, ptr %next.gep19, align 1, !tbaa !28, !alias.scope !385, !noalias !384
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !28, !alias.scope !385, !noalias !384
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.ay, label %middle.block23, label %vector.body17, !llvm.loop !374

middle.block23:                                   ; preds = %vector.body17
  br i1 %cmp.n24, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block23
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec16, %middle.block23 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.02038.us, %vector.memcheck7 ], [ %.02038.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block23 ] ; 2 uses
  %i.az = sub nsw i64 %i.i, %.01736.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.135.us.prol, align 1, !tbaa !28
  %i.be = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !375

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader42 ], [ %i.be, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01736.us.ph, %i.i
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bj, ptr %.135.us, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !28
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !28
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !28
  %i.cu = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.cu, %i.i
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !376

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block23, %bb.b, %.loopexit34.us
  %.122.us = phi ptr [ %.02137.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block23 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02038.us, %.loopexit34.us ], [ %.02038.us, %bb.b ], [ %i.as, %middle.block23 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cv = ptrtoint ptr %.val25.us to i64
  %i.cw = ptrtoint ptr %.val24.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !32
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !32
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.039.us, -1
  %i.ds = icmp sgt i64 %.039.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !377

.loopexit34.us:                                   ; preds = %scalar.ph27, %middle.block39
  %.lcssa = phi i64 [ %i.aj, %middle.block39 ], [ %i.ap, %scalar.ph27 ]
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !30 ; 2 uses
  %.not.us = icmp eq i16 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !57

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split.preheader, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dy = shl nuw nsw i64 %i.i, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.029.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ea = ptrtoint ptr %.val25 to i64
  %i.eb = ptrtoint ptr %.val24 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61
  %.039.us41 = phi i64 [ %i.hl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %i.q, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.02038.us42 = phi ptr [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.02137.us43.a = phi ptr [ %.122.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %3 = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !30 ; 2 uses
  %.not.us44 = icmp eq i16 %i.ek, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us48, label %.lr.ph.us45, !prof !57

.lr.ph.us45:                                      ; preds = %.lr.ph40.split.split.us
  store i16 %i.ek, ptr %.02137.us43.a, align 2, !tbaa !30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us45
  %scevgep = getelementptr i8, ptr %.02038.us42, i64 %i.i
  %bound0 = icmp ult ptr %.02038.us42, %scevgep4
  %bound1 = icmp ult ptr %.sroa.029.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.el = getelementptr i8, ptr %.02038.us42, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02038.us42, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x i64>, ptr %i.em, align 8, !tbaa !32, !alias.scope !386
  %wide.load5 = load <2 x i64>, ptr %i.en, align 8, !tbaa !32, !alias.scope !386
  %i.eo = trunc <2 x i64> %wide.load to <2 x i8>
  %i.ep = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.eq = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eo, ptr %next.gep, align 1, !tbaa !28, !alias.scope !387, !noalias !386
  store <2 x i8> %i.ep, ptr %i.eq, align 1, !tbaa !28, !alias.scope !387, !noalias !386
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us45, %middle.block
  %.01736.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us45 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us47.ph = phi ptr [ %.02038.us42, %vector.memcheck ], [ %.02038.us42, %.lr.ph.us45 ], [ %i.el, %middle.block ] ; 2 uses
  %i.es = sub nsw i64 %i.i, %.01736.us46.ph
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us46.prol = phi i64 [ %i.ex, %scalar.ph.prol ], [ %.01736.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us47.prol = phi ptr [ %i.ew, %scalar.ph.prol ], [ %.135.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46.prol
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !32
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.135.us47.prol, i64 1 ; 3 uses
  store i8 %i.ev, ptr %.135.us47.prol, align 1, !tbaa !28
  %i.ex = add nuw nsw i64 %.01736.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !382

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %.01736.us46.unr = phi i64 [ %.01736.us46.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.135.us47.unr = phi ptr [ %.135.us47.ph, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %i.ey = sub nsw i64 %.01736.us46.ph, %i.i
  %i.ez = icmp ugt i64 %i.ey, -8
  br i1 %i.ez, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us46 = phi i64 [ %i.gn, %scalar.ph ], [ %.01736.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us47 = phi ptr [ %i.gm, %scalar.ph ], [ %.135.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !32
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.135.us47, i64 1
  store i8 %i.fc, ptr %.135.us47, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fh = trunc i64 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %.135.us47, i64 2
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.135.us47, i64 3
  store i8 %i.fm, ptr %i.fi, align 1, !tbaa !28
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !32
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.135.us47, i64 4
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.135.us47, i64 5
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !28
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.gb = trunc i64 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.135.us47, i64 6
  store i8 %i.gb, ptr %i.fx, align 1, !tbaa !28
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = trunc i64 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.135.us47, i64 7
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !28
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.135.us47, i64 8 ; 2 uses
  store i8 %i.gl, ptr %i.gh, align 1, !tbaa !28
  %i.gn = add nuw nsw i64 %.01736.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gn, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph, !llvm.loop !383

..loopexit_crit_edge.us48.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.el, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.gm, %scalar.ph ]
  %i.go = getelementptr inbounds nuw i8, ptr %.02137.us43.a, i64 2
  br label %..loopexit_crit_edge.us48

..loopexit_crit_edge.us48:                        ; preds = %..loopexit_crit_edge.us48.loopexit, %.lr.ph40.split.split.us
  %.122.us52 = phi ptr [ %.02137.us43.a, %.lr.ph40.split.split.us ], [ %i.go, %..loopexit_crit_edge.us48.loopexit ]
  %.2.us53 = phi ptr [ %.02038.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us48.loopexit ]
  %.val24.us54 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val25.us55 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.gp = ptrtoint ptr %.val25.us55 to i64
  %i.gq = ptrtoint ptr %.val24.us54 to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 3                 ; 2 uses
  %i.gt = add nsw i64 %i.gs, -1                   ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gt ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.gw = add nsw i64 %i.gv, 1                    ; 3 uses
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %i.gt
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !32
  %i.gz = icmp eq i64 %i.gw, %i.gy
  %i.ha = icmp sgt i64 %i.gs, 1
  %or.cond.i.us56 = and i1 %i.gz, %i.ha
  br i1 %or.cond.i.us56, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

.lr.ph.i.us58:                                    ; preds = %..loopexit_crit_edge.us48, %bb.d
  %i.hb = phi i64 [ %i.hj, %bb.d ], [ %i.gw, %..loopexit_crit_edge.us48 ]
  %.03.i.us59 = phi i64 [ %i.hg, %bb.d ], [ %i.gt, %..loopexit_crit_edge.us48 ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %.03.i.us59
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !32
  %i.he = icmp eq i64 %i.hb, %i.hd
  br i1 %i.he, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

bb.d:                                             ; preds = %.lr.ph.i.us58
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us59
  store i64 0, ptr %i.hf, align 8, !tbaa !32
  %i.hg = add nsw i64 %.03.i.us59, -1             ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hj = add nsw i64 %i.hi, 1                    ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !32
  %i.hk = icmp sgt i64 %.03.i.us59, 1
  br i1 %i.hk, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61: ; preds = %.lr.ph.i.us58, %bb.d, %..loopexit_crit_edge.us48
  %i.hl = add nsw i64 %.039.us41, -1
  %i.hm = icmp sgt i64 %.039.us41, 1
  br i1 %i.hm, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !377

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hn = ptrtoint ptr %.sroa.029.0 to i64
  %i.ho = sub i64 %.sroa.13.0, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hq = ptrtoint ptr %.sroa.029.0 to i64
  %i.hr = sub i64 %.sroa.13.0, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ij, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.02137 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.hs = load ptr, ptr %i.dz, align 8
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !30 ; 2 uses
  %.not = icmp eq i16 %i.ht, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !57

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.hu = getelementptr inbounds nuw i8, ptr %.02137, i64 2
  store i16 %i.ht, ptr %.02137, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.122 = phi ptr [ %.02137, %.lr.ph40.split.split ], [ %i.hu, %.loopexit ]
  %i.hv = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.hw = add nsw i64 %i.hv, 1                    ; 3 uses
  store i64 %i.hw, ptr %i.ef, align 8, !tbaa !32
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.hy = icmp eq i64 %i.hw, %i.hx
  %or.cond.i = and i1 %i.hy, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.hz = phi i64 [ %i.ih, %bb.h ], [ %i.hw, %bb.g ]
  %.03.i = phi i64 [ %i.ie, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !32
  %i.ic = icmp eq i64 %i.hz, %i.ib
  br i1 %i.ic, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.id, align 8, !tbaa !32
  %i.ie = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ih = add nsw i64 %i.ig, 1                    ; 2 uses
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !32
  %i.ii = icmp sgt i64 %.03.i, 1
  br i1 %i.ii, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ij = add nsw i64 %.039, -1
  %i.ik = icmp sgt i64 %.039, 1
  br i1 %i.ik, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !377

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr64 = freeze i64 %i.g
  %i.h = shl i64 %.fr64, 29
  %i.i = ashr i64 %i.h, 32                        ; 20 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc27 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc27 ]
  %i.q = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.s = ptrtoint ptr %.sroa.030.0 to i64
  %i.t = sub i64 %.0.i.i.i.i.i.i.i, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.v, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph41.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph41
  %i.y = shl nuw nsw i64 %i.i, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check28 = icmp ult i64 %i.u, 4
  %n.vec30 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.u, %n.vec30
  %min.iters.check14 = icmp ult i64 %i.i, 4
  %n.vec16 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n24 = icmp eq i64 %i.i, %n.vec16
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02039.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02138.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  br i1 %min.iters.check28, label %scalar.ph27.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ah, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
  %wide.load35 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhjEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block39
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block39 ]
  br label %scalar.ph27

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %scalar.ph27
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph27 ], [ %.011.i.i.i.us.ph, %scalar.ph27.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph27 ], [ %.0910.i.i.i.us.ph, %scalar.ph27.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph27, !llvm.loop !389

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02138.us, i64 4 ; 4 uses
  store i32 %i.dx, ptr %.02138.us, align 4, !tbaa !27
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader42, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.02039.us, i64 %i.i
  %bound010 = icmp ult ptr %.02039.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.030.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader42, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.02039.us, i64 %n.vec16 ; 2 uses
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph15
  %index18 = phi i64 [ 0, %vector.ph15 ], [ %index.next22, %vector.body17 ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %.02039.us, i64 %index18 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load20 = load <2 x i64>, ptr %i.at, align 8, !tbaa !32, !alias.scope !403
  %wide.load21 = load <2 x i64>, ptr %i.au, align 8, !tbaa !32, !alias.scope !403
  %i.av = trunc <2 x i64> %wide.load20 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep19, i64 2
  store <2 x i8> %i.av, ptr %next.gep19, align 1, !tbaa !28, !alias.scope !404, !noalias !403
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !28, !alias.scope !404, !noalias !403
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.ay, label %middle.block23, label %vector.body17, !llvm.loop !393

middle.block23:                                   ; preds = %vector.body17
  br i1 %cmp.n24, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block23
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec16, %middle.block23 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.02039.us, %vector.memcheck7 ], [ %.02039.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block23 ] ; 2 uses
  %i.az = sub nsw i64 %i.i, %.01737.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.136.us.prol, align 1, !tbaa !28
  %i.be = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !394

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader42 ], [ %i.be, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01737.us.ph, %i.i
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bj, ptr %.136.us, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !28
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !28
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !28
  %i.cu = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond71.not.7 = icmp eq i64 %i.cu, %i.i
  br i1 %exitcond71.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !395

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block23, %bb.b, %.loopexit35.us
  %.122.us = phi ptr [ %.02138.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block23 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02039.us, %.loopexit35.us ], [ %.02039.us, %bb.b ], [ %i.as, %middle.block23 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cv = ptrtoint ptr %.val26.us to i64
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !32
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !32
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.040.us, -1
  %i.ds = icmp sgt i64 %.040.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !396

.loopexit35.us:                                   ; preds = %scalar.ph27, %middle.block39
  %.lcssa = phi i64 [ %i.aj, %middle.block39 ], [ %i.ap, %scalar.ph27 ]
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !27 ; 2 uses
  %.not.us = icmp eq i32 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !57

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dy = shl nuw nsw i64 %i.i, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.030.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ea = ptrtoint ptr %.val26 to i64
  %i.eb = ptrtoint ptr %.val25 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62
  %.040.us42 = phi i64 [ %i.hl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %i.q, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.02039.us43 = phi ptr [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.02138.us44.a = phi ptr [ %.122.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %3 = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !27 ; 2 uses
  %.not.us45 = icmp eq i32 %i.ek, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us49, label %.lr.ph.us46, !prof !57

.lr.ph.us46:                                      ; preds = %.lr.ph41.split.split.us
  store i32 %i.ek, ptr %.02138.us44.a, align 4, !tbaa !27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us46
  %scevgep = getelementptr i8, ptr %.02039.us43, i64 %i.i
  %bound0 = icmp ult ptr %.02039.us43, %scevgep4
  %bound1 = icmp ult ptr %.sroa.030.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.el = getelementptr i8, ptr %.02039.us43, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02039.us43, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x i64>, ptr %i.em, align 8, !tbaa !32, !alias.scope !405
  %wide.load5 = load <2 x i64>, ptr %i.en, align 8, !tbaa !32, !alias.scope !405
  %i.eo = trunc <2 x i64> %wide.load to <2 x i8>
  %i.ep = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.eq = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eo, ptr %next.gep, align 1, !tbaa !28, !alias.scope !406, !noalias !405
  store <2 x i8> %i.ep, ptr %i.eq, align 1, !tbaa !28, !alias.scope !406, !noalias !405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us46, %middle.block
  %.01737.us47.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us46 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us48.ph = phi ptr [ %.02039.us43, %vector.memcheck ], [ %.02039.us43, %.lr.ph.us46 ], [ %i.el, %middle.block ] ; 2 uses
  %i.es = sub nsw i64 %i.i, %.01737.us47.ph
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us47.prol = phi i64 [ %i.ex, %scalar.ph.prol ], [ %.01737.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us48.prol = phi ptr [ %i.ew, %scalar.ph.prol ], [ %.136.us48.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47.prol
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !32
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.136.us48.prol, i64 1 ; 3 uses
  store i8 %i.ev, ptr %.136.us48.prol, align 1, !tbaa !28
  %i.ex = add nuw nsw i64 %.01737.us47.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !401

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %.01737.us47.unr = phi i64 [ %.01737.us47.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.136.us48.unr = phi ptr [ %.136.us48.ph, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %i.ey = sub nsw i64 %.01737.us47.ph, %i.i
  %i.ez = icmp ugt i64 %i.ey, -8
  br i1 %i.ez, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us47 = phi i64 [ %i.gn, %scalar.ph ], [ %.01737.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us48 = phi ptr [ %i.gm, %scalar.ph ], [ %.136.us48.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !32
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.136.us48, i64 1
  store i8 %i.fc, ptr %.136.us48, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fh = trunc i64 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %.136.us48, i64 2
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.136.us48, i64 3
  store i8 %i.fm, ptr %i.fi, align 1, !tbaa !28
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !32
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.136.us48, i64 4
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.136.us48, i64 5
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !28
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.gb = trunc i64 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.136.us48, i64 6
  store i8 %i.gb, ptr %i.fx, align 1, !tbaa !28
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = trunc i64 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.136.us48, i64 7
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !28
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.136.us48, i64 8 ; 2 uses
  store i8 %i.gl, ptr %i.gh, align 1, !tbaa !28
  %i.gn = add nuw nsw i64 %.01737.us47, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gn, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph, !llvm.loop !402

..loopexit_crit_edge.us49.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.el, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.gm, %scalar.ph ]
  %i.go = getelementptr inbounds nuw i8, ptr %.02138.us44.a, i64 4
  br label %..loopexit_crit_edge.us49

..loopexit_crit_edge.us49:                        ; preds = %..loopexit_crit_edge.us49.loopexit, %.lr.ph41.split.split.us
  %.122.us53 = phi ptr [ %.02138.us44.a, %.lr.ph41.split.split.us ], [ %i.go, %..loopexit_crit_edge.us49.loopexit ]
  %.2.us54 = phi ptr [ %.02039.us43, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us49.loopexit ]
  %.val25.us55 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26.us56 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.gp = ptrtoint ptr %.val26.us56 to i64
  %i.gq = ptrtoint ptr %.val25.us55 to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 3                 ; 2 uses
  %i.gt = add nsw i64 %i.gs, -1                   ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gt ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.gw = add nsw i64 %i.gv, 1                    ; 3 uses
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %i.gt
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !32
  %i.gz = icmp eq i64 %i.gw, %i.gy
  %i.ha = icmp sgt i64 %i.gs, 1
  %or.cond.i.us57 = and i1 %i.gz, %i.ha
  br i1 %or.cond.i.us57, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

.lr.ph.i.us59:                                    ; preds = %..loopexit_crit_edge.us49, %bb.d
  %i.hb = phi i64 [ %i.hj, %bb.d ], [ %i.gw, %..loopexit_crit_edge.us49 ]
  %.03.i.us60 = phi i64 [ %i.hg, %bb.d ], [ %i.gt, %..loopexit_crit_edge.us49 ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %.03.i.us60
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !32
  %i.he = icmp eq i64 %i.hb, %i.hd
  br i1 %i.he, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

bb.d:                                             ; preds = %.lr.ph.i.us59
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us60
  store i64 0, ptr %i.hf, align 8, !tbaa !32
  %i.hg = add nsw i64 %.03.i.us60, -1             ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hj = add nsw i64 %i.hi, 1                    ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !32
  %i.hk = icmp sgt i64 %.03.i.us60, 1
  br i1 %i.hk, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62: ; preds = %.lr.ph.i.us59, %bb.d, %..loopexit_crit_edge.us49
  %i.hl = add nsw i64 %.040.us42, -1
  %i.hm = icmp sgt i64 %.040.us42, 1
  br i1 %i.hm, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !396

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hn = ptrtoint ptr %.sroa.030.0 to i64
  %i.ho = sub i64 %.sroa.13.0, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hq = ptrtoint ptr %.sroa.030.0 to i64
  %i.hr = sub i64 %.sroa.13.0, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ij, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.02138 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.hs = load ptr, ptr %i.dz, align 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.ht, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !57

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hu = getelementptr inbounds nuw i8, ptr %.02138, i64 4
  store i32 %i.ht, ptr %.02138, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.122 = phi ptr [ %.02138, %.lr.ph41.split.split ], [ %i.hu, %.loopexit ]
  %i.hv = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.hw = add nsw i64 %i.hv, 1                    ; 3 uses
  store i64 %i.hw, ptr %i.ef, align 8, !tbaa !32
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.hy = icmp eq i64 %i.hw, %i.hx
  %or.cond.i = and i1 %i.hy, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.hz = phi i64 [ %i.ih, %bb.h ], [ %i.hw, %bb.g ]
  %.03.i = phi i64 [ %i.ie, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !32
  %i.ic = icmp eq i64 %i.hz, %i.ib
  br i1 %i.ic, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.id, align 8, !tbaa !32
  %i.ie = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ih = add nsw i64 %i.ig, 1                    ; 2 uses
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !32
  %i.ii = icmp sgt i64 %.03.i, 1
  br i1 %i.ii, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ij = add nsw i64 %.040, -1
  %i.ik = icmp sgt i64 %.040, 1
  br i1 %i.ik, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !396

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr64 = freeze i64 %i.g
  %i.h = shl i64 %.fr64, 29
  %i.i = ashr i64 %i.h, 32                        ; 20 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc27 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc27 ]
  %i.q = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.s = ptrtoint ptr %.sroa.030.0 to i64
  %i.t = sub i64 %.0.i.i.i.i.i.i.i, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.v, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph41.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph41
  %i.y = shl nuw nsw i64 %i.i, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check28 = icmp ult i64 %i.u, 4
  %n.vec30 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.u, %n.vec30
  %min.iters.check14 = icmp ult i64 %i.i, 4
  %n.vec16 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n24 = icmp eq i64 %i.i, %n.vec16
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02039.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02138.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  br i1 %min.iters.check28, label %scalar.ph27.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ah, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
  %wide.load35 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhmEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block39
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block39 ]
  br label %scalar.ph27

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %scalar.ph27
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph27 ], [ %.011.i.i.i.us.ph, %scalar.ph27.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph27 ], [ %.0910.i.i.i.us.ph, %scalar.ph27.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph27, !llvm.loop !408

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02138.us, i64 8 ; 4 uses
  store i64 %i.dx, ptr %.02138.us, align 8, !tbaa !32
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader42, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.02039.us, i64 %i.i
  %bound010 = icmp ult ptr %.02039.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.030.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader42, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.02039.us, i64 %n.vec16 ; 2 uses
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph15
  %index18 = phi i64 [ 0, %vector.ph15 ], [ %index.next22, %vector.body17 ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %.02039.us, i64 %index18 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load20 = load <2 x i64>, ptr %i.at, align 8, !tbaa !32, !alias.scope !422
  %wide.load21 = load <2 x i64>, ptr %i.au, align 8, !tbaa !32, !alias.scope !422
  %i.av = trunc <2 x i64> %wide.load20 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep19, i64 2
  store <2 x i8> %i.av, ptr %next.gep19, align 1, !tbaa !28, !alias.scope !423, !noalias !422
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !28, !alias.scope !423, !noalias !422
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.ay, label %middle.block23, label %vector.body17, !llvm.loop !412

middle.block23:                                   ; preds = %vector.body17
  br i1 %cmp.n24, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block23
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec16, %middle.block23 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.02039.us, %vector.memcheck7 ], [ %.02039.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block23 ] ; 2 uses
  %i.az = sub nsw i64 %i.i, %.01737.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.136.us.prol, align 1, !tbaa !28
  %i.be = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !413

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader42 ], [ %i.be, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01737.us.ph, %i.i
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bj, ptr %.136.us, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !28
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !28
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !28
  %i.cu = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond71.not.7 = icmp eq i64 %i.cu, %i.i
  br i1 %exitcond71.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !414

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block23, %bb.b, %.loopexit35.us
  %.122.us = phi ptr [ %.02138.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block23 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02039.us, %.loopexit35.us ], [ %.02039.us, %bb.b ], [ %i.as, %middle.block23 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cv = ptrtoint ptr %.val26.us to i64
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !32
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !32
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !32
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.040.us, -1
  %i.ds = icmp sgt i64 %.040.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !415

.loopexit35.us:                                   ; preds = %scalar.ph27, %middle.block39
  %.lcssa = phi i64 [ %i.aj, %middle.block39 ], [ %i.ap, %scalar.ph27 ]
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq i64 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !57

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dy = shl nuw nsw i64 %i.i, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.030.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ea = ptrtoint ptr %.val26 to i64
  %i.eb = ptrtoint ptr %.val25 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62
  %.040.us42 = phi i64 [ %i.hl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %i.q, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.02039.us43 = phi ptr [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.02138.us44.a = phi ptr [ %.122.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %3 = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !32 ; 2 uses
  %.not.us45 = icmp eq i64 %i.ek, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us49, label %.lr.ph.us46, !prof !57

.lr.ph.us46:                                      ; preds = %.lr.ph41.split.split.us
  store i64 %i.ek, ptr %.02138.us44.a, align 8, !tbaa !32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us46
  %scevgep = getelementptr i8, ptr %.02039.us43, i64 %i.i
  %bound0 = icmp ult ptr %.02039.us43, %scevgep4
  %bound1 = icmp ult ptr %.sroa.030.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.el = getelementptr i8, ptr %.02039.us43, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02039.us43, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x i64>, ptr %i.em, align 8, !tbaa !32, !alias.scope !424
  %wide.load5 = load <2 x i64>, ptr %i.en, align 8, !tbaa !32, !alias.scope !424
  %i.eo = trunc <2 x i64> %wide.load to <2 x i8>
  %i.ep = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.eq = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eo, ptr %next.gep, align 1, !tbaa !28, !alias.scope !425, !noalias !424
  store <2 x i8> %i.ep, ptr %i.eq, align 1, !tbaa !28, !alias.scope !425, !noalias !424
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us46, %middle.block
  %.01737.us47.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us46 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us48.ph = phi ptr [ %.02039.us43, %vector.memcheck ], [ %.02039.us43, %.lr.ph.us46 ], [ %i.el, %middle.block ] ; 2 uses
  %i.es = sub nsw i64 %i.i, %.01737.us47.ph
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us47.prol = phi i64 [ %i.ex, %scalar.ph.prol ], [ %.01737.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us48.prol = phi ptr [ %i.ew, %scalar.ph.prol ], [ %.136.us48.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47.prol
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !32
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.136.us48.prol, i64 1 ; 3 uses
  store i8 %i.ev, ptr %.136.us48.prol, align 1, !tbaa !28
  %i.ex = add nuw nsw i64 %.01737.us47.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !420

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %.01737.us47.unr = phi i64 [ %.01737.us47.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.136.us48.unr = phi ptr [ %.136.us48.ph, %scalar.ph.preheader ], [ %i.ew, %scalar.ph.prol ]
  %i.ey = sub nsw i64 %.01737.us47.ph, %i.i
  %i.ez = icmp ugt i64 %i.ey, -8
  br i1 %i.ez, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us47 = phi i64 [ %i.gn, %scalar.ph ], [ %.01737.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us48 = phi ptr [ %i.gm, %scalar.ph ], [ %.136.us48.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !32
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.136.us48, i64 1
  store i8 %i.fc, ptr %.136.us48, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fh = trunc i64 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %.136.us48, i64 2
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.136.us48, i64 3
  store i8 %i.fm, ptr %i.fi, align 1, !tbaa !28
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !32
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.136.us48, i64 4
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.136.us48, i64 5
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !28
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.gb = trunc i64 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.136.us48, i64 6
  store i8 %i.gb, ptr %i.fx, align 1, !tbaa !28
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32
  %i.gg = trunc i64 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.136.us48, i64 7
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !28
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.136.us48, i64 8 ; 2 uses
  store i8 %i.gl, ptr %i.gh, align 1, !tbaa !28
  %i.gn = add nuw nsw i64 %.01737.us47, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gn, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph, !llvm.loop !421

..loopexit_crit_edge.us49.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.el, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.gm, %scalar.ph ]
  %i.go = getelementptr inbounds nuw i8, ptr %.02138.us44.a, i64 8
  br label %..loopexit_crit_edge.us49

..loopexit_crit_edge.us49:                        ; preds = %..loopexit_crit_edge.us49.loopexit, %.lr.ph41.split.split.us
  %.122.us53 = phi ptr [ %.02138.us44.a, %.lr.ph41.split.split.us ], [ %i.go, %..loopexit_crit_edge.us49.loopexit ]
  %.2.us54 = phi ptr [ %.02039.us43, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us49.loopexit ]
  %.val25.us55 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 3 uses
  %.val26.us56 = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.gp = ptrtoint ptr %.val26.us56 to i64
  %i.gq = ptrtoint ptr %.val25.us55 to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 3                 ; 2 uses
  %i.gt = add nsw i64 %i.gs, -1                   ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gt ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.gw = add nsw i64 %i.gv, 1                    ; 3 uses
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %i.gt
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !32
  %i.gz = icmp eq i64 %i.gw, %i.gy
  %i.ha = icmp sgt i64 %i.gs, 1
  %or.cond.i.us57 = and i1 %i.gz, %i.ha
  br i1 %or.cond.i.us57, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

.lr.ph.i.us59:                                    ; preds = %..loopexit_crit_edge.us49, %bb.d
  %i.hb = phi i64 [ %i.hj, %bb.d ], [ %i.gw, %..loopexit_crit_edge.us49 ]
  %.03.i.us60 = phi i64 [ %i.hg, %bb.d ], [ %i.gt, %..loopexit_crit_edge.us49 ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %.03.i.us60
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !32
  %i.he = icmp eq i64 %i.hb, %i.hd
  br i1 %i.he, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

bb.d:                                             ; preds = %.lr.ph.i.us59
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us60
  store i64 0, ptr %i.hf, align 8, !tbaa !32
  %i.hg = add nsw i64 %.03.i.us60, -1             ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hj = add nsw i64 %i.hi, 1                    ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !32
  %i.hk = icmp sgt i64 %.03.i.us60, 1
  br i1 %i.hk, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62: ; preds = %.lr.ph.i.us59, %bb.d, %..loopexit_crit_edge.us49
  %i.hl = add nsw i64 %.040.us42, -1
  %i.hm = icmp sgt i64 %.040.us42, 1
  br i1 %i.hm, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !415

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hn = ptrtoint ptr %.sroa.030.0 to i64
  %i.ho = sub i64 %.sroa.13.0, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.ho) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hq = ptrtoint ptr %.sroa.030.0 to i64
  %i.hr = sub i64 %.sroa.13.0, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ij, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.02138 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.hs = load ptr, ptr %i.dz, align 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq i64 %i.ht, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !57

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hu = getelementptr inbounds nuw i8, ptr %.02138, i64 8
  store i64 %i.ht, ptr %.02138, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.122 = phi ptr [ %.02138, %.lr.ph41.split.split ], [ %i.hu, %.loopexit ]
  %i.hv = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.hw = add nsw i64 %i.hv, 1                    ; 3 uses
  store i64 %i.hw, ptr %i.ef, align 8, !tbaa !32
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.hy = icmp eq i64 %i.hw, %i.hx
  %or.cond.i = and i1 %i.hy, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.hz = phi i64 [ %i.ih, %bb.h ], [ %i.hw, %bb.g ]
  %.03.i = phi i64 [ %i.ie, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !32
  %i.ic = icmp eq i64 %i.hz, %i.ib
  br i1 %i.ic, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.id, align 8, !tbaa !32
  %i.ie = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ih = add nsw i64 %i.ig, 1                    ; 2 uses
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !32
  %i.ii = icmp sgt i64 %.03.i, 1
  br i1 %i.ii, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ij = add nsw i64 %.040, -1
  %i.ik = icmp sgt i64 %.040, 1
  br i1 %i.ik, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !415

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr63 = freeze i64 %i.g
  %i.h = shl i64 %.fr63, 29
  %i.i = ashr i64 %i.h, 32                        ; 12 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.i, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc26 ] ; 22 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc26 ]
  %i.q = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.s = ptrtoint ptr %.sroa.029.0 to i64
  %i.t = sub i64 %.0.i.i.i.i.i.i.i, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.v, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %.pre75 = load ptr, ptr %i.w, align 8, !tbaa !56
  %min.iters.check21 = icmp ult i64 %i.u, 4
  %n.vec23 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n33 = icmp eq i64 %i.u, %n.vec23
  %min.iters.check7 = icmp ult i64 %i.i, 4
  %n.vec9 = and i64 %i.i, 1152921504606846972     ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec9, 1
  %cmp.n17 = icmp eq i64 %i.i, %n.vec9
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.z = phi ptr [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %.pre75, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.039.us = phi i64 [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02038.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 5 uses
  %.02137.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  br i1 %min.iters.check21, label %scalar.ph20.preheader, label %vector.body24

vector.body24:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body24
  %index25 = phi i64 [ %index.next31, %vector.body24 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body24 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi26 = phi <2 x i64> [ %i.ah, %vector.body24 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index25 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load27 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
  %wide.load28 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_2
