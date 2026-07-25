inline.NumInlined: 461
inline.NumDeleted: 172
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5Hydro4initEv:bb.a
  %diff.check155 = icmp ugt i64 %i.cr, -16
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  br label %.lr.ph97.split

.lr.ph97.split.us.preheader:                      ; preds = %.lr.ph97
  %broadcast.splatinsert231 = insertelement <2 x double> poison, double %i.bw, i64 0
  %broadcast.splat232 = shufflevector <2 x double> %broadcast.splatinsert231, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = sub i64 %i.ak, %i.av
  %diff.check185 = icmp ugt i64 %i.cs, -16
  %i.ct = sub i64 %i.an, %i.ak
  %diff.check186 = icmp ugt i64 %i.ct, -16
  %conflict.rdx187 = or i1 %diff.check185, %diff.check186
  %i.cu = sub i64 %i.p, %i.ak
  %diff.check188 = icmp ugt i64 %i.cu, -16
  %conflict.rdx189 = or i1 %conflict.rdx187, %diff.check188
  %i.cv = sub i64 %i.ak, %i.as
  %diff.check190 = icmp ugt i64 %i.cv, -16
  %conflict.rdx191 = or i1 %conflict.rdx189, %diff.check190
  %i.cw = sub i64 %i.an, %i.av
  %diff.check192 = icmp ugt i64 %i.cw, -16
  %conflict.rdx193 = or i1 %conflict.rdx191, %diff.check192
  %i.cx = sub i64 %i.p, %i.av
  %diff.check194 = icmp ugt i64 %i.cx, -16
  %conflict.rdx195 = or i1 %conflict.rdx193, %diff.check194
  %i.cy = sub i64 %i.as, %i.av
  %diff.check196 = icmp ugt i64 %i.cy, -16
  %conflict.rdx197 = or i1 %conflict.rdx195, %diff.check196
  br label %.lr.ph97.split.us

.lr.ph97.split.us:                                ; preds = %.lr.ph97.split.us.preheader, %._crit_edge.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge.us ], [ 0, %.lr.ph97.split.us.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv120
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4  ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv120
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4  ; 3 uses
  %i.dd = sext i32 %i.da to i64                   ; 10 uses
  %i.de = sext i32 %i.dc to i64                   ; 9 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.de
  %.not6.i.i.i.us = icmp eq i32 %i.da, %i.dc
  br i1 %.not6.i.i.i.us, label %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us, label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph97.split.us
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.dd ; 3 uses
  %i.dh = sub nsw i64 %i.de, %i.dd
  %i.di = add nsw i64 %i.dh, 2305843009213693951
  %i.dj = and i64 %i.di, 2305843009213693951      ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check227 = icmp samesign ult i64 %i.dj, 3
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.us.preheader244, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph.i.i.i.us.preheader
  %n.vec230 = and i64 %i.dk, 4611686018427387900  ; 3 uses
  %i.dl = shl i64 %n.vec230, 3
  %i.dm = getelementptr i8, ptr %i.dg, i64 %i.dl
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph228
  %index234 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body233 ] ; 2 uses
  %i.dn = shl i64 %index234, 3
  %next.gep235 = getelementptr i8, ptr %i.dg, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x double> %broadcast.splat232, ptr %next.gep235, align 8, !tbaa !50
  store <2 x double> %broadcast.splat232, ptr %i.do, align 8, !tbaa !50
  %index.next236 = add nuw i64 %index234, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.dp, label %middle.block237, label %vector.body233, !llvm.loop !98

middle.block237:                                  ; preds = %vector.body233
  %cmp.n238 = icmp eq i64 %i.dk, %n.vec230
  br i1 %cmp.n238, label %.lr.ph.i.i.i77.us.preheader, label %.lr.ph.i.i.i.us.preheader244

.lr.ph.i.i.i.us.preheader244:                     ; preds = %.lr.ph.i.i.i.us.preheader, %middle.block237
  %.07.i.i.i.us.ph = phi ptr [ %i.dg, %.lr.ph.i.i.i.us.preheader ], [ %i.dm, %middle.block237 ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader244, %.lr.ph.i.i.i.us
  %.07.i.i.i.us = phi ptr [ %i.dq, %.lr.ph.i.i.i.us ], [ %.07.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader244 ] ; 2 uses
  store double %i.bw, ptr %.07.i.i.i.us, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.dq, %i.df
  br i1 %.not.i.i.i.us, label %.lr.ph.i.i.i77.us.preheader, label %.lr.ph.i.i.i.us, !llvm.loop !101

.lr.ph.i.i.i77.us.preheader:                      ; preds = %.lr.ph.i.i.i.us, %middle.block237
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.de
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dd ; 3 uses
  %i.dt = sub nsw i64 %i.de, %i.dd
  %i.du = add nsw i64 %i.dt, 2305843009213693951
  %i.dv = and i64 %i.du, 2305843009213693951      ; 2 uses
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check213 = icmp samesign ult i64 %i.dv, 3
  br i1 %min.iters.check213, label %.lr.ph.i.i.i77.us.preheader243, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.i.i.i77.us.preheader
  %n.vec216 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec216, 3
  %i.dy = getelementptr i8, ptr %i.ds, i64 %i.dx
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph214
  %index220 = phi i64 [ 0, %vector.ph214 ], [ %index.next222, %vector.body219 ] ; 2 uses
  %i.dz = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.ds, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x double> %broadcast.splat218, ptr %next.gep221, align 8, !tbaa !50
  store <2 x double> %broadcast.splat218, ptr %i.ea, align 8, !tbaa !50
  %index.next222 = add nuw i64 %index220, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.eb, label %middle.block223, label %vector.body219, !llvm.loop !102

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %i.dw, %n.vec216
  br i1 %cmp.n224, label %.lr.ph.i.i.i82.us.preheader, label %.lr.ph.i.i.i77.us.preheader243

.lr.ph.i.i.i77.us.preheader243:                   ; preds = %.lr.ph.i.i.i77.us.preheader, %middle.block223
  %.07.i.i.i78.us.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i77.us.preheader ], [ %i.dy, %middle.block223 ]
  br label %.lr.ph.i.i.i77.us

.lr.ph.i.i.i77.us:                                ; preds = %.lr.ph.i.i.i77.us.preheader243, %.lr.ph.i.i.i77.us
  %.07.i.i.i78.us = phi ptr [ %i.ec, %.lr.ph.i.i.i77.us ], [ %.07.i.i.i78.us.ph, %.lr.ph.i.i.i77.us.preheader243 ] ; 2 uses
  store double %i.by, ptr %.07.i.i.i78.us, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i78.us, i64 8 ; 2 uses
  %.not.i.i.i79.us = icmp eq ptr %i.ec, %i.dr
  br i1 %.not.i.i.i79.us, label %.lr.ph.i.i.i82.us.preheader, label %.lr.ph.i.i.i77.us, !llvm.loop !103

.lr.ph.i.i.i82.us.preheader:                      ; preds = %.lr.ph.i.i.i77.us, %middle.block223
  %i.ed = getelementptr [8 x i8], ptr %i.az, i64 %i.dd
  %i.ee = sub nsw i64 %i.de, %i.dd
  %i.ef = shl nsw i64 %i.ee, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ed, i8 0, i64 %i.ef, i1 false), !tbaa !50
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us

_ZSt4fillIPddEvT_S1_RKT0_.exit85.us:              ; preds = %.lr.ph97.split.us, %.lr.ph.i.i.i82.us.preheader
  %i.eg = icmp slt i32 %i.da, %i.dc
  br i1 %i.eg, label %.lr.ph94.us.preheader, label %._crit_edge.us

.lr.ph94.us.preheader:                            ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us
  %i.eh = sub nsw i64 %i.de, %i.dd                ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.eh, 10
  %brmerge = select i1 %min.iters.check199, i1 true, i1 %conflict.rdx197
  br i1 %brmerge, label %.lr.ph94.us.preheader242, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph94.us.preheader
  %n.vec202 = and i64 %i.eh, -2                   ; 3 uses
  %i.ei = add nsw i64 %n.vec202, %i.dd
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next208, %vector.body203 ] ; 2 uses
  %i.ej = add i64 %index204, %i.dd                ; 5 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ej
  %wide.load205 = load <2 x double>, ptr %i.ek, align 8, !tbaa !50
  %i.el = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ej
  %wide.load206 = load <2 x double>, ptr %i.el, align 8, !tbaa !50
  %i.em = fmul <2 x double> %wide.load205, %wide.load206 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ej
  store <2 x double> %i.em, ptr %i.en, align 8, !tbaa !50
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ej
  %wide.load207 = load <2 x double>, ptr %i.eo, align 8, !tbaa !50
  %i.ep = fmul <2 x double> %i.em, %wide.load207
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ej
  store <2 x double> %i.ep, ptr %i.eq, align 8, !tbaa !50
  %index.next208 = add nuw i64 %index204, 2       ; 2 uses
  %i.er = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.er, label %middle.block209, label %vector.body203, !llvm.loop !104

middle.block209:                                  ; preds = %vector.body203
  %cmp.n210 = icmp eq i64 %i.eh, %n.vec202
  br i1 %cmp.n210, label %._crit_edge.us, label %.lr.ph94.us.preheader242

.lr.ph94.us.preheader242:                         ; preds = %.lr.ph94.us.preheader, %middle.block209
  %indvars.iv115.ph = phi i64 [ %i.ei, %middle.block209 ], [ %i.dd, %.lr.ph94.us.preheader ] ; 9 uses
  %i.es = sub nsw i64 %i.de, %indvars.iv115.ph
  %xtraiter248 = and i64 %i.es, 1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph94.us.prol.loopexit, label %.lr.ph94.us.prol

.lr.ph94.us.prol:                                 ; preds = %.lr.ph94.us.preheader242
  %i.et = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv115.ph
  %i.eu = load double, ptr %i.et, align 8, !tbaa !50
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv115.ph
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !50
  %i.ex = fmul double %i.eu, %i.ew                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv115.ph
  store double %i.ex, ptr %i.ey, align 8, !tbaa !50
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv115.ph
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !50
  %i.fb = fmul double %i.ex, %i.fa
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv115.ph
  store double %i.fb, ptr %i.fc, align 8, !tbaa !50
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, 1
  br label %.lr.ph94.us.prol.loopexit

.lr.ph94.us.prol.loopexit:                        ; preds = %.lr.ph94.us.prol, %.lr.ph94.us.preheader242
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %.lr.ph94.us.preheader242 ], [ %indvars.iv.next116.prol, %.lr.ph94.us.prol ]
  %i.fd = add nsw i64 %i.de, -1
  %i.fe = icmp eq i64 %indvars.iv115.ph, %i.fd
  br i1 %i.fe, label %._crit_edge.us, label %.lr.ph94.us

._crit_edge.us:                                   ; preds = %.lr.ph94.us.prol.loopexit, %.lr.ph94.us, %middle.block209, %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.preheader, label %.lr.ph97.split.us, !llvm.loop !105

.lr.ph94.us:                                      ; preds = %.lr.ph94.us.prol.loopexit, %.lr.ph94.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph94.us ], [ %indvars.iv115.unr, %.lr.ph94.us.prol.loopexit ] ; 7 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv115
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !50
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv115
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !50
  %i.fj = fmul double %i.fg, %i.fi                ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv115
  store double %i.fj, ptr %i.fk, align 8, !tbaa !50
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv115
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !50
  %i.fn = fmul double %i.fj, %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv115
  store double %i.fn, ptr %i.fo, align 8, !tbaa !50
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 5 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next116
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !50
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next116
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !50
  %i.ft = fmul double %i.fq, %i.fs                ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv.next116
  store double %i.ft, ptr %i.fu, align 8, !tbaa !50
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv.next116
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !50
  %i.fx = fmul double %i.ft, %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv.next116
  store double %i.fx, ptr %i.fy, align 8, !tbaa !50
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %i.de
  br i1 %exitcond119.not.1, label %._crit_edge.us, label %.lr.ph94.us, !llvm.loop !106

.preheader:                                       ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  %i.fz = icmp sgt i32 %i.c, 0
  br i1 %i.fz, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !42
  %i.gc = fcmp une double %i.gb, 0.000000e+00
  br i1 %i.gc, label %.lr.ph99.split.preheader, label %.lr.ph99.split.us

.lr.ph99.split.preheader:                         ; preds = %.lr.ph99
  %wide.trip.count133 = zext nneg i32 %i.c to i64
  br label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !56 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !56 ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter250 = and i64 %wide.trip.count128, 1
  %i.gh = icmp eq i32 %i.c, 1
  br i1 %i.gh, label %.epil.preheader, label %.lr.ph99.split.us.new

.lr.ph99.split.us.new:                            ; preds = %.lr.ph99.split.us
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us.1, %.lr.ph99.split.us.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph99.split.us.new ], [ %indvars.iv.next126.1, %_ZN5Hydro13initRadialVelEdii.exit.us.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph99.split.us.new ], [ %niter.next.1, %_ZN5Hydro13initRadialVelEdii.exit.us.1 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv125
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4  ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv125
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us = icmp eq i32 %i.gj, %i.gl
  br i1 %.not5.i.i.i.us, label %_ZN5Hydro13initRadialVelEdii.exit.us, label %.lr.ph.i.i.i86.us.preheader

.lr.ph.i.i.i86.us.preheader:                      ; preds = %bb.b
  %i.gm = sext i32 %i.gl to i64
  %i.gn = sext i32 %i.gj to i64                   ; 2 uses
  %i.go = getelementptr [16 x i8], ptr %i.s, i64 %i.gn
  %i.gp = sub nsw i64 %i.gm, %i.gn
  %i.gq = shl nsw i64 %i.gp, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.go, i8 0, i64 %i.gq, i1 false), !tbaa !50
  br label %_ZN5Hydro13initRadialVelEdii.exit.us

_ZN5Hydro13initRadialVelEdii.exit.us:             ; preds = %.lr.ph.i.i.i86.us.preheader, %bb.b
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next126
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4  ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next126
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us.1 = icmp eq i32 %i.gs, %i.gu
  br i1 %.not5.i.i.i.us.1, label %_ZN5Hydro13initRadialVelEdii.exit.us.1, label %.lr.ph.i.i.i86.us.preheader.1

.lr.ph.i.i.i86.us.preheader.1:                    ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us
  %i.gv = sext i32 %i.gu to i64
  %i.gw = sext i32 %i.gs to i64                   ; 2 uses
  %i.gx = getelementptr [16 x i8], ptr %i.s, i64 %i.gw
  %i.gy = sub nsw i64 %i.gv, %i.gw
  %i.gz = shl nsw i64 %i.gy, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gx, i8 0, i64 %i.gz, i1 false), !tbaa !50
  br label %_ZN5Hydro13initRadialVelEdii.exit.us.1

_ZN5Hydro13initRadialVelEdii.exit.us.1:           ; preds = %.lr.ph.i.i.i86.us.preheader.1, %_ZN5Hydro13initRadialVelEdii.exit.us
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge100.loopexit241.unr-lcssa, label %bb.b, !llvm.loop !107

.lr.ph97.split:                                   ; preds = %.lr.ph97.split.preheader, %._crit_edge
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %._crit_edge ], [ 0, %.lr.ph97.split.preheader ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv110
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4  ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv110
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4  ; 3 uses
  %i.he = sext i32 %i.hb to i64                   ; 11 uses
  %i.hf = sext i32 %i.hd to i64                   ; 10 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.hf
  %.not6.i.i.i = icmp eq i32 %i.hb, %i.hd
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit85, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph97.split
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.he ; 3 uses
  %i.hi = sub nsw i64 %i.hf, %i.he
  %i.hj = add nsw i64 %i.hi, 2305843009213693951
  %i.hk = and i64 %i.hj, 2305843009213693951      ; 2 uses
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check171 = icmp samesign ult i64 %i.hk, 3
  br i1 %min.iters.check171, label %.lr.ph.i.i.i.preheader246, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec174 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hm = shl i64 %n.vec174, 3
  %i.hn = getelementptr i8, ptr %i.hh, i64 %i.hm
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph172
  %index178 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body177 ] ; 2 uses
  %i.ho = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %i.hh, i64 %i.ho ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep179, i64 16
  store <2 x double> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !50
  store <2 x double> %broadcast.splat176, ptr %i.hp, align 8, !tbaa !50
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.hq, label %middle.block181, label %vector.body177, !llvm.loop !108

middle.block181:                                  ; preds = %vector.body177
  %cmp.n182 = icmp eq i64 %i.hl, %n.vec174
  br i1 %cmp.n182, label %.lr.ph.i.i.i77.preheader, label %.lr.ph.i.i.i.preheader246

.lr.ph.i.i.i.preheader246:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block181
  %.07.i.i.i.ph = phi ptr [ %i.hh, %.lr.ph.i.i.i.preheader ], [ %i.hn, %middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader246, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader246 ] ; 2 uses
  store double %i.bw, ptr %.07.i.i.i, align 8, !tbaa !50
  %i.hr = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hr, %i.hg
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i77.preheader, label %.lr.ph.i.i.i, !llvm.loop !109

.lr.ph.i.i.i77.preheader:                         ; preds = %.lr.ph.i.i.i, %middle.block181
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.hf
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.he ; 3 uses
  %i.hu = sub nsw i64 %i.hf, %i.he
  %i.hv = add nsw i64 %i.hu, 2305843009213693951
  %i.hw = and i64 %i.hv, 2305843009213693951      ; 2 uses
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check160 = icmp samesign ult i64 %i.hw, 3
  br i1 %min.iters.check160, label %.lr.ph.i.i.i77.preheader245, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i77.preheader
  %n.vec163 = and i64 %i.hx, 4611686018427387900  ; 3 uses
  %i.hy = shl i64 %n.vec163, 3
  %i.hz = getelementptr i8, ptr %i.ht, i64 %i.hy
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next166, %vector.body164 ] ; 2 uses
  %i.ia = shl i64 %index165, 3
  %next.gep = getelementptr i8, ptr %i.ht, i64 %i.ia ; 2 uses
  %i.ib = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x double> %broadcast.splat, ptr %i.ib, align 8, !tbaa !50
  %index.next166 = add nuw i64 %index165, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.ic, label %middle.block167, label %vector.body164, !llvm.loop !110

middle.block167:                                  ; preds = %vector.body164
  %cmp.n168 = icmp eq i64 %i.hx, %n.vec163
  br i1 %cmp.n168, label %.lr.ph.i.i.i82.preheader, label %.lr.ph.i.i.i77.preheader245

.lr.ph.i.i.i77.preheader245:                      ; preds = %.lr.ph.i.i.i77.preheader, %middle.block167
  %.07.i.i.i78.ph = phi ptr [ %i.ht, %.lr.ph.i.i.i77.preheader ], [ %i.hz, %middle.block167 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader245, %.lr.ph.i.i.i77
  %.07.i.i.i78 = phi ptr [ %i.id, %.lr.ph.i.i.i77 ], [ %.07.i.i.i78.ph, %.lr.ph.i.i.i77.preheader245 ] ; 2 uses
  store double %i.by, ptr %.07.i.i.i78, align 8, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %.07.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.id, %i.hs
  br i1 %.not.i.i.i79, label %.lr.ph.i.i.i82.preheader, label %.lr.ph.i.i.i77, !llvm.loop !111

.lr.ph.i.i.i82.preheader:                         ; preds = %.lr.ph.i.i.i77, %middle.block167
  %i.ie = getelementptr [8 x i8], ptr %i.az, i64 %i.he
  %i.if = sub nsw i64 %i.hf, %i.he
  %i.ig = shl nsw i64 %i.if, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ie, i8 0, i64 %i.ig, i1 false), !tbaa !50
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit85

_ZSt4fillIPddEvT_S1_RKT0_.exit85:                 ; preds = %.lr.ph97.split, %.lr.ph.i.i.i82.preheader
  %i.ih = icmp slt i32 %i.hb, %i.hd
  br i1 %i.ih, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit85, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.he, %_ZSt4fillIPddEvT_S1_RKT0_.exit85 ] ; 4 uses
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !112 ; 2 uses
  %i.ik = load double, ptr %i.ca, align 8, !tbaa !50
  %i.il = fadd double %i.ik, f0xBD719799812DEA11
  %i.im = fcmp ogt double %i.ij, %i.il
  br i1 %i.im, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.in = load double, ptr %i.ce, align 8, !tbaa !50
  %i.io = fadd double %i.in, f0x3D719799812DEA11
  %i.ip = fcmp olt double %i.ij, %i.io
  br i1 %i.ip, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !114 ; 2 uses
  %i.is = load double, ptr %i.cf, align 8, !tbaa !50
  %i.it = fadd double %i.is, f0xBD719799812DEA11
  %i.iu = fcmp ogt double %i.ir, %i.it
  br i1 %i.iu, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.iv = load double, ptr %i.cg, align 8, !tbaa !50
  %i.iw = fadd double %i.iv, f0x3D719799812DEA11
  %i.ix = fcmp olt double %i.ir, %i.iw
  br i1 %i.ix, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv
  store double %i.cj, ptr %i.iy, align 8, !tbaa !50
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv
  store double %i.ck, ptr %i.iz, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hf
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !115

.loopexit:                                        ; preds = %bb.g
  %i.ja = sub nsw i64 %i.hf, %i.he                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ja, 10
  %brmerge253 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx156
  br i1 %brmerge253, label %.lr.ph94.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %n.vec = and i64 %i.ja, -2                      ; 3 uses
  %i.jb = add nsw i64 %n.vec, %i.he
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jc = add i64 %index, %i.he                   ; 5 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.jc
  %wide.load = load <2 x double>, ptr %i.jd, align 8, !tbaa !50
  %i.je = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jc
  %wide.load157 = load <2 x double>, ptr %i.je, align 8, !tbaa !50
  %i.jf = fmul <2 x double> %wide.load, %wide.load157 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.jc
  store <2 x double> %i.jf, ptr %i.jg, align 8, !tbaa !50
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.jc
  %wide.load158 = load <2 x double>, ptr %i.jh, align 8, !tbaa !50
  %i.ji = fmul <2 x double> %i.jf, %wide.load158
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.jc
  store <2 x double> %i.ji, ptr %i.jj, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ja, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.loopexit, %middle.block
  %indvars.iv105.ph = phi i64 [ %i.jb, %middle.block ], [ %i.he, %.loopexit ] ; 9 uses
  %i.jl = sub nsw i64 %i.hf, %indvars.iv105.ph
  %xtraiter = and i64 %i.jl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph94.prol.loopexit, label %.lr.ph94.prol

.lr.ph94.prol:                                    ; preds = %.lr.ph94.preheader
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv105.ph
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !50
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv105.ph
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !50
  %i.jq = fmul double %i.jn, %i.jp                ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv105.ph
  store double %i.jq, ptr %i.jr, align 8, !tbaa !50
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv105.ph
  %i.jt = load double, ptr %i.js, align 8, !tbaa !50
  %i.ju = fmul double %i.jq, %i.jt
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv105.ph
  store double %i.ju, ptr %i.jv, align 8, !tbaa !50
  %indvars.iv.next106.prol = add nsw i64 %indvars.iv105.ph, 1
  br label %.lr.ph94.prol.loopexit

.lr.ph94.prol.loopexit:                           ; preds = %.lr.ph94.prol, %.lr.ph94.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %.lr.ph94.preheader ], [ %indvars.iv.next106.prol, %.lr.ph94.prol ]
  %i.jw = add nsw i64 %i.hf, -1
  %i.jx = icmp eq i64 %indvars.iv105.ph, %i.jw
  br i1 %i.jx, label %._crit_edge, label %.lr.ph94

._crit_edge:                                      ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94, %middle.block, %_ZSt4fillIPddEvT_S1_RKT0_.exit85
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count123
  br i1 %exitcond114.not, label %.preheader, label %.lr.ph97.split, !llvm.loop !105

.lr.ph94:                                         ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.1, %.lr.ph94 ], [ %indvars.iv105.unr, %.lr.ph94.prol.loopexit ] ; 7 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv105
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !50
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv105
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !50
  %i.kc = fmul double %i.jz, %i.kb                ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv105
  store double %i.kc, ptr %i.kd, align 8, !tbaa !50
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv105
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !50
  %i.kg = fmul double %i.kc, %i.kf
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv105
  store double %i.kg, ptr %i.kh, align 8, !tbaa !50
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 5 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next106
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !50
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next106
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !50
  %i.km = fmul double %i.kj, %i.kl                ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv.next106
  store double %i.km, ptr %i.kn, align 8, !tbaa !50
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv.next106
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !50
  %i.kq = fmul double %i.km, %i.kp
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv.next106
  store double %i.kq, ptr %i.kr, align 8, !tbaa !50
  %indvars.iv.next106.1 = add nsw i64 %indvars.iv105, 2 ; 2 uses
  %exitcond109.not.1 = icmp eq i64 %indvars.iv.next106.1, %i.hf
  br i1 %exitcond109.not.1, label %._crit_edge, label %.lr.ph94, !llvm.loop !117

._crit_edge100.loopexit241.unr-lcssa:             ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us.1
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %._crit_edge100, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge100.loopexit241.unr-lcssa, %.lr.ph99.split.us
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph99.split.us ], [ %indvars.iv.next126.1, %._crit_edge100.loopexit241.unr-lcssa ] ; 2 uses
  %lcmp.mod252 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv125.epil.init
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4  ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv125.epil.init
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us.epil = icmp eq i32 %i.kt, %i.kv
  br i1 %.not5.i.i.i.us.epil, label %._crit_edge100, label %.lr.ph.i.i.i86.us.preheader.epil

.lr.ph.i.i.i86.us.preheader.epil:                 ; preds = %.epil.preheader
  %i.kw = sext i32 %i.kv to i64
  %i.kx = sext i32 %i.kt to i64                   ; 2 uses
  %i.ky = getelementptr [16 x i8], ptr %i.s, i64 %i.kx
  %i.kz = sub nsw i64 %i.kw, %i.kx
  %i.la = shl nsw i64 %i.kz, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ky, i8 0, i64 %i.la, i1 false), !tbaa !50
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit241.unr-lcssa, %.lr.ph.i.i.i86.us.preheader.epil, %.epil.preheader, %_ZN5Hydro13initRadialVelEdii.exit, %.preheader
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double f0x547D42AEA2879F2E, ptr %i.lb, align 8, !tbaa !118
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.lc, ptr noundef nonnull align 1 dereferenceable(14) @.str.11, i64 14, i1 false) #21
  ret void

.lr.ph99.split:                                   ; preds = %.lr.ph99.split.preheader, %_ZN5Hydro13initRadialVelEdii.exit
  %indvars.iv130 = phi i64 [ 0, %.lr.ph99.split.preheader ], [ %indvars.iv.next131, %_ZN5Hydro13initRadialVelEdii.exit ] ; 3 uses
  %i.ld = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 512
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !56
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv130
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !4  ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 536
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !56
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv130
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4  ; 4 uses
  %i.lm = load double, ptr %i.ga, align 8, !tbaa !42 ; 2 uses
  %i.ln = fcmp une double %i.lm, 0.000000e+00
  br i1 %i.ln, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph99.split
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ld, i64 240
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !119
  %i.lq = icmp slt i32 %i.lh, %i.ll
  br i1 %i.lq, label %.lr.ph.i, label %_ZN5Hydro13initRadialVelEdii.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.lr = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ls = sext i32 %i.lh to i64
  %wide.trip.count.i = sext i32 %i.ll to i64
  %i.lt = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ls, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %i.lv = getelementptr inbounds [16 x i8], ptr %i.lp, i64 %indvars.iv.i
  %i.lw = load <2 x double>, ptr %i.lv, align 8, !tbaa !50 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.lw, %i.lw
  %i.lx = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ly = extractelement <2 x double> %i.lw, i64 0 ; 2 uses
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.ly, double %i.lx)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.lz) ; 2 uses
  %i.ma = fcmp ogt double %sqrt.i.i, f0x3D719799812DEA11
  br i1 %i.ma, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.mb = fmul <2 x double> %i.lu, %i.lw
  %i.mc = fdiv nnan double 1.000000e+00, %sqrt.i.i
  %i.md = getelementptr inbounds [16 x i8], ptr %i.lr, i64 %indvars.iv.i
  %i.me = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = fmul <2 x double> %i.mb, %i.mf
  store <2 x double> %i.mg, ptr %i.md, align 8, !tbaa !50
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.mh = getelementptr inbounds [16 x i8], ptr %i.lr, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Hydro13initRadialVelEdii.exit, label %bb.i, !llvm.loop !120

bb.m:                                             ; preds = %.lr.ph99.split
  %.not5.i.i.i = icmp eq i32 %i.lh, %i.ll
  br i1 %.not5.i.i.i, label %_ZN5Hydro13initRadialVelEdii.exit, label %.lr.ph.i.i.i86.preheader

.lr.ph.i.i.i86.preheader:                         ; preds = %bb.m
  %i.mi = sext i32 %i.ll to i64
  %i.mj = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.mk = sext i32 %i.lh to i64                   ; 2 uses
  %i.ml = getelementptr [16 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = sub nsw i64 %i.mi, %i.mk
  %i.mn = shl nsw i64 %i.mm, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ml, i8 0, i64 %i.mn, i1 false), !tbaa !50
  br label %_ZN5Hydro13initRadialVelEdii.exit

_ZN5Hydro13initRadialVelEdii.exit:                ; preds = %bb.l, %.lr.ph.i.i.i86.preheader, %bb.m, %bb.h
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge100, label %.lr.ph99.split, !llvm.loop !121
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5HydroD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(408) dereferenceable(408) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3TTSD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3QCSD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIdSaIdEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@_ZN5Hydro16writeEnergyCheckEv:bb.a
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17: ; preds = %bb.i, %bb.j
  %.0.i.i.i16 = phi i8 [ %i.gl, %bb.i ], [ %i.gp, %bb.j ]
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i8 noundef signext %.0.i.i.i16)
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gq) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZN8Parallel9globalSumERd(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #18

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS5Hydro", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !22, i64 112, !22, i64 136, !21, i64 160, !6, i64 168, !27, i64 248, !27, i64 256, !27, i64 264, !27, i64 272, !26, i64 280, !26, i64 288, !26, i64 296, !26, i64 304, !26, i64 312, !26, i64 320, !26, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !26, i64 368, !27, i64 376, !27, i64 384, !27, i64 392, !27, i64 400}
!10 = !{!"p1 _ZTS4Mesh", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS7PolyGas", !11, i64 0}
!13 = !{!"p1 _ZTS3TTS", !11, i64 0}
!14 = !{!"p1 _ZTS3QCS", !11, i64 0}
!15 = !{!"_ZTSSt6vectorIP7HydroBCSaIS1_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIP7HydroBCSaIS1_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p2 _ZTS7HydroBC", !20, i64 0}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"_ZTSSt6vectorIdSaIdEE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 double", !11, i64 0}
!27 = !{!"p1 _ZTS7double2", !11, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !11, i64 0}
!31 = !{!32, !33, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !33, i64 8, !6, i64 16}
!33 = !{!"long", !6, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!9, !21, i64 56}
!36 = !{!32, !30, i64 0}
!37 = !{!9, !21, i64 64}
!38 = !{!9, !21, i64 72}
!39 = !{!9, !21, i64 80}
!40 = !{!9, !21, i64 88}
!41 = !{!9, !21, i64 96}
!42 = !{!9, !21, i64 104}
!43 = !{!25, !26, i64 0}
!44 = !{!25, !26, i64 16}
!45 = !{!26, !26, i64 0}
!46 = !{!9, !12, i64 8}
!47 = !{!9, !13, i64 16}
!48 = !{!9, !14, i64 24}
!49 = !{!25, !26, i64 8}
!50 = !{!21, !21, i64 0}
!51 = !{!18, !19, i64 8}
!52 = !{!18, !19, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS7HydroBC", !11, i64 0}
!55 = !{!18, !19, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !11, i64 0}
!59 = !{!57, !58, i64 16}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!64, !5, i64 504}
!64 = !{!"_ZTS4Mesh", !65, i64 0, !66, i64 8, !67, i64 16, !5, i64 24, !22, i64 32, !68, i64 56, !68, i64 57, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !58, i64 136, !58, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !58, i64 168, !58, i64 176, !58, i64 184, !58, i64 192, !58, i64 200, !58, i64 208, !58, i64 216, !58, i64 224, !58, i64 232, !27, i64 240, !27, i64 248, !27, i64 256, !27, i64 264, !27, i64 272, !27, i64 280, !27, i64 288, !26, i64 296, !26, i64 304, !26, i64 312, !26, i64 320, !26, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !27, i64 368, !26, i64 376, !26, i64 384, !26, i64 392, !5, i64 400, !69, i64 408, !69, i64 432, !69, i64 456, !69, i64 480, !5, i64 504, !69, i64 512, !69, i64 536, !5, i64 560, !69, i64 568, !69, i64 592}
!65 = !{!"p1 _ZTS7GenMesh", !11, i64 0}
!66 = !{!"p1 _ZTS7WriteXY", !11, i64 0}
!67 = !{!"p1 _ZTS10ExportGold", !11, i64 0}
!68 = !{!"bool", !6, i64 0}
!69 = !{!"_ZTSSt6vectorIiSaIiEE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !57, i64 0}
!72 = !{!64, !5, i64 560}
!73 = !{!64, !5, i64 60}
!74 = !{!64, !5, i64 68}
!75 = !{!64, !5, i64 72}
!76 = !{!64, !27, i64 256}
!77 = !{!64, !26, i64 320}
!78 = !{!9, !27, i64 248}
!79 = !{!9, !27, i64 256}
!80 = !{!9, !27, i64 264}
!81 = !{!9, !27, i64 272}
!82 = !{!9, !26, i64 280}
!83 = !{!9, !26, i64 288}
!84 = !{!9, !26, i64 296}
!85 = !{!9, !26, i64 304}
!86 = !{!9, !26, i64 312}
!87 = !{!9, !26, i64 320}
!88 = !{!9, !26, i64 328}
!89 = !{!9, !26, i64 336}
!90 = !{!9, !26, i64 344}
!91 = !{!9, !26, i64 352}
!92 = !{!9, !26, i64 360}
!93 = !{!9, !26, i64 368}
!94 = !{!9, !27, i64 376}
!95 = !{!9, !27, i64 384}
!96 = !{!9, !27, i64 392}
!97 = !{!9, !27, i64 400}
!98 = distinct !{!98, !61, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !61, !100, !99}
!102 = distinct !{!102, !61, !99, !100}
!103 = distinct !{!103, !61, !100, !99}
!104 = distinct !{!104, !61, !99, !100}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61, !99}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61, !99, !100}
!109 = distinct !{!109, !61, !100, !99}
!110 = distinct !{!110, !61, !99, !100}
!111 = distinct !{!111, !61, !100, !99}
!112 = !{!113, !21, i64 0}
!113 = !{!"_ZTS7double2", !21, i64 0, !21, i64 8}
!114 = !{!113, !21, i64 8}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61, !99, !100}
!117 = distinct !{!117, !61, !99}
!118 = !{!9, !21, i64 160}
!119 = !{!64, !27, i64 240}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61, !122}
!122 = !{!"llvm.loop.unswitch.partial.disable"}
!123 = distinct !{!123, !61}
!124 = !{!64, !5, i64 400}
!125 = !{!64, !27, i64 248}
!126 = !{!64, !26, i64 296}
!127 = !{!64, !26, i64 304}
!128 = !{!64, !26, i64 312}
!129 = !{!64, !26, i64 328}
!130 = !{!64, !26, i64 336}
!131 = !{!64, !26, i64 344}
!132 = !{!64, !26, i64 352}
!133 = !{!64, !26, i64 360}
!134 = !{!64, !27, i64 368}
!135 = !{!64, !26, i64 376}
!136 = !{!64, !27, i64 288}
!137 = !{!64, !27, i64 264}
!138 = !{!64, !27, i64 272}
!139 = !{!64, !27, i64 280}
!140 = !{!64, !26, i64 384}
!141 = !{!64, !26, i64 392}
!142 = distinct !{!142, !61, !99, !100}
!143 = distinct !{!143, !61, !99}
!144 = distinct !{!144, !61, !99, !100}
!145 = distinct !{!145, !61, !99}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZmlRK7double2RKd: argument 0"}
!148 = distinct !{!148, !"_ZmlRK7double2RKd"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZplRK7double2S1_: argument 0"}
!151 = distinct !{!151, !"_ZplRK7double2S1_"}
!152 = distinct !{!152, !61, !99, !100}
!153 = distinct !{!153, !61, !99}
!154 = distinct !{!154, !61}
!155 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!156 = distinct !{!156, !61, !99, !100}
!157 = distinct !{!157, !158}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = distinct !{!159, !61, !99}
!160 = !{!64, !58, i64 120}
!161 = !{!64, !58, i64 104}
!162 = distinct !{!162, !61}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZplRK7double2S1_: argument 0"}
!165 = distinct !{!165, !"_ZplRK7double2S1_"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZplRK7double2S1_: argument 0"}
!168 = distinct !{!168, !"_ZplRK7double2S1_"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZplRK7double2S1_: argument 0"}
!171 = distinct !{!171, !"_ZplRK7double2S1_"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZplRK7double2S1_: argument 0"}
!174 = distinct !{!174, !"_ZplRK7double2S1_"}
!175 = distinct !{!175, !61}
!176 = distinct !{!176, !61}
!177 = !{!178}
!178 = distinct !{!178, !179}
!179 = distinct !{!179, !"LVerDomain"}
!180 = !{!181}
!181 = distinct !{!181, !179}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZdvRK7double2RKd: argument 0"}
!184 = distinct !{!184, !"_ZdvRK7double2RKd"}
!185 = !{!186}
!186 = distinct !{!186, !179}
!187 = !{!178, !181}
!188 = distinct !{!188, !61, !99, !100}
!189 = distinct !{!189, !61, !99}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZmlRK7double2RKd: argument 0"}
!192 = distinct !{!192, !"_ZmlRK7double2RKd"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZplRK7double2S1_: argument 0"}
!195 = distinct !{!195, !"_ZplRK7double2S1_"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZplRK7double2S1_: argument 0"}
!198 = distinct !{!198, !"_ZplRK7double2S1_"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZplRK7double2S1_: argument 0"}
!201 = distinct !{!201, !"_ZplRK7double2S1_"}
!202 = distinct !{!202, !61, !99, !100}
!203 = distinct !{!203, !61, !99}
!204 = distinct !{!204, !61}
!205 = distinct !{!205, !61}
!206 = !{!64, !58, i64 88}
!207 = !{!64, !58, i64 96}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZplRK7double2S1_: argument 0"}
!210 = distinct !{!210, !"_ZplRK7double2S1_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZplRK7double2S1_: argument 0"}
!213 = distinct !{!213, !"_ZplRK7double2S1_"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZplRK7double2S1_: argument 0"}
!216 = distinct !{!216, !"_ZplRK7double2S1_"}
!217 = distinct !{!217, !61}
!218 = distinct !{!218, !61}
!219 = distinct !{!219, !61, !99, !100}
!220 = distinct !{!220, !61, !99}
!221 = distinct !{!221, !61, !99, !100}
!222 = distinct !{!222, !61, !99}
!223 = distinct !{!223, !61, !99, !100}
!224 = distinct !{!224, !158}
!225 = distinct !{!225, !61, !99}
!226 = distinct !{!226, !61}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZmlRK7double2RKd: argument 0"}
!229 = distinct !{!229, !"_ZmlRK7double2RKd"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZplRK7double2S1_: argument 0"}
!232 = distinct !{!232, !"_ZplRK7double2S1_"}
!233 = distinct !{!233, !61, !99, !100}
!234 = distinct !{!234, !61, !99}
!235 = distinct !{!235, !61, !99, !100}
!236 = distinct !{!236, !158}
!237 = distinct !{!237, !61, !99}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZplRK7double2S1_: argument 0"}
!240 = distinct !{!240, !"_ZplRK7double2S1_"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZplRK7double2S1_: argument 0"}
!243 = distinct !{!243, !"_ZplRK7double2S1_"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZplRK7double2S1_: argument 0"}
!246 = distinct !{!246, !"_ZplRK7double2S1_"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZplRK7double2S1_: argument 0"}
!249 = distinct !{!249, !"_ZplRK7double2S1_"}
!250 = !{!251}
!251 = distinct !{!251, !252}
!252 = distinct !{!252, !"LVerDomain"}
!253 = !{!254}
!254 = distinct !{!254, !252}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZdvRK7double2RKd: argument 0"}
!257 = distinct !{!257, !"_ZdvRK7double2RKd"}
!258 = !{!259}
!259 = distinct !{!259, !252}
!260 = !{!251, !254}
!261 = distinct !{!261, !61, !99, !100}
!262 = distinct !{!262, !61, !99}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZmlRK7double2RKd: argument 0"}
!265 = distinct !{!265, !"_ZmlRK7double2RKd"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZplRK7double2S1_: argument 0"}
!268 = distinct !{!268, !"_ZplRK7double2S1_"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZplRK7double2S1_: argument 0"}
!271 = distinct !{!271, !"_ZplRK7double2S1_"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZplRK7double2S1_: argument 0"}
!274 = distinct !{!274, !"_ZplRK7double2S1_"}
!275 = distinct !{!275, !61, !99, !100}
!276 = distinct !{!276, !61, !99}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZplRK7double2S1_: argument 0"}
!279 = distinct !{!279, !"_ZplRK7double2S1_"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZplRK7double2S1_: argument 0"}
!282 = distinct !{!282, !"_ZplRK7double2S1_"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZplRK7double2S1_: argument 0"}
!285 = distinct !{!285, !"_ZplRK7double2S1_"}
!286 = distinct !{!286, !61, !99, !100}
!287 = distinct !{!287, !61, !99}
!288 = distinct !{!288, !61, !99, !100}
!289 = distinct !{!289, !61, !99}
!290 = distinct !{!290, !61}
!291 = distinct !{!291, !61}
!292 = distinct !{!292, !158}
!293 = distinct !{!293, !61}
!294 = distinct !{!294, !61}
!295 = !{!33, !33, i64 0}
!296 = distinct !{!296, !158}
!297 = distinct !{!297, !61}
!298 = !{!299, !299, i64 0}
!299 = !{!"vtable pointer", !7, i64 0}
!300 = !{!301, !302, i64 24}
!301 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !302, i64 24, !303, i64 28, !303, i64 32, !304, i64 40, !305, i64 48, !6, i64 64, !5, i64 192, !306, i64 200, !307, i64 208}
!302 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!303 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!304 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!305 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !33, i64 8}
!306 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
end_hunk_1
