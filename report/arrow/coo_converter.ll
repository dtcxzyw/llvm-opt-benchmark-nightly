Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/coo_converter?download=true
inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhhEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n45, label %.loopexit34.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block44
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec35, %middle.block44 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block44 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph32 ], [ %.011.i.i.i.us.ph, %scalar.ph32.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph32 ], [ %.0910.i.i.i.us.ph, %scalar.ph32.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph32, !llvm.loop !411

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02137.us, i64 1 ; 4 uses
  store i8 %i.dy, ptr %.02137.us, align 1, !tbaa !47
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check15, label %.lr.ph.us.preheader47, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.02038.us, i64 %i.i
  %bound017 = icmp ult ptr %.02038.us, %scevgep13
  %bound118 = icmp ult ptr %.sroa.029.0, %i.as
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %.lr.ph.us.preheader47, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck16
  %i.at = getelementptr i8, ptr %.02038.us, i64 %n.vec21 ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body22 ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.02038.us, i64 %index23 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.au, align 8, !tbaa !51, !alias.scope !426
  %wide.load26 = load <2 x i64>, ptr %i.av, align 8, !tbaa !51, !alias.scope !426
  %i.aw = trunc <2 x i64> %wide.load25 to <2 x i8>
  %i.ax = trunc <2 x i64> %wide.load26 to <2 x i8>
  %i.ay = getelementptr i8, ptr %next.gep24, i64 2
  store <2 x i8> %i.aw, ptr %next.gep24, align 1, !tbaa !47, !alias.scope !427, !noalias !426
  store <2 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !47, !alias.scope !427, !noalias !426
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.az, label %middle.block28, label %vector.body22, !llvm.loop !415

middle.block28:                                   ; preds = %vector.body22
  br i1 %cmp.n29, label %.loopexit.us, label %.lr.ph.us.preheader47

.lr.ph.us.preheader47:                            ; preds = %vector.memcheck16, %.lr.ph.us.preheader, %middle.block28
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec21, %middle.block28 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.02038.us, %vector.memcheck16 ], [ %.02038.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block28 ] ; 2 uses
  %i.ba = sub nsw i64 %i.i, %.01736.us.ph
  %xtraiter54 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader47, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.bf, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.be, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader47 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.135.us.prol, align 1, !tbaa !47
  %i.bf = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !416

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader47
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader47 ], [ %i.bf, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %i.bg = sub nsw i64 %.01736.us.ph, %i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cv, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.cu, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bk, ptr %.135.us, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !51
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !51
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !47
  %i.cv = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.cv, %i.i
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !417

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block28, %bb.b, %.loopexit34.us
  %.122.us = phi ptr [ %.02137.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block28 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02038.us, %.loopexit34.us ], [ %.02038.us, %bb.b ], [ %i.at, %middle.block28 ], [ %.lcssa51.unr, %.lr.ph.us.prol.loopexit ], [ %i.cu, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = ptrtoint ptr %.val24.us to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = add nsw i64 %i.cz, -1                   ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dd = add nsw i64 %i.dc, 1                    ; 3 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.da
  %i.df = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dg = icmp eq i64 %i.dd, %i.df
  %i.dh = icmp sgt i64 %i.cz, 1
  %or.cond.i.us = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.di = phi i64 [ %i.dq, %bb.c ], [ %i.dd, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dn, %bb.c ], [ %i.da, %.loopexit.us ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dm, align 8, !tbaa !51
  %i.dn = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dq = add nsw i64 %i.dp, 1                    ; 2 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !51
  %i.dr = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dr, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.ds = add nsw i64 %.039.us, -1
  %i.dt = icmp sgt i64 %.039.us, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !418

.loopexit34.us:                                   ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.aj, %middle.block44 ], [ %i.ap, %scalar.ph32 ]
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.lcssa
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !47  ; 2 uses
  %.not.us = icmp eq i8 %i.dy, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !76

.lr.ph40.split:                                   ; preds = %.lr.ph40
  %.pre72 = load ptr, ptr %i.x, align 8, !tbaa !88 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dz = shl nuw nsw i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %.sroa.029.0, i64 %i.dz
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61
  %3 = phi ptr [ %4, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %.pre72, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.039.us41 = phi i64 [ %i.he, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %i.q, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.02137.us43.a = phi ptr [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.02137.us43 = phi ptr [ %.122.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !47  ; 2 uses
  %.not.us44 = icmp eq i8 %i.ec, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us48, label %.lr.ph.us45, !prof !76

.lr.ph.us45:                                      ; preds = %.lr.ph40.split.split.us
  store i8 %i.ec, ptr %.02137.us43, align 1, !tbaa !47
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us45
  %i.ed = getelementptr i8, ptr %.02137.us43.a, i64 %i.i
  %bound0 = icmp ult ptr %.02137.us43.a, %scevgep
  %bound1 = icmp ult ptr %.sroa.029.0, %i.ed
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ee = getelementptr i8, ptr %.02137.us43.a, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02137.us43.a, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <2 x i64>, ptr %i.ef, align 8, !tbaa !51, !alias.scope !428
  %wide.load5 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !51, !alias.scope !428
  %i.eh = trunc <2 x i64> %wide.load to <2 x i8>
  %i.ei = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.ej = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eh, ptr %next.gep, align 1, !tbaa !47, !alias.scope !429, !noalias !428
  store <2 x i8> %i.ei, ptr %i.ej, align 1, !tbaa !47, !alias.scope !429, !noalias !428
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us45, %middle.block
  %.01736.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us45 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us47.ph = phi ptr [ %.02137.us43.a, %vector.memcheck ], [ %.02137.us43.a, %.lr.ph.us45 ], [ %i.ee, %middle.block ] ; 2 uses
  %i.el = sub nsw i64 %i.i, %.01736.us46.ph
  %xtraiter = and i64 %i.el, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us46.prol = phi i64 [ %i.eq, %scalar.ph.prol ], [ %.01736.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us47.prol = phi ptr [ %i.ep, %scalar.ph.prol ], [ %.135.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46.prol
  %i.en = load i64, ptr %i.em, align 8, !tbaa !51
  %i.eo = trunc i64 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.135.us47.prol, i64 1 ; 3 uses
  store i8 %i.eo, ptr %.135.us47.prol, align 1, !tbaa !47
  %i.eq = add nuw nsw i64 %.01736.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !423

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa53.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %.01736.us46.unr = phi i64 [ %.01736.us46.ph, %scalar.ph.preheader ], [ %i.eq, %scalar.ph.prol ]
  %.135.us47.unr = phi ptr [ %.135.us47.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %i.er = sub nsw i64 %.01736.us46.ph, %i.i
  %i.es = icmp ugt i64 %i.er, -8
  br i1 %i.es, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us46 = phi i64 [ %i.gg, %scalar.ph ], [ %.01736.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us47 = phi ptr [ %i.gf, %scalar.ph ], [ %.135.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !51
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.135.us47, i64 1
  store i8 %i.ev, ptr %.135.us47, align 1, !tbaa !47
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !51
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.135.us47, i64 2
  store i8 %i.fa, ptr %i.ew, align 1, !tbaa !47
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !51
  %i.ff = trunc i64 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.135.us47, i64 3
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !47
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !51
  %i.fk = trunc i64 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.135.us47, i64 4
  store i8 %i.fk, ptr %i.fg, align 1, !tbaa !47
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !51
  %i.fp = trunc i64 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.135.us47, i64 5
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !47
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !51
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.135.us47, i64 6
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !47
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !51
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.135.us47, i64 7
  store i8 %i.fz, ptr %i.fv, align 1, !tbaa !47
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !51
  %i.ge = trunc i64 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.135.us47, i64 8 ; 2 uses
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !47
  %i.gg = add nuw nsw i64 %.01736.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gg, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph, !llvm.loop !424

..loopexit_crit_edge.us48.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.ee, %middle.block ], [ %.lcssa53.unr, %scalar.ph.prol.loopexit ], [ %i.gf, %scalar.ph ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.02137.us43, i64 1
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !88
  br label %..loopexit_crit_edge.us48

..loopexit_crit_edge.us48:                        ; preds = %..loopexit_crit_edge.us48.loopexit, %.lr.ph40.split.split.us
  %4 = phi ptr [ %3, %.lr.ph40.split.split.us ], [ %.pre, %..loopexit_crit_edge.us48.loopexit ]
  %.122.us52 = phi ptr [ %.02137.us43, %.lr.ph40.split.split.us ], [ %i.gh, %..loopexit_crit_edge.us48.loopexit ]
  %.2.us53 = phi ptr [ %.02137.us43.a, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us48.loopexit ]
  %.val24.us54 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25.us55 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.gi = ptrtoint ptr %.val25.us55 to i64
  %i.gj = ptrtoint ptr %.val24.us54 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 3                 ; 2 uses
  %i.gm = add nsw i64 %i.gl, -1                   ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gm ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !51
  %i.gp = add nsw i64 %i.go, 1                    ; 3 uses
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !51
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %i.gm
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !51
  %i.gs = icmp eq i64 %i.gp, %i.gr
  %i.gt = icmp sgt i64 %i.gl, 1
  %or.cond.i.us56 = and i1 %i.gs, %i.gt
  br i1 %or.cond.i.us56, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

.lr.ph.i.us58:                                    ; preds = %..loopexit_crit_edge.us48, %bb.d
  %i.gu = phi i64 [ %i.hc, %bb.d ], [ %i.gp, %..loopexit_crit_edge.us48 ]
  %.03.i.us59 = phi i64 [ %i.gz, %bb.d ], [ %i.gm, %..loopexit_crit_edge.us48 ] ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %.03.i.us59
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !51
  %i.gx = icmp eq i64 %i.gu, %i.gw
  br i1 %i.gx, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

bb.d:                                             ; preds = %.lr.ph.i.us58
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us59
  store i64 0, ptr %i.gy, align 8, !tbaa !51
  %i.gz = add nsw i64 %.03.i.us59, -1             ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !51
  %i.hc = add nsw i64 %i.hb, 1                    ; 2 uses
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !51
  %i.hd = icmp sgt i64 %.03.i.us59, 1
  br i1 %i.hd, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61: ; preds = %.lr.ph.i.us58, %bb.d, %..loopexit_crit_edge.us48
  %i.he = add nsw i64 %.039.us41, -1
  %i.hf = icmp sgt i64 %.039.us41, 1
  br i1 %i.hf, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !418

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hg = ptrtoint ptr %.sroa.029.0 to i64
  %i.hh = sub i64 %.sroa.13.0, %i.hg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hh) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hj = ptrtoint ptr %.sroa.029.0 to i64
  %i.hk = sub i64 %.sroa.13.0, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %i.hl = phi ptr [ %i.hq, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %.pre72, %.lr.ph40.split ] ; 2 uses
  %.039 = phi i64 [ %i.in, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph40.split ] ; 2 uses
  %.02137 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !47  ; 2 uses
  %.not = icmp eq i8 %i.ho, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !76

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.hp = getelementptr inbounds nuw i8, ptr %.02137, i64 1
  store i8 %i.ho, ptr %.02137, align 1, !tbaa !47
  %.pre.a = load ptr, ptr %i.x, align 8, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %i.hq = phi ptr [ %i.hl, %.lr.ph40.split.split ], [ %.pre.a, %.loopexit ]
  %.122 = phi ptr [ %.02137, %.lr.ph40.split.split ], [ %i.hp, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.hr = ptrtoint ptr %.val25 to i64
  %i.hs = ptrtoint ptr %.val24 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = ashr exact i64 %i.ht, 3                 ; 2 uses
  %i.hv = add nsw i64 %i.hu, -1                   ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hv ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !51
  %i.hy = add nsw i64 %i.hx, 1                    ; 3 uses
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !51
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.hv
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !51
  %i.ib = icmp eq i64 %i.hy, %i.ia
  %i.ic = icmp sgt i64 %i.hu, 1
  %or.cond.i = and i1 %i.ib, %i.ic
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.id = phi i64 [ %i.il, %bb.h ], [ %i.hy, %bb.g ]
  %.03.i = phi i64 [ %i.ii, %bb.h ], [ %i.hv, %bb.g ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !51
  %i.ig = icmp eq i64 %i.id, %i.if
  br i1 %i.ig, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ih, align 8, !tbaa !51
  %i.ii = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ii ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !51
  %i.il = add nsw i64 %i.ik, 1                    ; 2 uses
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !51
  %i.im = icmp sgt i64 %.03.i, 1
  br i1 %i.im, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.in = add nsw i64 %.039, -1
  %i.io = icmp sgt i64 %.039, 1
  br i1 %i.io, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !418

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !445 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !75
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !51
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
  %scevgep13 = getelementptr i8, ptr %.sroa.029.0, i64 %i.y
  %min.iters.check33 = icmp ult i64 %i.u, 4
  %n.vec35 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n45 = icmp eq i64 %i.u, %n.vec35
  %min.iters.check15 = icmp ult i64 %i.i, 4
  %n.vec21 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n29 = icmp eq i64 %i.i, %n.vec21
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.ds, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02038.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02137.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.body36

vector.body36:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body36
  %index37 = phi i64 [ %index.next43, %vector.body36 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi38 = phi <2 x i64> [ %i.ah, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index37 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load39 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !51
  %wide.load40 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load41 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !51
  %wide.load42 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !51
  %i.ae = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.af = mul nsw <2 x i64> %wide.load42, %wide.load40
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi38         ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next43, %n.vec35
  br i1 %i.ai, label %middle.block44, label %vector.body36, !llvm.loop !430

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n45, label %.loopexit34.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block44
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec35, %middle.block44 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block44 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph32 ], [ %.011.i.i.i.us.ph, %scalar.ph32.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph32 ], [ %.0910.i.i.i.us.ph, %scalar.ph32.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph32, !llvm.loop !431

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02137.us, i64 2 ; 4 uses
  store i16 %i.dy, ptr %.02137.us, align 2, !tbaa !49
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check15, label %.lr.ph.us.preheader47, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.02038.us, i64 %i.i
  %bound017 = icmp ult ptr %.02038.us, %scevgep13
  %bound118 = icmp ult ptr %.sroa.029.0, %i.as
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %.lr.ph.us.preheader47, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck16
  %i.at = getelementptr i8, ptr %.02038.us, i64 %n.vec21 ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body22 ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.02038.us, i64 %index23 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.au, align 8, !tbaa !51, !alias.scope !446
  %wide.load26 = load <2 x i64>, ptr %i.av, align 8, !tbaa !51, !alias.scope !446
  %i.aw = trunc <2 x i64> %wide.load25 to <2 x i8>
  %i.ax = trunc <2 x i64> %wide.load26 to <2 x i8>
  %i.ay = getelementptr i8, ptr %next.gep24, i64 2
  store <2 x i8> %i.aw, ptr %next.gep24, align 1, !tbaa !47, !alias.scope !447, !noalias !446
  store <2 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !47, !alias.scope !447, !noalias !446
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.az, label %middle.block28, label %vector.body22, !llvm.loop !435

middle.block28:                                   ; preds = %vector.body22
  br i1 %cmp.n29, label %.loopexit.us, label %.lr.ph.us.preheader47

.lr.ph.us.preheader47:                            ; preds = %vector.memcheck16, %.lr.ph.us.preheader, %middle.block28
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec21, %middle.block28 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.02038.us, %vector.memcheck16 ], [ %.02038.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block28 ] ; 2 uses
  %i.ba = sub nsw i64 %i.i, %.01736.us.ph
  %xtraiter54 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader47, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.bf, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.be, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader47 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.135.us.prol, align 1, !tbaa !47
  %i.bf = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !436

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader47
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader47 ], [ %i.bf, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %i.bg = sub nsw i64 %.01736.us.ph, %i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cv, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.cu, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bk, ptr %.135.us, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !51
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !51
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !47
  %i.cv = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.cv, %i.i
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !437

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block28, %bb.b, %.loopexit34.us
  %.122.us = phi ptr [ %.02137.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block28 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02038.us, %.loopexit34.us ], [ %.02038.us, %bb.b ], [ %i.at, %middle.block28 ], [ %.lcssa51.unr, %.lr.ph.us.prol.loopexit ], [ %i.cu, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = ptrtoint ptr %.val24.us to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = add nsw i64 %i.cz, -1                   ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dd = add nsw i64 %i.dc, 1                    ; 3 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.da
  %i.df = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dg = icmp eq i64 %i.dd, %i.df
  %i.dh = icmp sgt i64 %i.cz, 1
  %or.cond.i.us = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.di = phi i64 [ %i.dq, %bb.c ], [ %i.dd, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dn, %bb.c ], [ %i.da, %.loopexit.us ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dm, align 8, !tbaa !51
  %i.dn = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dq = add nsw i64 %i.dp, 1                    ; 2 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !51
  %i.dr = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dr, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.ds = add nsw i64 %.039.us, -1
  %i.dt = icmp sgt i64 %.039.us, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !438

.loopexit34.us:                                   ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.aj, %middle.block44 ], [ %i.ap, %scalar.ph32 ]
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.lcssa
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !49 ; 2 uses
  %.not.us = icmp eq i16 %i.dy, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !76

.lr.ph40.split:                                   ; preds = %.lr.ph40
  %.pre71 = load ptr, ptr %i.x, align 8, !tbaa !88 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split.preheader, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dz = shl nuw nsw i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %.sroa.029.0, i64 %i.dz
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre71, i64 16
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.eb = ptrtoint ptr %.val25 to i64
  %i.ec = ptrtoint ptr %.val24 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %i.ef = add nsw i64 %i.ee, -1                   ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ef
  %i.ei = icmp sgt i64 %i.ee, 1
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61
  %3 = phi ptr [ %4, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %.pre71, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.039.us41 = phi i64 [ %i.hn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %i.q, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.02137.us43.a = phi ptr [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.02137.us43 = phi ptr [ %.122.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !49 ; 2 uses
  %.not.us44 = icmp eq i16 %i.el, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us48, label %.lr.ph.us45, !prof !76

.lr.ph.us45:                                      ; preds = %.lr.ph40.split.split.us
  store i16 %i.el, ptr %.02137.us43, align 2, !tbaa !49
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us45
  %i.em = getelementptr i8, ptr %.02137.us43.a, i64 %i.i
  %bound0 = icmp ult ptr %.02137.us43.a, %scevgep
  %bound1 = icmp ult ptr %.sroa.029.0, %i.em
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.en = getelementptr i8, ptr %.02137.us43.a, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02137.us43.a, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !51, !alias.scope !448
  %wide.load5 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !51, !alias.scope !448
  %i.eq = trunc <2 x i64> %wide.load to <2 x i8>
  %i.er = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.es = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eq, ptr %next.gep, align 1, !tbaa !47, !alias.scope !449, !noalias !448
  store <2 x i8> %i.er, ptr %i.es, align 1, !tbaa !47, !alias.scope !449, !noalias !448
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us45, %middle.block
  %.01736.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us45 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us47.ph = phi ptr [ %.02137.us43.a, %vector.memcheck ], [ %.02137.us43.a, %.lr.ph.us45 ], [ %i.en, %middle.block ] ; 2 uses
  %i.eu = sub nsw i64 %i.i, %.01736.us46.ph
  %xtraiter = and i64 %i.eu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us46.prol = phi i64 [ %i.ez, %scalar.ph.prol ], [ %.01736.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us47.prol = phi ptr [ %i.ey, %scalar.ph.prol ], [ %.135.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46.prol
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.135.us47.prol, i64 1 ; 3 uses
  store i8 %i.ex, ptr %.135.us47.prol, align 1, !tbaa !47
  %i.ez = add nuw nsw i64 %.01736.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !443

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa53.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.01736.us46.unr = phi i64 [ %.01736.us46.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %.135.us47.unr = phi ptr [ %.135.us47.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %i.fa = sub nsw i64 %.01736.us46.ph, %i.i
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us46 = phi i64 [ %i.gp, %scalar.ph ], [ %.01736.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us47 = phi ptr [ %i.go, %scalar.ph ], [ %.135.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !51
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.135.us47, i64 1
  store i8 %i.fe, ptr %.135.us47, align 1, !tbaa !47
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !51
  %i.fj = trunc i64 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.135.us47, i64 2
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !47
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !51
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.135.us47, i64 3
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !47
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !51
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.135.us47, i64 4
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !47
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !51
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.135.us47, i64 5
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !47
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !51
  %i.gd = trunc i64 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.135.us47, i64 6
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !47
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !51
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.135.us47, i64 7
  store i8 %i.gi, ptr %i.ge, align 1, !tbaa !47
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us46
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !51
  %i.gn = trunc i64 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.135.us47, i64 8 ; 2 uses
  store i8 %i.gn, ptr %i.gj, align 1, !tbaa !47
  %i.gp = add nuw nsw i64 %.01736.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gp, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us48.loopexit, label %scalar.ph, !llvm.loop !444

..loopexit_crit_edge.us48.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.en, %middle.block ], [ %.lcssa53.unr, %scalar.ph.prol.loopexit ], [ %i.go, %scalar.ph ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.02137.us43, i64 2
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !88
  br label %..loopexit_crit_edge.us48

..loopexit_crit_edge.us48:                        ; preds = %..loopexit_crit_edge.us48.loopexit, %.lr.ph40.split.split.us
  %4 = phi ptr [ %3, %.lr.ph40.split.split.us ], [ %.pre, %..loopexit_crit_edge.us48.loopexit ]
  %.122.us52 = phi ptr [ %.02137.us43, %.lr.ph40.split.split.us ], [ %i.gq, %..loopexit_crit_edge.us48.loopexit ]
  %.2.us53 = phi ptr [ %.02137.us43.a, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us48.loopexit ]
  %.val24.us54 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val25.us55 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.gr = ptrtoint ptr %.val25.us55 to i64
  %i.gs = ptrtoint ptr %.val24.us54 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  %i.gy = add nsw i64 %i.gx, 1                    ; 3 uses
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %i.gv
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !51
  %i.hb = icmp eq i64 %i.gy, %i.ha
  %i.hc = icmp sgt i64 %i.gu, 1
  %or.cond.i.us56 = and i1 %i.hb, %i.hc
  br i1 %or.cond.i.us56, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

.lr.ph.i.us58:                                    ; preds = %..loopexit_crit_edge.us48, %bb.d
  %i.hd = phi i64 [ %i.hl, %bb.d ], [ %i.gy, %..loopexit_crit_edge.us48 ]
  %.03.i.us59 = phi i64 [ %i.hi, %bb.d ], [ %i.gv, %..loopexit_crit_edge.us48 ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val24.us54, i64 %.03.i.us59
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !51
  %i.hg = icmp eq i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61

bb.d:                                             ; preds = %.lr.ph.i.us58
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us59
  store i64 0, ptr %i.hh, align 8, !tbaa !51
  %i.hi = add nsw i64 %.03.i.us59, -1             ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !51
  %i.hl = add nsw i64 %i.hk, 1                    ; 2 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !51
  %i.hm = icmp sgt i64 %.03.i.us59, 1
  br i1 %i.hm, label %.lr.ph.i.us58, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61: ; preds = %.lr.ph.i.us58, %bb.d, %..loopexit_crit_edge.us48
  %i.hn = add nsw i64 %.039.us41, -1
  %i.ho = icmp sgt i64 %.039.us41, 1
  br i1 %i.ho, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !438

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us61, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hp = ptrtoint ptr %.sroa.029.0 to i64
  %i.hq = sub i64 %.sroa.13.0, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hq) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hs = ptrtoint ptr %.sroa.029.0 to i64
  %i.ht = sub i64 %.sroa.13.0, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ht) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.il, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.02137 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.hu = load ptr, ptr %i.ea, align 8
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !49 ; 2 uses
  %.not = icmp eq i16 %i.hv, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !76

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.hw = getelementptr inbounds nuw i8, ptr %.02137, i64 2
  store i16 %i.hv, ptr %.02137, align 2, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.122 = phi ptr [ %.02137, %.lr.ph40.split.split ], [ %i.hw, %.loopexit ]
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !51
  %i.hy = add nsw i64 %i.hx, 1                    ; 3 uses
  store i64 %i.hy, ptr %i.eg, align 8, !tbaa !51
  %i.hz = load i64, ptr %i.eh, align 8, !tbaa !51
  %i.ia = icmp eq i64 %i.hy, %i.hz
  %or.cond.i = and i1 %i.ia, %i.ei
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ib = phi i64 [ %i.ij, %bb.h ], [ %i.hy, %bb.g ]
  %.03.i = phi i64 [ %i.ig, %bb.h ], [ %i.ef, %bb.g ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !51
  %i.ie = icmp eq i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.if, align 8, !tbaa !51
  %i.ig = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !51
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !51
  %i.ik = icmp sgt i64 %.03.i, 1
  br i1 %i.ik, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.il = add nsw i64 %.039, -1
  %i.im = icmp sgt i64 %.039, 1
  br i1 %i.im, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !438

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hr
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !465 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !75
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !51
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
  %scevgep13 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check33 = icmp ult i64 %i.u, 4
  %n.vec35 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n45 = icmp eq i64 %i.u, %n.vec35
  %min.iters.check15 = icmp ult i64 %i.i, 4
  %n.vec21 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n29 = icmp eq i64 %i.i, %n.vec21
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.ds, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02039.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02138.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.body36

vector.body36:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body36
  %index37 = phi i64 [ %index.next43, %vector.body36 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi38 = phi <2 x i64> [ %i.ah, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index37 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load39 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !51
  %wide.load40 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhjEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n45, label %.loopexit35.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block44
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec35, %middle.block44 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block44 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph32 ], [ %.011.i.i.i.us.ph, %scalar.ph32.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph32 ], [ %.0910.i.i.i.us.ph, %scalar.ph32.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph32, !llvm.loop !451

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02138.us, i64 4 ; 4 uses
  store i32 %i.dy, ptr %.02138.us, align 4, !tbaa !27
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check15, label %.lr.ph.us.preheader47, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.02039.us, i64 %i.i
  %bound017 = icmp ult ptr %.02039.us, %scevgep13
  %bound118 = icmp ult ptr %.sroa.030.0, %i.as
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %.lr.ph.us.preheader47, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck16
  %i.at = getelementptr i8, ptr %.02039.us, i64 %n.vec21 ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body22 ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.02039.us, i64 %index23 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.au, align 8, !tbaa !51, !alias.scope !466
  %wide.load26 = load <2 x i64>, ptr %i.av, align 8, !tbaa !51, !alias.scope !466
  %i.aw = trunc <2 x i64> %wide.load25 to <2 x i8>
  %i.ax = trunc <2 x i64> %wide.load26 to <2 x i8>
  %i.ay = getelementptr i8, ptr %next.gep24, i64 2
  store <2 x i8> %i.aw, ptr %next.gep24, align 1, !tbaa !47, !alias.scope !467, !noalias !466
  store <2 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !47, !alias.scope !467, !noalias !466
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.az, label %middle.block28, label %vector.body22, !llvm.loop !455

middle.block28:                                   ; preds = %vector.body22
  br i1 %cmp.n29, label %.loopexit.us, label %.lr.ph.us.preheader47

.lr.ph.us.preheader47:                            ; preds = %vector.memcheck16, %.lr.ph.us.preheader, %middle.block28
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec21, %middle.block28 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.02039.us, %vector.memcheck16 ], [ %.02039.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block28 ] ; 2 uses
  %i.ba = sub nsw i64 %i.i, %.01737.us.ph
  %xtraiter54 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader47, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.bf, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.be, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader47 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.136.us.prol, align 1, !tbaa !47
  %i.bf = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !456

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader47
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader47 ], [ %i.bf, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %i.bg = sub nsw i64 %.01737.us.ph, %i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cv, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.cu, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bk, ptr %.136.us, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !51
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !51
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !47
  %i.cv = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.cv, %i.i
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !457

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block28, %bb.b, %.loopexit35.us
  %.122.us = phi ptr [ %.02138.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block28 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02039.us, %.loopexit35.us ], [ %.02039.us, %bb.b ], [ %i.at, %middle.block28 ], [ %.lcssa51.unr, %.lr.ph.us.prol.loopexit ], [ %i.cu, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.cw = ptrtoint ptr %.val26.us to i64
  %i.cx = ptrtoint ptr %.val25.us to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = add nsw i64 %i.cz, -1                   ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dd = add nsw i64 %i.dc, 1                    ; 3 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.da
  %i.df = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dg = icmp eq i64 %i.dd, %i.df
  %i.dh = icmp sgt i64 %i.cz, 1
  %or.cond.i.us = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.di = phi i64 [ %i.dq, %bb.c ], [ %i.dd, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dn, %bb.c ], [ %i.da, %.loopexit.us ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dm, align 8, !tbaa !51
  %i.dn = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dq = add nsw i64 %i.dp, 1                    ; 2 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !51
  %i.dr = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dr, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.ds = add nsw i64 %.040.us, -1
  %i.dt = icmp sgt i64 %.040.us, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !458

.loopexit35.us:                                   ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.aj, %middle.block44 ], [ %i.ap, %scalar.ph32 ]
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.lcssa
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27 ; 2 uses
  %.not.us = icmp eq i32 %i.dy, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !76

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %.pre72 = load ptr, ptr %i.x, align 8, !tbaa !88 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dz = shl nuw nsw i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %.sroa.030.0, i64 %i.dz
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre72, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.eb = ptrtoint ptr %.val26 to i64
  %i.ec = ptrtoint ptr %.val25 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %i.ef = add nsw i64 %i.ee, -1                   ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ef
  %i.ei = icmp sgt i64 %i.ee, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62
  %3 = phi ptr [ %4, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %.pre72, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.040.us42 = phi i64 [ %i.hn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %i.q, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.02138.us44.a = phi ptr [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.02138.us44 = phi ptr [ %.122.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !27 ; 2 uses
  %.not.us45 = icmp eq i32 %i.el, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us49, label %.lr.ph.us46, !prof !76

.lr.ph.us46:                                      ; preds = %.lr.ph41.split.split.us
  store i32 %i.el, ptr %.02138.us44, align 4, !tbaa !27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us46
  %i.em = getelementptr i8, ptr %.02138.us44.a, i64 %i.i
  %bound0 = icmp ult ptr %.02138.us44.a, %scevgep
  %bound1 = icmp ult ptr %.sroa.030.0, %i.em
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.en = getelementptr i8, ptr %.02138.us44.a, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02138.us44.a, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !51, !alias.scope !468
  %wide.load5 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !51, !alias.scope !468
  %i.eq = trunc <2 x i64> %wide.load to <2 x i8>
  %i.er = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.es = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eq, ptr %next.gep, align 1, !tbaa !47, !alias.scope !469, !noalias !468
  store <2 x i8> %i.er, ptr %i.es, align 1, !tbaa !47, !alias.scope !469, !noalias !468
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us46, %middle.block
  %.01737.us47.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us46 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us48.ph = phi ptr [ %.02138.us44.a, %vector.memcheck ], [ %.02138.us44.a, %.lr.ph.us46 ], [ %i.en, %middle.block ] ; 2 uses
  %i.eu = sub nsw i64 %i.i, %.01737.us47.ph
  %xtraiter = and i64 %i.eu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us47.prol = phi i64 [ %i.ez, %scalar.ph.prol ], [ %.01737.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us48.prol = phi ptr [ %i.ey, %scalar.ph.prol ], [ %.136.us48.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47.prol
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.136.us48.prol, i64 1 ; 3 uses
  store i8 %i.ex, ptr %.136.us48.prol, align 1, !tbaa !47
  %i.ez = add nuw nsw i64 %.01737.us47.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !463

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa53.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.01737.us47.unr = phi i64 [ %.01737.us47.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %.136.us48.unr = phi ptr [ %.136.us48.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %i.fa = sub nsw i64 %.01737.us47.ph, %i.i
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us47 = phi i64 [ %i.gp, %scalar.ph ], [ %.01737.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us48 = phi ptr [ %i.go, %scalar.ph ], [ %.136.us48.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !51
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us48, i64 1
  store i8 %i.fe, ptr %.136.us48, align 1, !tbaa !47
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !51
  %i.fj = trunc i64 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.136.us48, i64 2
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !47
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !51
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.136.us48, i64 3
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !47
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !51
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.136.us48, i64 4
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !47
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !51
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.136.us48, i64 5
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !47
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !51
  %i.gd = trunc i64 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.136.us48, i64 6
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !47
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !51
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.136.us48, i64 7
  store i8 %i.gi, ptr %i.ge, align 1, !tbaa !47
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !51
  %i.gn = trunc i64 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.136.us48, i64 8 ; 2 uses
  store i8 %i.gn, ptr %i.gj, align 1, !tbaa !47
  %i.gp = add nuw nsw i64 %.01737.us47, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gp, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph, !llvm.loop !464

..loopexit_crit_edge.us49.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.en, %middle.block ], [ %.lcssa53.unr, %scalar.ph.prol.loopexit ], [ %i.go, %scalar.ph ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.02138.us44, i64 4
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !88
  br label %..loopexit_crit_edge.us49

..loopexit_crit_edge.us49:                        ; preds = %..loopexit_crit_edge.us49.loopexit, %.lr.ph41.split.split.us
  %4 = phi ptr [ %3, %.lr.ph41.split.split.us ], [ %.pre, %..loopexit_crit_edge.us49.loopexit ]
  %.122.us53 = phi ptr [ %.02138.us44, %.lr.ph41.split.split.us ], [ %i.gq, %..loopexit_crit_edge.us49.loopexit ]
  %.2.us54 = phi ptr [ %.02138.us44.a, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us49.loopexit ]
  %.val25.us55 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26.us56 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.gr = ptrtoint ptr %.val26.us56 to i64
  %i.gs = ptrtoint ptr %.val25.us55 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  %i.gy = add nsw i64 %i.gx, 1                    ; 3 uses
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %i.gv
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !51
  %i.hb = icmp eq i64 %i.gy, %i.ha
  %i.hc = icmp sgt i64 %i.gu, 1
  %or.cond.i.us57 = and i1 %i.hb, %i.hc
  br i1 %or.cond.i.us57, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

.lr.ph.i.us59:                                    ; preds = %..loopexit_crit_edge.us49, %bb.d
  %i.hd = phi i64 [ %i.hl, %bb.d ], [ %i.gy, %..loopexit_crit_edge.us49 ]
  %.03.i.us60 = phi i64 [ %i.hi, %bb.d ], [ %i.gv, %..loopexit_crit_edge.us49 ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %.03.i.us60
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !51
  %i.hg = icmp eq i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

bb.d:                                             ; preds = %.lr.ph.i.us59
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us60
  store i64 0, ptr %i.hh, align 8, !tbaa !51
  %i.hi = add nsw i64 %.03.i.us60, -1             ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !51
  %i.hl = add nsw i64 %i.hk, 1                    ; 2 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !51
  %i.hm = icmp sgt i64 %.03.i.us60, 1
  br i1 %i.hm, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62: ; preds = %.lr.ph.i.us59, %bb.d, %..loopexit_crit_edge.us49
  %i.hn = add nsw i64 %.040.us42, -1
  %i.ho = icmp sgt i64 %.040.us42, 1
  br i1 %i.ho, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !458

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hp = ptrtoint ptr %.sroa.030.0 to i64
  %i.hq = sub i64 %.sroa.13.0, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hq) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hs = ptrtoint ptr %.sroa.030.0 to i64
  %i.ht = sub i64 %.sroa.13.0, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.ht) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.il, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.02138 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.hu = load ptr, ptr %i.ea, align 8
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.hv, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !76

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hw = getelementptr inbounds nuw i8, ptr %.02138, i64 4
  store i32 %i.hv, ptr %.02138, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.122 = phi ptr [ %.02138, %.lr.ph41.split.split ], [ %i.hw, %.loopexit ]
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !51
  %i.hy = add nsw i64 %i.hx, 1                    ; 3 uses
  store i64 %i.hy, ptr %i.eg, align 8, !tbaa !51
  %i.hz = load i64, ptr %i.eh, align 8, !tbaa !51
  %i.ia = icmp eq i64 %i.hy, %i.hz
  %or.cond.i = and i1 %i.ia, %i.ei
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ib = phi i64 [ %i.ij, %bb.h ], [ %i.hy, %bb.g ]
  %.03.i = phi i64 [ %i.ig, %bb.h ], [ %i.ef, %bb.g ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !51
  %i.ie = icmp eq i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.if, align 8, !tbaa !51
  %i.ig = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !51
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !51
  %i.ik = icmp sgt i64 %.03.i, 1
  br i1 %i.ik, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.il = add nsw i64 %.040, -1
  %i.im = icmp sgt i64 %.040, 1
  br i1 %i.im, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !458

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hr
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !485 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !75
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !51
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
  %scevgep13 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check33 = icmp ult i64 %i.u, 4
  %n.vec35 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n45 = icmp eq i64 %i.u, %n.vec35
  %min.iters.check15 = icmp ult i64 %i.i, 4
  %n.vec21 = and i64 %i.i, 1152921504606846972    ; 4 uses
  %cmp.n29 = icmp eq i64 %i.i, %n.vec21
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.ds, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.q, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.02039.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.02138.us = phi ptr [ %.122.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.body36

vector.body36:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body36
  %index37 = phi i64 [ %index.next43, %vector.body36 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi38 = phi <2 x i64> [ %i.ah, %vector.body36 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index37 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load39 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !51
  %wide.load40 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhmEEvRKNS_6TensorEPT_PT0_l:bb.a
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n45, label %.loopexit35.us, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block44
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec35, %middle.block44 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block44 ]
  br label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph32 ], [ %.011.i.i.i.us.ph, %scalar.ph32.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph32 ], [ %.0910.i.i.i.us.ph, %scalar.ph32.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph32, !llvm.loop !471

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.02138.us, i64 8 ; 4 uses
  store i64 %i.dy, ptr %.02138.us, align 8, !tbaa !51
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check15, label %.lr.ph.us.preheader47, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.02039.us, i64 %i.i
  %bound017 = icmp ult ptr %.02039.us, %scevgep13
  %bound118 = icmp ult ptr %.sroa.030.0, %i.as
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %.lr.ph.us.preheader47, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck16
  %i.at = getelementptr i8, ptr %.02039.us, i64 %n.vec21 ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body22 ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.02039.us, i64 %index23 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.au, align 8, !tbaa !51, !alias.scope !486
  %wide.load26 = load <2 x i64>, ptr %i.av, align 8, !tbaa !51, !alias.scope !486
  %i.aw = trunc <2 x i64> %wide.load25 to <2 x i8>
  %i.ax = trunc <2 x i64> %wide.load26 to <2 x i8>
  %i.ay = getelementptr i8, ptr %next.gep24, i64 2
  store <2 x i8> %i.aw, ptr %next.gep24, align 1, !tbaa !47, !alias.scope !487, !noalias !486
  store <2 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !47, !alias.scope !487, !noalias !486
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.az, label %middle.block28, label %vector.body22, !llvm.loop !475

middle.block28:                                   ; preds = %vector.body22
  br i1 %cmp.n29, label %.loopexit.us, label %.lr.ph.us.preheader47

.lr.ph.us.preheader47:                            ; preds = %vector.memcheck16, %.lr.ph.us.preheader, %middle.block28
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec21, %middle.block28 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.02039.us, %vector.memcheck16 ], [ %.02039.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block28 ] ; 2 uses
  %i.ba = sub nsw i64 %i.i, %.01737.us.ph
  %xtraiter54 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader47, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.bf, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.be, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader47 ] ; 2 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader47 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.136.us.prol, align 1, !tbaa !47
  %i.bf = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !476

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader47
  %.lcssa51.unr = phi ptr [ poison, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader47 ], [ %i.bf, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader47 ], [ %i.be, %.lr.ph.us.prol ]
  %i.bg = sub nsw i64 %.01737.us.ph, %i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cv, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.cu, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bk, ptr %.136.us, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !51
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !51
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !47
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.co = trunc i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !51
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !47
  %i.cv = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.cv, %i.i
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !477

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block28, %bb.b, %.loopexit35.us
  %.122.us = phi ptr [ %.02138.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block28 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.02039.us, %.loopexit35.us ], [ %.02039.us, %bb.b ], [ %i.at, %middle.block28 ], [ %.lcssa51.unr, %.lr.ph.us.prol.loopexit ], [ %i.cu, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.cw = ptrtoint ptr %.val26.us to i64
  %i.cx = ptrtoint ptr %.val25.us to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = add nsw i64 %i.cz, -1                   ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dd = add nsw i64 %i.dc, 1                    ; 3 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.da
  %i.df = load i64, ptr %i.de, align 8, !tbaa !51
  %i.dg = icmp eq i64 %i.dd, %i.df
  %i.dh = icmp sgt i64 %i.cz, 1
  %or.cond.i.us = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.di = phi i64 [ %i.dq, %bb.c ], [ %i.dd, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dn, %bb.c ], [ %i.da, %.loopexit.us ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dm, align 8, !tbaa !51
  %i.dn = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dq = add nsw i64 %i.dp, 1                    ; 2 uses
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !51
  %i.dr = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dr, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.ds = add nsw i64 %.040.us, -1
  %i.dt = icmp sgt i64 %.040.us, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !478

.loopexit35.us:                                   ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.aj, %middle.block44 ], [ %i.ap, %scalar.ph32 ]
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.lcssa
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !51 ; 2 uses
  %.not.us = icmp eq i64 %i.dy, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !76

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %.pre72 = load ptr, ptr %i.x, align 8, !tbaa !88 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dz = shl nuw nsw i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %.sroa.030.0, i64 %i.dz
  %min.iters.check = icmp ult i64 %i.i, 4
  %n.vec = and i64 %i.i, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre72, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.eb = ptrtoint ptr %.val26 to i64
  %i.ec = ptrtoint ptr %.val25 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %i.ef = add nsw i64 %i.ee, -1                   ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ef
  %i.ei = icmp sgt i64 %i.ee, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62
  %3 = phi ptr [ %4, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %.pre72, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.040.us42 = phi i64 [ %i.hn, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %i.q, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.02138.us44.a = phi ptr [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.02138.us44 = phi ptr [ %.122.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !51 ; 2 uses
  %.not.us45 = icmp eq i64 %i.el, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us49, label %.lr.ph.us46, !prof !76

.lr.ph.us46:                                      ; preds = %.lr.ph41.split.split.us
  store i64 %i.el, ptr %.02138.us44, align 8, !tbaa !51
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us46
  %i.em = getelementptr i8, ptr %.02138.us44.a, i64 %i.i
  %bound0 = icmp ult ptr %.02138.us44.a, %scevgep
  %bound1 = icmp ult ptr %.sroa.030.0, %i.em
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.en = getelementptr i8, ptr %.02138.us44.a, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02138.us44.a, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !51, !alias.scope !488
  %wide.load5 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !51, !alias.scope !488
  %i.eq = trunc <2 x i64> %wide.load to <2 x i8>
  %i.er = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.es = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eq, ptr %next.gep, align 1, !tbaa !47, !alias.scope !489, !noalias !488
  store <2 x i8> %i.er, ptr %i.es, align 1, !tbaa !47, !alias.scope !489, !noalias !488
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us46, %middle.block
  %.01737.us47.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us46 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us48.ph = phi ptr [ %.02138.us44.a, %vector.memcheck ], [ %.02138.us44.a, %.lr.ph.us46 ], [ %i.en, %middle.block ] ; 2 uses
  %i.eu = sub nsw i64 %i.i, %.01737.us47.ph
  %xtraiter = and i64 %i.eu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us47.prol = phi i64 [ %i.ez, %scalar.ph.prol ], [ %.01737.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us48.prol = phi ptr [ %i.ey, %scalar.ph.prol ], [ %.136.us48.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47.prol
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !51
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.136.us48.prol, i64 1 ; 3 uses
  store i8 %i.ex, ptr %.136.us48.prol, align 1, !tbaa !47
  %i.ez = add nuw nsw i64 %.01737.us47.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !483

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa53.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.01737.us47.unr = phi i64 [ %.01737.us47.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %.136.us48.unr = phi ptr [ %.136.us48.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %i.fa = sub nsw i64 %.01737.us47.ph, %i.i
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us47 = phi i64 [ %i.gp, %scalar.ph ], [ %.01737.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us48 = phi ptr [ %i.go, %scalar.ph ], [ %.136.us48.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !51
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us48, i64 1
  store i8 %i.fe, ptr %.136.us48, align 1, !tbaa !47
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !51
  %i.fj = trunc i64 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.136.us48, i64 2
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !47
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !51
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.136.us48, i64 3
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !47
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !51
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.136.us48, i64 4
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !47
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !51
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.136.us48, i64 5
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !47
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !51
  %i.gd = trunc i64 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.136.us48, i64 6
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !47
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !51
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.136.us48, i64 7
  store i8 %i.gi, ptr %i.ge, align 1, !tbaa !47
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !51
  %i.gn = trunc i64 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.136.us48, i64 8 ; 2 uses
  store i8 %i.gn, ptr %i.gj, align 1, !tbaa !47
  %i.gp = add nuw nsw i64 %.01737.us47, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gp, %i.i
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us49.loopexit, label %scalar.ph, !llvm.loop !484

..loopexit_crit_edge.us49.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.en, %middle.block ], [ %.lcssa53.unr, %scalar.ph.prol.loopexit ], [ %i.go, %scalar.ph ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.02138.us44, i64 8
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !88
  br label %..loopexit_crit_edge.us49

..loopexit_crit_edge.us49:                        ; preds = %..loopexit_crit_edge.us49.loopexit, %.lr.ph41.split.split.us
  %4 = phi ptr [ %3, %.lr.ph41.split.split.us ], [ %.pre, %..loopexit_crit_edge.us49.loopexit ]
  %.122.us53 = phi ptr [ %.02138.us44, %.lr.ph41.split.split.us ], [ %i.gq, %..loopexit_crit_edge.us49.loopexit ]
  %.2.us54 = phi ptr [ %.02138.us44.a, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us49.loopexit ]
  %.val25.us55 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %.val26.us56 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.gr = ptrtoint ptr %.val26.us56 to i64
  %i.gs = ptrtoint ptr %.val25.us55 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 3                 ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  %i.gy = add nsw i64 %i.gx, 1                    ; 3 uses
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %i.gv
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !51
  %i.hb = icmp eq i64 %i.gy, %i.ha
  %i.hc = icmp sgt i64 %i.gu, 1
  %or.cond.i.us57 = and i1 %i.hb, %i.hc
  br i1 %or.cond.i.us57, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

.lr.ph.i.us59:                                    ; preds = %..loopexit_crit_edge.us49, %bb.d
  %i.hd = phi i64 [ %i.hl, %bb.d ], [ %i.gy, %..loopexit_crit_edge.us49 ]
  %.03.i.us60 = phi i64 [ %i.hi, %bb.d ], [ %i.gv, %..loopexit_crit_edge.us49 ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.val25.us55, i64 %.03.i.us60
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !51
  %i.hg = icmp eq i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62

bb.d:                                             ; preds = %.lr.ph.i.us59
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us60
  store i64 0, ptr %i.hh, align 8, !tbaa !51
  %i.hi = add nsw i64 %.03.i.us60, -1             ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !51
  %i.hl = add nsw i64 %i.hk, 1                    ; 2 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !51
  %i.hm = icmp sgt i64 %.03.i.us60, 1
  br i1 %i.hm, label %.lr.ph.i.us59, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62: ; preds = %.lr.ph.i.us59, %bb.d, %..loopexit_crit_edge.us49
  %i.hn = add nsw i64 %.040.us42, -1
  %i.ho = icmp sgt i64 %.040.us42, 1
  br i1 %i.ho, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !478

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us62, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hp = ptrtoint ptr %.sroa.030.0 to i64
  %i.hq = sub i64 %.sroa.13.0, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hq) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hs = ptrtoint ptr %.sroa.030.0 to i64
  %i.ht = sub i64 %.sroa.13.0, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.ht) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.il, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.q, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.02138 = phi ptr [ %.122, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.hu = load ptr, ptr %i.ea, align 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !51 ; 2 uses
  %.not = icmp eq i64 %i.hv, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !76

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hw = getelementptr inbounds nuw i8, ptr %.02138, i64 8
  store i64 %i.hv, ptr %.02138, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.122 = phi ptr [ %.02138, %.lr.ph41.split.split ], [ %i.hw, %.loopexit ]
  %i.hx = load i64, ptr %i.eg, align 8, !tbaa !51
  %i.hy = add nsw i64 %i.hx, 1                    ; 3 uses
  store i64 %i.hy, ptr %i.eg, align 8, !tbaa !51
  %i.hz = load i64, ptr %i.eh, align 8, !tbaa !51
  %i.ia = icmp eq i64 %i.hy, %i.hz
  %or.cond.i = and i1 %i.ia, %i.ei
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ib = phi i64 [ %i.ij, %bb.h ], [ %i.hy, %bb.g ]
  %.03.i = phi i64 [ %i.ig, %bb.h ], [ %i.ef, %bb.g ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !51
  %i.ie = icmp eq i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.if, align 8, !tbaa !51
  %i.ig = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !51
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !51
  %i.ik = icmp sgt i64 %.03.i, 1
  br i1 %i.ik, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !4

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.il = add nsw i64 %.040, -1
  %i.im = icmp sgt i64 %.040, 1
  br i1 %i.im, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !478

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hr
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !497 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !75
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !51
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
  %.pre74 = load ptr, ptr %i.w, align 8, !tbaa !75
  %min.iters.check21 = icmp ult i64 %i.u, 4
  %n.vec23 = and i64 %i.u, 9223372036854775804    ; 3 uses
  %cmp.n33 = icmp eq i64 %i.u, %n.vec23
  %min.iters.check7 = icmp ult i64 %i.i, 4
  %n.vec9 = and i64 %i.i, 1152921504606846972     ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec9, 1
  %cmp.n17 = icmp eq i64 %i.i, %n.vec9
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.z = phi ptr [ %i.bf, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %.pre74, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
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
  %wide.load27 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !51
  %wide.load28 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_2
