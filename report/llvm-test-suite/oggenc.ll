Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ve_amp:bb.a
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp sgt i32 %i.dh, 0
  br i1 %i.dj, label %.lr.ph198, label %.lr.ph206.preheader

.lr.ph198:                                        ; preds = %.preheader
  %i.dk = load i32, ptr %i.df, align 8
  %i.dl = sext i32 %i.dk to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.g, i64 %i.dl ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 5 uses
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.do = icmp ult i32 %i.dh, 4
  br i1 %i.do, label %.epil.preheader, label %.lr.ph198.new

.lr.ph198.new:                                    ; preds = %.lr.ph198
  %unroll_iter = and i64 %i.di, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph198.new
  %.0152197 = phi float [ 0.000000e+00, %.lr.ph198.new ], [ %i.el, %bb.e ]
  %.2157196 = phi i64 [ 0, %.lr.ph198.new ], [ %i.em, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph198.new ], [ %niter.next.3, %bb.e ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2157196
  %i.dp = load float, ptr %gep, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.2157196
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %.0152197, %i.ds
  %i.du = or disjoint i64 %.2157196, 1            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.du
  %i.dv = load float, ptr %gep.1, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.du
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = fadd float %i.dt, %i.dy
  %i.ea = or disjoint i64 %.2157196, 2            ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ea
  %i.eb = load float, ptr %gep.2, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ea
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = fmul float %i.eb, %i.ed
  %i.ef = fadd float %i.dz, %i.ee
  %i.eg = or disjoint i64 %.2157196, 3            ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eg
  %i.eh = load float, ptr %gep.3, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fmul float %i.eh, %i.ej
  %i.el = fadd float %i.ef, %i.ek                 ; 3 uses
  %i.em = add nuw nsw i64 %.2157196, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph206.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !635

.lr.ph206.preheader.loopexit.unr-lcssa:           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph206.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph206.preheader.loopexit.unr-lcssa, %.lr.ph198
  %.0152197.epil.init = phi float [ 0.000000e+00, %.lr.ph198 ], [ %i.el, %.lr.ph206.preheader.loopexit.unr-lcssa ]
  %.2157196.epil.init = phi i64 [ 0, %.lr.ph198 ], [ %i.em, %.lr.ph206.preheader.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0152197.epil = phi float [ %.0152197.epil.init, %.epil.preheader ], [ %i.er, %bb.f ]
  %.2157196.epil = phi i64 [ %.2157196.epil.init, %.epil.preheader ], [ %i.es, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2157196.epil
  %i.en = load float, ptr %gep.epil, align 4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.2157196.epil
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = fmul float %i.en, %i.ep
  %i.er = fadd float %.0152197.epil, %i.eq        ; 2 uses
  %i.es = add nuw nsw i64 %.2157196.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph206.preheader, label %bb.f, !llvm.loop !636

.lr.ph206.preheader:                              ; preds = %.lr.ph206.preheader.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0152.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.el, %.lr.ph206.preheader.loopexit.unr-lcssa ], [ %i.er, %bb.f ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.eu = load float, ptr %i.et, align 8
  %i.ev = fmul float %.0152.lcssa, %i.eu          ; 5 uses
  %i.ew = getelementptr inbounds nuw [144 x i8], ptr %4, i64 %.0154211 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 68 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4            ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 1
  %spec.select178.v = select i1 %i.ez, i32 16, i32 -1
  %spec.select178 = add nsw i32 %spec.select178.v, %i.ey ; 2 uses
  %i.fa = sext i32 %spec.select178 to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4          ; 4 uses
  %i.fd = fcmp olt float %i.ev, %i.fc
  %i.fe = select i1 %i.fd, float %i.fc, float %i.ev
  %i.ff = fcmp ogt float %i.ev, %i.fc
  %i.fg = select i1 %i.ff, float %i.fc, float %i.ev
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %.0204 = phi float [ %i.fo, %.lr.ph206 ], [ 9.999900e+04, %.lr.ph206.preheader ] ; 2 uses
  %.0150203 = phi float [ %i.fm, %.lr.ph206 ], [ -9.999900e+04, %.lr.ph206.preheader ] ; 2 uses
  %.1202 = phi i32 [ %spec.select179, %.lr.ph206 ], [ %spec.select178, %.lr.ph206.preheader ] ; 2 uses
  %.3201 = phi i64 [ %i.fp, %.lr.ph206 ], [ 0, %.lr.ph206.preheader ]
  %i.fh = icmp slt i32 %.1202, 1
  %spec.select179.v = select i1 %i.fh, i32 16, i32 -1
  %spec.select179 = add nsw i32 %spec.select179.v, %.1202 ; 2 uses
  %i.fi = sext i32 %spec.select179 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4          ; 4 uses
  %i.fl = fcmp olt float %.0150203, %i.fk
  %i.fm = select i1 %i.fl, float %i.fk, float %.0150203 ; 2 uses
  %i.fn = fcmp ogt float %.0204, %i.fk
  %i.fo = select i1 %i.fn, float %i.fk, float %.0204 ; 2 uses
  %i.fp = add nuw nsw i64 %.3201, 1               ; 2 uses
  %exitcond215.not = icmp eq i64 %i.fp, %i.k
  br i1 %exitcond215.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !637

._crit_edge207:                                   ; preds = %.lr.ph206
  %i.fq = fsub float %i.fg, %i.fo
  %i.fr = fsub float %i.fe, %i.fm
  %i.fs = sext i32 %i.ey to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fs
  store float %i.ev, ptr %i.ft, align 4
  %i.fu = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.fv = add nsw i32 %i.fu, 1
  %i.fw = icmp sgt i32 %i.fu, 15
  %spec.select180 = select i1 %i.fw, i32 0, i32 %i.fv
  store i32 %spec.select180, ptr %i.ex, align 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0154211
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = fadd float %.0153, %i.fy
  %i.ga = fcmp ogt float %i.fr, %i.fz
  %i.gb = or i32 %.0158210, 5
  %.1159 = select i1 %i.ga, i32 %i.gb, i32 %.0158210 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0154211
  %i.gd = load float, ptr %i.gc, align 4
  %i.ge = fsub float %i.gd, %.0153
  %i.gf = fcmp olt float %i.fq, %i.ge
  %i.gg = or i32 %.1159, 2
  %.2160 = select i1 %i.gf, i32 %i.gg, i32 %.1159 ; 2 uses
  %i.gh = add nuw nsw i64 %.0154211, 1            ; 2 uses
  %exitcond216.not = icmp eq i64 %i.gh, 7
  br i1 %exitcond216.not, label %bb.g, label %.preheader, !llvm.loop !638

bb.g:                                             ; preds = %._crit_edge207
  ret i32 %.2160
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vorbis_apply_window(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.a = select i1 %.not, i32 0, i32 %3
  %i.b = select i1 %.not, i32 0, i32 %5
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sdiv i64 %i.q, 4                         ; 5 uses
  %.neg = sdiv i64 %i.s, -4                       ; 2 uses
  %i.w = add nsw i64 %.neg, %i.v                  ; 4 uses
  %i.x = sdiv i64 %i.s, 2                         ; 2 uses
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %i.z = sdiv i64 %i.q, 2                         ; 3 uses
  %i.aa = add nsw i64 %i.z, %i.v
  %.neg56 = sdiv i64 %i.u, -4                     ; 3 uses
  %i.ab = add i64 %i.aa, %.neg56                  ; 3 uses
  %i.ac = sdiv i64 %i.u, 2                        ; 6 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader57

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.af = shl nuw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.af, i1 false)
  br label %.preheader57

.preheader57:                                     ; preds = %.lr.ph.preheader, %bb.a
  %.050.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.preheader ] ; 7 uses
  %i.ag = icmp sgt i64 %i.y, %.050.lcssa
  br i1 %i.ag, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader57
  %i.ah = add nsw i64 %i.v, %.neg
  %i.ai = add i64 %i.ah, %i.x
  %i.aj = sub i64 %i.ai, %.050.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph61.preheader
  %i.ak = shl i64 %.050.lcssa, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = shl i64 %i.y, 2                         ; 2 uses
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.al
  %i.am = sub i64 %i.al, %i.ak
  %scevgep91 = getelementptr i8, ptr %i.h, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %i.h, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph61.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 4 uses
  %i.an = add i64 %.050.lcssa, %n.vec
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !alias.scope !651
  %wide.load92 = load <4 x float>, ptr %i.aq, align 4, !alias.scope !651
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load93 = load <4 x float>, ptr %i.ar, align 4, !alias.scope !652, !noalias !651
  %wide.load94 = load <4 x float>, ptr %i.as, align 4, !alias.scope !652, !noalias !651
  %i.at = fmul <4 x float> %wide.load, %wide.load93
  %i.au = fmul <4 x float> %wide.load92, %wide.load94
  store <4 x float> %i.at, ptr %i.ar, align 4, !alias.scope !652, !noalias !651
  store <4 x float> %i.au, ptr %i.as, align 4, !alias.scope !652, !noalias !651
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph61.preheader134

.lr.ph61.preheader134:                            ; preds = %vector.memcheck, %.lr.ph61.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %.lr.ph61.preheader ], [ %i.an, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph61.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader134, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph61 ], [ %indvars.iv72.ph, %.lr.ph61.preheader134 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph61 ], [ %indvars.iv.ph, %.lr.ph61.preheader134 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fmul float %i.ax, %i.az
  store float %i.ba, ptr %i.ay, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bb = icmp sgt i64 %i.y, %indvars.iv.next73
  br i1 %i.bb, label %.lr.ph61, label %._crit_edge, !llvm.loop !643

._crit_edge:                                      ; preds = %.lr.ph61, %middle.block, %.preheader57
  %sext = shl i64 %i.ab, 32                       ; 2 uses
  %i.bc = ashr exact i64 %sext, 32                ; 9 uses
  %i.bd = icmp sgt i64 %i.ad, %i.bc
  br i1 %i.bd, label %.lr.ph65.preheader, label %.preheader

.lr.ph65.preheader:                               ; preds = %._crit_edge
  %i.be = trunc i64 %i.ac to i32                  ; 5 uses
  %i.bf = add nsw i64 %i.z, %i.v
  %i.bg = add i64 %i.bf, %.neg56
  %i.bh = add i64 %i.bg, %i.ac
  %i.bi = sub i64 %i.bh, %i.bc                    ; 3 uses
  %min.iters.check105 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check105, label %.lr.ph65.preheader133, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader
  %i.bj = add nsw i64 %i.z, %i.v
  %i.bk = add i64 %i.bj, %.neg56
  %i.bl = add i64 %i.bk, %i.ac
  %i.bm = xor i64 %i.bc, -1
  %i.bn = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = add i32 %i.be, -1                       ; 2 uses
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = sub i32 %i.bo, %i.bp
  %i.br = icmp sgt i32 %i.bq, %i.bo
  %i.bs = icmp ugt i64 %i.bn, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph65.preheader133, label %vector.memcheck96

vector.memcheck96:                                ; preds = %vector.scevcheck
  %i.bu = ashr exact i64 %sext, 30
  %scevgep97 = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = shl i64 %i.ad, 2                        ; 2 uses
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.bv
  %i.bw = shl i64 %i.ac, 32
  %sext130 = add i64 %i.bw, -4294967296           ; 2 uses
  %i.bx = ashr exact i64 %sext130, 32
  %i.by = add nsw i64 %i.bx, %i.bc
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, 4
  %i.cb = sub i64 %i.ca, %i.bv
  %scevgep99 = getelementptr i8, ptr %i.n, i64 %i.cb
  %i.cc = ashr exact i64 %sext130, 30
  %i.cd = getelementptr i8, ptr %i.n, i64 %i.cc
  %scevgep100 = getelementptr i8, ptr %i.cd, i64 4
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph65.preheader133, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck96
  %n.vec107 = and i64 %i.bi, -8                   ; 4 uses
  %i.ce = add i64 %i.bc, %n.vec107                ; 2 uses
  %i.cf = trunc i64 %n.vec107 to i32
  %i.cg = sub i32 %i.be, %i.cf
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.bc
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body108 ] ; 3 uses
  %i.ci = xor i64 %index109, -1
  %i.cj = add i64 %i.ac, %i.ci
  %sext131 = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext131, 30
  %i.cl = getelementptr inbounds i8, ptr %i.n, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -28
  %wide.load110 = load <4 x float>, ptr %i.cm, align 4, !alias.scope !653
  %wide.load111 = load <4 x float>, ptr %i.cn, align 4, !alias.scope !653
  %reverse = shufflevector <4 x float> %wide.load110, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse112 = shufflevector <4 x float> %wide.load111, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.co = getelementptr [4 x i8], ptr %i.ch, i64 %index109 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load113 = load <4 x float>, ptr %i.co, align 4, !alias.scope !654, !noalias !653
  %wide.load114 = load <4 x float>, ptr %i.cp, align 4, !alias.scope !654, !noalias !653
  %i.cq = fmul <4 x float> %reverse, %wide.load113
  %i.cr = fmul <4 x float> %reverse112, %wide.load114
  store <4 x float> %i.cq, ptr %i.co, align 4, !alias.scope !654, !noalias !653
  store <4 x float> %i.cr, ptr %i.cp, align 4, !alias.scope !654, !noalias !653
  %index.next115 = add nuw i64 %index109, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next115, %n.vec107
  br i1 %i.cs, label %middle.block116, label %vector.body108, !llvm.loop !647

middle.block116:                                  ; preds = %vector.body108
  %cmp.n117 = icmp eq i64 %i.bi, %n.vec107
  br i1 %cmp.n117, label %.preheader, label %.lr.ph65.preheader133

.lr.ph65.preheader133:                            ; preds = %vector.memcheck96, %vector.scevcheck, %.lr.ph65.preheader, %middle.block116
  %indvars.iv77.ph = phi i64 [ %i.bc, %vector.memcheck96 ], [ %i.bc, %vector.scevcheck ], [ %i.bc, %.lr.ph65.preheader ], [ %i.ce, %middle.block116 ]
  %.1.in63.ph = phi i32 [ %i.be, %vector.memcheck96 ], [ %i.be, %vector.scevcheck ], [ %i.be, %.lr.ph65.preheader ], [ %i.cg, %middle.block116 ]
  br label %.lr.ph65

.preheader:                                       ; preds = %.lr.ph65, %middle.block116, %._crit_edge
  %.2.lcssa.in = phi i64 [ %i.ab, %._crit_edge ], [ %i.ce, %middle.block116 ], [ %indvars.iv.next78, %.lr.ph65 ]
  %sext89 = shl i64 %.2.lcssa.in, 32
  %i.ct = ashr exact i64 %sext89, 32              ; 5 uses
  %i.cu = icmp sgt i64 %i.q, %i.ct
  br i1 %i.cu, label %.lr.ph68.preheader, label %._crit_edge69

.lr.ph68.preheader:                               ; preds = %.preheader
  %i.cv = sub i64 %i.q, %i.ct                     ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check121, label %.lr.ph68.preheader132, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph68.preheader
  %n.vec123 = and i64 %i.cv, -8                   ; 3 uses
  %i.cw = add i64 %i.ct, %n.vec123
  %i.cx = getelementptr [4 x i8], ptr %0, i64 %i.ct
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next126, %vector.body124 ] ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %index125 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> zeroinitializer, ptr %i.cy, align 4
  store <4 x float> zeroinitializer, ptr %i.cz, align 4
  %index.next126 = add nuw i64 %index125, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.da, label %middle.block127, label %vector.body124, !llvm.loop !648

middle.block127:                                  ; preds = %vector.body124
  %cmp.n128 = icmp eq i64 %i.cv, %n.vec123
  br i1 %cmp.n128, label %._crit_edge69, label %.lr.ph68.preheader132

.lr.ph68.preheader132:                            ; preds = %.lr.ph68.preheader, %middle.block127
  %indvars.iv80.ph = phi i64 [ %i.ct, %.lr.ph68.preheader ], [ %i.cw, %middle.block127 ]
  br label %.lr.ph68

.lr.ph65:                                         ; preds = %.lr.ph65.preheader133, %.lr.ph65
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph65 ], [ %indvars.iv77.ph, %.lr.ph65.preheader133 ] ; 2 uses
  %.1.in63 = phi i32 [ %.1, %.lr.ph65 ], [ %.1.in63.ph, %.lr.ph65.preheader133 ]
  %.1 = add i32 %.1.in63, -1                      ; 2 uses
  %i.db = sext i32 %.1 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv77 ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fmul float %i.dd, %i.df
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 3 uses
  %i.dh = icmp sgt i64 %i.ad, %indvars.iv.next78
  br i1 %i.dh, label %.lr.ph65, label %.preheader, !llvm.loop !649

.lr.ph68:                                         ; preds = %.lr.ph68.preheader132, %.lr.ph68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph68 ], [ %indvars.iv80.ph, %.lr.ph68.preheader132 ] ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  store float 0.000000e+00, ptr %i.di, align 4
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dj = icmp sgt i64 %i.q, %indvars.iv.next81
  br i1 %i.dj, label %.lr.ph68, label %._crit_edge69, !llvm.loop !650

._crit_edge69:                                    ; preds = %.lr.ph68, %middle.block127, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @floor0_unpack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #69 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8              ; 11 uses
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = load i64, ptr %1, align 8                ; 3 uses
  %i.h = add nsw i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 14 uses
  %.not.i = icmp slt i64 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nsw i64 %i.g, 3
  %i.l = sext i32 %i.f to i64
  %i.m = add nsw i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.j, 3
  %i.o = icmp sgt i64 %i.m, %i.n
  br i1 %i.o, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %oggpack_read.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.s, %i.e                      ; 2 uses
  %i.u = icmp sgt i32 %i.e, 0
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 8, %i.e
  %i.z = shl nuw nsw i32 %i.x, %i.y
  %i.aa = or i32 %i.z, %i.t                       ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.e, 8
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 16, %i.e
  %i.ag = shl nuw nsw i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, %i.aa                     ; 2 uses
  %i.ai = icmp samesign ugt i32 %i.e, 16
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = sub nsw i32 24, %i.e
end_hunk_0
begin_hunk_1_@mapping0_forward:bb.a
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.bb ; 2 uses
  %i.be = add nsw i64 %i.bb, %i.ap                ; 4 uses
  store i64 %i.be, ptr %i.s, align 8
  %i.bf = load i32, ptr %i.m, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3                    ; 5 uses
  %i.bi = add nsw i64 %i.bh, %i.be
  %i.bj = icmp sgt i64 %i.bi, %i.ba
  br i1 %i.bj, label %bb.h, label %_vorbis_block_alloc.exit375

bb.h:                                             ; preds = %_vorbis_block_alloc.exit373
  %.not.i374 = icmp eq ptr %i.bc, null
  br i1 %.not.i374, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add nsw i64 %i.bm, %i.be
  store i64 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr %i.bc, ptr %i.bk, align 8
  store ptr %i.bk, ptr %i.bo, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %i.bh, ptr %i.v, align 8
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bh) #69 ; 2 uses
  store ptr %i.br, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit375

_vorbis_block_alloc.exit375:                      ; preds = %_vorbis_block_alloc.exit373, %bb.j
  %i.bs = phi i64 [ %i.bh, %bb.j ], [ %i.ba, %_vorbis_block_alloc.exit373 ]
  %i.bt = phi i64 [ 0, %bb.j ], [ %i.be, %_vorbis_block_alloc.exit373 ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.j ], [ %i.bc, %_vorbis_block_alloc.exit373 ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = add nsw i64 %i.bt, %i.bh                ; 2 uses
  store i64 %i.bw, ptr %i.s, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8          ; 2 uses
  %i.bz = load i32, ptr %i.m, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = alloca i8, i64 %i.cb, align 16          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 808
  %sext = shl i64 %i.cg, 32
  %i.cj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8            ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = sext i32 %i.ce to i64
  %i.cp = getelementptr inbounds [88 x i8], ptr %i.cn, i64 %i.co
  %.not = icmp eq i64 %i.cg, 0
  %i.cq = select i1 %.not, i64 0, i64 2
  %i.cr = getelementptr inbounds nuw [88 x i8], ptr %i.cp, i64 %i.cq ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.ch, ptr %i.cs, align 4
  %i.ct = load i32, ptr %i.m, align 4
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph462, label %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge

_vorbis_block_alloc.exit375.._crit_edge463_crit_edge: ; preds = %_vorbis_block_alloc.exit375
  %.pre540 = sdiv i32 %i.l, 2                     ; 2 uses
  %.pre542 = sext i32 %.pre540 to i64             ; 2 uses
  %.pre544 = shl nsw i64 %.pre542, 2
  %.pre546 = add nsw i64 %.pre544, 4
  %.pre548 = and i64 %.pre546, -8
  br label %._crit_edge463

.lr.ph462:                                        ; preds = %_vorbis_block_alloc.exit375
  %i.cv = sitofp i32 %i.l to float
  %i.cw = fdiv float 4.000000e+00, %i.cv
  %i.cx = sdiv i32 %i.l, 2                        ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = add nsw i64 %i.cz, 4
  %i.db = and i64 %i.da, -8                       ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.de = tail call float @llvm.fabs.f32(float %i.cw)
  %i.df = bitcast float %i.de to i32
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x3540A8C1
  %i.di = fadd float %i.dh, f0xC43F115B           ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.do = add nsw i32 %i.l, -1
  %i.dp = icmp sgt i32 %i.l, 2
  %i.dq = zext nneg i32 %i.do to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph462, %._crit_edge
  %indvars.iv497 = phi i64 [ 0, %.lr.ph462 ], [ %indvars.iv.next498, %._crit_edge ] ; 4 uses
  %.0340461 = phi float [ %i.by, %.lr.ph462 ], [ %.1341, %._crit_edge ] ; 2 uses
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv497
  %i.dt = load ptr, ptr %i.ds, align 8            ; 16 uses
  %i.du = load i64, ptr %i.s, align 8             ; 3 uses
  %i.dv = add nsw i64 %i.du, %i.db
  %i.dw = load i64, ptr %i.v, align 8
  %i.dx = icmp sgt i64 %i.dv, %i.dw
  %i.dy = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.dx, label %bb.l, label %_vorbis_block_alloc.exit377

bb.l:                                             ; preds = %bb.k
  %.not.i376 = icmp eq ptr %i.dy, null
  br i1 %.not.i376, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ea = load i64, ptr %i.dc, align 8
  %i.eb = add nsw i64 %i.ea, %i.du
  store i64 %i.eb, ptr %i.dc, align 8
  %i.ec = load ptr, ptr %i.dd, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.ed, align 8
  store ptr %i.dy, ptr %i.dz, align 8
  store ptr %i.dz, ptr %i.dd, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.db, ptr %i.v, align 8
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.db) #69 ; 2 uses
  store ptr %i.ee, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit377

_vorbis_block_alloc.exit377:                      ; preds = %bb.k, %bb.n
  %i.ef = phi i64 [ 0, %bb.n ], [ %i.du, %bb.k ]  ; 2 uses
  %i.eg = phi ptr [ %i.ee, %bb.n ], [ %i.dy, %bb.k ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.ef
  %i.ei = add nsw i64 %i.ef, %i.db
  store i64 %i.ei, ptr %i.s, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv497 ; 2 uses
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load i64, ptr %i.dk, align 8
  %i.el = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.em = load i64, ptr %i.dl, align 8
  %i.en = and i64 %i.el, 4294967295
  %.not.i378 = icmp eq i64 %i.en, 0               ; 2 uses
  %i.eo = shl i64 %i.ek, 32
  %i.ep = ashr exact i64 %i.eo, 32
  %i.eq = select i1 %.not.i378, i64 0, i64 %i.ep  ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8            ; 4 uses
  %i.ew = shl i64 %i.em, 32
  %i.ex = ashr exact i64 %i.ew, 32
  %i.ey = select i1 %.not.i378, i64 0, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8            ; 4 uses
  %sext449 = shl i64 %i.el, 32
  %i.fe = ashr exact i64 %sext449, 29
  %i.ff = getelementptr inbounds i8, ptr %i.f, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8            ; 4 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.eq
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ey
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = sdiv i64 %i.fg, 4                       ; 5 uses
  %.neg.i = sdiv i64 %i.fi, -4                    ; 2 uses
  %i.fm = add nsw i64 %.neg.i, %i.fl              ; 4 uses
  %i.fn = sdiv i64 %i.fi, 2                       ; 2 uses
  %i.fo = add i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = sdiv i64 %i.fg, 2                       ; 3 uses
  %i.fq = add nsw i64 %i.fp, %i.fl
  %.neg56.i = sdiv i64 %i.fk, -4                  ; 3 uses
  %i.fr = add i64 %i.fq, %.neg56.i                ; 2 uses
  %i.fs = sdiv i64 %i.fk, 2                       ; 6 uses
  %i.ft = add i64 %i.fr, %i.fs                    ; 4 uses
  %i.fu = icmp sgt i64 %i.fm, 0
  br i1 %i.fu, label %.lr.ph.preheader.i, label %.preheader57.i

.lr.ph.preheader.i:                               ; preds = %_vorbis_block_alloc.exit377
  %i.fv = shl nuw i64 %i.fm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.fv, i1 false)
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.lr.ph.preheader.i, %_vorbis_block_alloc.exit377
  %.050.lcssa.i = phi i64 [ 0, %_vorbis_block_alloc.exit377 ], [ %i.fm, %.lr.ph.preheader.i ] ; 7 uses
  %i.fw = icmp sgt i64 %i.fo, %.050.lcssa.i
  br i1 %i.fw, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader57.i
  %i.fx = add nsw i64 %i.fl, %.neg.i
  %i.fy = add i64 %i.fx, %i.fn
  %i.fz = sub i64 %i.fy, %.050.lcssa.i            ; 3 uses
  %min.iters.check619 = icmp ult i64 %i.fz, 8
  br i1 %min.iters.check619, label %.lr.ph61.i.preheader752, label %vector.memcheck611

vector.memcheck611:                               ; preds = %.lr.ph61.i.preheader
  %i.ga = shl i64 %.050.lcssa.i, 2                ; 2 uses
  %scevgep612 = getelementptr i8, ptr %i.dt, i64 %i.ga
  %i.gb = shl i64 %i.fo, 2                        ; 2 uses
  %scevgep613 = getelementptr i8, ptr %i.dt, i64 %i.gb
  %i.gc = sub i64 %i.gb, %i.ga
  %scevgep614 = getelementptr i8, ptr %i.ev, i64 %i.gc
  %bound0615 = icmp ult ptr %scevgep612, %scevgep614
  %bound1616 = icmp ult ptr %i.ev, %scevgep613
  %found.conflict617 = and i1 %bound0615, %bound1616
  br i1 %found.conflict617, label %.lr.ph61.i.preheader752, label %vector.ph620

vector.ph620:                                     ; preds = %vector.memcheck611
  %n.vec621 = and i64 %i.fz, -8                   ; 4 uses
  %i.gd = add i64 %.050.lcssa.i, %n.vec621
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.050.lcssa.i
  br label %vector.body622

vector.body622:                                   ; preds = %vector.body622, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next628, %vector.body622 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index623 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load624 = load <4 x float>, ptr %i.gf, align 4, !alias.scope !896
  %wide.load625 = load <4 x float>, ptr %i.gg, align 4, !alias.scope !896
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index623 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load626 = load <4 x float>, ptr %i.gh, align 4, !alias.scope !897, !noalias !896
  %wide.load627 = load <4 x float>, ptr %i.gi, align 4, !alias.scope !897, !noalias !896
  %i.gj = fmul <4 x float> %wide.load624, %wide.load626
  %i.gk = fmul <4 x float> %wide.load625, %wide.load627
  store <4 x float> %i.gj, ptr %i.gh, align 4, !alias.scope !897, !noalias !896
  store <4 x float> %i.gk, ptr %i.gi, align 4, !alias.scope !897, !noalias !896
  %index.next628 = add nuw i64 %index623, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next628, %n.vec621
  br i1 %i.gl, label %middle.block629, label %vector.body622, !llvm.loop !857

middle.block629:                                  ; preds = %vector.body622
  %cmp.n630 = icmp eq i64 %i.fz, %n.vec621
  br i1 %cmp.n630, label %._crit_edge.i, label %.lr.ph61.i.preheader752

.lr.ph61.i.preheader752:                          ; preds = %vector.memcheck611, %.lr.ph61.i.preheader, %middle.block629
  %indvars.iv72.i.ph = phi i64 [ %.050.lcssa.i, %vector.memcheck611 ], [ %.050.lcssa.i, %.lr.ph61.i.preheader ], [ %i.gd, %middle.block629 ]
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck611 ], [ 0, %.lr.ph61.i.preheader ], [ %n.vec621, %middle.block629 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader752, %.lr.ph61.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph61.i ], [ %indvars.iv72.i.ph, %.lr.ph61.i.preheader752 ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph61.i ], [ %indvars.iv.i.ph, %.lr.ph61.i.preheader752 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.gn = load float, ptr %i.gm, align 4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv72.i ; 2 uses
  %i.gp = load float, ptr %i.go, align 4
  %i.gq = fmul float %i.gn, %i.gp
  store float %i.gq, ptr %i.go, align 4
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gr = icmp sgt i64 %i.fo, %indvars.iv.next73.i
  br i1 %i.gr, label %.lr.ph61.i, label %._crit_edge.i, !llvm.loop !858

._crit_edge.i:                                    ; preds = %.lr.ph61.i, %middle.block629, %.preheader57.i
  %sext.i = shl i64 %i.fr, 32                     ; 2 uses
  %i.gs = ashr exact i64 %sext.i, 32              ; 10 uses
  %i.gt = icmp sgt i64 %i.ft, %i.gs
  br i1 %i.gt, label %.lr.ph65.preheader.i, label %.preheader.i

.lr.ph65.preheader.i:                             ; preds = %._crit_edge.i
  %i.gu = trunc i64 %i.fs to i32                  ; 5 uses
  %i.gv = add nsw i64 %i.fp, %i.fl
  %i.gw = add i64 %i.gv, %.neg56.i
  %i.gx = add i64 %i.gw, %i.fs
  %i.gy = sub i64 %i.gx, %i.gs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gy, 20
  br i1 %min.iters.check, label %.lr.ph65.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader.i
  %i.gz = add nsw i64 %i.fp, -1
  %i.ha = add i64 %i.gz, %i.fl
  %i.hb = add i64 %i.ha, %.neg56.i
  %i.hc = add i64 %i.hb, %i.fs
  %i.hd = sub i64 %i.hc, %i.gs                    ; 2 uses
  %i.he = add i32 %i.gu, -1                       ; 2 uses
  %i.hf = trunc i64 %i.hd to i32
  %i.hg = sub i32 %i.he, %i.hf
  %i.hh = icmp sgt i32 %i.hg, %i.he
  %i.hi = icmp ugt i64 %i.hd, 4294967295
  %i.hj = or i1 %i.hh, %i.hi
  br i1 %i.hj, label %.lr.ph65.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hk = ashr exact i64 %sext.i, 30
  %scevgep600 = getelementptr i8, ptr %i.dt, i64 %i.hk
  %i.hl = shl i64 %i.ft, 2
  %scevgep601 = getelementptr i8, ptr %i.dt, i64 %i.hl
  %scevgep602 = getelementptr i8, ptr %i.fd, i64 4
  %i.hm = shl i64 %i.fs, 32
  %sext741 = add i64 %i.hm, -4294967296           ; 2 uses
  %i.hn = ashr exact i64 %sext741, 32
  %i.ho = add nsw i64 %i.hn, %i.gs
  %i.hp = sub i64 %i.ho, %i.ft
  %i.hq = shl i64 %i.hp, 2
  %scevgep603 = getelementptr i8, ptr %scevgep602, i64 %i.hq
  %scevgep604 = getelementptr i8, ptr %i.fd, i64 4
  %i.hr = ashr exact i64 %sext741, 30
  %scevgep605 = getelementptr i8, ptr %scevgep604, i64 %i.hr
  %bound0 = icmp ult ptr %scevgep600, %scevgep605
  %bound1 = icmp ult ptr %scevgep603, %scevgep601
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph65.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gy, -8                      ; 4 uses
  %i.hs = add i64 %i.gs, %n.vec                   ; 2 uses
  %i.ht = trunc i64 %n.vec to i32
  %i.hu = sub i32 %i.gu, %i.ht
  %i.hv = getelementptr [4 x i8], ptr %i.dt, i64 %i.gs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = xor i64 %index, -1
  %i.hx = add i64 %i.fs, %i.hw
  %sext742 = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext742, 30
  %i.hz = getelementptr inbounds i8, ptr %i.fd, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -12
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -28
  %wide.load = load <4 x float>, ptr %i.ia, align 4, !alias.scope !898
  %wide.load606 = load <4 x float>, ptr %i.ib, align 4, !alias.scope !898
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse607 = shufflevector <4 x float> %wide.load606, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ic = getelementptr [4 x i8], ptr %i.hv, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load608 = load <4 x float>, ptr %i.ic, align 4, !alias.scope !899, !noalias !898
  %wide.load609 = load <4 x float>, ptr %i.id, align 4, !alias.scope !899, !noalias !898
  %i.ie = fmul <4 x float> %reverse, %wide.load608
  %i.if = fmul <4 x float> %reverse607, %wide.load609
  store <4 x float> %i.ie, ptr %i.ic, align 4, !alias.scope !899, !noalias !898
  store <4 x float> %i.if, ptr %i.id, align 4, !alias.scope !899, !noalias !898
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gy, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph65.preheader.i, %middle.block
  %indvars.iv77.i.ph = phi i64 [ %i.gs, %vector.memcheck ], [ %i.gs, %vector.scevcheck ], [ %i.gs, %.lr.ph65.preheader.i ], [ %i.hs, %middle.block ]
  %.1.in63.i.ph = phi i32 [ %i.gu, %vector.memcheck ], [ %i.gu, %vector.scevcheck ], [ %i.gu, %.lr.ph65.preheader.i ], [ %i.hu, %middle.block ]
  br label %.lr.ph65.i

.preheader.i.loopexit:                            ; preds = %.lr.ph65.i, %middle.block
  %indvars.iv.next78.i.lcssa = phi i64 [ %i.hs, %middle.block ], [ %indvars.iv.next78.i, %.lr.ph65.i ]
  %.pre534 = shl i64 %indvars.iv.next78.i.lcssa, 32
  %.pre535 = ashr exact i64 %.pre534, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre535, %.preheader.i.loopexit ], [ %i.gs, %._crit_edge.i ] ; 3 uses
  %i.ih = icmp sgt i64 %i.fg, %.pre-phi
  br i1 %i.ih, label %.lr.ph68.i.preheader, label %_vorbis_apply_window.exit

.lr.ph68.i.preheader:                             ; preds = %.preheader.i
  %i.ii = shl nsw i64 %.pre-phi, 2
  %scevgep = getelementptr i8, ptr %i.dt, i64 %i.ii
  %i.ij = sub i64 %i.fg, %.pre-phi
  %i.ik = shl i64 %i.ij, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ik, i1 false)
  br label %_vorbis_apply_window.exit

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %.lr.ph65.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph65.i ], [ %indvars.iv77.i.ph, %.lr.ph65.i.preheader ] ; 2 uses
  %.1.in63.i = phi i32 [ %.1.i, %.lr.ph65.i ], [ %.1.in63.i.ph, %.lr.ph65.i.preheader ]
  %.1.i = add i32 %.1.in63.i, -1                  ; 2 uses
  %i.il = sext i32 %.1.i to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.il
  %i.in = load float, ptr %i.im, align 4
  %i.io = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv77.i ; 2 uses
  %i.ip = load float, ptr %i.io, align 4
  %i.iq = fmul float %i.in, %i.ip
  store float %i.iq, ptr %i.io, align 4
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.ir = icmp sgt i64 %i.ft, %indvars.iv.next78.i
  br i1 %i.ir, label %.lr.ph65.i, label %.preheader.i.loopexit, !llvm.loop !863

_vorbis_apply_window.exit:                        ; preds = %.lr.ph68.i.preheader, %.preheader.i
  %i.is = load i64, ptr %i.cf, align 8
  %i.it = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.ej, align 8
  tail call void @mdct_forward(ptr noundef %i.iv, ptr noundef %i.dt, ptr noundef %i.iw)
  %i.ix = load i64, ptr %i.cf, align 8
  %i.iy = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.ix
  tail call void @drft_forward(ptr noundef nonnull %i.iy, ptr noundef %i.dt)
  %.val370 = load i32, ptr %i.dt, align 4
  %i.iz = and i32 %.val370, 2147483647
  %i.ja = uitofp nneg i32 %i.iz to float
  %i.jb = fmul nnan float %i.ja, f0x3540A8C1
  %i.jc = fadd float %i.jb, f0xC43F115B
  %i.jd = fadd float %i.di, %i.jc                 ; 3 uses
  store float %i.jd, ptr %i.dt, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv497
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_vorbis_apply_window.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_vorbis_apply_window.exit ] ; 3 uses
  %spec.store.select459 = phi float [ %spec.store.select, %.lr.ph ], [ %i.jd, %_vorbis_apply_window.exit ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv
  %i.jg = add nuw nsw i64 %indvars.iv, 1
  %i.jh = load <2 x float>, ptr %i.jf, align 4    ; 2 uses
  %i.ji = fmul <2 x float> %i.jh, %i.jh
  %i.jj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ji)
  %i.jk = tail call float @llvm.fabs.f32(float %i.jj)
  %i.jl = bitcast float %i.jk to i32
  %i.jm = uitofp nneg i32 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x3540A8C1
  %i.jo = fadd nnan float %i.jn, f0xC43F115B
  %i.jp = fmul nnan float %i.jo, 5.000000e-01
  %i.jq = fadd float %i.di, %i.jp                 ; 3 uses
  %i.jr = lshr i64 %i.jg, 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.jr
  store float %i.jq, ptr %i.js, align 4
  %i.jt = fcmp ogt float %i.jq, %spec.store.select459
  %spec.store.select = select i1 %i.jt, float %i.jq, float %spec.store.select459 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ju = icmp samesign ult i64 %indvars.iv.next, %i.dq
  br i1 %i.ju, label %.lr.ph, label %._crit_edge, !llvm.loop !864

._crit_edge:                                      ; preds = %.lr.ph, %_vorbis_apply_window.exit
  %i.jv = phi float [ %i.jd, %_vorbis_apply_window.exit ], [ %spec.store.select, %.lr.ph ] ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  %spec.store.select366 = select i1 %i.jw, float 0.000000e+00, float %i.jv ; 3 uses
  store float %spec.store.select366, ptr %i.je, align 4
  %i.jx = fcmp ogt float %spec.store.select366, %.0340461
  %.1341 = select i1 %i.jx, float %spec.store.select366, float %.0340461 ; 2 uses
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.jy = load i32, ptr %i.m, align 4
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp slt i64 %indvars.iv.next498, %i.jz
  br i1 %i.ka, label %bb.k, label %._crit_edge463.loopexit, !llvm.loop !865

._crit_edge463.loopexit:                          ; preds = %._crit_edge
  %.pre = load i64, ptr %i.s, align 8
  %.pre530 = load i64, ptr %i.v, align 8
  %.pre531 = load ptr, ptr %i.y, align 8
  br label %._crit_edge463

._crit_edge463:                                   ; preds = %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge, %._crit_edge463.loopexit
  %.pre-phi549 = phi i64 [ %.pre548, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %i.db, %._crit_edge463.loopexit ] ; 13 uses
  %.pre-phi543 = phi i64 [ %.pre542, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %i.cy, %._crit_edge463.loopexit ] ; 5 uses
  %.pre-phi541 = phi i32 [ %.pre540, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %i.cx, %._crit_edge463.loopexit ] ; 2 uses
  %i.kb = phi ptr [ %i.bu, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %.pre531, %._crit_edge463.loopexit ] ; 3 uses
  %i.kc = phi i64 [ %i.bs, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %.pre530, %._crit_edge463.loopexit ] ; 2 uses
  %i.kd = phi i64 [ %i.bw, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %.pre, %._crit_edge463.loopexit ] ; 3 uses
  %.0340.lcssa = phi float [ %i.by, %_vorbis_block_alloc.exit375.._crit_edge463_crit_edge ], [ %.1341, %._crit_edge463.loopexit ] ; 2 uses
  %i.ke = add nsw i64 %i.kd, %.pre-phi549
  %i.kf = icmp sgt i64 %i.ke, %i.kc
  br i1 %i.kf, label %bb.o, label %_vorbis_block_alloc.exit381

bb.o:                                             ; preds = %._crit_edge463
  %.not.i380 = icmp eq ptr %i.kb, null
  br i1 %.not.i380, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = add nsw i64 %i.ki, %i.kd
  store i64 %i.kj, ptr %i.kh, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kl, ptr %i.km, align 8
  store ptr %i.kb, ptr %i.kg, align 8
  store ptr %i.kg, ptr %i.kk, align 8
  br label %bb.q

end_hunk_1
