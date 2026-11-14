Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_sparse?download=true
inline.NumInlined: 675
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN2cv9SparseMatC2ERKNS_3MatE:bb.a
  %indvars.iv.i.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.3, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %.0912.i.us.epil.init = phi i64 [ %i.bf, %.lr.ph.preheader.i.us ], [ %i.ci, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i39.us.epil

.lr.ph.i39.us.epil:                               ; preds = %.lr.ph.i39.us.epil, %.lr.ph.i39.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %.lr.ph.i39.us.epil ] ; 2 uses
  %.0912.i.us.epil = phi i64 [ %.0912.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %i.cn, %.lr.ph.i39.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i39.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.i39.us.epil ]
  %i.cj = mul i64 %.0912.i.us.epil, 1540483477
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.epil
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add i64 %i.cj, %i.cm                    ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %.lr.ph.i39.us.epil, !llvm.loop !88

_ZNK2cv9SparseMat4hashEPKi.exit.us:               ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.i39.us.epil, %bb.g, %_ZN2cvL10isZeroElemEPKhm.exit.us
  %.010.i38.us = phi i64 [ 0, %_ZN2cvL10isZeroElemEPKhm.exit.us ], [ %i.bf, %bb.g ], [ %i.ci, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i39.us.epil ]
  %i.co = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %.010.i38.us) ; 10 uses
  %i.cp = ptrtoaddr ptr %i.co to i64              ; 2 uses
  br i1 %.not14.i, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader

.lr.ph.i41.us.preheader:                          ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us
  br i1 %min.iters.check141, label %.lr.ph.i41.us.preheader155, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i41.us.preheader
  %i.cq = mul nsw i64 %indvar, %i.aq
  %i.cr = sub i64 %i.cq, %.035.us131
  %i.cs = add i64 %i.cr, %i.cp
  %i.ct = add i64 %i.cs, -1
  %diff.check143 = icmp ult i64 %i.ct, 31
  br i1 %diff.check143, label %.lr.ph.i41.us.preheader155, label %vector.body146

vector.body146:                                   ; preds = %vector.memcheck142, %vector.body146
  %index147 = phi i64 [ %index.next150, %vector.body146 ], [ 0, %vector.memcheck142 ] ; 2 uses
  %i.cu = shl i64 %index147, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load148 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !27
  %wide.load149 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <4 x i32> %wide.load148, ptr %i.cx, align 4, !tbaa !27
  store <4 x i32> %wide.load149, ptr %i.cy, align 4, !tbaa !27
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.cz, label %middle.block151, label %vector.body146, !llvm.loop !89

middle.block151:                                  ; preds = %vector.body146
  br i1 %cmp.n152, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader155

.lr.ph.i41.us.preheader155:                       ; preds = %vector.memcheck142, %.lr.ph.i41.us.preheader, %middle.block151
  %.ph = phi i64 [ 4, %vector.memcheck142 ], [ 4, %.lr.ph.i41.us.preheader ], [ %i.av, %middle.block151 ]
  %.015.i.us.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph.i41.us.preheader ], [ %i.au, %middle.block151 ]
  br label %.lr.ph.i41.us

.lr.ph.i41.us:                                    ; preds = %.lr.ph.i41.us.preheader155, %.lr.ph.i41.us
  %i.da = phi i64 [ %i.de, %.lr.ph.i41.us ], [ %.ph, %.lr.ph.i41.us.preheader155 ] ; 3 uses
  %.015.i.us = phi i64 [ %i.da, %.lr.ph.i41.us ], [ %.015.i.us.ph, %.lr.ph.i41.us.preheader155 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.015.i.us
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !27
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 %.015.i.us
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !27
  %i.de = add nuw nsw i64 %i.da, 4                ; 2 uses
  %.not.i42.us = icmp samesign ugt i64 %i.de, %i.ag
  br i1 %.not.i42.us, label %.preheader.i43.us, label %.lr.ph.i41.us, !llvm.loop !90

.preheader.i43.us:                                ; preds = %.lr.ph.i41.us, %middle.block151, %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %.0.lcssa.i.us = phi i64 [ 0, %_ZNK2cv9SparseMat4hashEPKi.exit.us ], [ %i.au, %middle.block151 ], [ %i.da, %.lr.ph.i41.us ] ; 8 uses
  %i.df = icmp samesign ult i64 %.0.lcssa.i.us, %i.ag
  br i1 %i.df, label %iter.check, label %_ZN2cvL8copyElemEPKhPhm.exit.us

iter.check:                                       ; preds = %.preheader.i43.us
  %i.dg = sub nuw i64 %i.ag, %.0.lcssa.i.us       ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.dg, 8
  br i1 %min.iters.check, label %.lr.ph17.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dh = mul i64 %indvar, %i.aq
  %i.di = sub i64 %i.dh, %.035.us131
  %i.dj = add i64 %i.di, %i.cp
  %i.dk = add i64 %i.dj, -1
  %diff.check = icmp ult i64 %i.dk, 31
  br i1 %diff.check, label %.lr.ph17.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check132 = icmp samesign ult i64 %i.dg, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.dg, 24
  %n.vec = and i64 %i.dg, 4064                    ; 4 uses
  %i.dm = add i64 %.0.lcssa.i.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = add nuw i64 %.0.lcssa.i.us, %index      ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <16 x i8>, ptr %i.do, align 1, !tbaa !45
  %wide.load133 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dn ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <16 x i8> %wide.load, ptr %i.dq, align 1, !tbaa !45
  store <16 x i8> %wide.load133, ptr %i.dr, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.us.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.dg, 4088                 ; 3 uses
  %i.dt = add i64 %.0.lcssa.i.us, %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %i.du = add nuw i64 %.0.lcssa.i.us, %index135   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.du
  %wide.load136 = load <8 x i8>, ptr %i.dv, align 1, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.du
  store <8 x i8> %wide.load136, ptr %i.dw, align 1, !tbaa !45
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next137, %n.vec134
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.dg, %n.vec134
  br i1 %cmp.n138, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us.preheader

.lr.ph17.i.us.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i44.us.ph = phi i64 [ %.0.lcssa.i.us, %iter.check ], [ %.0.lcssa.i.us, %vector.memcheck ], [ %i.dm, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ] ; 4 uses
  %i.dy = sub i64 %i.ag, %.116.i44.us.ph
  %xtraiter167 = and i64 %i.dy, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol

.lr.ph17.i.us.prol:                               ; preds = %.lr.ph17.i.us.preheader, %.lr.ph17.i.us.prol
  %.116.i44.us.prol = phi i64 [ %i.ec, %.lr.ph17.i.us.prol ], [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.us.prol ], [ 0, %.lr.ph17.i.us.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us.prol
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %.116.i44.us.prol
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !45
  %i.ec = add nuw nsw i64 %.116.i44.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter167
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol, !llvm.loop !93

.lr.ph17.i.us.prol.loopexit:                      ; preds = %.lr.ph17.i.us.prol, %.lr.ph17.i.us.preheader
  %.116.i44.us.unr = phi i64 [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ], [ %i.ec, %.lr.ph17.i.us.prol ]
  %i.ed = sub i64 %.116.i44.us.ph, %i.ag
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us

.lr.ph17.i.us:                                    ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us
  %.116.i44.us = phi i64 [ %i.eu, %.lr.ph17.i.us ], [ %.116.i44.us.unr, %.lr.ph17.i.us.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !45
  %i.eh = getelementptr inbounds nuw i8, ptr %i.co, i64 %.116.i44.us
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !45
  %i.ei = add nuw nsw i64 %.116.i44.us, 1         ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ei
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !45
  %i.em = add nuw nsw i64 %.116.i44.us, 2         ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !45
  %i.eq = add nuw nsw i64 %.116.i44.us, 3         ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !45
  %i.et = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1, !tbaa !45
  %i.eu = add nuw nsw i64 %.116.i44.us, 4         ; 2 uses
  %exitcond.not.i45.us.3 = icmp eq i64 %i.eu, %i.ag
  br i1 %exitcond.not.i45.us.3, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us, !llvm.loop !94

_ZN2cvL8copyElemEPKhPhm.exit.us:                  ; preds = %bb.f, %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i43.us, %.preheader.i.us
  %i.ev = add nuw nsw i32 %.066.us, 1             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ag ; 2 uses
  %exitcond.not = icmp eq i32 %i.ev, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !95

_ZNK2cv8MatShapeixEm.exit51.us:                   ; preds = %.lr.ph.us, %bb.h
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %bb.h ], [ %i.ap, %.lr.ph.us ] ; 6 uses
  %.267.us = phi ptr [ %i.fh, %bb.h ], [ %i.ew, %.lr.ph.us ]
  %i.ex = add nuw nsw i64 %indvars.iv93, 1        ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv93
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ex
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !27
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ex
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !63
  %i.ff = mul i64 %i.fe, %i.fc
  %i.fg = sub i64 %i.ez, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.267.us, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv93 ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27
  %i.fk = add nsw i32 %i.fj, 1                    ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !27
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !27
  %i.fn = icmp slt i32 %i.fk, %i.fm
  br i1 %i.fn, label %.preheader.lr.ph.us, label %bb.h, !llvm.loop !96

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us
  store i32 0, ptr %i.fi, align 4, !tbaa !27
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.fo = icmp sgt i64 %indvars.iv93, 0
  br i1 %i.fo, label %_ZNK2cv8MatShapeixEm.exit51.us, label %._crit_edge70, !llvm.loop !97

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %_ZN2cvL8copyElemEPKhPhm.exit.us
  %indvar = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvar.next, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 3 uses
  %.066.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.ev, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 2 uses
  %.13665.us = phi ptr [ %.035.us, %.preheader.lr.ph.us ], [ %i.ew, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 12 uses
  br i1 %.not.i.us128, label %.preheader.i.us, label %.lr.ph

._crit_edge.us:                                   ; preds = %_ZN2cvL8copyElemEPKhPhm.exit.us
  br i1 %i.al, label %.lr.ph.us, label %._crit_edge70

.lr.ph.us:                                        ; preds = %._crit_edge.us
  %i.fp = load i32, ptr %i.e, align 8, !tbaa !99
  %.not109 = icmp sgt i32 %i.i, %i.fp
  br i1 %.not109, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us

_ZNK2cv8MatShapeixEm.exit.split:                  ; preds = %_ZNK2cv8MatShapeixEm.exit
  br i1 %i.al, label %.lr.ph.lr.ph, label %._crit_edge70

.lr.ph.lr.ph:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit.split
  %i.fq = zext nneg i32 %i.ak to i64              ; 2 uses
  %.not = icmp sgt i32 %i.i, %i.k
  br i1 %.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us76

_ZNK2cv8MatShapeixEm.exit51.us76:                 ; preds = %.lr.ph.lr.ph, %.lr.ph.us73.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.lr.ph.us73.backedge ], [ %i.fq, %.lr.ph.lr.ph ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !27
  %i.ft = add nsw i32 %i.fs, 1                    ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !27
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !27
  %i.fw = icmp slt i32 %i.ft, %i.fv
  br i1 %i.fw, label %.lr.ph.us73.backedge, label %bb.i

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us76
  store i32 0, ptr %i.fr, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fx = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fx, label %.lr.ph.us73.backedge, label %._crit_edge70

.lr.ph.us73.backedge:                             ; preds = %bb.i, %_ZNK2cv8MatShapeixEm.exit51.us76
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.fq, %_ZNK2cv8MatShapeixEm.exit51.us76 ]
  br label %_ZNK2cv8MatShapeixEm.exit51.us76

.split.us:                                        ; preds = %.lr.ph.us, %.lr.ph.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 103) #25
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.split.us
  unreachable

bb.k:                                             ; preds = %.split.us
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.k
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #23
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 5 uses
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
  %i.e = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !46
  %i.u = mul nsw i64 %i.q, 3
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = ashr exact i64 %i.p, 2
  %.sroa.speculated61 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 8)
  tail call void @_ZN2cv9SparseMat13resizeHashTabEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.speculated61)
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.x, %bb.f ], [ %i.c, %bb.e ] ; 9 uses
  %.040 = phi i64 [ %i.af, %bb.f ], [ %i.q, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %.not46 = icmp eq i64 %i.ai, 0
  br i1 %.not46, label %bb.h, label %._crit_edge73

._crit_edge73:                                    ; preds = %bb.g
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !35
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !35 ; 5 uses
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
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.az = icmp ult i64 %i.aw, %i.ar
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.ba, ptr %i.am, align 8, !tbaa !36
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.bb = phi ptr [ %.pre72, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ], [ %i.ao, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.bc = phi ptr [ %.pre, %bb.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.ag, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.speculated52 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ak) ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 %.sroa.speculated52, ptr %i.bd, align 8, !tbaa !64
  %i.be = sub i64 %i.aw, %i.ak                    ; 2 uses
  %i.bf = icmp ult i64 %.sroa.speculated52, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %.lr.ph
  %.03966 = phi i64 [ %i.bg, %.lr.ph ], [ %.sroa.speculated52, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 2 uses
  %i.bg = add i64 %.03966, %i.ak                  ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.03966
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !65
  %i.bj = icmp ult i64 %i.bg, %i.be
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.039.lcssa = phi i64 [ %.sroa.speculated52, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.bg, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.039.lcssa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge73, %._crit_edge
  %i.bm = phi ptr [ %i.bb, %._crit_edge ], [ %.pre75, %._crit_edge73 ] ; 2 uses
  %i.bn = phi i64 [ %.sroa.speculated52, %._crit_edge ], [ %i.ai, %._crit_edge73 ] ; 3 uses
  %i.bo = phi ptr [ %i.bc, %._crit_edge ], [ %i.ag, %._crit_edge73 ] ; 4 uses
  %i.bp = ptrtoaddr ptr %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !65
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !64
  store i64 %2, ptr %i.br, align 8, !tbaa !53
  %i.bu = add nsw i64 %.040, -1
end_hunk_0
