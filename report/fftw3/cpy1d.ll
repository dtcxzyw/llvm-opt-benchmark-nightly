Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/cpy1d?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fftw_cpy1d:bb.a
  %i.az = icmp ne i64 %.076, 2
  %or.cond7 = or i1 %i.az, %or.cond5
  br i1 %or.cond7, label %.preheader83, label %bb.e

.preheader83:                                     ; preds = %bb.d
  %i.ba = icmp sgt i64 %.172, 0
  br i1 %i.ba, label %.lr.ph92.preheader, label %.loopexit

.lr.ph92.preheader:                               ; preds = %.preheader83
  %xtraiter120 = and i64 %.172, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.191.prol = phi ptr [ %i.bd, %.lr.ph92.prol ], [ %0, %.lr.ph92.preheader ] ; 2 uses
  %.16990.prol = phi ptr [ %i.be, %.lr.ph92.prol ], [ %1, %.lr.ph92.preheader ] ; 2 uses
  %.27389.prol = phi i64 [ %i.bc, %.lr.ph92.prol ], [ %.172, %.lr.ph92.preheader ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.bb = load <2 x double>, ptr %.191.prol, align 8, !tbaa !23
  store <2 x double> %i.bb, ptr %.16990.prol, align 8, !tbaa !23
  %i.bc = add nsw i64 %.27389.prol, -1            ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.191.prol, i64 %.074 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.16990.prol, i64 %.076 ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !11

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %.191.unr = phi ptr [ %0, %.lr.ph92.preheader ], [ %i.bd, %.lr.ph92.prol ]
  %.16990.unr = phi ptr [ %1, %.lr.ph92.preheader ], [ %i.be, %.lr.ph92.prol ]
  %.27389.unr = phi i64 [ %.172, %.lr.ph92.preheader ], [ %i.bc, %.lr.ph92.prol ]
  %i.bf = icmp ult i64 %.172, 8
  br i1 %i.bf, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.191 = phi ptr [ %i.cd, %.lr.ph92 ], [ %.191.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %.16990 = phi ptr [ %i.ce, %.lr.ph92 ], [ %.16990.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %.27389 = phi i64 [ %i.cc, %.lr.ph92 ], [ %.27389.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %i.bg = load <2 x double>, ptr %.191, align 8, !tbaa !23
  store <2 x double> %i.bg, ptr %.16990, align 8, !tbaa !23
  %i.bh = getelementptr inbounds [8 x i8], ptr %.191, i64 %.074 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.16990, i64 %.076 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !tbaa !23
  store <2 x double> %i.bj, ptr %i.bi, align 8, !tbaa !23
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.074 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.076 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !23
  store <2 x double> %i.bm, ptr %i.bl, align 8, !tbaa !23
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.074 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.076 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bn, align 8, !tbaa !23
  store <2 x double> %i.bp, ptr %i.bo, align 8, !tbaa !23
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.074 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.076 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bq, align 8, !tbaa !23
  store <2 x double> %i.bs, ptr %i.br, align 8, !tbaa !23
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %.074 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %.076 ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bt, align 8, !tbaa !23
  store <2 x double> %i.bv, ptr %i.bu, align 8, !tbaa !23
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.074 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %.076 ; 2 uses
  %i.by = load <2 x double>, ptr %i.bw, align 8, !tbaa !23
  store <2 x double> %i.by, ptr %i.bx, align 8, !tbaa !23
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.074 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.076 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.bz, align 8, !tbaa !23
  store <2 x double> %i.cb, ptr %i.ca, align 8, !tbaa !23
  %i.cc = add nsw i64 %.27389, -8
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.074
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.076
  %i.cf = icmp sgt i64 %.27389, 8
  br i1 %i.cf, label %.lr.ph92, label %.loopexit, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  %i.cg = ashr exact i64 %.172, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.177 = phi i64 [ 4, %bb.e ], [ %4, %bb.a ]     ; 9 uses
  %.175 = phi i64 [ 4, %bb.e ], [ %3, %bb.a ]     ; 9 uses
  %.3 = phi i64 [ %i.cg, %bb.e ], [ %2, %bb.a ]   ; 5 uses
  %i.ch = icmp sgt i64 %.3, 0
  br i1 %i.ch, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.3, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.288.prol = phi ptr [ %i.cn, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.27087.prol = phi ptr [ %i.co, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.486.prol = phi i64 [ %i.cm, %.lr.ph.prol ], [ %.3, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.288.prol, i64 16
  %i.cj = load <2 x double>, ptr %.288.prol, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.27087.prol, i64 16
  %i.cl = load <2 x double>, ptr %i.ci, align 8, !tbaa !23
  store <2 x double> %i.cj, ptr %.27087.prol, align 8, !tbaa !23
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !23
  %i.cm = add nsw i64 %.486.prol, -1              ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.288.prol, i64 %.175 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.27087.prol, i64 %.177 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.288.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.cn, %.lr.ph.prol ]
  %.27087.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.co, %.lr.ph.prol ]
  %.486.unr = phi i64 [ %.3, %.lr.ph.preheader ], [ %i.cm, %.lr.ph.prol ]
  %i.cp = icmp ult i64 %.3, 8
  br i1 %i.cp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.288 = phi ptr [ %i.el, %.lr.ph ], [ %.288.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.27087 = phi ptr [ %i.em, %.lr.ph ], [ %.27087.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.486 = phi i64 [ %i.ek, %.lr.ph ], [ %.486.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.288, i64 16
  %i.cr = load <2 x double>, ptr %.288, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.27087, i64 16
  %i.ct = load <2 x double>, ptr %i.cq, align 8, !tbaa !23
  store <2 x double> %i.cr, ptr %.27087, align 8, !tbaa !23
  store <2 x double> %i.ct, ptr %i.cs, align 8, !tbaa !23
  %i.cu = getelementptr inbounds [8 x i8], ptr %.288, i64 %.175 ; 3 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.27087, i64 %.177 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load <2 x double>, ptr %i.cu, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = load <2 x double>, ptr %i.cw, align 8, !tbaa !23
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !23
  store <2 x double> %i.cz, ptr %i.cy, align 8, !tbaa !23
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.175 ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.177 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load <2 x double>, ptr %i.da, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load <2 x double>, ptr %i.dc, align 8, !tbaa !23
  store <2 x double> %i.dd, ptr %i.db, align 8, !tbaa !23
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !23
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.da, i64 %.175 ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %.177 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load <2 x double>, ptr %i.di, align 8, !tbaa !23
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !23
  store <2 x double> %i.dl, ptr %i.dk, align 8, !tbaa !23
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.175 ; 3 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.177 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load <2 x double>, ptr %i.dm, align 8, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dr = load <2 x double>, ptr %i.do, align 8, !tbaa !23
  store <2 x double> %i.dp, ptr %i.dn, align 8, !tbaa !23
  store <2 x double> %i.dr, ptr %i.dq, align 8, !tbaa !23
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.175 ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.177 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load <2 x double>, ptr %i.ds, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load <2 x double>, ptr %i.du, align 8, !tbaa !23
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !23
  store <2 x double> %i.dx, ptr %i.dw, align 8, !tbaa !23
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.175 ; 3 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %.177 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load <2 x double>, ptr %i.dy, align 8, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = load <2 x double>, ptr %i.ea, align 8, !tbaa !23
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !23
  store <2 x double> %i.ed, ptr %i.ec, align 8, !tbaa !23
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.175 ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.177 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eh = load <2 x double>, ptr %i.ee, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ej = load <2 x double>, ptr %i.eg, align 8, !tbaa !23
  store <2 x double> %i.eh, ptr %i.ef, align 8, !tbaa !23
  store <2 x double> %i.ej, ptr %i.ei, align 8, !tbaa !23
  %i.ek = add nsw i64 %.486, -8
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.175
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %.177
  %i.en = icmp sgt i64 %.486, 8
  br i1 %i.en, label %.lr.ph, label %.loopexit, !llvm.loop !14

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07899 = phi i64 [ %i.gk, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.eo = mul nsw i64 %.07899, %3
  %i.ep = getelementptr [8 x i8], ptr %0, i64 %i.eo ; 10 uses
  %i.eq = mul nsw i64 %.07899, %4
  %i.er = getelementptr [8 x i8], ptr %1, i64 %i.eq ; 10 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.m
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %wide.load = load <2 x double>, ptr %i.es, align 8, !tbaa !23, !alias.scope !26
  %wide.load115 = load <2 x double>, ptr %i.et, align 8, !tbaa !23, !alias.scope !26
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %index ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  store <2 x double> %wide.load, ptr %i.eu, align 8, !tbaa !23, !alias.scope !27, !noalias !26
  store <2 x double> %wide.load115, ptr %i.ev, align 8, !tbaa !23, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.07997.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 4 uses
  %i.ex = sub nsw i64 %5, %.07997.ph
  %xtraiter126 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.07997.prol = phi i64 [ %i.fb, %scalar.ph.prol ], [ %.07997.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ey = getelementptr [8 x i8], ptr %i.ep, i64 %.07997.prol
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr [8 x i8], ptr %i.er, i64 %.07997.prol
  store double %i.ez, ptr %i.fa, align 8, !tbaa !23
  %i.fb = add nuw nsw i64 %.07997.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !19

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07997.unr = phi i64 [ %.07997.ph, %scalar.ph.preheader ], [ %i.fb, %scalar.ph.prol ]
  %i.fc = sub nsw i64 %.07997.ph, %5
  %i.fd = icmp ugt i64 %i.fc, -8
  br i1 %i.fd, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07997 = phi i64 [ %i.gj, %scalar.ph ], [ %.07997.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.fe = getelementptr [8 x i8], ptr %i.ep, i64 %.07997
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !23
  %i.fg = getelementptr [8 x i8], ptr %i.er, i64 %.07997
  store double %i.ff, ptr %i.fg, align 8, !tbaa !23
  %i.fh = add nuw nsw i64 %.07997, 1              ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %i.ep, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !23
  %i.fk = getelementptr [8 x i8], ptr %i.er, i64 %i.fh
  store double %i.fj, ptr %i.fk, align 8, !tbaa !23
  %i.fl = add nuw nsw i64 %.07997, 2              ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.ep, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !23
  %i.fo = getelementptr [8 x i8], ptr %i.er, i64 %i.fl
  store double %i.fn, ptr %i.fo, align 8, !tbaa !23
  %i.fp = add nuw nsw i64 %.07997, 3              ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %i.ep, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !23
  %i.fs = getelementptr [8 x i8], ptr %i.er, i64 %i.fp
  store double %i.fr, ptr %i.fs, align 8, !tbaa !23
  %i.ft = add nuw nsw i64 %.07997, 4              ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %i.ep, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !23
  %i.fw = getelementptr [8 x i8], ptr %i.er, i64 %i.ft
  store double %i.fv, ptr %i.fw, align 8, !tbaa !23
  %i.fx = add nuw nsw i64 %.07997, 5              ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.ep, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !23
  %i.ga = getelementptr [8 x i8], ptr %i.er, i64 %i.fx
  store double %i.fz, ptr %i.ga, align 8, !tbaa !23
  %i.gb = add nuw nsw i64 %.07997, 6              ; 2 uses
  %i.gc = getelementptr [8 x i8], ptr %i.ep, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !23
  %i.ge = getelementptr [8 x i8], ptr %i.er, i64 %i.gb
  store double %i.gd, ptr %i.ge, align 8, !tbaa !23
  %i.gf = add nuw nsw i64 %.07997, 7              ; 2 uses
  %i.gg = getelementptr [8 x i8], ptr %i.ep, i64 %i.gf
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !23
  %i.gi = getelementptr [8 x i8], ptr %i.er, i64 %i.gf
  store double %i.gh, ptr %i.gi, align 8, !tbaa !23
  %i.gj = add nuw nsw i64 %.07997, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gj, %5
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gk = add nuw nsw i64 %.07899, 1              ; 2 uses
  %exitcond104.not = icmp eq i64 %i.gk, %2
  br i1 %exitcond104.not, label %.loopexit, label %.preheader, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph92.prol.loopexit, %.lr.ph92, %.lr.ph96.prol.loopexit, %.lr.ph96, %._crit_edge, %bb.f, %.preheader83, %.preheader81, %.preheader80
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !25}
!11 = distinct !{!11, !24}
!12 = distinct !{!12, !25}
!13 = distinct !{!13, !24}
!14 = distinct !{!14, !25}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !25, !28, !29}
!19 = distinct !{!19, !24}
!20 = distinct !{!20, !25, !28}
!21 = distinct !{!21, !25}
!22 = !{!"double", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!16}
!27 = !{!17}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
