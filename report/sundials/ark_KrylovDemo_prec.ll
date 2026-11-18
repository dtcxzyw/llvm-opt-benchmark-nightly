Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@f:bb.a
  %i.bn = insertelement <2 x ptr> %i.bm, ptr %scevgep195, i64 1
  %i.bo = insertelement <2 x ptr> %i.ak, ptr %scevgep195, i64 0
  %i.bp = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bq = icmp ult <2 x ptr> %i.au, %i.bn
  %i.br = icmp ult <2 x ptr> %i.bp, %i.bo
  %i.bs = and <2 x i1> %i.br, %i.bq
  %i.bt = bitcast <2 x i1> %i.bs to i2
  %.not = icmp eq i2 %i.bt, 0
  br label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.split ], [ %indvars.iv.next93, %._crit_edge ] ; 7 uses
  %i.bu = trunc i64 %indvars.iv92 to i32
  %i.bv = mul i64 %indvars.iv92, %i.s             ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add i32 %i.bh, %i.bw                    ; 2 uses
  %i.by = trunc i64 %i.bv to i32
  %i.bz = add i32 %i.bi, %i.by                    ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fmul double %i.k, %i.cb
  %i.cd = mul nuw nsw i64 %indvars.iv92, %i.v
  %i.ce = add nsw i64 %i.cd, %i.bc                ; 5 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ce ; 8 uses
  br i1 %i.q, label %.preheader.preheader.i, label %WebRates.exit

.preheader.preheader.i:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cg, i8 0, i64 %i.t, i1 false), !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next49.i, %._crit_edge.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv48.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv48.i ; 3 uses
  br i1 %i.al, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cj = load double, ptr %gep.i, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double %i.cl)
  store double %i.cm, ptr %i.ck, align 8, !tbaa !22
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.co = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cq)
  store double %i.cr, ptr %i.cp, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.cs = load double, ptr %i.ch, align 8, !tbaa !22
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.ct = load double, ptr %gep.i.epil, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %i.s
  br i1 %exitcond52.not.i, label %._crit_edge41.split.i, label %.preheader.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.bb, double 1.000000e+00) ; 4 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check198, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph44.i.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %._crit_edge41.split.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index210 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load211 = load <2 x double>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !72
  %wide.load212 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22, !alias.scope !72
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index210 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load213 = load <2 x double>, ptr %i.da, align 8, !tbaa !22, !alias.scope !73
  %wide.load214 = load <2 x double>, ptr %i.db, align 8, !tbaa !22, !alias.scope !73
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index210 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %wide.load216 = load <2 x double>, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat, <2 x double> %wide.load215)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat, <2 x double> %wide.load216)
  %i.dg = fmul <2 x double> %wide.load211, %i.de
  %i.dh = fmul <2 x double> %wide.load212, %i.df
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %index.next217 = add nuw i64 %index210, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.di, label %middle.block218, label %vector.body209, !llvm.loop !59

middle.block218:                                  ; preds = %vector.body209
  br i1 %cmp.n219, label %WebRates.exit, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %._crit_edge41.split.i, %middle.block218
  %indvars.iv53.i.ph = phi i64 [ %n.vec208, %middle.block218 ], [ 0, %._crit_edge41.split.i ] ; 6 uses
  br i1 %lcmp.mod223.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i.ph
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i.ph
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv53.i.ph ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.cx, double %i.do)
  %i.dq = fmul double %i.dk, %i.dp
  store double %i.dq, ptr %i.dn, align 8, !tbaa !22
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph44.i.prol.loopexit

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph44.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph44.i.prol ]
  %i.dr = icmp eq i64 %indvars.iv53.i.ph, %i.am
  br i1 %i.dr, label %WebRates.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph44.i ], [ %indvars.iv53.i.unr, %.lr.ph44.i.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv53.i ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.cx, double %i.dx)
  %i.dz = fmul double %i.dt, %i.dy
  store double %i.dz, ptr %i.dw, align 8, !tbaa !22
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next54.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next54.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next54.i ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.cx, double %i.ef)
  %i.eh = fmul double %i.eb, %i.eg
  store double %i.eh, ptr %i.ee, align 8, !tbaa !22
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %i.s
  br i1 %exitcond57.not.i.1, label %WebRates.exit, label %.lr.ph44.i, !llvm.loop !60

WebRates.exit:                                    ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %middle.block218, %bb.b
  %i.ei = icmp eq i64 %indvars.iv92, 5
  %i.ej = select i1 %i.ei, i32 %i.r, i32 %i.e     ; 4 uses
  %i.ek = icmp eq i64 %indvars.iv92, 0
  %i.el = select i1 %i.ek, i32 %i.e, i32 %i.r     ; 4 uses
  %i.em = trunc nsw i64 %i.ce to i32              ; 6 uses
  %i.en = add i32 %i.em, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %WebRates.exit
  %i.eo = add i32 %i.em, %i.ao
  %i.ep = icmp slt i32 %i.eo, %i.em
  %i.eq = add i32 %i.bx, %i.ao
  %i.er = icmp slt i32 %i.eq, %i.bx
  %i.es = or i1 %i.er, %i.ap
  %i.et = add i32 %i.bz, %i.ao
  %i.eu = icmp slt i32 %i.et, %i.bz
  %i.ev = add i32 %i.el, %i.em                    ; 2 uses
  %i.ew = add i32 %i.ev, %i.ao
  %i.ex = icmp slt i32 %i.ew, %i.ev
  %i.ey = add nsw i32 %i.ej, %i.em                ; 2 uses
  %i.ez = add i32 %i.ey, %i.ao
  %i.fa = icmp slt i32 %i.ez, %i.ey
  %i.fb = or i1 %i.ep, %i.es
  %i.fc = or i1 %i.eu, %i.fb
  %i.fd = or i1 %i.ex, %i.fc
  %i.fe = or i1 %i.fa, %i.fd
  br i1 %i.fe, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ff = shl nsw i64 %i.ce, 3                    ; 6 uses
  %i.fg = getelementptr i8, ptr %i.f, i64 %i.ff
  %i.fh = getelementptr i8, ptr %scevgep148, i64 %i.ff
  %i.fi = getelementptr i8, ptr %i.b, i64 %i.ff   ; 7 uses
  %i.fj = getelementptr i8, ptr %scevgep147, i64 %i.ff ; 7 uses
  %bound0 = icmp ult ptr %i.fg, %i.fj
  %bound1 = icmp ult ptr %i.fi, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound0149 = icmp ult ptr %i.g, %i.fj
  %bound1150 = icmp ult ptr %i.fi, %scevgep146
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx = or i1 %found.conflict, %found.conflict151
  %4 = sext i32 %i.ej to i64
  %5 = add nsw i64 %i.ce, %4
  %6 = shl nsw i64 %5, 3                          ; 2 uses
  %7 = getelementptr i8, ptr %i.a, i64 %6
  %8 = getelementptr i8, ptr %scevgep, i64 %6
  %bound0152 = icmp ult ptr %i.fi, %8
  %bound1153 = icmp ult ptr %7, %i.fj
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx, %found.conflict154
  %i.fk = add i32 %i.el, %i.em
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.a, i64 %i.fm
  %i.fo = getelementptr i8, ptr %scevgep, i64 %i.fm
  %bound0.a = icmp ult ptr %i.fi, %i.fo
  %bound1.a = icmp ult ptr %i.fn, %i.fj
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict.a
  %9 = mul i32 %i.e, %i.bu                        ; 2 uses
  %10 = add i32 %i.bk, %9
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3                        ; 2 uses
  %13 = getelementptr i8, ptr %i.a, i64 %12
  %14 = getelementptr i8, ptr %scevgep, i64 %12
  %bound0156 = icmp ult ptr %i.fi, %14
  %bound1157 = icmp ult ptr %13, %i.fj
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159.a = or i1 %conflict.rdx159, %found.conflict158
  %15 = add i32 %i.bj, %9
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3                        ; 2 uses
  %18 = getelementptr i8, ptr %i.a, i64 %17
  %19 = getelementptr i8, ptr %scevgep, i64 %17
  %bound0164 = icmp ult ptr %i.fi, %19
  %bound1165 = icmp ult ptr %18, %i.fj
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx159.a, %found.conflict166
  %20 = getelementptr i8, ptr %i.a, i64 %i.ff
  %21 = getelementptr i8, ptr %scevgep, i64 %i.ff
  %bound0168 = icmp ult ptr %i.fi, %21
  %bound1169 = icmp ult ptr %20, %i.fj
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  br i1 %conflict.rdx171, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.fp = trunc i64 %index to i32
  %i.fq = or disjoint i32 %i.fp, 1
  %i.fr = add i32 %i.en, %i.fq                    ; 5 uses
  %i.fs = sext i32 %i.fr to i64                   ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fs
  %wide.load = load <2 x double>, ptr %i.ft, align 8, !tbaa !22, !alias.scope !76 ; 4 uses
  %i.fu = add i32 %i.fr, %i.bg
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fv
  %wide.load172 = load <2 x double>, ptr %i.fw, align 8, !tbaa !22, !alias.scope !77
  %i.fx = fsub <2 x double> %wide.load, %wide.load172
  %i.fy = add nsw i32 %i.fr, %i.be
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fz
  %wide.load173 = load <2 x double>, ptr %i.ga, align 8, !tbaa !22, !alias.scope !78
  %i.gb = fsub <2 x double> %wide.load173, %wide.load
  %i.gc = add i32 %i.fr, %i.el
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gd
  %wide.load174 = load <2 x double>, ptr %i.ge, align 8, !tbaa !22, !alias.scope !79
  %i.gf = fsub <2 x double> %wide.load, %wide.load174
  %i.gg = add nsw i32 %i.fr, %i.ej
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gh
  %wide.load175 = load <2 x double>, ptr %i.gi, align 8, !tbaa !22, !alias.scope !80
  %i.gj = fsub <2 x double> %wide.load175, %wide.load
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %index
  %wide.load176 = load <2 x double>, ptr %i.gk, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gl = fsub <2 x double> %i.gb, %i.fx
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %index
  %wide.load177 = load <2 x double>, ptr %i.gm, align 8, !tbaa !22, !alias.scope !81, !noalias !82
  %i.gn = fsub <2 x double> %i.gj, %i.gf
  %i.go = fmul <2 x double> %wide.load177, %i.gn
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load176, <2 x double> %i.gl, <2 x double> %i.go)
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fs
  %wide.load178 = load <2 x double>, ptr %i.gq, align 8, !tbaa !22, !alias.scope !83, !noalias !82
  %i.gr = fadd <2 x double> %wide.load178, %i.gp
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fs
  store <2 x double> %i.gr, ptr %i.gs, align 8, !tbaa !22, !alias.scope !82, !noalias !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %WebRates.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %WebRates.exit ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  %i.gv = add i32 %i.en, %i.gu                    ; 5 uses
  %i.gw = sext i32 %i.gv to i64                   ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !22 ; 4 uses
  %i.gz = add i32 %i.gv, %i.bg
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !22
  %i.hd = fsub double %i.gy, %i.hc
  %i.he = add nsw i32 %i.gv, %i.be
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !22
  %i.hi = fsub double %i.hh, %i.gy
  %i.hj = add i32 %i.gv, %i.el
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hk
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !22
  %i.hn = fsub double %i.gy, %i.hm
  %i.ho = add nsw i32 %i.gv, %i.ej
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !22
  %i.hs = fsub double %i.hr, %i.gy
  %i.ht = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !22
  %i.hw = fsub double %i.hi, %i.hd
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ht
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !22
  %i.hz = fsub double %i.hs, %i.hn
  %i.ia = fmul double %i.hy, %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.hw, double %i.ia)
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gw
  %i.id = load double, ptr %i.ic, align 8, !tbaa !22
  %i.ie = fadd double %i.id, %i.ib
  %i.if = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gw
  store double %i.ie, ptr %i.if, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 6
  br i1 %exitcond95.not, label %.split86, label %bb.b

.split86:                                         ; preds = %._crit_edge
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 6
  br i1 %exitcond99.not, label %.split90.us.split, label %.split

.split90.us.split:                                ; preds = %.split86, %bb.a
  ret i32 0
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetNonlinConvCoef(ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetGSType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetEpsLin(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = tail call i32 @ARKodeGetErrWeights(ptr noundef %i.c, ptr noundef %i.f) #11 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %i.g) #12 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @N_VGetArrayPointer(ptr noundef %i.f) #11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 688
  %i.r = load double, ptr %i.q, align 8, !tbaa !101 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !103  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 696 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2424
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ac) #11 ; 24 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = tail call double @N_VWrmsNorm(ptr noundef %2, ptr noundef %i.f) #11
  %i.ag = tail call double @llvm.fabs.f64(double %5)
  %i.ah = fmul double %i.ag, 1.000000e+03
  %i.ai = fmul double %i.ah, f0x3CB0000000000000
  %i.aj = fmul double %i.ai, 2.160000e+02
  %i.ak = fmul double %i.aj, %i.af                ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  %spec.store.select = select i1 %i.al, double 1.000000e+00, double %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.x, 0
  br i1 %i.am, label %.lr.ph129, label %.preheader

.lr.ph129:                                        ; preds = %bb.b
  %i.an = icmp slt i32 %i.v, 1
  %i.ao = icmp slt i32 %i.p, 1
  %i.ap = fneg double %5                          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 672
  %i.ar = getelementptr i8, ptr %6, i64 192       ; 2 uses
  %i.as = getelementptr i8, ptr %6, i64 480       ; 5 uses
  %brmerge = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %brmerge, label %.preheader, label %.lr.ph129.split.split

.lr.ph129.split.split:                            ; preds = %.lr.ph129
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !24 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, 0
end_hunk_0
