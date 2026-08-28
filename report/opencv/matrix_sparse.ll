Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_sparse?download=true
inline.NumInlined: 675
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN2cv9SparseMatC2ERKNS_3MatE:bb.a
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, label %.lr.ph.i39.us, !llvm.loop !59

_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i39.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %.lr.ph.i39.us.epil.preheader

.lr.ph.i39.us.epil.preheader:                     ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.3, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %.0912.i.us.epil.init = phi i64 [ %i.be, %.lr.ph.preheader.i.us ], [ %i.ch, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i39.us.epil

.lr.ph.i39.us.epil:                               ; preds = %.lr.ph.i39.us.epil, %.lr.ph.i39.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %.lr.ph.i39.us.epil ] ; 2 uses
  %.0912.i.us.epil = phi i64 [ %.0912.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %i.cm, %.lr.ph.i39.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i39.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.i39.us.epil ]
  %i.ci = mul i64 %.0912.i.us.epil, 1540483477
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.epil
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %i.ci, %i.cl                    ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %.lr.ph.i39.us.epil, !llvm.loop !73

_ZNK2cv9SparseMat4hashEPKi.exit.us:               ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.i39.us.epil, %bb.g, %_ZN2cvL10isZeroElemEPKhm.exit.us
  %.010.i38.us = phi i64 [ 0, %_ZN2cvL10isZeroElemEPKhm.exit.us ], [ %i.be, %bb.g ], [ %i.ch, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ], [ %i.cm, %.lr.ph.i39.us.epil ]
  %i.cn = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %.010.i38.us) ; 10 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 2 uses
  br i1 %.not14.i, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader

.lr.ph.i41.us.preheader:                          ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %i.cp = sub i64 %i.fj, %i.co
  %diff.check140 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check141, i1 true, i1 %diff.check140
  br i1 %or.cond, label %.lr.ph.i41.us.preheader153, label %vector.body144

vector.body144:                                   ; preds = %.lr.ph.i41.us.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %.lr.ph.i41.us.preheader ] ; 2 uses
  %i.cq = shl i64 %index145, 2                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load146 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !25
  %wide.load147 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load146, ptr %i.ct, align 4, !tbaa !25
  store <4 x i32> %wide.load147, ptr %i.cu, align 4, !tbaa !25
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.cv, label %middle.block149, label %vector.body144, !llvm.loop !74

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n150, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader153

.lr.ph.i41.us.preheader153:                       ; preds = %.lr.ph.i41.us.preheader, %middle.block149
  %.ph = phi i64 [ 4, %.lr.ph.i41.us.preheader ], [ %i.au, %middle.block149 ]
  %.015.i.us.ph = phi i64 [ 0, %.lr.ph.i41.us.preheader ], [ %i.at, %middle.block149 ]
  br label %.lr.ph.i41.us

.lr.ph.i41.us:                                    ; preds = %.lr.ph.i41.us.preheader153, %.lr.ph.i41.us
  %i.cw = phi i64 [ %i.da, %.lr.ph.i41.us ], [ %.ph, %.lr.ph.i41.us.preheader153 ] ; 3 uses
  %.015.i.us = phi i64 [ %i.cw, %.lr.ph.i41.us ], [ %.015.i.us.ph, %.lr.ph.i41.us.preheader153 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.015.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.015.i.us
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !25
  %i.da = add nuw nsw i64 %i.cw, 4                ; 2 uses
  %.not.i42.us = icmp samesign ugt i64 %i.da, %i.ag
  br i1 %.not.i42.us, label %.preheader.i43.us, label %.lr.ph.i41.us, !llvm.loop !75

.preheader.i43.us:                                ; preds = %.lr.ph.i41.us, %middle.block149, %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %.0.lcssa.i.us = phi i64 [ 0, %_ZNK2cv9SparseMat4hashEPKi.exit.us ], [ %i.at, %middle.block149 ], [ %i.cw, %.lr.ph.i41.us ] ; 7 uses
  %i.db = icmp samesign ult i64 %.0.lcssa.i.us, %i.ag
  br i1 %i.db, label %iter.check, label %_ZN2cvL8copyElemEPKhPhm.exit.us

iter.check:                                       ; preds = %.preheader.i43.us
  %i.dc = sub nuw i64 %i.ag, %.0.lcssa.i.us       ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.dc, 8
  %i.dd = sub i64 %i.fl, %i.co
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond152 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond152, label %.lr.ph17.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp samesign ult i64 %i.dc, 32
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.dc, 24
  %n.vec = and i64 %i.dc, 4064                    ; 4 uses
  %i.df = add i64 %.0.lcssa.i.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = add nuw i64 %.0.lcssa.i.us, %index      ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load = load <16 x i8>, ptr %i.dh, align 1, !tbaa !46
  %wide.load132 = load <16 x i8>, ptr %i.di, align 1, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load, ptr %i.dj, align 1, !tbaa !46
  store <16 x i8> %wide.load132, ptr %i.dk, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.us.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.dc, 4088                 ; 3 uses
  %i.dm = add i64 %.0.lcssa.i.us, %n.vec133
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = add nuw i64 %.0.lcssa.i.us, %index134   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dn
  %wide.load135 = load <8 x i8>, ptr %i.do, align 1, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dn
  store <8 x i8> %wide.load135, ptr %i.dp, align 1, !tbaa !46
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next136, %n.vec133
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.dc, %n.vec133
  br i1 %cmp.n137, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us.preheader

.lr.ph17.i.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i44.us.ph = phi i64 [ %.0.lcssa.i.us, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 4 uses
  %i.dr = sub i64 %i.ag, %.116.i44.us.ph
  %xtraiter165 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol

.lr.ph17.i.us.prol:                               ; preds = %.lr.ph17.i.us.preheader, %.lr.ph17.i.us.prol
  %.116.i44.us.prol = phi i64 [ %i.dv, %.lr.ph17.i.us.prol ], [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.us.prol ], [ 0, %.lr.ph17.i.us.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us.prol
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us.prol
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !46
  %i.dv = add nuw i64 %.116.i44.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol, !llvm.loop !79

.lr.ph17.i.us.prol.loopexit:                      ; preds = %.lr.ph17.i.us.prol, %.lr.ph17.i.us.preheader
  %.116.i44.us.unr = phi i64 [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ], [ %i.dv, %.lr.ph17.i.us.prol ]
  %i.dw = sub i64 %.116.i44.us.ph, %i.ag
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us

.lr.ph17.i.us:                                    ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us
  %.116.i44.us = phi i64 [ %i.en, %.lr.ph17.i.us ], [ %.116.i44.us.unr, %.lr.ph17.i.us.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !46
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !46
  %i.eb = add nuw i64 %.116.i44.us, 1             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !46
  %i.ef = add nuw i64 %.116.i44.us, 2             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !46
  %i.ej = add nuw i64 %.116.i44.us, 3             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !46
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !46
  %i.en = add nuw i64 %.116.i44.us, 4             ; 2 uses
  %exitcond.not.i45.us.3 = icmp eq i64 %i.en, %i.ag
  br i1 %exitcond.not.i45.us.3, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us, !llvm.loop !80

_ZN2cvL8copyElemEPKhPhm.exit.us:                  ; preds = %bb.f, %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i43.us, %.preheader.i.us
  %i.eo = add nuw nsw i32 %.066.us, 1             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ag ; 2 uses
  %exitcond.not = icmp eq i32 %i.eo, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !81

6:                                                ; preds = %.lr.ph.us, %bb.h
  %indvars.iv93 = phi i64 [ %i.ap, %.lr.ph.us ], [ %indvars.iv.next94, %bb.h ] ; 6 uses
  %.267.us = phi ptr [ %i.ep, %.lr.ph.us ], [ %i.fa, %bb.h ]
  br i1 %.not109, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us

_ZNK2cv8MatShapeixEm.exit51.us:                   ; preds = %6
  %i.eq = add nuw nsw i64 %indvars.iv93, 1        ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv93
  %i.es = load i64, ptr %i.er, align 8, !tbaa !82
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !25
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.eq
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !82
  %i.ey = mul i64 %i.ex, %i.ev
  %i.ez = sub i64 %i.es, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.267.us, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv93 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !25
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !25
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25
  %i.fg = icmp slt i32 %i.fd, %i.ff
  br i1 %i.fg, label %.preheader.lr.ph.us, label %bb.h, !llvm.loop !83

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us
  store i32 0, ptr %i.fb, align 4, !tbaa !25
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.fh = icmp sgt i64 %indvars.iv93, 0
  br i1 %i.fh, label %6, label %._crit_edge70, !llvm.loop !84

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %_ZN2cvL8copyElemEPKhPhm.exit.us
  %indvar = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvar.next, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 3 uses
  %.066.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.eo, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 2 uses
  %.13665.us = phi ptr [ %.035.us, %.preheader.lr.ph.us ], [ %i.ep, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 12 uses
  %i.fi = mul i64 %indvar, %i.ag
  %i.fj = add i64 %i.fi, %.035.us130
  %i.fk = mul i64 %indvar, %i.ag
  %i.fl = add i64 %i.fk, %.035.us130
  br i1 %.not.i.us128, label %.preheader.i.us, label %.lr.ph

._crit_edge.us:                                   ; preds = %_ZN2cvL8copyElemEPKhPhm.exit.us
  br i1 %i.al, label %.lr.ph.us, label %._crit_edge70

.lr.ph.us:                                        ; preds = %._crit_edge.us
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !69
  %.not109 = icmp sgt i32 %i.i, %i.fm
  br label %6

_ZNK2cv8MatShapeixEm.exit.split:                  ; preds = %_ZNK2cv8MatShapeixEm.exit
  br i1 %i.al, label %.lr.ph.lr.ph, label %._crit_edge70

.lr.ph.lr.ph:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit.split
  %i.fn = zext nneg i32 %i.ak to i64              ; 2 uses
  %.not = icmp sgt i32 %i.i, %i.k
  br label %.lr.ph.us73

.lr.ph.us73:                                      ; preds = %.lr.ph.us73.backedge, %.lr.ph.lr.ph
  %indvars.iv = phi i64 [ %i.fn, %.lr.ph.lr.ph ], [ %indvars.iv.be, %.lr.ph.us73.backedge ] ; 4 uses
  br i1 %.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us76

_ZNK2cv8MatShapeixEm.exit51.us76:                 ; preds = %.lr.ph.us73
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !25
  %i.fq = add nsw i32 %i.fp, 1                    ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !25
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !25
  %i.ft = icmp slt i32 %i.fq, %i.fs
  br i1 %i.ft, label %.lr.ph.us73.backedge, label %bb.i

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us76
  store i32 0, ptr %i.fo, align 4, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fu = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fu, label %.lr.ph.us73.backedge, label %._crit_edge70

.lr.ph.us73.backedge:                             ; preds = %bb.i, %_ZNK2cv8MatShapeixEm.exit51.us76
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.fn, %_ZNK2cv8MatShapeixEm.exit51.us76 ]
  br label %.lr.ph.us73, !llvm.loop !84

.split.us:                                        ; preds = %.lr.ph.us73, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 103) #25
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.split.us
  unreachable

bb.k:                                             ; preds = %.split.us
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.k
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !46
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

._crit_edge70:                                    ; preds = %bb.i, %._crit_edge.us, %bb.h, %_ZNK2cv8MatShapeixEm.exit.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv9SparseMat7newNodeEPKim, ptr noundef nonnull @.str.1, i32 noundef 649) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !49
  %i.u = mul nsw i64 %i.q, 3
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = ashr exact i64 %i.p, 2
  %.sroa.speculated61 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 8)
  tail call void @_ZN2cv9SparseMat13resizeHashTabEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.speculated61)
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.x, %bb.f ], [ %i.c, %bb.e ] ; 9 uses
  %.040 = phi i64 [ %i.af, %bb.f ], [ %i.q, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %.not46 = icmp eq i64 %i.ai, 0
  br i1 %.not46, label %bb.h, label %._crit_edge73

._crit_edge73:                                    ; preds = %bb.g
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !36
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !36 ; 5 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = mul i64 %i.ar, 3
  %i.at = lshr i64 %i.as, 1
  %i.au = shl i64 %i.ak, 3
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.au)
  %.fr = freeze i64 %.sroa.speculated             ; 2 uses
  %i.av = urem i64 %.fr, %i.ak
  %i.aw = sub nuw i64 %.fr, %i.av                 ; 5 uses
  %i.ax = icmp ugt i64 %i.aw, %i.ar
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = sub nuw i64 %i.aw, %i.ar
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.ay)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.az = icmp ult i64 %i.aw, %i.ar
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ba, ptr %i.am, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.bb = phi ptr [ %.pre72, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ], [ %i.ao, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.bc = phi ptr [ %.pre, %bb.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.ag, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.speculated52 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ak) ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 %.sroa.speculated52, ptr %i.bd, align 8, !tbaa !85
  %i.be = sub i64 %i.aw, %i.ak                    ; 2 uses
  %i.bf = icmp ult i64 %.sroa.speculated52, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %.lr.ph
  %.03966 = phi i64 [ %i.bg, %.lr.ph ], [ %.sroa.speculated52, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 2 uses
  %i.bg = add i64 %.03966, %i.ak                  ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.03966
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !86
  %i.bj = icmp ult i64 %i.bg, %i.be
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.039.lcssa = phi i64 [ %.sroa.speculated52, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.bg, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.039.lcssa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge73, %._crit_edge
  %i.bm = phi ptr [ %i.bb, %._crit_edge ], [ %.pre75, %._crit_edge73 ] ; 2 uses
  %i.bn = phi i64 [ %.sroa.speculated52, %._crit_edge ], [ %i.ai, %._crit_edge73 ] ; 3 uses
  %i.bo = phi ptr [ %i.bc, %._crit_edge ], [ %i.ag, %._crit_edge73 ] ; 4 uses
  %i.bp = ptrtoaddr ptr %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !86
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !85
  store i64 %2, ptr %i.br, align 8, !tbaa !55
  %i.bu = add nsw i64 %.040, -1
end_hunk_0
