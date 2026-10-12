Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_denoise:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store <8 x float> %i.ep, ptr %i.et, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.eq, ptr %i.eu, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.er, ptr %i.ev, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.es, ptr %i.ew, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %index.next182 = add nuw i64 %index169, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next182, %n.vec167
  br i1 %i.ex, label %middle.block183, label %vector.body168, !llvm.loop !80

middle.block183:                                  ; preds = %vector.body168
  br i1 %cmp.n184, label %._crit_edge.us.us56.i, label %vec.epilog.iter.check188

vec.epilog.iter.check188:                         ; preds = %middle.block183
  br i1 %min.epilog.iters.check189, label %vec.epilog.scalar.ph187.preheader, label %vec.epilog.ph190, !prof !101

vec.epilog.ph190:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check188
  %vec.epilog.resume.val185 = phi i64 [ %n.vec167, %vec.epilog.iter.check188 ], [ 0, %vector.main.loop.iter.check164 ]
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph190
  %index193 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph190 ], [ %index.next197, %vec.epilog.vector.body192 ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index193
  %wide.load194.a = load <4 x float>, ptr %i.ey, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.ez = fmul reassoc nsz arcp contract afn <4 x float> %wide.load194.a, splat (float 2.000000e+00)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index193
  %wide.load195.a = load <4 x float>, ptr %i.fa, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.fb = fadd reassoc nsz arcp contract afn <4 x float> %i.ez, %wide.load195.a
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index193
  %wide.load196 = load <4 x float>, ptr %i.fc, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.fd = fadd reassoc nsz arcp contract afn <4 x float> %i.fb, %wide.load196
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index193
  store <4 x float> %i.fd, ptr %i.fe, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %index.next197 = add nuw i64 %index193, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.ff, label %vec.epilog.middle.block198, label %vec.epilog.vector.body192, !llvm.loop !81

vec.epilog.middle.block198:                       ; preds = %vec.epilog.vector.body192
  br i1 %cmp.n199, label %._crit_edge.us.us56.i, label %vec.epilog.scalar.ph187.preheader

vec.epilog.scalar.ph187.preheader:                ; preds = %iter.check186, %vec.epilog.iter.check188, %vec.epilog.middle.block198
  %indvars.iv66.i.ph = phi i64 [ 0, %iter.check186 ], [ %n.vec167, %vec.epilog.iter.check188 ], [ %n.vec191, %vec.epilog.middle.block198 ]
  br label %vec.epilog.scalar.ph187

vec.epilog.scalar.ph187:                          ; preds = %vec.epilog.scalar.ph187.preheader, %vec.epilog.scalar.ph187
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %vec.epilog.scalar.ph187 ], [ %indvars.iv66.i.ph, %vec.epilog.scalar.ph187.preheader ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv66.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 2.000000e+00
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv66.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv66.i
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv66.i
  store float %i.fo, ptr %i.fp, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next67.i, %i.a
  br i1 %exitcond69.not.i, label %._crit_edge.us.us56.i, label %vec.epilog.scalar.ph187, !llvm.loop !82

._crit_edge.us.us56.i:                            ; preds = %vec.epilog.scalar.ph187, %vec.epilog.middle.block198, %middle.block183
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next71.i, %i.c
  br i1 %exitcond73.not.i, label %.lr.ph133.i, label %.lr.ph48.split.us.split.split.us.i

.lr.ph48.split.i:                                 ; preds = %.lr.ph48.i
  br i1 %.not57.i, label %.lr.ph133.i, label %iter.check225

iter.check225:                                    ; preds = %.lr.ph48.split.i, %._crit_edge.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %._crit_edge.i ], [ 0, %.lr.ph48.split.i ] ; 4 uses
  %i.fq = mul nsw i64 %indvars.iv62.i, %i.a       ; 2 uses
  %i.fr = add nsw i64 %indvars.iv62.i, %i.v       ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.c
  %i.ft = sub i64 %i.l, %i.fr
  %i.fu = select i1 %i.fs, i64 %i.fr, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fq ; 3 uses
  %i.fw = sub nsw i64 %indvars.iv62.i, %i.v
  %i.fx = trunc nsw i64 %i.fw to i32
  %i.fy = tail call i32 @llvm.abs.i32(i32 %i.fx, i1 true)
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = mul nsw i64 %i.fz, %i.a
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ga ; 3 uses
  %i.gc = mul i64 %i.fu, %i.a
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fq ; 3 uses
  br i1 %min.iters.check202, label %vec.epilog.scalar.ph226.preheader, label %vector.main.loop.iter.check203

vector.main.loop.iter.check203:                   ; preds = %iter.check225
  br i1 %min.iters.check204, label %vec.epilog.ph229, label %vector.body207

vector.body207:                                   ; preds = %vector.main.loop.iter.check203, %vector.body207
  %index208 = phi i64 [ %index.next221, %vector.body207 ], [ 0, %vector.main.loop.iter.check203 ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index208 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  %wide.load209.a = load <8 x float>, ptr %i.gf, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load210.a = load <8 x float>, ptr %i.gg, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load211.a = load <8 x float>, ptr %i.gh, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load212.a = load <8 x float>, ptr %i.gi, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load209.a, splat (float 2.000000e+00)
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load210.a, splat (float 2.000000e+00)
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load211.a, splat (float 2.000000e+00)
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load212.a, splat (float 2.000000e+00)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index208 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %wide.load213.a = load <8 x float>, ptr %i.gn, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load214.a = load <8 x float>, ptr %i.go, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load215.a = load <8 x float>, ptr %i.gp, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load216.a = load <8 x float>, ptr %i.gq, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gj, %wide.load213.a
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, %wide.load214.a
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %wide.load215.a
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %wide.load216.a
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index208 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %wide.load217.a = load <8 x float>, ptr %i.gv, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load218.a = load <8 x float>, ptr %i.gw, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load219.a = load <8 x float>, ptr %i.gx, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %wide.load220 = load <8 x float>, ptr %i.gy, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %wide.load217.a
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %wide.load218.a
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %wide.load219.a
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, %wide.load220
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index208 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  store <8 x float> %i.gz, ptr %i.hd, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.ha, ptr %i.he, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.hb, ptr %i.hf, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  store <8 x float> %i.hc, ptr %i.hg, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %index.next221 = add nuw i64 %index208, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next221, %n.vec206
  br i1 %i.hh, label %middle.block222, label %vector.body207, !llvm.loop !83

middle.block222:                                  ; preds = %vector.body207
  br i1 %cmp.n223, label %._crit_edge.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block222
  br i1 %min.epilog.iters.check228, label %vec.epilog.scalar.ph226.preheader, label %vec.epilog.ph229, !prof !101

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check203, %vec.epilog.iter.check227
  %vec.epilog.resume.val224 = phi i64 [ %n.vec206, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check203 ]
  br label %vec.epilog.vector.body231

vec.epilog.vector.body231:                        ; preds = %vec.epilog.vector.body231, %vec.epilog.ph229
  %index232 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph229 ], [ %index.next236, %vec.epilog.vector.body231 ] ; 5 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index232
  %wide.load233.a = load <4 x float>, ptr %i.hi, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hj = fmul reassoc nsz arcp contract afn <4 x float> %wide.load233.a, splat (float 2.000000e+00)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index232
  %wide.load234.a = load <4 x float>, ptr %i.hk, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hl = fadd reassoc nsz arcp contract afn <4 x float> %i.hj, %wide.load234.a
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index232
  %wide.load235 = load <4 x float>, ptr %i.hm, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hn = fadd reassoc nsz arcp contract afn <4 x float> %i.hl, %wide.load235
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index232
  store <4 x float> %i.hn, ptr %i.ho, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.hp, label %vec.epilog.middle.block237, label %vec.epilog.vector.body231, !llvm.loop !84

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body231
  br i1 %cmp.n238, label %._crit_edge.i, label %vec.epilog.scalar.ph226.preheader

vec.epilog.scalar.ph226.preheader:                ; preds = %iter.check225, %vec.epilog.iter.check227, %vec.epilog.middle.block237
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check225 ], [ %n.vec206, %vec.epilog.iter.check227 ], [ %n.vec230, %vec.epilog.middle.block237 ]
  br label %vec.epilog.scalar.ph226

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph226, %vec.epilog.middle.block237, %middle.block222
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next63.i, %i.c
  br i1 %exitcond65.not.i, label %.lr.ph133.i, label %iter.check225

vec.epilog.scalar.ph226:                          ; preds = %vec.epilog.scalar.ph226.preheader, %vec.epilog.scalar.ph226
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph226 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph226.preheader ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, 2.000000e+00
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hs, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !26, !alias.scope !100, !noalias !99
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i
  store float %i.hy, ptr %i.hz, align 4, !tbaa !26, !alias.scope !99, !noalias !100
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph226, !llvm.loop !85

.lr.ph133.i:                                      ; preds = %._crit_edge.i, %._crit_edge.us.us56.i, %._crit_edge.us.us.i, %.lr.ph48.split.us.split.us.i, %.lr.ph48.split.us.split.i, %.lr.ph48.split.i
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !26 ; 9 uses
  %i.ic = tail call i64 @llvm.umin.i64(i64 range(i64 -2147483648, 2147483648) %i.a, i64 %i.u) ; 18 uses
  %i.id = icmp sgt i64 %i.ic, 0
  %i.ie = sub i64 %i.a, %i.ic                     ; 3 uses
  %i.if = icmp ugt i64 %i.ie, %i.ic
  %sext.i = shl i64 %i.ie, 32
  %i.ig = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.ih = icmp ult i64 %i.ig, %i.a
  %wide.trip.count.i = and i64 %i.ic, 4294967295  ; 3 uses
  %brmerge.i = or i1 %.not57.i, %i.r
  %min.iters.check106 = icmp samesign ult i64 %wide.trip.count.i, 8
  %n.vec108 = and i64 %i.ic, 4294967288           ; 3 uses
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n121 = icmp eq i64 %wide.trip.count.i, %n.vec108
  %i.ii = shl nsw i64 %i.ic, 1
  %i.ij = sub i64 %i.a, %i.ii                     ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ij, 8
  %n.vec91 = and i64 %i.ij, -8                    ; 3 uses
  %i.ik = add i64 %i.ic, %n.vec91
  %broadcast.splatinsert92 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat93 = shufflevector <8 x float> %broadcast.splatinsert92, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n103 = icmp eq i64 %i.ij, %n.vec91
  %i.il = sub nuw nsw i64 %i.a, %i.ig             ; 3 uses
  %min.iters.check74 = icmp ult i64 %i.il, 8
  %n.vec76 = and i64 %i.il, -8                    ; 3 uses
  %i.im = add nsw i64 %i.ig, %n.vec76
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n86 = icmp eq i64 %i.il, %n.vec76
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph133.i
  %indvars.iv149.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next150.i, %.loopexit.i ] ; 2 uses
  %i.in = mul nsw i64 %indvars.iv149.i, %i.a      ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.in ; 9 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.in ; 16 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.in ; 9 uses
  br i1 %i.id, label %.lr.ph.preheader.i, label %.preheader121.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ic ; 2 uses
  br i1 %min.iters.check106, label %.lr.ph.i.preheader, label %vector.body111

vector.body111:                                   ; preds = %.lr.ph.preheader.i, %vector.body111
  %index112 = phi i64 [ %index.next119, %vector.body111 ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index112
  %wide.load113.a = load <8 x float>, ptr %i.ir, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %wide.load113.a, splat (float 2.000000e+00)
  %i.it = sub nuw nsw i64 %i.ic, %index112
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -28
  %wide.load114 = load <8 x float>, ptr %i.iv, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %reverse115 = shufflevector <8 x float> %wide.load114, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %reverse115
  %i.ix = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index112
  %wide.load116.a = load <8 x float>, ptr %i.ix, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iw, %wide.load116.a
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, splat (float 6.250000e-02) ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index112 ; 2 uses
  %wide.load117.a = load <8 x float>, ptr %i.ja, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load117.a, %i.iz ; 2 uses
  store <8 x float> %i.iz, ptr %i.ja, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.jc = fsub reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jc, zeroinitializer
  %i.je = select reassoc nsz arcp contract afn <8 x i1> %i.jd, <8 x float> %i.jc, <8 x float> zeroinitializer
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jf, zeroinitializer
  %i.jh = select reassoc nsz arcp contract afn <8 x i1> %i.jg, <8 x float> %i.jf, <8 x float> zeroinitializer
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index112 ; 2 uses
  %wide.load118 = load <8 x float>, ptr %i.ji, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %wide.load118
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, %i.je
  store <8 x float> %i.jk, ptr %i.ji, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %index.next119 = add nuw i64 %index112, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next119, %n.vec108
  br i1 %i.jl, label %middle.block120, label %vector.body111, !llvm.loop !90

middle.block120:                                  ; preds = %vector.body111
  br i1 %cmp.n121, label %.preheader121.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block120
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec108, %middle.block120 ]
  br label %.lr.ph.i

.preheader121.i:                                  ; preds = %.lr.ph.i, %middle.block120, %bb.f
  br i1 %i.if, label %.lr.ph124.preheader.i, label %._crit_edge.i31

.lr.ph124.preheader.i:                            ; preds = %.preheader121.i
  %invariant.gep157.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ic ; 2 uses
  br i1 %min.iters.check89, label %.lr.ph124.i.preheader, label %vector.body94

vector.body94:                                    ; preds = %.lr.ph124.preheader.i, %vector.body94
  %index95 = phi i64 [ %index.next101, %vector.body94 ], [ 0, %.lr.ph124.preheader.i ] ; 3 uses
  %i.jm = add nuw i64 %i.ic, %index95             ; 4 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.jm
  %wide.load96.a = load <8 x float>, ptr %i.jn, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load96.a, splat (float 2.000000e+00)
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %index95
  %wide.load97.a = load <8 x float>, ptr %i.jp, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %i.jo, %wide.load97.a
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %i.jm
  %wide.load98.a = load <8 x float>, ptr %i.jr, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %i.jq, %wide.load98.a
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %i.js, splat (float 6.250000e-02) ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.jm ; 2 uses
  %wide.load99.a = load <8 x float>, ptr %i.ju, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load99.a, %i.jt ; 2 uses
  store <8 x float> %i.jt, ptr %i.ju, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.jx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jw, zeroinitializer
  %i.jy = select reassoc nsz arcp contract afn <8 x i1> %i.jx, <8 x float> %i.jw, <8 x float> zeroinitializer
  %i.jz = fadd reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jz, zeroinitializer
  %i.kb = select reassoc nsz arcp contract afn <8 x i1> %i.ka, <8 x float> %i.jz, <8 x float> zeroinitializer
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jm ; 2 uses
  %wide.load100 = load <8 x float>, ptr %i.kc, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %wide.load100
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, %i.jy
  store <8 x float> %i.ke, ptr %i.kc, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %index.next101 = add nuw i64 %index95, 8        ; 2 uses
  %i.kf = icmp eq i64 %index.next101, %n.vec91
  br i1 %i.kf, label %middle.block102, label %vector.body94, !llvm.loop !91

middle.block102:                                  ; preds = %vector.body94
  br i1 %cmp.n103, label %._crit_edge.i31, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %.lr.ph124.preheader.i, %middle.block102
  %indvars.iv139.i.ph = phi i64 [ %i.ic, %.lr.ph124.preheader.i ], [ %i.ik, %middle.block102 ]
  br label %.lr.ph124.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i ], [ %indvars.iv.i32.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i32
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, 2.000000e+00
  %i.kj = sub nuw nsw i64 %i.ic, %indvars.iv.i32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kj
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.km = fadd reassoc nsz arcp contract afn float %i.ki, %i.kl
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i32
  %i.kn = load float, ptr %gep.i, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.ko = fadd reassoc nsz arcp contract afn float %i.km, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, 6.250000e-02 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i32 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.ks = fsub reassoc nsz arcp contract afn float %i.kr, %i.kp ; 2 uses
  store float %i.kp, ptr %i.kq, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.kt = fsub reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ogt float %i.kt, 0.000000e+00
  %i.kv = select reassoc nsz arcp contract afn i1 %i.ku, float %i.kt, float 0.000000e+00
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.kx = fcmp reassoc nsz arcp contract afn olt float %i.kw, 0.000000e+00
  %i.ky = select reassoc nsz arcp contract afn i1 %i.kx, float %i.kw, float 0.000000e+00
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i32 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.lb = fadd reassoc nsz arcp contract afn float %i.ky, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kv
  store float %i.lc, ptr %i.kz, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i
  br i1 %exitcond.not.i34, label %.preheader121.i, label %.lr.ph.i, !llvm.loop !92

._crit_edge.i31:                                  ; preds = %.lr.ph124.i, %middle.block102, %.preheader121.i
  br i1 %i.ih, label %.lr.ph127.i.preheader, label %._crit_edge128.i

.lr.ph127.i.preheader:                            ; preds = %._crit_edge.i31
  br i1 %min.iters.check74, label %.lr.ph127.i.preheader240, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph127.i.preheader, %vector.body77
  %index78 = phi i64 [ %index.next84, %vector.body77 ], [ 0, %.lr.ph127.i.preheader ] ; 2 uses
  %i.ld = add nuw i64 %i.ig, %index78             ; 5 uses
  %i.le = add i64 %i.ic, %i.ld
  %i.lf = sub i64 %.neg35, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -28
  %wide.load79.a = load <8 x float>, ptr %i.lh, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %reverse = shufflevector <8 x float> %wide.load79.a, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.li = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ld
  %wide.load80.a = load <8 x float>, ptr %i.li, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load80.a, splat (float 2.000000e+00)
  %i.lk = sub nsw i64 %i.ld, %i.ic
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.lk
  %wide.load81.a = load <8 x float>, ptr %i.ll, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.lm = fadd reassoc nsz arcp contract afn <8 x float> %i.lj, %wide.load81.a
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %i.lm, %reverse
  %i.lo = fmul reassoc nsz arcp contract afn <8 x float> %i.ln, splat (float 6.250000e-02) ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ld ; 2 uses
  %wide.load82.a = load <8 x float>, ptr %i.lp, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.lq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load82.a, %i.lo ; 2 uses
  store <8 x float> %i.lo, ptr %i.lp, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.lr = fsub reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lr, zeroinitializer
  %i.lt = select reassoc nsz arcp contract afn <8 x i1> %i.ls, <8 x float> %i.lr, <8 x float> zeroinitializer
  %i.lu = fadd reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.lv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lu, zeroinitializer
  %i.lw = select reassoc nsz arcp contract afn <8 x i1> %i.lv, <8 x float> %i.lu, <8 x float> zeroinitializer
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ld ; 2 uses
  %wide.load83 = load <8 x float>, ptr %i.lx, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.ly = fadd reassoc nsz arcp contract afn <8 x float> %i.lw, %wide.load83
  %i.lz = fadd reassoc nsz arcp contract afn <8 x float> %i.ly, %i.lt
  store <8 x float> %i.lz, ptr %i.lx, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.ma = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.ma, label %middle.block85, label %vector.body77, !llvm.loop !93

middle.block85:                                   ; preds = %vector.body77
  br i1 %cmp.n86, label %._crit_edge128.i, label %.lr.ph127.i.preheader240

.lr.ph127.i.preheader240:                         ; preds = %.lr.ph127.i.preheader, %middle.block85
  %indvars.iv142.i.ph = phi i64 [ %i.ig, %.lr.ph127.i.preheader ], [ %i.im, %middle.block85 ]
  br label %.lr.ph127.i

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.preheader, %.lr.ph124.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.lr.ph124.i ], [ %indvars.iv139.i.ph, %.lr.ph124.i.preheader ] ; 6 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv139.i
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 2.000000e+00
  %i.me = sub nuw nsw i64 %indvars.iv139.i, %i.ic
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.me
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.mh = fadd reassoc nsz arcp contract afn float %i.md, %i.mg
  %gep158.i = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %indvars.iv139.i
  %i.mi = load float, ptr %gep158.i, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mh, %i.mi
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, 6.250000e-02 ; 2 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv139.i ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mm, %i.mk ; 2 uses
  store float %i.mk, ptr %i.ml, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.mo = fsub reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mo, 0.000000e+00
  %i.mq = select reassoc nsz arcp contract afn i1 %i.mp, float %i.mo, float 0.000000e+00
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.ms = fcmp reassoc nsz arcp contract afn olt float %i.mr, 0.000000e+00
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mr, float 0.000000e+00
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv139.i ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mt, %i.mv
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %i.mq
  store float %i.mx, ptr %i.mu, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next140.i, %i.ie
  br i1 %exitcond.not, label %._crit_edge.i31, label %.lr.ph124.i, !llvm.loop !94

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %middle.block85, %._crit_edge.i31
  br i1 %brmerge.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge128.i
  br i1 %min.iters.check, label %.lr.ph130.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %wide.load = load <8 x float>, ptr %i.my, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %wide.load61.a = load <8 x float>, ptr %i.mz, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %wide.load62.a = load <8 x float>, ptr %i.na, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %wide.load63.a = load <8 x float>, ptr %i.nb, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96 ; 2 uses
  %wide.load64.a = load <8 x float>, ptr %i.nc, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %wide.load65.a = load <8 x float>, ptr %i.nd, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %wide.load66.a = load <8 x float>, ptr %i.ne, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %wide.load67 = load <8 x float>, ptr %i.nf, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.ng = fadd reassoc nsz arcp contract afn <8 x float> %wide.load64.a, %wide.load
  %i.nh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load65.a, %wide.load61.a
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %wide.load66.a, %wide.load62.a
  %i.nj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load67, %wide.load63.a
  store <8 x float> %i.ng, ptr %i.nc, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  store <8 x float> %i.nh, ptr %i.nd, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  store <8 x float> %i.ni, ptr %i.ne, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  store <8 x float> %i.nj, ptr %i.nf, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nk = icmp eq i64 %index.next, %n.vec
  br i1 %i.nk, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph130.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index69
  %wide.load70.a = load <4 x float>, ptr %i.nl, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index69 ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.nm, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %wide.load71, %wide.load70.a
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.no = icmp eq i64 %index.next72, %n.vec68
  br i1 %i.no, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n73, label %.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv145.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ]
  br label %.lr.ph130.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader240, %.lr.ph127.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph127.i ], [ %indvars.iv142.i.ph, %.lr.ph127.i.preheader240 ] ; 6 uses
  %i.np = add i64 %i.ic, %indvars.iv142.i
  %i.nq = sub i64 %.neg35, %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv142.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, 2.000000e+00
  %i.nw = sub nsw i64 %indvars.iv142.i, %i.ic
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !26, !alias.scope !102, !noalias !103
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nv, %i.ny
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.ns
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, 6.250000e-02 ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv142.i ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.oe = fsub reassoc nsz arcp contract afn float %i.od, %i.ob ; 2 uses
  store float %i.ob, ptr %i.oc, align 4, !tbaa !26, !alias.scope !104, !noalias !105
  %i.of = fsub reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ogt float %i.of, 0.000000e+00
  %i.oh = select reassoc nsz arcp contract afn i1 %i.og, float %i.of, float 0.000000e+00
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn olt float %i.oi, 0.000000e+00
  %i.ok = select reassoc nsz arcp contract afn i1 %i.oj, float %i.oi, float 0.000000e+00
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv142.i ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !26, !alias.scope !106, !noalias !107
  %i.on = fadd reassoc nsz arcp contract afn float %i.ok, %i.om
end_hunk_0
