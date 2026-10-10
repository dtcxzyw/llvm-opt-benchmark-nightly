Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.7?download=true
inline.NumInlined: 87
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtCsbXLDOPgjE5X_10test_utils13assert_linearNtB2_12AssertLinear10next_round:bb.a
  br i1 %i.dx, label %_RNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB7_5Round6finish9normalize.exit76.i, label %scalar.ph51, !llvm.loop !64

_RNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB7_5Round6finish9normalize.exit76.i: ; preds = %scalar.ph51, %middle.block62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !85
  %i.dy = load ptr, ptr %i.ad, align 8, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = load i64, ptr %i.af, align 8, !noalias !85, !noundef !4
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load ptr, ptr %i.cb, align 8, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %i.ec = load i64, ptr %i.cd, align 8, !noalias !85, !noundef !4
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  invoke void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E3newCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ed)
          to label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator3zipB3_ECsbXLDOPgjE5X_10test_utils.exit.i unwind label %.loopexit.split-lp.i, !noalias !85

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator3zipB3_ECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB7_5Round6finish9normalize.exit76.i
  %i.ee = load ptr, ptr %i.ad, align 8, !noalias !85, !nonnull !4, !noundef !4 ; 9 uses
  %i.ef = load i64, ptr %i.af, align 8, !noalias !85, !noundef !4 ; 5 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.loopexit129.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator3zipB3_ECsbXLDOPgjE5X_10test_utils.exit.i
  %xtraiter85 = and i64 %i.ef, 7                  ; 3 uses
  %i.eh = icmp ult i64 %i.ef, 8
  br i1 %i.eh, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter90 = and i64 %i.ef, -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ff, %.preheader.i.i ] ; 9 uses
  %.sroa.02.0.i.i.i = phi double [ -0.000000e+00, %.preheader.i.i.preheader.new ], [ %i.fe, %.preheader.i.i ]
  %niter91 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter91.next.7, %.preheader.i.i ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load double, ptr %i.ei, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.ej = fadd double %.sroa.02.0.i.i.i, %.val.i.i.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.val.i.i.i.1 = load double, ptr %i.el, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.em = fadd double %i.ej, %.val.i.i.i.1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.val.i.i.i.2 = load double, ptr %i.eo, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.ep = fadd double %i.em, %.val.i.i.i.2
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.val.i.i.i.3 = load double, ptr %i.er, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.es = fadd double %i.ep, %.val.i.i.i.3
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %.val.i.i.i.4 = load double, ptr %i.eu, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.ev = fadd double %i.es, %.val.i.i.i.4
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %.val.i.i.i.5 = load double, ptr %i.ex, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.ey = fadd double %i.ev, %.val.i.i.i.5
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %.val.i.i.i.6 = load double, ptr %i.fa, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.fb = fadd double %i.ey, %.val.i.i.i.6
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %.val.i.i.i.7 = load double, ptr %i.fd, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.fe = fadd double %i.fb, %.val.i.i.i.7        ; 3 uses
  %i.ff = add nuw nsw i64 %.sroa.04.0.i.i.i, 8    ; 2 uses
  %niter91.next.7 = add nuw i64 %niter91, 8       ; 2 uses
  %niter91.ncmp.7 = icmp eq i64 %niter91.next.7, %unroll_iter90
  br i1 %niter91.ncmp.7, label %.loopexit129.i.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit129.i.loopexit.unr-lcssa:                ; preds = %.preheader.i.i
  %lcmp.mod87.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod87.not, label %.loopexit129.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit129.i.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ff, %.loopexit129.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi double [ -0.000000e+00, %.preheader.i.i.preheader ], [ %i.fe, %.loopexit129.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter85, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %i.fi, %.preheader.i.i.epil ], [ %.sroa.04.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi double [ %i.fh, %.preheader.i.i.epil ], [ %.sroa.02.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %epil.iter86 = phi i64 [ %epil.iter86.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.04.0.i.i.i.epil
  %.val.i.i.i.epil = load double, ptr %i.fg, align 8, !alias.scope !98, !noalias !85, !noundef !4
  %i.fh = fadd double %.sroa.02.0.i.i.i.epil, %.val.i.i.i.epil ; 2 uses
  %i.fi = add nuw nsw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter86.next = add i64 %epil.iter86, 1     ; 2 uses
  %epil.iter86.cmp.not = icmp eq i64 %epil.iter86.next, %xtraiter85
  br i1 %epil.iter86.cmp.not, label %.loopexit129.i, label %.preheader.i.i.epil, !llvm.loop !67

.loopexit129.i:                                   ; preds = %.loopexit129.i.loopexit.unr-lcssa, %.preheader.i.i.epil, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator3zipB3_ECsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.0.0.i.i.i = phi double [ -0.000000e+00, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator3zipB3_ECsbXLDOPgjE5X_10test_utils.exit.i ], [ %i.fe, %.loopexit129.i.loopexit.unr-lcssa ], [ %i.fh, %.preheader.i.i.epil ]
  %i.fj = uitofp nneg i64 %i.ef to double
  %i.fk = fdiv double %.sroa.0.0.i.i.i, %i.fj     ; 4 uses
  %i.fl = load ptr, ptr %i.cb, align 8, !noalias !85, !nonnull !4, !noundef !4 ; 9 uses
  %i.fm = load i64, ptr %i.cd, align 8, !noalias !85, !noundef !4 ; 5 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.loopexit128.i, label %.preheader.i78.i.preheader

.preheader.i78.i.preheader:                       ; preds = %.loopexit129.i
  %xtraiter92 = and i64 %i.fm, 7                  ; 3 uses
  %i.fo = icmp ult i64 %i.fm, 8
  br i1 %i.fo, label %.preheader.i78.i.epil.preheader, label %.preheader.i78.i.preheader.new

.preheader.i78.i.preheader.new:                   ; preds = %.preheader.i78.i.preheader
  %unroll_iter97 = and i64 %i.fm, -8
  br label %.preheader.i78.i

.preheader.i78.i:                                 ; preds = %.preheader.i78.i, %.preheader.i78.i.preheader.new
  %.sroa.04.0.i.i79.i = phi i64 [ 0, %.preheader.i78.i.preheader.new ], [ %i.gm, %.preheader.i78.i ] ; 9 uses
  %.sroa.02.0.i.i80.i = phi double [ -0.000000e+00, %.preheader.i78.i.preheader.new ], [ %i.gl, %.preheader.i78.i ]
  %niter98 = phi i64 [ 0, %.preheader.i78.i.preheader.new ], [ %niter98.next.7, %.preheader.i78.i ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %.val.i.i81.i = load double, ptr %i.fp, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.fq = fadd double %.sroa.02.0.i.i80.i, %.val.i.i81.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.val.i.i81.i.1 = load double, ptr %i.fs, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.ft = fadd double %i.fq, %.val.i.i81.i.1
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %.val.i.i81.i.2 = load double, ptr %i.fv, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.fw = fadd double %i.ft, %.val.i.i81.i.2
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %.val.i.i81.i.3 = load double, ptr %i.fy, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.fz = fadd double %i.fw, %.val.i.i81.i.3
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %.val.i.i81.i.4 = load double, ptr %i.gb, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.gc = fadd double %i.fz, %.val.i.i81.i.4
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %.val.i.i81.i.5 = load double, ptr %i.ge, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.gf = fadd double %i.gc, %.val.i.i81.i.5
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %.val.i.i81.i.6 = load double, ptr %i.gh, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.gi = fadd double %i.gf, %.val.i.i81.i.6
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %.val.i.i81.i.7 = load double, ptr %i.gk, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.gl = fadd double %i.gi, %.val.i.i81.i.7      ; 3 uses
  %i.gm = add nuw nsw i64 %.sroa.04.0.i.i79.i, 8  ; 2 uses
  %niter98.next.7 = add nuw i64 %niter98, 8       ; 2 uses
  %niter98.ncmp.7 = icmp eq i64 %niter98.next.7, %unroll_iter97
  br i1 %niter98.ncmp.7, label %.loopexit128.i.loopexit.unr-lcssa, label %.preheader.i78.i

.loopexit128.i.loopexit.unr-lcssa:                ; preds = %.preheader.i78.i
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %.loopexit128.i, label %.preheader.i78.i.epil.preheader

.preheader.i78.i.epil.preheader:                  ; preds = %.loopexit128.i.loopexit.unr-lcssa, %.preheader.i78.i.preheader
  %.sroa.04.0.i.i79.i.epil.init = phi i64 [ 0, %.preheader.i78.i.preheader ], [ %i.gm, %.loopexit128.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i80.i.epil.init = phi double [ -0.000000e+00, %.preheader.i78.i.preheader ], [ %i.gl, %.loopexit128.i.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.preheader.i78.i.epil

.preheader.i78.i.epil:                            ; preds = %.preheader.i78.i.epil, %.preheader.i78.i.epil.preheader
  %.sroa.04.0.i.i79.i.epil = phi i64 [ %i.gp, %.preheader.i78.i.epil ], [ %.sroa.04.0.i.i79.i.epil.init, %.preheader.i78.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i80.i.epil = phi double [ %i.go, %.preheader.i78.i.epil ], [ %.sroa.02.0.i.i80.i.epil.init, %.preheader.i78.i.epil.preheader ]
  %epil.iter93 = phi i64 [ %epil.iter93.next, %.preheader.i78.i.epil ], [ 0, %.preheader.i78.i.epil.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.04.0.i.i79.i.epil
  %.val.i.i81.i.epil = load double, ptr %i.gn, align 8, !alias.scope !99, !noalias !85, !noundef !4
  %i.go = fadd double %.sroa.02.0.i.i80.i.epil, %.val.i.i81.i.epil ; 2 uses
  %i.gp = add nuw nsw i64 %.sroa.04.0.i.i79.i.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %.loopexit128.i, label %.preheader.i78.i.epil, !llvm.loop !70

.loopexit128.i:                                   ; preds = %.loopexit128.i.loopexit.unr-lcssa, %.preheader.i78.i.epil, %.loopexit129.i
  %.sroa.0.0.i.i82.i = phi double [ -0.000000e+00, %.loopexit129.i ], [ %i.gl, %.loopexit128.i.loopexit.unr-lcssa ], [ %i.go, %.preheader.i78.i.epil ]
  %i.gq = uitofp nneg i64 %i.fm to double
  %i.gr = fdiv double %.sroa.0.0.i.i82.i, %i.gq   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !85
  %.val2.i.i = load ptr, ptr %i.m, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !noundef !4 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val.i.i = load ptr, ptr %i.gs, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !noundef !4 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !100, !noalias !101, !noundef !4 ; 8 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !100, !noalias !101, !noundef !4 ; 5 uses
  %i.gx = icmp ult i64 %i.gu, %i.gw               ; 2 uses
  br i1 %i.gx, label %.lr.ph.i.preheader, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.i

.lr.ph.i.preheader:                               ; preds = %.loopexit128.i
  %i.gy = sub nuw i64 %i.gw, %i.gu
  %.neg = add i64 %i.gu, 1
  %xtraiter99 = and i64 %i.gy, 1
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gz = add nuw i64 %i.gu, 1
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %i.gu
  %i.hb = load double, ptr %i.ha, align 8, !noalias !102, !noundef !4
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.gu
  %i.hd = load double, ptr %i.hc, align 8, !noalias !102, !noundef !4
  %1 = fsub double %i.hb, %i.fk                   ; 3 uses
  %2 = fsub double %i.hd, %i.gr
  %3 = fmul double %1, %2
  %4 = fadd double %3, 0.000000e+00               ; 2 uses
  %5 = fmul double %1, %1                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa66.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.prol ]
  %.lcssa65.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %5, %.lr.ph.i.prol ]
  %.sroa.0.0136.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.prol ]
  %.sroa.03.0135.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %5, %.lr.ph.i.prol ]
  %.sroa.8.0134.i.unr = phi i64 [ %i.gu, %.lr.ph.i.preheader ], [ %i.gz, %.lr.ph.i.prol ]
  %i.he = icmp eq i64 %i.gw, %.neg
  br i1 %i.he, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.0136.i = phi double [ %15, %.lr.ph.i ], [ %.sroa.0.0136.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.03.0135.i = phi double [ %17, %.lr.ph.i ], [ %.sroa.03.0135.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.8.0134.i = phi i64 [ %i.hk, %.lr.ph.i ], [ %.sroa.8.0134.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.hf = add nuw i64 %.sroa.8.0134.i, 1          ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %.sroa.8.0134.i
  %i.hh = load double, ptr %i.hg, align 8, !noalias !102, !noundef !4
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.8.0134.i
  %i.hj = load double, ptr %i.hi, align 8, !noalias !102, !noundef !4
  %6 = fsub double %i.hh, %i.fk                   ; 3 uses
  %7 = fsub double %i.hj, %i.gr
  %8 = fmul double %6, %7
  %9 = fadd double %.sroa.0.0136.i, %8
  %10 = fmul double %6, %6
  %11 = fadd double %.sroa.03.0135.i, %10
  %i.hk = add nuw i64 %.sroa.8.0134.i, 2          ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %i.hf
  %i.hm = load double, ptr %i.hl, align 8, !noalias !102, !noundef !4
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hf
  %i.ho = load double, ptr %i.hn, align 8, !noalias !102, !noundef !4
  %12 = fsub double %i.hm, %i.fk                  ; 3 uses
  %13 = fsub double %i.ho, %i.gr
  %14 = fmul double %12, %13
  %15 = fadd double %9, %14                       ; 2 uses
  %16 = fmul double %12, %12
  %17 = fadd double %11, %16                      ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.hk, %i.gw
  br i1 %exitcond.not.i.1, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.loopexit.i, label %.lr.ph.i

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.loopexit.i: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa66 = phi double [ %.lcssa66.unr, %.lr.ph.i.prol.loopexit ], [ %15, %.lr.ph.i ]
  %.lcssa65 = phi double [ %.lcssa65.unr, %.lr.ph.i.prol.loopexit ], [ %17, %.lr.ph.i ]
  %i.hp = fdiv double %.lcssa66, %.lcssa65
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.i

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.loopexit.i, %.loopexit128.i
  %i.hq = phi double [ +qnan, %.loopexit128.i ], [ %i.hp, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.loopexit.i ] ; 2 uses
  store double %i.hq, ptr %i.l, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !85
  %i.hr = fmul double %i.fk, %i.hq
  %i.hs = fsub double %i.gr, %i.hr
  store double %i.hs, ptr %i.k, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85
  store ptr %i.k, ptr %i.i, align 8, !noalias !85
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !85
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.ht, align 8, !noalias !85
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !85
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i unwind label %.loopexit.split-lp.i, !noalias !85

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !85
  %i.hu = getelementptr i8, ptr %i.u, i64 -32     ; 7 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %.body.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hx, %bb.z ], [ %i.hv, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.n

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85
  store double 0.000000e+00, ptr %i.h, align 8, !noalias !85
  br i1 %i.gx, label %.lr.ph140.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i

.lr.ph140.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ai, %.lr.ph140.i
  %i.ia = phi double [ 0.000000e+00, %.lr.ph140.i ], [ %i.il, %bb.ai ]
  %.sroa.05.0139.i = phi double [ 0.000000e+00, %.lr.ph140.i ], [ %i.ji, %bb.ai ]
  %.sroa.5109.0138.i = phi i64 [ %i.gu, %.lr.ph140.i ], [ %i.jj, %bb.ai ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %.sroa.5109.0138.i
  %i.ic = load double, ptr %i.ib, align 8, !noalias !103, !noundef !4 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.5109.0138.i
  %i.ie = load double, ptr %i.id, align 8, !noalias !103, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !85
  store double %i.ic, ptr %i.g, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85
  store double %i.ie, ptr %i.f, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85
  %i.if = load double, ptr %i.l, align 8, !noalias !85, !noundef !4
  %i.ig = fmul double %i.ic, %i.if
  %i.ih = load double, ptr %i.k, align 8, !noalias !85, !noundef !4
  %i.ii = fadd double %i.ih, %i.ig                ; 3 uses
  store double %i.ii, ptr %i.e, align 8, !noalias !85
  %i.ij = fsub double %i.ii, %i.ie
  %i.ik = call double @llvm.fabs.f64(double %i.ij)
  %i.il = call nsz double @llvm.maximumnum.f64(double %i.ia, double %i.ik) ; 2 uses
  store double %i.il, ptr %i.h, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85
  store ptr %i.g, ptr %i.d, align 8, !noalias !85
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !85
  store ptr %i.f, ptr %i.hy, align 8, !noalias !85
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !85
  store ptr %i.e, ptr %i.hz, align 8, !noalias !85
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !85
  %i.im = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @9, ptr noundef nonnull %i.d)
          to label %bb.ai unwind label %.loopexit.i ; 0 uses

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i: ; preds = %bb.ai, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.05.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i ], [ %i.ji, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  %i.in = load i64, ptr %i.af, align 8, !noalias !85, !noundef !4 ; 2 uses
  %i.io = icmp ult i64 %i.in, 1152921504606846976
  call void @llvm.assume(i1 %i.io)
  %i.ip = uitofp nneg i64 %i.in to double
  %i.iq = fdiv double %.sroa.05.0.lcssa.i, %i.ip
  %i.ir = call double @llvm.sqrt.f64(double %i.iq)
  store double %i.ir, ptr %i.c, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  store ptr %i.c, ptr %i.b, align 8, !noalias !85
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !85
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.is, align 8, !noalias !85
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !85
  %i.it = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @7, ptr noundef nonnull %i.b)
          to label %bb.ab unwind label %.loopexit.split-lp.i ; 0 uses

bb.ab:                                            ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  %i.iu = load double, ptr %i.c, align 8, !noalias !85, !noundef !4
  %i.iv = fcmp olt double %i.iu, 5.000000e-02
  %i.iw = load double, ptr %i.h, align 8, !noalias !85
  %i.ix = fcmp olt double %i.iw, 1.000000e-01
  %or.cond.i = select i1 %i.iv, i1 %i.ix, i1 false
  %i.iy = load double, ptr %i.k, align 8, !noalias !85
  %i.iz = fcmp ogt double %i.iy, -1.000000e-01
  %narrow.i = select i1 %or.cond.i, i1 %i.iz, i1 false
  %.sroa.07.0.i = zext i1 %narrow.i to i8
  %i.ja = getelementptr i8, ptr %i.u, i64 -8
  store i8 %.sroa.07.0.i, ptr %i.ja, align 8, !alias.scope !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !85
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body93.i unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.body93.i:                                        ; preds = %bb.af, %bb.ac, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.jd, %bb.af ], [ %i.jb, %bb.ac ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #19
          to label %common.resume unwind label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !85
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB5_5Round6finish.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ai:                                            ; preds = %bb.aa
  %i.jg = fsub double %i.ie, %i.ii                ; 2 uses
  %i.jh = fmul double %i.jg, %i.jg
  %i.ji = fadd double %.sroa.05.0139.i, %i.jh     ; 2 uses
  %i.jj = add i64 %.sroa.5109.0138.i, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !85
  %exitcond148.not.i = icmp eq i64 %i.jj, %i.gw
  br i1 %exitcond148.not.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i, label %bb.aa

bb.aj:                                            ; preds = %.body93.i, %bb.n
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
end_hunk_0
