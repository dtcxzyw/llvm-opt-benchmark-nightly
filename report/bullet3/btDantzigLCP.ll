Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_Z11btLDLTAddTLPfS_PKfiiR20btAlignedObjectArrayIfE:bb.a
  br i1 %cmp.n201, label %.lver.check210, label %.lr.ph.preheader218

.lr.ph.preheader218:                              ; preds = %vector.memcheck186, %.lr.ph.preheader, %middle.block200
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck186 ], [ 1, %.lr.ph.preheader ], [ %i.bh, %middle.block200 ] ; 6 uses
  %i.bs = and i64 %wide.trip.count, 1
  %lcmp.mod220.not.not = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod220.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader218
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9
  %i.bv = fmul float %i.bu, f0x3F3504F3           ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  store float %i.bv, ptr %i.bw, align 4, !tbaa !9
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.ph
  store float %i.bv, ptr %i.bx, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader218
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader218 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.by = add nsw i64 %wide.trip.count, -1
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.by
  br i1 %i.bz, label %.lver.check210, label %.lr.ph

.lver.check210:                                   ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block200
  %i.ca = load float, ptr %2, align 4, !tbaa !9   ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float 5.000000e-01, float 1.000000e+00)
  %i.cc = fmul float %i.cb, f0x3F3504F3           ; 5 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.ca, float 5.000000e-01, float -1.000000e+00)
  %i.ce = fmul float %i.cd, f0x3F3504F3           ; 3 uses
  %i.cf = load float, ptr %1, align 4, !tbaa !9   ; 2 uses
  %i.cg = fmul float %i.cc, %i.cc
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cf, float 1.000000e+00) ; 2 uses
  %i.ci = fdiv float %i.cf, %i.ch                 ; 2 uses
  %i.cj = fmul float %i.cc, %i.ci                 ; 2 uses
  %i.ck = fneg float %i.ce                        ; 3 uses
  %i.cl = fmul float %i.ce, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ci, float 1.000000e+00)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cj, float 1.000000e+00) ; 6 uses
  %i.co = fmul float %i.ce, %i.cj
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cc, float %i.ck) ; 6 uses
  %i.cq = fneg float %i.cc                        ; 6 uses
  %ident.check209.not = icmp eq i32 %4, 1
  br i1 %ident.check209.not, label %.ph211, label %.ph211.lver.orig.preheader

.ph211.lver.orig.preheader:                       ; preds = %.lver.check210
  %xtraiter222 = and i64 %i.ba, 1
  %i.cr = icmp eq i32 %3, 2
  br i1 %i.cr, label %.ph211.lver.orig.epil.preheader, label %.ph211.lver.orig.preheader.new

.ph211.lver.orig.preheader.new:                   ; preds = %.ph211.lver.orig.preheader
  %unroll_iter = and i64 %i.ba, -2
  br label %.ph211.lver.orig

.ph211.lver.orig:                                 ; preds = %.ph211.lver.orig, %.ph211.lver.orig.preheader.new
  %indvars.iv160.lver.orig = phi i64 [ 1, %.ph211.lver.orig.preheader.new ], [ %indvars.iv.next161.lver.orig.1, %.ph211.lver.orig ] ; 4 uses
  %.pn145.lver.orig = phi ptr [ %0, %.ph211.lver.orig.preheader.new ], [ %.0138.lver.orig.1, %.ph211.lver.orig ]
  %niter = phi i64 [ 0, %.ph211.lver.orig.preheader.new ], [ %niter.next.1, %.ph211.lver.orig ]
  %.0138.lver.orig = getelementptr inbounds [4 x i8], ptr %.pn145.lver.orig, i64 %i.ay ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv160.lver.orig ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !9 ; 2 uses
  %i.cu = load float, ptr %.0138.lver.orig, align 4, !tbaa !9 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cu, float %i.ct)
  store float %i.cv, ptr %i.cs, align 4, !tbaa !9
  %i.cw = fmul float %i.cp, %i.cu
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ct, float %i.cw)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160.lver.orig
  store float %i.cx, ptr %i.cy, align 4, !tbaa !9
  %indvars.iv.next161.lver.orig = add nuw nsw i64 %indvars.iv160.lver.orig, 1 ; 2 uses
  %.0138.lver.orig.1 = getelementptr inbounds [4 x i8], ptr %.0138.lver.orig, i64 %i.ay ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next161.lver.orig ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !9 ; 2 uses
  %i.db = load float, ptr %.0138.lver.orig.1, align 4, !tbaa !9 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.db, float %i.da)
  store float %i.dc, ptr %i.cz, align 4, !tbaa !9
  %i.dd = fmul float %i.cp, %i.db
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.da, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next161.lver.orig
  store float %i.de, ptr %i.df, align 4, !tbaa !9
  %indvars.iv.next161.lver.orig.1 = add nuw nsw i64 %indvars.iv160.lver.orig, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph158.preheader.loopexit217.unr-lcssa, label %.ph211.lver.orig, !llvm.loop !140

.ph211:                                           ; preds = %.lver.check210
  %scevgep213 = getelementptr nuw i8, ptr %i.ax, i64 4
  %load_initial214 = load float, ptr %scevgep213, align 4 ; 2 uses
  %xtraiter225 = and i64 %i.ba, 1
  %i.dg = icmp eq i32 %3, 2
  br i1 %i.dg, label %.epil.preheader, label %.ph211.new

.ph211.new:                                       ; preds = %.ph211
  %unroll_iter228 = and i64 %i.ba, -2
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.di = load float, ptr %i.dh, align 4, !tbaa !9
  %i.dj = fmul float %i.di, f0x3F3504F3           ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.dj, ptr %i.dk, align 4, !tbaa !9
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %i.dj, ptr %i.dl, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !9
  %i.do = fmul float %i.dn, f0x3F3504F3           ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  store float %i.do, ptr %i.dp, align 4, !tbaa !9
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next
  store float %i.do, ptr %i.dq, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.lver.check210, label %.lr.ph, !llvm.loop !141

.lr.ph158.preheader.loopexit.unr-lcssa:           ; preds = %bb.g
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph158.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph158.preheader.loopexit.unr-lcssa, %.ph211
  %store_forwarded215.epil.init = phi float [ %load_initial214, %.ph211 ], [ %i.es, %.lr.ph158.preheader.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv160.epil.init = phi i64 [ 1, %.ph211 ], [ %indvars.iv.next161.1, %.lr.ph158.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.pn145.epil.init = phi ptr [ %0, %.ph211 ], [ %.0138.1, %.lr.ph158.preheader.loopexit.unr-lcssa ]
  %lcmp.mod227 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %.0138.epil = getelementptr inbounds nuw [4 x i8], ptr %.pn145.epil.init, i64 %i.ay
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv160.epil.init
  %i.ds = load float, ptr %.0138.epil, align 4, !tbaa !9 ; 2 uses
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.ds, float %store_forwarded215.epil.init)
  store float %i.dt, ptr %i.dr, align 4, !tbaa !9
  %i.du = fmul float %i.cp, %i.ds
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.cn, float %store_forwarded215.epil.init, float %i.du)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160.epil.init
  store float %i.dv, ptr %i.dw, align 4, !tbaa !9
  br label %.lr.ph158.preheader

.lr.ph158.preheader.loopexit217.unr-lcssa:        ; preds = %.ph211.lver.orig
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph158.preheader, label %.ph211.lver.orig.epil.preheader

.ph211.lver.orig.epil.preheader:                  ; preds = %.lr.ph158.preheader.loopexit217.unr-lcssa, %.ph211.lver.orig.preheader
  %indvars.iv160.lver.orig.epil.init = phi i64 [ 1, %.ph211.lver.orig.preheader ], [ %indvars.iv.next161.lver.orig.1, %.lr.ph158.preheader.loopexit217.unr-lcssa ] ; 2 uses
  %.pn145.lver.orig.epil.init = phi ptr [ %0, %.ph211.lver.orig.preheader ], [ %.0138.lver.orig.1, %.lr.ph158.preheader.loopexit217.unr-lcssa ]
  %lcmp.mod224 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %.0138.lver.orig.epil = getelementptr inbounds [4 x i8], ptr %.pn145.lver.orig.epil.init, i64 %i.ay
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv160.lver.orig.epil.init ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !9 ; 2 uses
  %i.dz = load float, ptr %.0138.lver.orig.epil, align 4, !tbaa !9 ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dz, float %i.dy)
  store float %i.ea, ptr %i.dx, align 4, !tbaa !9
  %i.eb = fmul float %i.cp, %i.dz
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dy, float %i.eb)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160.lver.orig.epil.init
  store float %i.ec, ptr %i.ed, align 4, !tbaa !9
  br label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.ph211.lver.orig.epil.preheader, %.lr.ph158.preheader.loopexit217.unr-lcssa, %.epil.preheader, %.lr.ph158.preheader.loopexit.unr-lcssa
  %i.ee = zext nneg i32 %3 to i64
  %wide.trip.count177 = zext nneg i32 %3 to i64
  %wide.trip.count171 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ef = shl nuw nsw i64 %wide.trip.count, 2
  %i.eg = add nuw nsw i64 %i.ef, 4                ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.ax, i64 %i.eg
  %i.eh = getelementptr i8, ptr %0, i64 %i.eg
  %ident.check = icmp ne i32 %4, 1
  br label %.lr.ph158

bb.g:                                             ; preds = %bb.g, %.ph211.new
  %store_forwarded215 = phi float [ %load_initial214, %.ph211.new ], [ %i.es, %bb.g ] ; 2 uses
  %indvars.iv160 = phi i64 [ 1, %.ph211.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %.pn145 = phi ptr [ %0, %.ph211.new ], [ %.0138.1, %bb.g ]
  %niter229 = phi i64 [ 0, %.ph211.new ], [ %niter229.next.1, %bb.g ]
  %.0138 = getelementptr inbounds nuw [4 x i8], ptr %.pn145, i64 %i.ay ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv160
  %i.ej = load float, ptr %.0138, align 4, !tbaa !9 ; 2 uses
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.ej, float %store_forwarded215)
  store float %i.ek, ptr %i.ei, align 4, !tbaa !9
  %i.el = fmul float %i.cp, %i.ej
  %i.em = tail call float @llvm.fmuladd.f32(float %i.cn, float %store_forwarded215, float %i.el) ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160
  store float %i.em, ptr %i.en, align 4, !tbaa !9
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %.0138.1 = getelementptr inbounds nuw [4 x i8], ptr %.0138, i64 %i.ay ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next161
  %i.ep = load float, ptr %.0138.1, align 4, !tbaa !9 ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.ep, float %i.em)
  store float %i.eq, ptr %i.eo, align 4, !tbaa !9
  %i.er = fmul float %i.cp, %i.ep
  %i.es = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.em, float %i.er) ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next161
  store float %i.es, ptr %i.et, align 4, !tbaa !9
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter229.next.1 = add nuw i64 %niter229, 2     ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.lr.ph158.preheader.loopexit.unr-lcssa, label %bb.g, !llvm.loop !140

.loopexit:                                        ; preds = %bb.h, %.ph.lver.orig, %.lr.ph158
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %exitcond178.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count177
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond178.not, label %.loopexit143, label %.lr.ph158, !llvm.loop !142

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv173 = phi i64 [ 1, %.lr.ph158.preheader ], [ %indvars.iv.next174, %.loopexit ] ; 4 uses
  %indvars.iv166 = phi i64 [ 2, %.lr.ph158.preheader ], [ %indvars.iv.next167, %.loopexit ] ; 3 uses
  %.0135157.pn = phi ptr [ %0, %.lr.ph158.preheader ], [ %.0135157, %.loopexit ]
  %.0139155 = phi float [ %i.cm, %.lr.ph158.preheader ], [ %i.fi, %.loopexit ] ; 2 uses
  %.0140154 = phi float [ %i.ch, %.lr.ph158.preheader ], [ %i.fc, %.loopexit ] ; 2 uses
  %i.eu = shl i64 %indvar, 2
  %6 = getelementptr i8, ptr %i.ax, i64 %i.eu
  %scevgep208 = getelementptr i8, ptr %6, i64 8
  %.pn = getelementptr [4 x i8], ptr %.0135157.pn, i64 %i.ay
  %.0135157 = getelementptr i8, ptr %.pn, i64 4   ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv173
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !9 ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv173
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !9 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv173 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !9 ; 2 uses
  %i.fb = fmul float %i.ew, %i.ew
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fa, float %.0140154) ; 2 uses
  %i.fd = fdiv float %i.fa, %i.fc                 ; 2 uses
  %i.fe = fmul float %i.ew, %i.fd                 ; 2 uses
  %i.ff = fmul float %.0140154, %i.fd             ; 2 uses
  %i.fg = fneg float %i.ey                        ; 3 uses
  %i.fh = fmul float %i.ey, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.ff, float %.0139155) ; 2 uses
  %i.fj = fdiv float %i.ff, %i.fi                 ; 2 uses
  %i.fk = fmul float %.0139155, %i.fj
  store float %i.fk, ptr %i.ez, align 4, !tbaa !9
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 3 uses
  %i.fl = icmp samesign ult i64 %indvars.iv.next174, %i.ee
  br i1 %i.fl, label %.lver.check, label %.loopexit

.lver.check:                                      ; preds = %.lr.ph158
  %i.fm = shl i64 %indvar, 2                      ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.eh, i64 %i.fm
  %i.fn = shl i64 %indvar, 3
  %i.fo = getelementptr i8, ptr %0, i64 %i.fn
  %scevgep205 = getelementptr i8, ptr %i.fo, i64 12
  %7 = getelementptr i8, ptr %i.ax, i64 %i.fm
  %scevgep203 = getelementptr i8, ptr %7, i64 8
  %i.fp = fneg float %i.ew                        ; 2 uses
  %i.fq = fneg float %i.fj
  %i.fr = fmul float %i.ey, %i.fq                 ; 2 uses
  %bound0 = icmp ult ptr %scevgep203, %scevgep206
  %bound1 = icmp ult ptr %scevgep205, %scevgep204
  %found.conflict = and i1 %bound0, %bound1
  %lver.safe = or i1 %found.conflict, %ident.check
  br i1 %lver.safe, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv168.lver.orig = phi i64 [ %indvars.iv.next169.lver.orig, %.ph.lver.orig ], [ %indvars.iv166, %.lver.check ] ; 3 uses
  %.0135.pn149.lver.orig = phi ptr [ %.0133.lver.orig, %.ph.lver.orig ], [ %.0135157, %.lver.check ]
  %.0133.lver.orig = getelementptr inbounds [4 x i8], ptr %.0135.pn149.lver.orig, i64 %i.ay ; 3 uses
  %i.fs = load float, ptr %.0133.lver.orig, align 4, !tbaa !9 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv168.lver.orig ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !9
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fs, float %i.fu) ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fv, float %i.fs) ; 2 uses
  store float %i.fv, ptr %i.ft, align 4, !tbaa !9
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv168.lver.orig ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !9
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fw, float %i.fy) ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fz, float %i.fw)
  store float %i.fz, ptr %i.fx, align 4, !tbaa !9
  store float %i.ga, ptr %.0133.lver.orig, align 4, !tbaa !9
  %indvars.iv.next169.lver.orig = add nuw nsw i64 %indvars.iv168.lver.orig, 1 ; 2 uses
  %exitcond172.not.lver.orig = icmp eq i64 %indvars.iv.next169.lver.orig, %wide.trip.count171
  br i1 %exitcond172.not.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !143

.ph:                                              ; preds = %.lver.check
  %load_initial = load float, ptr %scevgep208, align 4
  br label %bb.h

bb.h:                                             ; preds = %.ph, %bb.h
  %store_forwarded = phi float [ %load_initial, %.ph ], [ %i.gh, %bb.h ]
  %indvars.iv168 = phi i64 [ %indvars.iv166, %.ph ], [ %indvars.iv.next169, %bb.h ] ; 3 uses
  %.0135.pn149 = phi ptr [ %.0135157, %.ph ], [ %.0133, %bb.h ]
  %.0133 = getelementptr inbounds nuw [4 x i8], ptr %.0135.pn149, i64 %i.ay ; 3 uses
  %i.gb = load float, ptr %.0133, align 4, !tbaa !9 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv168
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.gb, float %store_forwarded) ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.gd, float %i.gb) ; 2 uses
  store float %i.gd, ptr %i.gc, align 4, !tbaa !9
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv168 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !9
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.ge, float %i.gg) ; 3 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.gh, float %i.ge)
  store float %i.gh, ptr %i.gf, align 4, !tbaa !9
  store float %i.gi, ptr %.0133, align 4, !tbaa !9
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %.loopexit, label %bb.h, !llvm.loop !143

.loopexit143:                                     ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12btLDLTRemovePPfPKiS_S_iiiiR20btAlignedObjectArrayIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %8) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = add nsw i32 %5, -1                       ; 4 uses
  %i.d = icmp eq i32 %6, %i.c
  br i1 %i.d, label %_Z14btRemoveRowColPfiii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %7, 1                        ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = add nsw i32 %i.e, %5                     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130  ; 3 uses
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre144 = load ptr, ptr %.phi.trans.insert143, align 8, !tbaa !133
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !134
  %i.n = icmp slt i32 %i.m, %i.h
  br i1 %i.n, label %bb.d, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sext i32 %i.h to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.p, i32 noundef 16)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !130
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %.pre.i, %bb.e ], [ %i.j, %bb.d ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ] ; 9 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133  ; 9 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.v = ptrtoaddr ptr %i.u to i64
  %.0.i.i.i154 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.r to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  %i.w = sub i64 %i.v, %.0.i.i.i154
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x float>, ptr %i.y, align 4, !tbaa !9
  %wide.load155 = load <4 x float>, ptr %i.z, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %wide.load, ptr %i.x, align 4, !tbaa !9
  store <4 x float> %wide.load155, ptr %i.aa, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.prol
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9
  store float %i.ae, ptr %i.ac, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !145

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9
  store float %i.aj, ptr %i.ah, align 4, !tbaa !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  store float %i.am, ptr %i.ak, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !9
  store float %i.ap, ptr %i.an, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.as = load float, ptr %i.ar, align 4, !tbaa !9
  store float %i.as, ptr %i.aq, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !146

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !138, !range !111, !noundef !112
  %i.av = trunc nuw i8 %i.au to i1
end_hunk_0
