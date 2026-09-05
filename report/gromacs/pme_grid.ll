Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi:bb.a
  %i.fs = add i32 %i.fp, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %1, i64 %i.fu
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.fu
  %reass.add226.us.us.us.reass.us.us.us = add i32 %.1204254.us.us.us.us.us, %invariant.op269.us.us.us
  %reass.mul227.us.us.us.us.us.us = mul i32 %reass.add226.us.us.us.reass.us.us.us, %i.ex ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fv = add i32 %reass.mul227.us.us.us.us.us.us, %i.fl
  %i.fw = icmp slt i32 %i.fv, %reass.mul227.us.us.us.us.us.us
  %i.fx = or i1 %i.fw, %i.fm
  br i1 %i.fx, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fy = shl i64 %.4255.us.us.us.us.us, 2        ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ev, i64 %i.fy
  %scevgep363 = getelementptr i8, ptr %scevgep362, i64 %i.fy
  %bound0 = icmp ult ptr %scevgep, %scevgep366
  %bound1 = icmp ult ptr %scevgep364, %scevgep363
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fz = add i64 %.4255.us.us.us.us.us, %n.vec   ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gb = getelementptr [4 x i8], ptr %i.ga, i64 %index ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 96
  %wide.load = load <8 x float>, ptr %i.gb, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load368 = load <8 x float>, ptr %i.gc, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load369 = load <8 x float>, ptr %i.gd, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load370 = load <8 x float>, ptr %i.ge, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.gf = trunc nuw nsw i64 %index to i32
  %i.gg = add i32 %reass.mul227.us.us.us.us.us.us, %i.gf
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gh ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 96 ; 2 uses
  %wide.load371 = load <8 x float>, ptr %i.gi, align 4, !tbaa !108, !alias.scope !206
  %wide.load372 = load <8 x float>, ptr %i.gj, align 4, !tbaa !108, !alias.scope !206
  %wide.load373 = load <8 x float>, ptr %i.gk, align 4, !tbaa !108, !alias.scope !206
  %wide.load374 = load <8 x float>, ptr %i.gl, align 4, !tbaa !108, !alias.scope !206
  %i.gm = fadd <8 x float> %wide.load, %wide.load371
  %i.gn = fadd <8 x float> %wide.load368, %wide.load372
  %i.go = fadd <8 x float> %wide.load369, %wide.load373
  %i.gp = fadd <8 x float> %wide.load370, %wide.load374
  store <8 x float> %i.gm, ptr %i.gi, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.gn, ptr %i.gj, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.go, ptr %i.gk, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.gp, ptr %i.gl, align 4, !tbaa !108, !alias.scope !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gr = add i64 %.4255.us.us.us.us.us, %n.vec375 ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %index376
  %wide.load377 = load <4 x float>, ptr %i.gt, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.gu = trunc nuw nsw i64 %index376 to i32
  %i.gv = add i32 %reass.mul227.us.us.us.us.us.us, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gw ; 2 uses
  %wide.load378 = load <4 x float>, ptr %i.gx, align 4, !tbaa !108, !alias.scope !206
  %i.gy = fadd <4 x float> %wide.load377, %wide.load378
  store <4 x float> %i.gy, ptr %i.gx, align 4, !tbaa !108, !alias.scope !206
  %index.next379 = add nuw i64 %index376, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.gz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n380, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv318.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec375, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv316.ph = phi i64 [ %.4255.us.us.us.us.us, %iter.check ], [ %.4255.us.us.us.us.us, %vector.scevcheck ], [ %.4255.us.us.us.us.us, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod492.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv318.prol = phi i64 [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv316.prol
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !108
  %i.hc = trunc nuw nsw i64 %indvars.iv318.prol to i32
  %i.hd = add i32 %reass.mul227.us.us.us.us.us.us, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !108
  %i.hh = fadd float %i.hb, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !108
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 3 uses
  %indvars.iv.next319.prol = add nuw nsw i64 %indvars.iv318.prol, 1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !176

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next317.lcssa487.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv318.unr = phi i64 [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %i.hi = sub nsw i64 %indvars.iv318.ph, %wide.trip.count323
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op508 = add i32 1, %reass.mul227.us.us.us.us.us.us
  %invariant.op510 = add i32 2, %reass.mul227.us.us.us.us.us.us
  %invariant.op512 = add i32 3, %reass.mul227.us.us.us.us.us.us
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv318 = phi i64 [ %indvars.iv318.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next319.3, %vec.epilog.scalar.ph ] ; 5 uses
  %indvars.iv316 = phi i64 [ %indvars.iv316.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !108
  %i.hm = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.hn = add i32 %reass.mul227.us.us.us.us.us.us, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !108
  %i.hr = fadd float %i.hl, %i.hq
  store float %i.hr, ptr %i.hp, align 4, !tbaa !108
  %i.hs = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !108
  %i.hv = trunc i64 %indvars.iv318 to i32
  %.reass509 = add i32 %i.hv, %invariant.op508
  %i.hw = sext i32 %.reass509 to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hw ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !108
  %i.hz = fadd float %i.hu, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !108
  %i.ia = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !108
  %i.id = trunc i64 %indvars.iv318 to i32
  %.reass511 = add i32 %i.id, %invariant.op510
  %i.ie = sext i32 %.reass511 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ie ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !108
  %i.ih = fadd float %i.ic, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !108
  %i.ii = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ij = getelementptr i8, ptr %i.ii, i64 12
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !108
  %i.il = trunc i64 %indvars.iv318 to i32
  %.reass513 = add i32 %i.il, %invariant.op512
  %i.im = sext i32 %.reass513 to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %1, i64 %i.im ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !108
  %i.ip = fadd float %i.ik, %i.io
  store float %i.ip, ptr %i.in, align 4, !tbaa !108
  %indvars.iv.next317.3 = add nsw i64 %indvars.iv316, 4 ; 2 uses
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %exitcond324.not.3 = icmp eq i64 %indvars.iv.next319.3, %wide.trip.count323
  br i1 %exitcond324.not.3, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !177

._crit_edge252.split.us.us.us.us.us.us:           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next317.lcssa = phi i64 [ %i.gr, %vec.epilog.middle.block ], [ %i.fz, %middle.block ], [ %indvars.iv.next317.lcssa487.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 2 uses
  %i.iq = add nuw nsw i32 %.1204254.us.us.us.us.us, 1 ; 2 uses
  %exitcond325.not = icmp eq i32 %i.iq, %.0208
  br i1 %exitcond325.not, label %._crit_edge257.split.us.split.us.us.us.us, label %iter.check, !llvm.loop !178

._crit_edge257.split.us.split.us.us.us.us:        ; preds = %._crit_edge252.split.us.us.us.us.us.us
  %i.ir = add nuw nsw i32 %.1206270.us.us.us, 1   ; 2 uses
  %exitcond326.not = icmp eq i32 %i.ir, %i.ep
  br i1 %exitcond326.not, label %._crit_edge274, label %.preheader231.us.us.us, !llvm.loop !179

.preheader231.us.us:                              ; preds = %.preheader231.us.us.preheader, %._crit_edge257.split.us.split.us281.us
  %.3273.us.us = phi i64 [ %indvars.iv.next306.lcssa, %._crit_edge257.split.us.split.us281.us ], [ 0, %.preheader231.us.us.preheader ]
  %.1206270.us.us = phi i32 [ %i.lj, %._crit_edge257.split.us.split.us281.us ], [ 0, %.preheader231.us.us.preheader ] ; 3 uses
  %i.is = mul i32 %i.fc, %.1206270.us.us
  %i.it = add i32 %i.fb, %i.is
  %i.iu = mul i32 %i.ew, %.1206270.us.us
  %invariant.op268.us.us = add i32 %invariant.op259.us, %i.iu
  br label %iter.check400

iter.check400:                                    ; preds = %.preheader231.us.us, %._crit_edge252.split.us263.us.us
  %.4255.us.us279.us = phi i64 [ %.3273.us.us, %.preheader231.us.us ], [ %indvars.iv.next306.lcssa, %._crit_edge252.split.us263.us.us ] ; 8 uses
  %.1204254.us.us280.us = phi i32 [ 0, %.preheader231.us.us ], [ %i.li, %._crit_edge252.split.us263.us.us ] ; 3 uses
  %i.iv = mul i32 %i.ex, %.1204254.us.us280.us
  %i.iw = add i32 %i.it, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 2
  %reass.add.us.reass.us.us = add i32 %.1204254.us.us280.us, %invariant.op268.us.us
  %reass.mul.us.us.us = mul i32 %reass.add.us.reass.us.us, %i.ex ; 9 uses
  br i1 %min.iters.check385, label %vec.epilog.scalar.ph401.preheader, label %vector.scevcheck383

vector.scevcheck383:                              ; preds = %iter.check400
  %i.iz = add i32 %reass.mul.us.us.us, %i.fd
  %i.ja = icmp slt i32 %i.iz, %reass.mul.us.us.us
  %i.jb = or i1 %i.ja, %i.fe
  br i1 %i.jb, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck383
  %i.jc = shl i64 %.4255.us.us279.us, 2
  %i.jd = add i64 %i.iy, %i.a
  %i.je = add i64 %i.jc, %i.ey
  %i.jf = sub i64 %i.je, %i.jd
  %diff.check = icmp ugt i64 %i.jf, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck384
  br i1 %min.iters.check387, label %vec.epilog.ph404, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.jg = add i64 %.4255.us.us279.us, %n.vec389   ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us279.us
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 3 uses
  %i.ji = getelementptr [4 x i8], ptr %i.jh, i64 %index391 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %wide.load392 = load <8 x float>, ptr %i.ji, align 4, !tbaa !108
  %wide.load393 = load <8 x float>, ptr %i.jj, align 4, !tbaa !108
  %wide.load394 = load <8 x float>, ptr %i.jk, align 4, !tbaa !108
  %wide.load395 = load <8 x float>, ptr %i.jl, align 4, !tbaa !108
  %i.jm = trunc nuw nsw i64 %index391 to i32
  %i.jn = add i32 %reass.mul.us.us.us, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jo ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  store <8 x float> %wide.load392, ptr %i.jp, align 4, !tbaa !108
  store <8 x float> %wide.load393, ptr %i.jq, align 4, !tbaa !108
  store <8 x float> %wide.load394, ptr %i.jr, align 4, !tbaa !108
  store <8 x float> %wide.load395, ptr %i.js, align 4, !tbaa !108
  %index.next396 = add nuw i64 %index391, 32      ; 2 uses
  %i.jt = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.jt, label %middle.block397, label %vector.body390, !llvm.loop !180

middle.block397:                                  ; preds = %vector.body390
  br i1 %cmp.n398, label %._crit_edge252.split.us263.us.us, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block397
  br i1 %min.epilog.iters.check403, label %vec.epilog.scalar.ph401.preheader, label %vec.epilog.ph404, !prof !112

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check402
  %vec.epilog.resume.val399 = phi i64 [ %n.vec389, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check386 ]
  %i.ju = add i64 %.4255.us.us279.us, %n.vec405   ; 2 uses
  %i.jv = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us279.us
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph404
  %index407 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph404 ], [ %index.next409, %vec.epilog.vector.body406 ] ; 3 uses
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %index407
  %wide.load408 = load <4 x float>, ptr %i.jw, align 4, !tbaa !108
  %i.jx = trunc nuw nsw i64 %index407 to i32
  %i.jy = add i32 %reass.mul.us.us.us, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jz
  store <4 x float> %wide.load408, ptr %i.ka, align 4, !tbaa !108
  %index.next409 = add nuw i64 %index407, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next409, %n.vec405
  br i1 %i.kb, label %vec.epilog.middle.block410, label %vec.epilog.vector.body406, !llvm.loop !181

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body406
  br i1 %cmp.n411, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401.preheader

vec.epilog.scalar.ph401.preheader:                ; preds = %vector.memcheck384, %vector.scevcheck383, %iter.check400, %vec.epilog.iter.check402, %vec.epilog.middle.block410
  %indvars.iv307.ph = phi i64 [ 0, %iter.check400 ], [ 0, %vector.scevcheck383 ], [ 0, %vector.memcheck384 ], [ %n.vec389, %vec.epilog.iter.check402 ], [ %n.vec405, %vec.epilog.middle.block410 ] ; 3 uses
  %indvars.iv305.ph = phi i64 [ %.4255.us.us279.us, %iter.check400 ], [ %.4255.us.us279.us, %vector.scevcheck383 ], [ %.4255.us.us279.us, %vector.memcheck384 ], [ %i.jg, %vec.epilog.iter.check402 ], [ %i.ju, %vec.epilog.middle.block410 ] ; 2 uses
  br i1 %lcmp.mod489.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol

vec.epilog.scalar.ph401.prol:                     ; preds = %vec.epilog.scalar.ph401.preheader, %vec.epilog.scalar.ph401.prol
  %indvars.iv307.prol = phi i64 [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %indvars.iv305.prol = phi i64 [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %prol.iter490 = phi i64 [ %prol.iter490.next, %vec.epilog.scalar.ph401.prol ], [ 0, %vec.epilog.scalar.ph401.preheader ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv305.prol
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !108
  %i.ke = trunc nuw nsw i64 %indvars.iv307.prol to i32
  %i.kf = add i32 %reass.mul.us.us.us, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kg
  store float %i.kd, ptr %i.kh, align 4, !tbaa !108
  %indvars.iv.next306.prol = add nsw i64 %indvars.iv305.prol, 1 ; 3 uses
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.prol, 1 ; 2 uses
  %prol.iter490.next = add i64 %prol.iter490, 1   ; 2 uses
  %prol.iter490.cmp.not = icmp eq i64 %prol.iter490.next, %xtraiter488
  br i1 %prol.iter490.cmp.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol, !llvm.loop !182

vec.epilog.scalar.ph401.prol.loopexit:            ; preds = %vec.epilog.scalar.ph401.prol, %vec.epilog.scalar.ph401.preheader
  %indvars.iv.next306.lcssa486.unr = phi i64 [ poison, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv305.unr = phi i64 [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %i.ki = sub nsw i64 %indvars.iv307.ph, %wide.trip.count323
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401.preheader.new

vec.epilog.scalar.ph401.preheader.new:            ; preds = %vec.epilog.scalar.ph401.prol.loopexit
  %invariant.op502 = add i32 1, %reass.mul.us.us.us
  %invariant.op504 = add i32 2, %reass.mul.us.us.us
  %invariant.op506 = add i32 3, %reass.mul.us.us.us
  br label %vec.epilog.scalar.ph401

vec.epilog.scalar.ph401:                          ; preds = %vec.epilog.scalar.ph401, %vec.epilog.scalar.ph401.preheader.new
  %indvars.iv307 = phi i64 [ %indvars.iv307.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next308.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %indvars.iv305 = phi i64 [ %indvars.iv305.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv305
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !108
  %i.km = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.kn = add i32 %reass.mul.us.us.us, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ko
  store float %i.kl, ptr %i.kp, align 4, !tbaa !108
  %i.kq = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv305
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !108
  %i.kt = trunc i64 %indvars.iv307 to i32
  %.reass503 = add i32 %i.kt, %invariant.op502
  %i.ku = sext i32 %.reass503 to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ku
  store float %i.ks, ptr %i.kv, align 4, !tbaa !108
  %i.kw = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv305
  %i.kx = getelementptr i8, ptr %i.kw, i64 8
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !108
  %i.kz = trunc i64 %indvars.iv307 to i32
  %.reass505 = add i32 %i.kz, %invariant.op504
  %i.la = sext i32 %.reass505 to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.la
  store float %i.ky, ptr %i.lb, align 4, !tbaa !108
  %i.lc = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv305
  %i.ld = getelementptr i8, ptr %i.lc, i64 12
  %i.le = load float, ptr %i.ld, align 4, !tbaa !108
  %i.lf = trunc i64 %indvars.iv307 to i32
  %.reass507 = add i32 %i.lf, %invariant.op506
  %i.lg = sext i32 %.reass507 to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lg
  store float %i.le, ptr %i.lh, align 4, !tbaa !108
  %indvars.iv.next306.3 = add nsw i64 %indvars.iv305, 4 ; 2 uses
  %indvars.iv.next308.3 = add nuw nsw i64 %indvars.iv307, 4 ; 2 uses
  %exitcond313.not.3 = icmp eq i64 %indvars.iv.next308.3, %wide.trip.count323
  br i1 %exitcond313.not.3, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401, !llvm.loop !183

._crit_edge252.split.us263.us.us:                 ; preds = %vec.epilog.scalar.ph401.prol.loopexit, %vec.epilog.scalar.ph401, %vec.epilog.middle.block410, %middle.block397
  %indvars.iv.next306.lcssa = phi i64 [ %i.ju, %vec.epilog.middle.block410 ], [ %i.jg, %middle.block397 ], [ %indvars.iv.next306.lcssa486.unr, %vec.epilog.scalar.ph401.prol.loopexit ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 2 uses
  %i.li = add nuw nsw i32 %.1204254.us.us280.us, 1 ; 2 uses
  %exitcond314.not = icmp eq i32 %i.li, %.0208
  br i1 %exitcond314.not, label %._crit_edge257.split.us.split.us281.us, label %iter.check400, !llvm.loop !178

._crit_edge257.split.us.split.us281.us:           ; preds = %._crit_edge252.split.us263.us.us
  %i.lj = add nuw nsw i32 %.1206270.us.us, 1      ; 2 uses
  %exitcond315.not = icmp eq i32 %i.lj, %i.ep
  br i1 %exitcond315.not, label %._crit_edge274, label %.preheader231.us.us, !llvm.loop !179

._crit_edge274:                                   ; preds = %._crit_edge257.split.us.split.us281.us, %._crit_edge257.split.us.split.us.us.us.us, %.preheader231.lr.ph.split.us, %bb.f
  %i.lk = add nuw i64 %.0194284, 1                ; 2 uses
  %i.ll = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.lm = load ptr, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = sdiv exact i64 %i.lp, 28
  %i.lr = icmp ult i64 %i.lk, %i.lq
  br i1 %i.lr, label %bb.b, label %.preheader, !llvm.loop !184

._crit_edge291:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void

bb.g:                                             ; preds = %.lr.ph290, %.loopexit
  %i.ls = phi ptr [ %i.v, %.lr.ph290 ], [ %i.qm, %.loopexit ]
  %.0289 = phi i64 [ 0, %.lr.ph290 ], [ %i.qk, %.loopexit ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [28 x i8], ptr %i.ls, i64 %.0289 ; 11 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 12 ; 2 uses
  %.pre333 = load i32, ptr %i.y, align 8, !tbaa !105 ; 2 uses
  %.pre334 = load i32, ptr %i.z, align 4, !tbaa !106 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !208
end_hunk_0
