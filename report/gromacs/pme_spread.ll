Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb:bb.a
  %i.ds = mul i64 %i.dm, %indvars.iv49.i          ; 2 uses
  %scevgep42 = getelementptr i8, ptr %i.dp, i64 %i.ds
  %scevgep43 = getelementptr i8, ptr %.val, i64 %i.ds
  %i.dt = mul nsw i64 %indvars.iv49.i, %i.db
  %i.du = mul nsw i64 %indvars.iv49.i, %i.dc
  %bound046 = icmp ult ptr %scevgep43, %scevgep40
  %bound147 = icmp ult ptr %scevgep41, %scevgep42
  %found.conflict48 = and i1 %bound046, %bound147
  %i.dv = or i1 %found.conflict48, %stride.check
  br label %iter.check66

iter.check66:                                     ; preds = %._crit_edge.i, %.preheader2.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 3 uses
  %i.dw = add nsw i64 %indvars.iv44.i, %i.dt
  %i.dx = mul nsw i64 %i.dw, %i.cz
  %i.dy = add nsw i64 %indvars.iv44.i, %i.du
  %i.dz = mul nsw i64 %i.dy, %i.da
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ce, i64 %i.dz ; 11 uses
  %invariant.gep96.i = getelementptr [4 x i8], ptr %.val, i64 %i.dx ; 11 uses
  %brmerge = select i1 %min.iters.check44, i1 true, i1 %i.dv
  br i1 %brmerge, label %vec.epilog.scalar.ph68.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %iter.check66
  br i1 %min.iters.check50, label %vec.epilog.ph70, label %vector.body53

vector.body53:                                    ; preds = %vector.main.loop.iter.check49, %vector.body53
  %index54 = phi i64 [ %index.next63, %vector.body53 ], [ 0, %vector.main.loop.iter.check49 ] ; 3 uses
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index54 ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 32
  %i.ec = getelementptr i8, ptr %i.ea, i64 64
  %i.ed = getelementptr i8, ptr %i.ea, i64 96
  %wide.load55 = load <8 x float>, ptr %i.ea, align 4, !tbaa !134, !alias.scope !246
  %wide.load56 = load <8 x float>, ptr %i.eb, align 4, !tbaa !134, !alias.scope !246
  %wide.load57 = load <8 x float>, ptr %i.ec, align 4, !tbaa !134, !alias.scope !246
  %wide.load58 = load <8 x float>, ptr %i.ed, align 4, !tbaa !134, !alias.scope !246
  %i.ee = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %index54 ; 5 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 32     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 64     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 96     ; 2 uses
  %wide.load59 = load <8 x float>, ptr %i.ee, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load60 = load <8 x float>, ptr %i.ef, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load61 = load <8 x float>, ptr %i.eg, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load62 = load <8 x float>, ptr %i.eh, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %i.ei = fadd <8 x float> %wide.load55, %wide.load59
  %i.ej = fadd <8 x float> %wide.load56, %wide.load60
  %i.ek = fadd <8 x float> %wide.load57, %wide.load61
  %i.el = fadd <8 x float> %wide.load58, %wide.load62
  store <8 x float> %i.ei, ptr %i.ee, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.ej, ptr %i.ef, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.ek, ptr %i.eg, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.el, ptr %i.eh, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %index.next63 = add nuw i64 %index54, 32        ; 2 uses
  %i.em = icmp eq i64 %index.next63, %n.vec52
  br i1 %i.em, label %middle.block64, label %vector.body53, !llvm.loop !200

middle.block64:                                   ; preds = %vector.body53
  br i1 %cmp.n65, label %._crit_edge.i, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block64
  br i1 %min.epilog.iters.check69, label %vec.epilog.scalar.ph68.preheader, label %vec.epilog.ph70, !prof !138

vec.epilog.ph70:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check67
  %vec.epilog.resume.val71 = phi i64 [ %n.vec52, %vec.epilog.iter.check67 ], [ 0, %vector.main.loop.iter.check49 ]
  br label %vec.epilog.vector.body73

vec.epilog.vector.body73:                         ; preds = %vec.epilog.vector.body73, %vec.epilog.ph70
  %index74 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph70 ], [ %index.next77, %vec.epilog.vector.body73 ] ; 3 uses
  %i.en = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index74
  %wide.load75 = load <4 x float>, ptr %i.en, align 4, !tbaa !134, !alias.scope !246
  %i.eo = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %index74 ; 2 uses
  %wide.load76 = load <4 x float>, ptr %i.eo, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %i.ep = fadd <4 x float> %wide.load75, %wide.load76
  store <4 x float> %i.ep, ptr %i.eo, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %index.next77 = add nuw i64 %index74, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.eq, label %vec.epilog.middle.block78, label %vec.epilog.vector.body73, !llvm.loop !201

vec.epilog.middle.block78:                        ; preds = %vec.epilog.vector.body73
  br i1 %cmp.n79, label %._crit_edge.i, label %vec.epilog.scalar.ph68.preheader

vec.epilog.scalar.ph68.preheader:                 ; preds = %iter.check66, %vec.epilog.iter.check67, %vec.epilog.middle.block78
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check66 ], [ %n.vec72, %vec.epilog.middle.block78 ], [ %n.vec52, %vec.epilog.iter.check67 ] ; 4 uses
  %i.er = sub nsw i64 %i.da, %indvars.iv.i.ph
  %xtraiter = and i64 %i.er, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph68.prol.loopexit, label %vec.epilog.scalar.ph68.prol

vec.epilog.scalar.ph68.prol:                      ; preds = %vec.epilog.scalar.ph68.preheader, %vec.epilog.scalar.ph68.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph68.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph68.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph68.prol ], [ 0, %vec.epilog.scalar.ph68.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.es = load float, ptr %gep.i.prol, align 4, !tbaa !134
  %gep97.i.prol = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.et = load float, ptr %gep97.i.prol, align 4, !tbaa !134
  %i.eu = fadd float %i.es, %i.et
  store float %i.eu, ptr %gep97.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph68.prol.loopexit, label %vec.epilog.scalar.ph68.prol, !llvm.loop !202

vec.epilog.scalar.ph68.prol.loopexit:             ; preds = %vec.epilog.scalar.ph68.prol, %vec.epilog.scalar.ph68.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph68.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph68.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.ph, %i.da
  %i.ew = icmp ugt i64 %i.ev, -8
  br i1 %i.ew, label %._crit_edge.i, label %vec.epilog.scalar.ph68

vec.epilog.scalar.ph68:                           ; preds = %vec.epilog.scalar.ph68.prol.loopexit, %vec.epilog.scalar.ph68
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph68 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph68.prol.loopexit ] ; 10 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ex = load float, ptr %gep.i, align 4, !tbaa !134
  %gep97.i = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.i ; 2 uses
  %i.ey = load float, ptr %gep97.i, align 4, !tbaa !134
  %i.ez = fadd float %i.ex, %i.ey
  store float %i.ez, ptr %gep97.i, align 4, !tbaa !134
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fa = load float, ptr %gep.i.1, align 4, !tbaa !134
  %gep97.i.1 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fb = load float, ptr %gep97.i.1, align 4, !tbaa !134
  %i.fc = fadd float %i.fa, %i.fb
  store float %i.fc, ptr %gep97.i.1, align 4, !tbaa !134
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fd = load float, ptr %gep.i.2, align 4, !tbaa !134
  %gep97.i.2 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.fe = load float, ptr %gep97.i.2, align 4, !tbaa !134
  %i.ff = fadd float %i.fd, %i.fe
  store float %i.ff, ptr %gep97.i.2, align 4, !tbaa !134
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fg = load float, ptr %gep.i.3, align 4, !tbaa !134
  %gep97.i.3 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.fh = load float, ptr %gep97.i.3, align 4, !tbaa !134
  %i.fi = fadd float %i.fg, %i.fh
  store float %i.fi, ptr %gep97.i.3, align 4, !tbaa !134
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %gep.i.4 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  %i.fj = load float, ptr %gep.i.4, align 4, !tbaa !134
  %gep97.i.4 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.fk = load float, ptr %gep97.i.4, align 4, !tbaa !134
  %i.fl = fadd float %i.fj, %i.fk
  store float %i.fl, ptr %gep97.i.4, align 4, !tbaa !134
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %gep.i.5 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  %i.fm = load float, ptr %gep.i.5, align 4, !tbaa !134
  %gep97.i.5 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.4 ; 2 uses
  %i.fn = load float, ptr %gep97.i.5, align 4, !tbaa !134
  %i.fo = fadd float %i.fm, %i.fn
  store float %i.fo, ptr %gep97.i.5, align 4, !tbaa !134
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %gep.i.6 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  %i.fp = load float, ptr %gep.i.6, align 4, !tbaa !134
  %gep97.i.6 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.5 ; 2 uses
  %i.fq = load float, ptr %gep97.i.6, align 4, !tbaa !134
  %i.fr = fadd float %i.fp, %i.fq
  store float %i.fr, ptr %gep97.i.6, align 4, !tbaa !134
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %gep.i.7 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  %i.fs = load float, ptr %gep.i.7, align 4, !tbaa !134
  %gep97.i.7 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.6 ; 2 uses
  %i.ft = load float, ptr %gep97.i.7, align 4, !tbaa !134
  %i.fu = fadd float %i.fs, %i.ft
  store float %i.fu, ptr %gep97.i.7, align 4, !tbaa !134
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.da
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph68, !llvm.loop !203

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph68.prol.loopexit, %vec.epilog.scalar.ph68, %vec.epilog.middle.block78, %middle.block64
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %._crit_edge8.i, label %iter.check66, !llvm.loop !204

._crit_edge8.i:                                   ; preds = %._crit_edge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %._crit_edge10.split.i, label %.preheader2.i, !llvm.loop !205

._crit_edge10.split.i:                            ; preds = %._crit_edge8.i, %.preheader2.lr.ph.i, %bb.l
  %i.fv = load i32, ptr %i.am, align 4, !tbaa !132 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.m, label %.loopexit3.i

bb.m:                                             ; preds = %._crit_edge10.split.i
  %i.fx = load ptr, ptr %i.bk, align 8, !tbaa !133 ; 3 uses
  br i1 %i.bl, label %.preheader1.lr.ph.i, label %.loopexit3.i

.preheader1.lr.ph.i:                              ; preds = %bb.m
  %i.fy = icmp slt i32 %i.bw, 1
  %i.fz = load i32, ptr %i.av, align 4            ; 4 uses
  %i.ga = icmp slt i32 %i.fz, 1
  %brmerge38.i = select i1 %i.fy, i1 true, i1 %i.ga
  br i1 %brmerge38.i, label %.loopexit3.i, label %.preheader1.preheader.i

.preheader1.preheader.i:                          ; preds = %.preheader1.lr.ph.i
  %i.gb = load i32, ptr %i.bm, align 4
  %i.gc = zext nneg i32 %i.fz to i64              ; 15 uses
  %i.gd = sext i32 %i.gb to i64                   ; 2 uses
  %i.ge = sext i32 %i.cs to i64                   ; 3 uses
  %i.gf = sext i32 %i.by to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.bw to i64
  %i.gg = shl nsw i64 %i.gf, 2
  %i.gh = mul i64 %i.gg, %i.ge
  %i.gi = add i64 %i.gh, 4
  %i.gj = mul i64 %i.gi, %i.gc
  %i.gk = shl nsw i64 %i.gf, 2                    ; 2 uses
  %i.gl = mul i64 %i.gk, %i.gc
  %i.gm = mul i64 %i.gk, %i.ge
  %i.gn = mul i64 %i.gm, %i.gc
  %i.go = shl nuw nsw i64 %i.gc, 2
  %i.gp = shl nsw i64 %i.gd, 2
  %i.gq = mul i64 %i.gp, %i.gc
  %i.gr = getelementptr i8, ptr %i.ce, i64 %i.gj
  %i.gs = getelementptr i8, ptr %i.ce, i64 %i.gn
  %i.gt = getelementptr i8, ptr %i.fx, i64 %i.go
  %min.iters.check = icmp ult i32 %i.fz, 4
  %min.iters.check18 = icmp ult i32 %i.fz, 32
  %i.gu = and i64 %i.gc, 28
  %n.vec = and i64 %i.gc, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gc
  %min.epilog.iters.check = icmp eq i64 %i.gu, 0
  %n.vec26 = and i64 %i.gc, 2147483644            ; 3 uses
  %cmp.n31 = icmp eq i64 %n.vec26, %i.gc
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %._crit_edge19.i, %.preheader1.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader1.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge19.i ] ; 5 uses
  %i.gv = mul i64 %i.gl, %indvars.iv64.i          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gr, i64 %i.gv
  %scevgep15 = getelementptr i8, ptr %i.gs, i64 %i.gv
  %i.gw = mul i64 %i.gq, %indvars.iv64.i          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %i.gt, i64 %i.gw
  %scevgep17 = getelementptr i8, ptr %i.fx, i64 %i.gw
  %i.gx = mul nsw i64 %indvars.iv64.i, %i.gd
  %i.gy = add nsw i64 %indvars.iv64.i, %i.ge
  %i.gz = mul nsw i64 %i.gy, %i.gf
  %bound0 = icmp ult ptr %scevgep17, %scevgep
  %bound1 = icmp ult ptr %scevgep15, %scevgep16
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge16.i, %.preheader1.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader1.i ], [ %indvars.iv.next60.i, %._crit_edge16.i ] ; 3 uses
  %i.ha = add nsw i64 %indvars.iv59.i, %i.gx
  %i.hb = mul nsw i64 %i.ha, %i.gc
  %i.hc = add nsw i64 %indvars.iv59.i, %i.gz
  %i.hd = mul nsw i64 %i.hc, %i.gc
  %invariant.gep98.i = getelementptr [4 x i8], ptr %i.ce, i64 %i.hd ; 11 uses
  %invariant.gep100.i = getelementptr [4 x i8], ptr %i.fx, i64 %i.hb ; 11 uses
  %brmerge138 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge138, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.he = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %index ; 4 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 32
  %i.hg = getelementptr i8, ptr %i.he, i64 64
  %i.hh = getelementptr i8, ptr %i.he, i64 96
  %wide.load = load <8 x float>, ptr %i.he, align 4, !tbaa !134, !alias.scope !248
  %wide.load19 = load <8 x float>, ptr %i.hf, align 4, !tbaa !134, !alias.scope !248
  %wide.load20 = load <8 x float>, ptr %i.hg, align 4, !tbaa !134, !alias.scope !248
  %wide.load21 = load <8 x float>, ptr %i.hh, align 4, !tbaa !134, !alias.scope !248
  %i.hi = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %index ; 5 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 32     ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 64     ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hi, i64 96     ; 2 uses
  %wide.load22 = load <8 x float>, ptr %i.hi, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load23 = load <8 x float>, ptr %i.hj, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load24 = load <8 x float>, ptr %i.hk, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load25 = load <8 x float>, ptr %i.hl, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %i.hm = fadd <8 x float> %wide.load, %wide.load22
  %i.hn = fadd <8 x float> %wide.load19, %wide.load23
  %i.ho = fadd <8 x float> %wide.load20, %wide.load24
  %i.hp = fadd <8 x float> %wide.load21, %wide.load25
  store <8 x float> %i.hm, ptr %i.hi, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.hn, ptr %i.hj, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.ho, ptr %i.hk, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.hp, ptr %i.hl, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge16.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.hr = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %index27
  %wide.load28 = load <4 x float>, ptr %i.hr, align 4, !tbaa !134, !alias.scope !248
  %i.hs = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %index27 ; 2 uses
  %wide.load29 = load <4 x float>, ptr %i.hs, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %i.ht = fadd <4 x float> %wide.load28, %wide.load29
  store <4 x float> %i.ht, ptr %i.hs, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.hu = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.hu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n31, label %._crit_edge16.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv54.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec26, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.hv = sub nsw i64 %i.gc, %indvars.iv54.i.ph
  %xtraiter132 = and i64 %i.hv, 7                 ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv54.i.prol = phi i64 [ %indvars.iv.next55.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv54.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep99.i.prol = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv54.i.prol
  %i.hw = load float, ptr %gep99.i.prol, align 4, !tbaa !134
  %gep101.i.prol = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv54.i.prol ; 2 uses
  %i.hx = load float, ptr %gep101.i.prol, align 4, !tbaa !134
  %i.hy = fadd float %i.hw, %i.hx
  store float %i.hy, ptr %gep101.i.prol, align 4, !tbaa !134
  %indvars.iv.next55.i.prol = add nuw nsw i64 %indvars.iv54.i.prol, 1 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !211

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv54.i.unr = phi i64 [ %indvars.iv54.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next55.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.hz = sub nsw i64 %indvars.iv54.i.ph, %i.gc
  %i.ia = icmp ugt i64 %i.hz, -8
  br i1 %i.ia, label %._crit_edge16.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv54.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep99.i = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv54.i
  %i.ib = load float, ptr %gep99.i, align 4, !tbaa !134
  %gep101.i = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv54.i ; 2 uses
  %i.ic = load float, ptr %gep101.i, align 4, !tbaa !134
  %i.id = fadd float %i.ib, %i.ic
  store float %i.id, ptr %gep101.i, align 4, !tbaa !134
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %gep99.i.1 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i
  %i.ie = load float, ptr %gep99.i.1, align 4, !tbaa !134
  %gep101.i.1 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i ; 2 uses
  %i.if = load float, ptr %gep101.i.1, align 4, !tbaa !134
  %i.ig = fadd float %i.ie, %i.if
  store float %i.ig, ptr %gep101.i.1, align 4, !tbaa !134
  %indvars.iv.next55.i.1 = add nuw nsw i64 %indvars.iv54.i, 2 ; 2 uses
  %gep99.i.2 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.1
  %i.ih = load float, ptr %gep99.i.2, align 4, !tbaa !134
  %gep101.i.2 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.1 ; 2 uses
  %i.ii = load float, ptr %gep101.i.2, align 4, !tbaa !134
  %i.ij = fadd float %i.ih, %i.ii
  store float %i.ij, ptr %gep101.i.2, align 4, !tbaa !134
  %indvars.iv.next55.i.2 = add nuw nsw i64 %indvars.iv54.i, 3 ; 2 uses
  %gep99.i.3 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.2
  %i.ik = load float, ptr %gep99.i.3, align 4, !tbaa !134
  %gep101.i.3 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.2 ; 2 uses
  %i.il = load float, ptr %gep101.i.3, align 4, !tbaa !134
  %i.im = fadd float %i.ik, %i.il
  store float %i.im, ptr %gep101.i.3, align 4, !tbaa !134
  %indvars.iv.next55.i.3 = add nuw nsw i64 %indvars.iv54.i, 4 ; 2 uses
  %gep99.i.4 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.3
  %i.in = load float, ptr %gep99.i.4, align 4, !tbaa !134
  %gep101.i.4 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.3 ; 2 uses
  %i.io = load float, ptr %gep101.i.4, align 4, !tbaa !134
  %i.ip = fadd float %i.in, %i.io
  store float %i.ip, ptr %gep101.i.4, align 4, !tbaa !134
  %indvars.iv.next55.i.4 = add nuw nsw i64 %indvars.iv54.i, 5 ; 2 uses
  %gep99.i.5 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.4
  %i.iq = load float, ptr %gep99.i.5, align 4, !tbaa !134
  %gep101.i.5 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.4 ; 2 uses
  %i.ir = load float, ptr %gep101.i.5, align 4, !tbaa !134
  %i.is = fadd float %i.iq, %i.ir
  store float %i.is, ptr %gep101.i.5, align 4, !tbaa !134
  %indvars.iv.next55.i.5 = add nuw nsw i64 %indvars.iv54.i, 6 ; 2 uses
  %gep99.i.6 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.5
  %i.it = load float, ptr %gep99.i.6, align 4, !tbaa !134
  %gep101.i.6 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.5 ; 2 uses
  %i.iu = load float, ptr %gep101.i.6, align 4, !tbaa !134
  %i.iv = fadd float %i.it, %i.iu
  store float %i.iv, ptr %gep101.i.6, align 4, !tbaa !134
  %indvars.iv.next55.i.6 = add nuw nsw i64 %indvars.iv54.i, 7 ; 2 uses
  %gep99.i.7 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.6
  %i.iw = load float, ptr %gep99.i.7, align 4, !tbaa !134
  %gep101.i.7 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.6 ; 2 uses
  %i.ix = load float, ptr %gep101.i.7, align 4, !tbaa !134
  %i.iy = fadd float %i.iw, %i.ix
  store float %i.iy, ptr %gep101.i.7, align 4, !tbaa !134
  %indvars.iv.next55.i.7 = add nuw nsw i64 %indvars.iv54.i, 8 ; 2 uses
  %exitcond58.not.i.7 = icmp eq i64 %indvars.iv.next55.i.7, %i.gc
  br i1 %exitcond58.not.i.7, label %._crit_edge16.i, label %vec.epilog.scalar.ph, !llvm.loop !212

._crit_edge16.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge19.i, label %iter.check, !llvm.loop !213

._crit_edge19.i:                                  ; preds = %._crit_edge16.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %.loopexit3.i, label %.preheader1.i, !llvm.loop !214

.loopexit3.i:                                     ; preds = %._crit_edge19.i, %.preheader1.lr.ph.i, %bb.m, %._crit_edge10.split.i
  %i.iz = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.ja = load ptr, ptr %i.az, align 8, !tbaa !232
  %i.jb = load ptr, ptr %i.ay, align 8, !tbaa !229 ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
end_hunk_0
