Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.15?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12inv_beta_reg:bb.a
  %i.ch = fsub double 1.000000e+00, %i.cg
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ci = fmul double %.sroa.028.0, %.sroa.0.0
  %i.cj = tail call double @llvm.log.f64(double %i.ci)
  %i.ck = fadd double %i.cj, %i.k
  %i.cl = fdiv double %i.ck, %.sroa.0.0
  %i.cm = tail call double @llvm.exp.f64(double %i.cl)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.g
  %.sroa.045.0 = phi double [ %i.br, %bb.g ], [ %i.ce, %bb.i ], [ %i.cm, %bb.k ], [ %i.ch, %bb.j ] ; 2 uses
  %i.cn = fcmp olt double %.sroa.045.0, 1.000000e-04
  %spec.store.select.i = select i1 %i.cn, double 1.000000e-04, double %.sroa.045.0 ; 2 uses
  %i.co = fcmp ogt double %spec.store.select.i, 9.999000e-01
  %spec.store.select1.i = select i1 %i.co, double 9.999000e-01, double %spec.store.select.i
  %i.cp = tail call double @llvm.pow.f64(double %.sroa.028.0, double 2.000000e-01)
  %i.cq = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = fdiv <2 x double> <double -5.000000e+00, double 1.000000e+00>, %i.cr ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fdiv double %i.ct, %.sroa.0.0
  %i.cv = extractelement <2 x double> %i.cs, i64 1
  %i.cw = fsub double %i.cu, %i.cv
  %i.cx = fadd double %i.cw, -1.300000e+01
  %i.cy = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.cx) ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, -30
  %i.da = tail call double @llvm.powi.f64.i32(double 1.000000e+01, i32 %i.cy)
  %.sroa.058.0 = select i1 %i.cz, double %i.da, double 1.000000e-30 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dc = fsub double 1.000000e+00, %.sroa.0.0
  %i.dd = fsub double 1.000000e+00, %.sroa.016.0
  br label %bb.m

bb.m:                                             ; preds = %.split.us, %bb.l
  %.sroa.064.0 = phi double [ 1.000000e+00, %bb.l ], [ %.sroa.064.1, %.split.us ]
  %.sroa.061.0 = phi double [ 1.000000e+00, %bb.l ], [ %i.ea, %.split.us ] ; 2 uses
  %.sroa.060.0 = phi double [ 0.000000e+00, %bb.l ], [ %i.ds, %.split.us ]
  %.sroa.045.1 = phi double [ %spec.store.select1.i, %bb.l ], [ %i.ec, %.split.us ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %.sroa.0.0, double noundef %.sroa.016.0, double noundef %.sroa.045.1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.de = load i8, ptr %i.b, align 8, !range !4, !alias.scope !21, !noundef !5
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.n, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !7, !alias.scope !21, !noundef !5
  store i8 %i.dh, ptr %i.a, align 1, !noalias !22
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15, !noalias !21
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit: ; preds = %bb.m
  %i.di = load double, ptr %i.db, align 8, !alias.scope !21, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dj = fsub double %i.di, %.sroa.028.0
  %i.dk = tail call double @llvm.log.f64(double %.sroa.045.1)
  %i.dl = fmul double %i.dc, %i.dk
  %i.dm = fadd double %i.k, %i.dl
  %i.dn = fsub double 1.000000e+00, %.sroa.045.1  ; 2 uses
  %i.do = tail call double @llvm.log.f64(double %i.dn)
  %i.dp = fmul double %i.dd, %i.do
  %i.dq = fadd double %i.dm, %i.dp
  %i.dr = tail call double @llvm.exp.f64(double %i.dq)
  %i.ds = fmul double %i.dr, %i.dj                ; 6 uses
  %i.dt = fmul double %.sroa.060.0, %i.ds
  %i.du = fcmp ugt double %i.dt, 0.000000e+00
  %i.dv = fcmp ogt double %.sroa.061.0, 1.000000e-30
  %spec.store.select = select i1 %i.dv, double %.sroa.061.0, double 1.000000e-30
  %.sroa.064.1 = select i1 %i.du, double %.sroa.064.0, double %spec.store.select ; 4 uses
  %i.dw = fcmp ugt double %.sroa.064.1, %.sroa.058.0
  %i.dx = fmul double %i.ds, %i.ds
  %i.dy = fcmp ugt double %i.dx, %.sroa.058.0
  %or.cond85 = and i1 %i.dy, %i.dw
  %or.cond85.fr = freeze i1 %or.cond85
  br i1 %or.cond85.fr, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us: ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, %.backedge.us
  %.sroa.076.0.us = phi double [ %.sroa.076.0.be.us, %.backedge.us ], [ 1.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit ] ; 2 uses
  %i.dz = fmul double %i.ds, %.sroa.076.0.us      ; 3 uses
  %i.ea = fmul double %i.dz, %i.dz                ; 2 uses
  %i.eb = fcmp olt double %i.ea, %.sroa.064.1
  br i1 %i.eb, label %bb.o, label %.backedge.us

bb.o:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us
  %i.ec = fsub double %.sroa.045.1, %i.dz         ; 6 uses
  %i.ed = fcmp oge double %i.ec, 0.000000e+00
  %i.ee = fcmp ole double %i.ec, 1.000000e+00
  %spec.select.i.us = and i1 %i.ed, %i.ee
  br i1 %spec.select.i.us, label %bb.p, label %.backedge.us

bb.p:                                             ; preds = %bb.o
  %i.ef = fcmp une double %i.ec, 0.000000e+00
  %i.eg = fcmp une double %i.ec, 1.000000e+00
  %or.cond.us = and i1 %i.ef, %i.eg
  br i1 %or.cond.us, label %.split.us, label %.backedge.us

.backedge.us:                                     ; preds = %bb.p, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us, %bb.o
  %.sroa.076.0.be.us = fdiv double %.sroa.076.0.us, 3.000000e+00
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split.us

.split.us:                                        ; preds = %bb.p
  %i.eh = fcmp oeq double %i.ec, %.sroa.045.1
  br i1 %i.eh, label %.loopexit, label %bb.m

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split: ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit, %.backedge
  %.sroa.076.0 = phi double [ %i.eo, %.backedge ], [ 1.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit ] ; 2 uses
  %i.ei = fmul double %i.ds, %.sroa.076.0         ; 3 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fcmp olt double %i.ej, %.sroa.064.1
  br i1 %i.ek, label %bb.q, label %.backedge

bb.q:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split
  %i.el = fsub double %.sroa.045.1, %i.ei         ; 4 uses
  %i.em = fcmp oge double %i.el, 0.000000e+00
  %i.en = fcmp ole double %i.el, 1.000000e+00
  %spec.select.i = and i1 %i.em, %i.en
  br i1 %spec.select.i, label %.loopexit.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.q, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split
  %i.eo = fdiv double %.sroa.076.0, 3.000000e+00
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg.exit.split

.loopexit.loopexit:                               ; preds = %bb.q
  %.pre = fsub double 1.000000e+00, %i.el
  br label %.loopexit

.loopexit:                                        ; preds = %.split.us, %.loopexit.loopexit
  %.pre-phi = phi double [ %.pre, %.loopexit.loopexit ], [ %i.dn, %.split.us ]
  %.sroa.045.2 = phi double [ %i.el, %.loopexit.loopexit ], [ %.sroa.045.1, %.split.us ]
  %.sroa.038.0 = select i1 %i.n, double %.pre-phi, double %.sroa.045.2
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit, %.loopexit
  %.sroa.038.1 = phi double [ %.sroa.038.0, %.loopexit ], [ 0.000000e+00, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta.exit ], [ 1.000000e+00, %bb.d ]
  ret double %.sroa.038.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ugt double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %2, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.c, align 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %2)
  %i.f = fadd double %i.d, %i.e
  %i.g = fadd double %1, %2
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.g)
  %i.i = fsub double %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2, double noundef %3)
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !noundef !5
  %i.e = fcmp ugt double %1, 0.000000e+00
  br i1 %i.e, label %bb.c, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp ugt double %2, 0.000000e+00
  br i1 %i.f, label %bb.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta.exit.thread

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta.exit.thread: ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.g, align 1, !alias.scope !27
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %2)
  %i.j = fadd double %i.h, %i.i
  %i.k = fadd double %1, %2
  %i.l = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.k)
  %i.m = fsub double %i.j, %i.l
  %i.n = tail call double @llvm.exp.f64(double %i.m)
  %i.o = fmul double %i.d, %i.n
  store double %i.o, ptr %i.c, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta.exit.thread
  %.sink4 = phi i8 [ 1, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta.exit.thread ], [ 0, %bb.d ]
  store i8 %.sink4, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp ugt double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %2, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.c, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = fcmp oge double %3, 0.000000e+00
  %i.e = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.d, %i.e
  br i1 %spec.select.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.f, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.g, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.h = fcmp oeq double %3, 0.000000e+00
  br i1 %i.h, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.l, %bb.f, %bb.e, %bb.c
  %.sink86 = phi i8 [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ]
  store i8 %.sink86, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.i = fadd double %3, -1.000000e+00
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ugt double %i.j, 1.000000e-15
  br i1 %i.k, label %bb.j, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.l = bitcast double %3 to i64                 ; 3 uses
  %.not.i = icmp ugt i64 %i.l, 4607182418800017408
  br i1 %.not.i, label %.split, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit

.split:                                           ; preds = %bb.j
  %i.m = icmp ult i64 %i.l, 4607182418800017414
  br i1 %i.m, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread72

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit: ; preds = %bb.j
  %i.n = icmp samesign ugt i64 %i.l, 4607182418800017402
  br i1 %i.n, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread72

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread72: ; preds = %.split, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit
  %i.o = fadd double %1, %2
  %i.p = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.o)
  %i.q = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.r = fsub double %i.p, %i.q
  %i.s = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %2)
  %i.t = fsub double %i.r, %i.s
  %i.u = tail call nnan ninf double @llvm.log.f64(double %3)
  %i.v = fmul double %1, %i.u
  %i.w = fadd double %i.v, %i.t
  %i.x = fsub nnan double 1.000000e+00, %3
  %i.y = tail call double @llvm.log.f64(double %i.x)
  %i.z = fmul double %2, %i.y
  %i.aa = fadd double %i.z, %i.w
  %i.ab = tail call double @llvm.exp.f64(double %i.aa)
  br label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread: ; preds = %bb.i, %.split, %bb.g, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread72
  %.sroa.029.0 = phi double [ %i.ab, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread72 ], [ 0.000000e+00, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.split ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.ac = fadd double %1, 1.000000e+00
  %i.ad = fadd double %1, %2                      ; 3 uses
  %i.ae = fadd double %i.ad, 2.000000e+00
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = fcmp oge double %3, %i.af               ; 5 uses
  %i.ah = fsub double 1.000000e+00, %3
  %.sroa.033.0 = select i1 %i.ag, double %i.ah, double %3 ; 3 uses
  %.sroa.021.0 = select i1 %i.ag, double %1, double %2
  %.sroa.0.0 = select i1 %i.ag, double %2, double %1 ; 4 uses
  %i.ai = fadd double %.sroa.0.0, 1.000000e+00    ; 2 uses
  %i.aj = fadd double %.sroa.0.0, -1.000000e+00
  %i.ak = fmul double %i.ad, %.sroa.033.0
  %i.al = fdiv double %i.ak, %i.ai
  %i.am = fsub double 1.000000e+00, %i.al         ; 2 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp olt double %i.an, f0x0360000000000000
  %i.ap = fdiv double 1.000000e+00, %i.am
  %i.aq = select i1 %i.ao, double f0x7C80000000000000, double %i.ap ; 2 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.m
  %i.ar = add nuw nsw i32 %.sroa.065.075, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, 141
  br i1 %exitcond.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = fmul double %.sroa.029.0, %i.cw         ; 2 uses
  %i.at = fdiv double %i.as, %2
  %i.au = fsub double 1.000000e+00, %i.at
  %i.av = fdiv double %i.as, %1
  %.sink = select i1 %i.ag, double %i.au, double %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink, ptr %i.aw, align 8
  br label %bb.h

bb.m:                                             ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, %bb.k
  %.sroa.037.078 = phi double [ 1.000000e+00, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread ], [ %spec.store.select2, %bb.k ]
  %.sroa.043.077 = phi double [ %i.aq, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread ], [ %i.cu, %bb.k ]
  %.sroa.054.076 = phi double [ %i.aq, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread ], [ %i.cw, %bb.k ]
  %.sroa.065.075 = phi i32 [ 1, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread ], [ %i.ar, %bb.k ] ; 3 uses
  %i.ax = uitofp nneg i32 %.sroa.065.075 to double ; 4 uses
  %i.ay = shl nuw nsw i32 %.sroa.065.075, 1
  %i.az = uitofp nneg i32 %i.ay to double         ; 3 uses
  %i.ba = fsub double %.sroa.021.0, %i.ax
  %i.bb = fmul double %i.ba, %i.ax
  %i.bc = fmul double %.sroa.033.0, %i.bb
  %i.bd = fadd double %i.aj, %i.az
  %i.be = fadd double %.sroa.0.0, %i.az           ; 2 uses
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fadd double %.sroa.0.0, %i.ax
  %i.bh = fneg double %i.bg
  %i.bi = fadd double %i.ad, %i.ax
  %i.bj = fmul double %i.bi, %i.bh
  %i.bk = fmul double %.sroa.033.0, %i.bj
  %i.bl = fdiv double %i.bc, %i.bf                ; 2 uses
  %i.bm = fadd double %i.ai, %i.az
  %i.bn = insertelement <2 x double> poison, double %.sroa.043.077, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.be, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bm, i64 1
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = fadd <2 x double> %i.br, <double 1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp olt double %i.bu, f0x0360000000000000
  %i.bw = fdiv double %i.bl, %.sroa.037.078
  %i.bx = fadd double %i.bw, 1.000000e+00         ; 2 uses
  %i.by = tail call double @llvm.fabs.f64(double %i.bx)
  %i.bz = fcmp olt double %i.by, f0x0360000000000000
  %spec.store.select1 = select i1 %i.bz, double f0x0360000000000000, double %i.bx ; 2 uses
  %i.ca = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bk, i64 1
  %i.cb = fdiv <2 x double> %i.ca, %i.bs          ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = select i1 %i.bv, double f0x7C80000000000000, double %i.cc ; 2 uses
  %i.ce = fmul double %.sroa.054.076, %i.cd
  %i.cf = fmul double %spec.store.select1, %i.ce
  %i.cg = extractelement <2 x double> %i.cb, i64 1
  %i.ch = fmul double %i.cg, %i.cd
  %i.ci = fadd double %i.ch, 1.000000e+00         ; 2 uses
  %i.cj = tail call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp olt double %i.cj, f0x0360000000000000
  %i.cl = shufflevector <2 x double> %i.cb, <2 x double> <double poison, double 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cm = insertelement <2 x double> poison, double %spec.store.select1, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ci, i64 1
  %i.co = fdiv <2 x double> %i.cl, %i.cn          ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  %i.cq = fadd double %i.cp, 1.000000e+00         ; 2 uses
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp olt double %i.cr, f0x0360000000000000
  %spec.store.select2 = select i1 %i.cs, double f0x0360000000000000, double %i.cq ; 2 uses
  %i.ct = extractelement <2 x double> %i.co, i64 1
  %i.cu = select i1 %i.ck, double f0x7C80000000000000, double %i.ct ; 2 uses
  %i.cv = fmul double %i.cu, %spec.store.select2  ; 2 uses
  %i.cw = fmul double %i.cf, %i.cv                ; 3 uses
  %i.cx = fadd double %i.cv, -1.000000e+00
  %i.cy = tail call double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ugt double %i.cy, f0x3CA0000000000000
  br i1 %i.cz, label %bb.k, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = fmul double %.sroa.029.0, %i.cw         ; 2 uses
  %i.db = fdiv double %i.da, %2
  %i.dc = fsub double 1.000000e+00, %i.db
  %i.dd = fdiv double %i.da, %1
  %.sink80 = select i1 %i.ag, double %i.dc, double %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink80, ptr %i.de, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta4beta(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp ugt double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  store i8 %.sroa.4.0.ph, ptr %i.a, align 1, !noalias !31
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !32
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit: ; preds = %bb.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0)
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.f = fadd double %i.d, %i.e
  %i.g = fadd double %0, %1
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.g)
  %i.i = fsub double %i.f, %i.h
  %i.j = tail call double @llvm.exp.f64(double %i.i)
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta7ln_beta(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp ugt double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i8 %.sroa.4.0.ph, ptr %i.a, align 1, !noalias !36
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !37
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit: ; preds = %bb.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0)
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.f = fadd double %i.d, %i.e
  %i.g = fadd double %0, %1
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.g)
  %i.i = fsub double %i.f, %i.h
  ret double %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_inc(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1, double noundef %2), !alias.scope !47
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !47, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !alias.scope !47, !noundef !5
  %i.g = fcmp ugt double %0, 0.000000e+00
  br i1 %i.g, label %bb.c, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread2

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ugt double %1, 0.000000e+00
  br i1 %i.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread2

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread2: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sink.i, ptr %i.i, align 1, !alias.scope !49
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread

_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread: ; preds = %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc.exit.thread2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !7, !alias.scope !51, !noundef !5
  store i8 %i.k, ptr %i.a, align 1, !noalias !50
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15, !noalias !51
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit: ; preds = %bb.c
  %i.l = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0)
  %i.m = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.n = fadd double %i.l, %i.m
  %i.o = fadd double %0, %1
  %i.p = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.o)
  %i.q = fsub double %i.n, %i.p
  %i.r = tail call double @llvm.exp.f64(double %i.q)
  %i.s = fmul double %i.f, %i.r                   ; 2 uses
  store double %i.s, ptr %i.e, align 8, !alias.scope !47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1, double noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !55, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !7, !alias.scope !55, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !56
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15, !noalias !55
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !55, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(errnomem: write) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma11inv_digamma(double noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %0, -inf
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %0, +inf
  br i1 %i.c, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call double @llvm.exp.f64(double %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.sroa.0.09 = phi double [ %i.d, %bb.d ], [ %i.k, %bb.h ] ; 2 uses
  %.sroa.03.08 = phi double [ 1.000000e+00, %bb.d ], [ %i.l, %bb.h ] ; 2 uses
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %.sroa.0.09)
  %i.f = fsub double %0, %i.e                     ; 3 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.f

.loopexit:                                        ; preds = %bb.h, %bb.c, %bb.b, %bb.a
  %.sroa.0.1 = phi double [ +inf, %bb.c ], [ +qnan, %bb.a ], [ 0.000000e+00, %bb.b ], [ %i.k, %bb.h ]
  ret double %.sroa.0.1

bb.f:                                             ; preds = %bb.e
  %i.h = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call double @llvm.copysign.f64(double 1.000000e+00, double %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %.sroa.06.0 = phi double [ %i.i, %bb.g ], [ 0.000000e+00, %bb.e ], [ +qnan, %bb.f ]
  %i.j = fmul double %.sroa.03.08, %.sroa.06.0
  %i.k = fadd double %.sroa.0.09, %i.j            ; 2 uses
  %i.l = fmul nnan double %.sroa.03.08, 5.000000e-01 ; 2 uses
  %i.m = fcmp ogt double %i.l, 1.000000e-15
  br i1 %i.m, label %bb.e, label %.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_li(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2)
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %1)
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %or.cond37 = fcmp uno double %1, %2
  br i1 %or.cond37, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double +qnan, ptr %i.a, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %or.cond3 = tail call i1 @llvm.is.fpclass.f64(double %2, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.d = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.e = fcmp oeq double %i.d, 1.000000e+00
  %i.f = bitcast double %1 to i64
  %i.g = icmp ult i64 %i.f, 6
  %or.cond57 = and i1 %i.e, %i.g
  br i1 %or.cond57, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread49

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread49: ; preds = %bb.g
  %i.h = tail call double @llvm.copysign.f64(double 1.000000e+00, double %2)
  %i.i = fcmp oeq double %i.h, 1.000000e+00
  %i.j = bitcast double %2 to i64
  %i.k = icmp ult i64 %i.j, 6
  %or.cond59 = and i1 %i.i, %i.k
  br i1 %or.cond59, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread, label %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread52

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread: ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.l, align 8
  br label %bb.n

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread52: ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread49
  %i.m = tail call nnan ninf double @llvm.log.f64(double %2)
  %i.n = fmul nnan double %1, %i.m
  %i.o = fsub double %i.n, %2
  %i.p = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.q = fsub double %i.o, %i.p                   ; 3 uses
  %i.r = fcmp olt double %i.q, f0xC0862E42FEFA39EF
  br i1 %i.r, label %bb.i, label %bb.h

_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread: ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.s, align 8
  br label %bb.n

bb.h:                                             ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread52
  %i.t = fcmp ugt double %2, 1.000000e+00
  %i.u = fcmp ugt double %2, %1
  %or.cond38 = and i1 %i.t, %i.u
  br i1 %or.cond38, label %bb.j, label %.preheader

bb.i:                                             ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread52
  %i.v = fcmp olt double %1, %2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.x = fsub double 1.000000e+00, %1             ; 2 uses
  %i.y = fadd double %2, %i.x
  %i.z = fadd double %i.y, 1.000000e+00           ; 2 uses
  %i.aa = fadd double %2, 1.000000e+00            ; 2 uses
  %i.ab = fmul nnan double %2, %i.z               ; 2 uses
  %i.ac = fdiv double %i.aa, %i.ab
  %i.ad = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.af = insertelement <2 x double> <double poison, double 1.000000e+00>, double %2, i64 0
  %i.ag = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.x, i64 1
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.032.0.ph = phi double [ %i.bf, %bb.l ], [ %i.ac, %bb.j ]
  %.sroa.018.0.ph = phi i32 [ %i.am, %bb.l ], [ 0, %bb.j ]
  %.ph = phi <2 x double> [ %i.bb, %bb.l ], [ %i.ae, %bb.j ]
  %.ph67 = phi <2 x double> [ %i.bc, %bb.l ], [ %i.af, %bb.j ]
  %.ph68 = phi <2 x double> [ %i.al, %bb.l ], [ %i.ah, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.k
  %.sroa.018.0 = phi i32 [ %i.am, %bb.k ], [ %.sroa.018.0.ph, %.outer ]
  %i.ai = phi <2 x double> [ %i.bb, %bb.k ], [ %.ph, %.outer ] ; 3 uses
  %i.aj = phi <2 x double> [ %i.bc, %bb.k ], [ %.ph67, %.outer ]
  %i.ak = phi <2 x double> [ %i.al, %bb.k ], [ %.ph68, %.outer ]
  %i.al = fadd <2 x double> %i.ak, <double 2.000000e+00, double 1.000000e+00> ; 4 uses
  %i.am = add i32 %.sroa.018.0, 1                 ; 3 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = extractelement <2 x double> %i.al, i64 1
  %i.ap = fmul double %i.ao, %i.an
  %i.aq = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ai, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.aj, %i.at
  %i.av = fsub <2 x double> %i.ar, %i.au          ; 4 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 2 uses
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, f0x4330000000000000 ; 2 uses
  %i.az = fmul <2 x double> %i.ai, splat (double f0x3CB0000000000000)
  %i.ba = fmul <2 x double> %i.av, splat (double f0x3CB0000000000000)
  %i.bb = select i1 %i.ay, <2 x double> %i.ba, <2 x double> %i.av ; 2 uses
  %i.bc = select i1 %i.ay, <2 x double> %i.az, <2 x double> %i.ai ; 2 uses
  %i.bd = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %i.be = fcmp une double %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.bf = fdiv double %i.aw, %i.bd                ; 4 uses
  %i.bg = fsub double %.sroa.032.0.ph, %i.bf
  %i.bh = fdiv double %i.bg, %i.bf
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ugt double %i.bi, 1.000000e-15
  br i1 %i.bj, label %.outer, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = tail call double @llvm.exp.f64(double %i.q)
  %i.bl = fmul double %i.bk, %i.bf
  %i.bm = fsub double 1.000000e+00, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bm, ptr %i.bn, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread, %bb.o, %bb.q, %bb.p, %bb.m, %bb.f, %bb.d, %bb.b
  %.sink = phi i8 [ 0, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit.thread ], [ 0, %_RNvXs4_NtCs3u8M9drud7n_6approx7ulps_eqdNtB5_6UlpsEq7ulps_eq.exit46.thread ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.m ], [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

.preheader:                                       ; preds = %bb.h, %.preheader
  %.sroa.08.0 = phi double [ %i.br, %.preheader ], [ 1.000000e+00, %bb.h ]
  %.sroa.05.0 = phi double [ %i.bq, %.preheader ], [ 1.000000e+00, %bb.h ]
  %.sroa.0.0 = phi double [ %i.bo, %.preheader ], [ %1, %bb.h ]
  %i.bo = fadd double %.sroa.0.0, 1.000000e+00    ; 2 uses
  %i.bp = fdiv double %2, %i.bo
  %i.bq = fmul double %.sroa.05.0, %i.bp          ; 3 uses
  %i.br = fadd double %.sroa.08.0, %i.bq          ; 3 uses
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fcmp ugt double %i.bs, 1.000000e-15
  br i1 %i.bt, label %.preheader, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bu = tail call double @llvm.exp.f64(double %i.q)
  %i.bv = fmul double %i.bu, %i.br
  %i.bw = fdiv double %i.bv, %1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bw, ptr %i.bx, align 8
  br label %bb.n

bb.p:                                             ; preds = %bb.i
  store double 0.000000e+00, ptr %i.w, align 8
  br label %bb.n

bb.q:                                             ; preds = %bb.i
  store double 1.000000e+00, ptr %i.w, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ui(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2)
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %1)
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %or.cond = fcmp uno double %1, %2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double +qnan, ptr %i.c, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %or.cond1 = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %or.cond2 = tail call i1 @llvm.is.fpclass.f64(double %2, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.e, align 1
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.f = fcmp olt double %2, 1.000000e+00
  %i.g = fcmp ole double %2, %1
  %or.cond3 = or i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %1, double noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.h = load i8, ptr %i.b, align 8, !range !4, !alias.scope !60, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit, !prof !6

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !4, !alias.scope !60, !noundef !5
  store i8 %i.k, ptr %i.a, align 1, !noalias !61
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !60
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load double, ptr %i.l, align 8, !alias.scope !60, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = fsub double 1.000000e+00, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.n, ptr %i.o, align 8
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.p = tail call ninf double @llvm.log.f64(double %2)
  %i.q = fmul double %1, %i.p
  %i.r = fsub double %i.q, %2
  %i.s = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %1)
  %i.t = fsub double %i.r, %i.s                   ; 2 uses
  %i.u = fcmp olt double %i.t, f0xC0862E42FEFA39EF
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = fsub double 1.000000e+00, %1             ; 2 uses
  %i.w = fadd double %2, %i.v
  %i.x = fadd double %i.w, 1.000000e+00           ; 2 uses
  %i.y = fadd double %2, 1.000000e+00             ; 2 uses
  %i.z = fmul double %2, %i.x                     ; 2 uses
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.y, i64 1
  %i.ad = insertelement <2 x double> <double poison, double 1.000000e+00>, double %2, i64 0
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.v, i64 1
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.k
  %.sroa.027.0.ph = phi double [ %i.be, %bb.n ], [ %i.aa, %bb.k ]
  %.sroa.013.0.ph = phi double [ %i.am, %bb.n ], [ 0.000000e+00, %bb.k ]
  %.ph = phi <2 x double> [ %i.ba, %bb.n ], [ %i.ac, %bb.k ]
  %.ph35 = phi <2 x double> [ %i.bb, %bb.n ], [ %i.ad, %bb.k ]
  %.ph36 = phi <2 x double> [ %i.al, %bb.n ], [ %i.af, %bb.k ]
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = fcmp olt double %1, %2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.q

bb.m:                                             ; preds = %.outer, %bb.m
  %.sroa.013.0 = phi double [ %i.am, %bb.m ], [ %.sroa.013.0.ph, %.outer ]
  %i.ai = phi <2 x double> [ %i.ba, %bb.m ], [ %.ph, %.outer ] ; 3 uses
  %i.aj = phi <2 x double> [ %i.bb, %bb.m ], [ %.ph35, %.outer ]
  %i.ak = phi <2 x double> [ %i.al, %bb.m ], [ %.ph36, %.outer ]
  %i.al = fadd <2 x double> %i.ak, <double 2.000000e+00, double 1.000000e+00> ; 4 uses
  %i.am = fadd double %.sroa.013.0, 1.000000e+00  ; 3 uses
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fmul double %i.am, %i.an
  %i.ap = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ai, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.aj, %i.as
  %i.au = fsub <2 x double> %i.aq, %i.at          ; 4 uses
  %i.av = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp ogt double %i.aw, f0x4330000000000000 ; 2 uses
  %i.ay = fmul <2 x double> %i.ai, splat (double f0x3CB0000000000000)
  %i.az = fmul <2 x double> %i.au, splat (double f0x3CB0000000000000)
  %i.ba = select i1 %i.ax, <2 x double> %i.az, <2 x double> %i.au ; 2 uses
  %i.bb = select i1 %i.ax, <2 x double> %i.ay, <2 x double> %i.ai ; 2 uses
  %i.bc = extractelement <2 x double> %i.au, i64 0 ; 2 uses
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  %i.be = fdiv double %i.av, %i.bc                ; 4 uses
  %i.bf = fsub double %.sroa.027.0.ph, %i.be
  %i.bg = fdiv double %i.bf, %i.be
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ugt double %i.bh, 1.000000e-15
  br i1 %i.bi, label %.outer, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call double @llvm.exp.f64(double %i.t)
  %i.bk = fmul double %i.bj, %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bk, ptr %i.bl, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit, %bb.r, %bb.q, %bb.o, %bb.f, %bb.d, %bb.b
  %.sink = phi i8 [ 0, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.o ], [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.q:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %i.ah, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  store double 0.000000e+00, ptr %i.ah, align 8
  br label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e-01
  br i1 %i.a, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fadd <2 x double> %i.c, <double 1.000000e+00, double 2.000000e+00>
  %i.e = fadd <2 x double> %i.d, splat (double -1.000000e+00)
  %i.f = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.e ; 2 uses
  %i.g = insertelement <8 x double> poison, double %0, i64 0
  %i.h = shufflevector <8 x double> %i.g, <8 x double> poison, <8 x i32> zeroinitializer
  %i.i = fadd <8 x double> %i.h, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>
  %i.j = fadd <8 x double> %i.i, splat (double -1.000000e+00)
  %i.k = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.j
  %i.l = extractelement <2 x double> %i.f, i64 0
  %op.rdx33 = fadd double %i.l, f0x3EFA109C2231ECD3
  %i.m = extractelement <2 x double> %i.f, i64 1
  %op.rdx34 = fadd double %op.rdx33, %i.m
  %i.n = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx34, <8 x double> %i.k)
  %i.o = fmul double %i.n, f0x3FFDC420AF97465B
  %i.p = fadd double %0, -5.000000e-01            ; 2 uses
  %i.q = fadd double %i.p, f0x4025CD0FC71D6063
  %i.r = fdiv double %i.q, f0x4005BF0A8B145769
  %i.s = tail call double @llvm.pow.f64(double %i.r, double %i.p)
  %i.t = fmul double %i.s, %i.o
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.u = insertelement <2 x double> poison, double %0, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.v
  %i.x = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.w ; 2 uses
  %i.y = insertelement <8 x double> poison, double %0, i64 0
  %i.z = shufflevector <8 x double> %i.y, <8 x double> poison, <8 x i32> zeroinitializer
  %i.aa = fsub <8 x double> <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>, %i.z
  %i.ab = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.aa
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %op.rdx = fadd double %i.ac, f0x3EFA109C2231ECD3
  %i.ad = extractelement <2 x double> %i.x, i64 1
  %op.rdx32 = fadd double %op.rdx, %i.ad
  %i.ae = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx32, <8 x double> %i.ab)
  %i.af = fmul nnan double %0, f0x400921FB54442D18
  %i.ag = tail call double @llvm.sin.f64(double %i.af)
  %i.ah = fmul double %i.ag, %i.ae
  %i.ai = fmul double %i.ah, f0x3FFDC420AF97465B
  %i.aj = fsub double 5.000000e-01, %0            ; 2 uses
  %i.ak = fadd double %i.aj, f0x4025CD0FC71D6063
  %i.al = fdiv double %i.ak, f0x4005BF0A8B145769
  %i.am = tail call double @llvm.pow.f64(double %i.al, double %i.aj)
  %i.an = fmul double %i.am, %i.ai
  %i.ao = fdiv double f0x400921FB54442D18, %i.an
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader29.preheader
  %.sroa.0.0 = phi double [ %i.ao, %.preheader.preheader ], [ %i.t, %.preheader29.preheader ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(errnomem: write) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %0) unnamed_addr #4 {
bb.a:
  %or.cond = fcmp ueq double %0, -inf
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp ole double %0, 0.000000e+00
  %i.b = tail call double @llvm.trunc.f64(double %0)
  %i.c = fcmp oeq double %i.b, %0
  %or.cond31 = and i1 %i.a, %i.c
  br i1 %or.cond31, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp olt double %0, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fcmp ugt double %0, f0x3EB0C6F7A0B5ED8D
  br i1 %i.e, label %.preheader32, label %bb.h

.preheader32:                                     ; preds = %bb.d
  %i.f = fcmp olt double %0, 1.200000e+01
  br i1 %i.f, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.g = fsub double 1.000000e+00, %0             ; 6 uses
  %i.h = fcmp ugt double %i.g, f0x3EB0C6F7A0B5ED8D
  br i1 %i.h, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.i = fcmp olt double %i.g, 1.200000e+01
  br i1 %i.i, label %.lr.ph38, label %._crit_edge39

bb.f:                                             ; preds = %bb.e
  %i.j = fdiv double 1.000000e+00, %i.g
  %i.k = fsub double f0xBFE2788CFC6FB619, %i.j
  %i.l = fmul nnan double %i.g, f0x3FFA51A6625307D3
  %i.m = fadd double %i.l, %i.k
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit

._crit_edge39:                                    ; preds = %.lr.ph38, %.preheader
  %.sroa.018.0.i.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.p, %.lr.ph38 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi double [ %i.g, %.preheader ], [ %i.q, %.lr.ph38 ] ; 3 uses
  %i.n = fcmp ult double %.sroa.0.0.i.lcssa, 1.200000e+01
  br i1 %i.n, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit, label %bb.g

.lr.ph38:                                         ; preds = %.preheader, %.lr.ph38
  %.sroa.0.0.i37 = phi double [ %i.q, %.lr.ph38 ], [ %i.g, %.preheader ] ; 2 uses
  %.sroa.018.0.i36 = phi double [ %i.p, %.lr.ph38 ], [ 0.000000e+00, %.preheader ]
  %i.o = fdiv double 1.000000e+00, %.sroa.0.0.i37
  %i.p = fsub double %.sroa.018.0.i36, %i.o       ; 2 uses
  %i.q = fadd double %.sroa.0.0.i37, 1.000000e+00 ; 3 uses
  %i.r = fcmp olt double %i.q, 1.200000e+01
  br i1 %i.r, label %.lr.ph38, label %._crit_edge39

bb.g:                                             ; preds = %._crit_edge39
  %i.s = fdiv double 1.000000e+00, %.sroa.0.0.i.lcssa ; 3 uses
  %i.t = tail call double @llvm.log.f64(double %.sroa.0.0.i.lcssa)
  %i.u = fmul nnan double %i.s, 5.000000e-01
  %i.v = fsub double %i.t, %i.u
  %i.w = fadd double %.sroa.018.0.i.lcssa, %i.v
  %i.x = fmul double %i.s, %i.s                   ; 5 uses
  %i.y = fmul double %i.x, f0x3F7F07C1F07C1F08
  %i.z = fsub double f0x3F71111111111111, %i.y
  %i.aa = fmul double %i.x, %i.z
  %i.ab = fsub double f0x3F70410410410410, %i.aa
  %i.ac = fmul double %i.x, %i.ab
  %i.ad = fsub double f0x3F81111111111111, %i.ac
  %i.ae = fmul double %i.x, %i.ad
  %i.af = fsub double f0x3FB5555555555555, %i.ae
  %i.ag = fmul double %i.x, %i.af
  %i.ah = fsub double %i.w, %i.ag
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit: ; preds = %bb.f, %._crit_edge39, %bb.g
  %.sroa.018.1.i = phi double [ %.sroa.018.0.i.lcssa, %._crit_edge39 ], [ %i.ah, %bb.g ], [ %i.m, %bb.f ]
  %i.ai = fmul nnan double %0, f0xC00921FB54442D18
  %i.aj = tail call noundef double @tan(double noundef %i.ai) #16
  %i.ak = fdiv double f0x400921FB54442D18, %i.aj
  %i.al = fadd double %.sroa.018.1.i, %i.ak
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.am = fdiv double 1.000000e+00, %0
  %i.an = fsub double f0xBFE2788CFC6FB619, %i.am
  %i.ao = fmul nnan double %0, f0x3FFA51A6625307D3
  %i.ap = fadd double %i.ao, %i.an
  br label %bb.j

._crit_edge:                                      ; preds = %.lr.ph, %.preheader32
  %.sroa.018.0.lcssa = phi double [ 0.000000e+00, %.preheader32 ], [ %i.as, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ %0, %.preheader32 ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.aq = fcmp ult double %.sroa.0.0.lcssa, 1.200000e+01
  br i1 %i.aq, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %.preheader32, %.lr.ph
  %.sroa.0.034 = phi double [ %i.at, %.lr.ph ], [ %0, %.preheader32 ] ; 2 uses
  %.sroa.018.033 = phi double [ %i.as, %.lr.ph ], [ 0.000000e+00, %.preheader32 ]
  %i.ar = fdiv double 1.000000e+00, %.sroa.0.034
  %i.as = fsub double %.sroa.018.033, %i.ar       ; 2 uses
  %i.at = fadd double %.sroa.0.034, 1.000000e+00  ; 3 uses
  %i.au = fcmp olt double %i.at, 1.200000e+01
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge
  %i.av = fdiv double 1.000000e+00, %.sroa.0.0.lcssa ; 3 uses
  %i.aw = tail call double @llvm.log.f64(double %.sroa.0.0.lcssa)
  %i.ax = fmul nnan double %i.av, 5.000000e-01
  %i.ay = fsub double %i.aw, %i.ax
  %i.az = fadd double %.sroa.018.0.lcssa, %i.ay
  %i.ba = fmul double %i.av, %i.av                ; 5 uses
  %i.bb = fmul double %i.ba, f0x3F7F07C1F07C1F08
  %i.bc = fsub double f0x3F71111111111111, %i.bb
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fsub double f0x3F70410410410410, %i.bd
  %i.bf = fmul double %i.ba, %i.be
  %i.bg = fsub double f0x3F81111111111111, %i.bf
  %i.bh = fmul double %i.ba, %i.bg
  %i.bi = fsub double f0x3FB5555555555555, %i.bh
  %i.bj = fmul double %i.ba, %i.bi
  %i.bk = fsub double %i.az, %i.bj
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit, %bb.h, %bb.i, %._crit_edge
  %.sroa.018.1 = phi double [ %.sroa.018.0.lcssa, %._crit_edge ], [ +qnan, %bb.a ], [ %i.al, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit ], [ %i.ap, %bb.h ], [ %i.bk, %bb.i ], [ -inf, %bb.b ]
  ret double %.sroa.018.1
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_li(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1), !alias.scope !67
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !67, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !69, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !68
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15, !noalias !69
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !67, !noundef !5
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0)
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  store double %i.j, ptr %i.g, align 8, !alias.scope !67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !73, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !73, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !74
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !73
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !73, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ui(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !80, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !82, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !81
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !82
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !80, !noundef !5
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0)
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  store double %i.j, ptr %i.g, align 8, !alias.scope !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !86, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !86, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !87
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15, !noalias !86
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !86, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e-01
  br i1 %i.a, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fadd <2 x double> %i.c, <double 1.000000e+00, double 2.000000e+00>
  %i.e = fadd <2 x double> %i.d, splat (double -1.000000e+00)
  %i.f = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.e ; 2 uses
  %i.g = insertelement <8 x double> poison, double %0, i64 0
  %i.h = shufflevector <8 x double> %i.g, <8 x double> poison, <8 x i32> zeroinitializer
  %i.i = fadd <8 x double> %i.h, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>
  %i.j = fadd <8 x double> %i.i, splat (double -1.000000e+00)
  %i.k = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.j
  %i.l = extractelement <2 x double> %i.f, i64 0
  %op.rdx33 = fadd double %i.l, f0x3EFA109C2231ECD3
  %i.m = extractelement <2 x double> %i.f, i64 1
  %op.rdx34 = fadd double %op.rdx33, %i.m
  %i.n = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx34, <8 x double> %i.k)
  %i.o = tail call double @llvm.log.f64(double %i.n)
  %i.p = fadd double %i.o, f0x3FE3DD72B6129832
  %i.q = fadd double %0, -5.000000e-01            ; 2 uses
  %i.r = fadd double %i.q, f0x4025CD0FC71D6063
  %i.s = fdiv double %i.r, f0x4005BF0A8B145769
  %i.t = tail call double @llvm.log.f64(double %i.s)
  %i.u = fmul double %i.q, %i.t
  %i.v = fadd double %i.u, %i.p
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.w = insertelement <2 x double> poison, double %0, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.x
  %i.z = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.y ; 2 uses
  %i.aa = insertelement <8 x double> poison, double %0, i64 0
  %i.ab = shufflevector <8 x double> %i.aa, <8 x double> poison, <8 x i32> zeroinitializer
  %i.ac = fsub <8 x double> <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>, %i.ab
  %i.ad = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.ac
  %i.ae = extractelement <2 x double> %i.z, i64 0
  %op.rdx = fadd double %i.ae, f0x3EFA109C2231ECD3
  %i.af = extractelement <2 x double> %i.z, i64 1
  %op.rdx32 = fadd double %op.rdx, %i.af
  %i.ag = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx32, <8 x double> %i.ad)
  %i.ah = fmul nnan double %0, f0x400921FB54442D18
  %i.ai = tail call double @llvm.sin.f64(double %i.ah)
  %i.aj = tail call double @llvm.log.f64(double %i.ai)
  %i.ak = fsub double f0x3FF250D048E7A1BD, %i.aj
  %i.al = tail call double @llvm.log.f64(double %i.ag)
  %i.am = fsub double %i.ak, %i.al
  %i.an = fadd double %i.am, f0xBFE3DD72B6129832
  %i.ao = fsub double 5.000000e-01, %0            ; 2 uses
  %i.ap = fadd nnan double %i.ao, f0x4025CD0FC71D6063
  %i.aq = fdiv nnan double %i.ap, f0x4005BF0A8B145769
  %i.ar = tail call double @llvm.log.f64(double %i.aq)
  %i.as = fmul double %i.ao, %i.ar
  %i.at = fsub double %i.an, %i.as
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader29.preheader
  %.sroa.0.0 = phi double [ %i.at, %.preheader.preheader ], [ %i.v, %.preheader29.preheader ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB2_17InverseGammaErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !5, !nonnull !5 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 46) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 45) #17
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution5diracNtB2_10DiracErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14) #17
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB2_11ParetoErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !5, !nonnull !5
  %spec.select = select i1 %i.b, ptr @17, ptr @16
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 37) #17
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs8function4betaNtB2_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !7, !noundef !5
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !nonnull !5 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 27) #17
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 18) #17
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs8function5gammaNtB2_14GammaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !5, !nonnull !5
  %spec.select = select i1 %i.b, ptr @22, ptr @21
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 37) #17
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicPdENtNtNtB6_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !8, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution5diracNtB5_5DiracNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !8, !noundef !5
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB5_6ParetoNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !8, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp oeq double %1, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_13inverse_gammaNtB1l_12InverseGammaINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi double [ %i.e, %bb.e ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %1, +inf
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !noundef !5
  %i.h = fdiv double %i.g, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %i.e, double noundef %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.i = load i8, ptr %i.b, align 8, !range !4, !alias.scope !91, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !4, !alias.scope !91, !noundef !5
  store i8 %i.l, ptr %i.a, align 1, !noalias !92
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !91
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load double, ptr %i.m, align 8, !alias.scope !91, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit
  %.sroa.0.0 = phi double [ %i.n, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %1, +inf
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !noundef !5
  %i.h = fdiv double %i.g, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %i.e, double noundef %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.i = load i8, ptr %i.b, align 8, !range !4, !alias.scope !96, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !4, !alias.scope !96, !noundef !5
  store i8 %i.l, ptr %i.a, align 1, !noalias !97
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15, !noalias !96
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load double, ptr %i.m, align 8, !alias.scope !96, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit
  %.sroa.0.0 = phi double [ %i.n, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB5_6ParetoINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !noundef !5
  %i.d = fsub double 1.000000e+00, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !noundef !5
  %i.g = fdiv double -1.000000e+00, %i.f
  %i.h = tail call double @llvm.pow.f64(double %i.d, double %i.g)
  %i.i = fmul double %i.c, %i.h
  ret double %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, errnomem: write) uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !noundef !5
  %i.d = tail call double @llvm.log.f64(double %i.c)
  %i.e = fadd double %i.a, %i.d
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.a)
  %i.g = fadd double %i.f, %i.e
  %i.h = fadd double %i.a, 1.000000e+00
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %i.a)
  %i.j = fmul double %i.h, %i.i
  %i.k = fsub double %i.g, %i.j
  %i.l = insertvalue { i64, double } { i64 1, double poison }, double %i.k, 1
  ret { i64, double } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !7, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.21, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function5gammaNtB5_14GammaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @36, ptr @35
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 8)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #8 {
bb.a:
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %0, align 8, !noundef !5 ; 4 uses
  %i.b = fcmp oeq double %i.a, 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !5 ; 4 uses
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call double @llvm.pow.f64(double %i.d, double %i.a)
  %i.f = fsub double -1.000000e+00, %i.a
  %i.g = tail call double @llvm.pow.f64(double %1, double %i.f)
  %i.h = fmul double %i.g, %i.e
  %i.i = fneg double %i.d
  %i.j = fdiv double %i.i, %1
  %i.k = tail call double @llvm.exp.f64(double %i.j)
  %i.l = fmul double %i.h, %i.k
  %i.m = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.a)
  %i.n = fdiv double %i.l, %i.m
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = fneg double %i.d
  %i.p = fmul double %1, %1
  %i.q = insertelement <2 x double> poison, double %i.d, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = insertelement <2 x double> %i.s, double %1, i64 1
  %i.u = fdiv <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = tail call double @llvm.exp.f64(double %i.v)
  %i.x = extractelement <2 x double> %i.u, i64 0
  %i.y = fmul double %i.x, %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi double [ %i.n, %bb.c ], [ %i.y, %bb.d ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE6ln_pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #8 {
bb.a:
  %or.cond.i = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond.i, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %0, align 8, !alias.scope !100, !noundef !5 ; 4 uses
  %i.b = fcmp oeq double %i.a, 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !alias.scope !100, !noundef !5 ; 4 uses
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call double @llvm.pow.f64(double %i.d, double %i.a)
  %i.f = fsub double -1.000000e+00, %i.a
  %i.g = tail call double @llvm.pow.f64(double %1, double %i.f)
  %i.h = fmul double %i.g, %i.e
  %i.i = fneg double %i.d
  %i.j = fdiv double %i.i, %1
  %i.k = tail call double @llvm.exp.f64(double %i.j)
  %i.l = fmul double %i.h, %i.k
  %i.m = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.a)
  %i.n = fdiv double %i.l, %i.m
  br label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf.exit

bb.d:                                             ; preds = %bb.b
  %i.o = fneg double %i.d
  %i.p = fmul double %1, %1
  %i.q = insertelement <2 x double> poison, double %i.d, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = insertelement <2 x double> %i.s, double %1, i64 1
  %i.u = fdiv <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = tail call double @llvm.exp.f64(double %i.v)
  %i.x = extractelement <2 x double> %i.u, i64 0
  %i.y = fmul double %i.x, %i.w
  br label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf.exit

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi double [ %i.n, %bb.c ], [ %i.y, %bb.d ], [ 0.000000e+00, %bb.a ]
  %i.z = tail call double @llvm.log.f64(double %.sroa.0.0.i)
  ret double %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable
declare noundef double @tan(double noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_13inverse_gammaNtB1l_12InverseGammaINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v8f64(double, <8 x double>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noinline noreturn }
attributes #16 = { nounwind }
attributes #17 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 3}
!8 = !{i64 8}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta"}
!11 = distinct !{!11, !10, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta: argument 0"}
!12 = !{!11}
!13 = distinct !{!13, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!14 = distinct !{!14, !13, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!15 = distinct !{!15, !13, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!17 = distinct !{!17, !16, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!18 = distinct !{!18, !16, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!19 = !{!15, !14}
!20 = !{!15}
!21 = !{!17}
!22 = !{!17, !18}
!23 = distinct !{!23, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta"}
!24 = distinct !{!24, !23, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta: argument 0"}
!25 = distinct !{!25, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta"}
!26 = distinct !{!26, !25, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta: argument 0"}
!27 = !{!26, !24}
!28 = distinct !{!28, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!29 = distinct !{!29, !28, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!30 = distinct !{!30, !28, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!31 = !{!30, !29}
!32 = !{!30}
!33 = distinct !{!33, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!34 = distinct !{!34, !33, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!35 = distinct !{!35, !33, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!36 = !{!35, !34}
!37 = !{!35}
!38 = distinct !{!38, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc"}
!39 = distinct !{!39, !38, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta16checked_beta_inc: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta"}
!41 = distinct !{!41, !40, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12checked_beta: argument 0"}
!42 = distinct !{!42, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta"}
!43 = distinct !{!43, !42, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta15checked_ln_beta: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!45 = distinct !{!45, !44, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!46 = distinct !{!46, !44, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!47 = !{!39}
!48 = !{!"branch_weights", i32 1073205, i32 2146410443}
!49 = !{!43, !41, !39}
!50 = !{!46, !45}
!51 = !{!46}
!52 = distinct !{!52, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_"}
!53 = distinct !{!53, !52, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 0"}
!54 = distinct !{!54, !52, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function4beta13BetaFuncErrorE6unwrapBO_: argument 1"}
!55 = !{!53}
!56 = !{!53, !54}
!57 = distinct !{!57, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!58 = distinct !{!58, !57, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!59 = distinct !{!59, !57, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!60 = !{!58}
!61 = !{!58, !59}
!62 = distinct !{!62, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_li"}
!63 = distinct !{!63, !62, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_li: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!65 = distinct !{!65, !64, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!66 = distinct !{!66, !64, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!67 = !{!63}
!68 = !{!66, !65}
!69 = !{!66}
!70 = distinct !{!70, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!71 = distinct !{!71, !70, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!72 = distinct !{!72, !70, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!73 = !{!71}
!74 = !{!71, !72}
!75 = distinct !{!75, i1 true, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ui"}
!76 = distinct !{!76, !75, !"_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ui: argument 0"}
!77 = distinct !{!77, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!78 = distinct !{!78, !77, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!79 = distinct !{!79, !77, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!80 = !{!76}
!81 = !{!79, !78}
!82 = !{!79}
!83 = distinct !{!83, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!84 = distinct !{!84, !83, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!85 = distinct !{!85, !83, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!86 = !{!84}
!87 = !{!84, !85}
!88 = distinct !{!88, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!89 = distinct !{!89, !88, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!90 = distinct !{!90, !88, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!91 = !{!89}
!92 = !{!89, !90}
!93 = distinct !{!93, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_"}
!94 = distinct !{!94, !93, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 0"}
!95 = distinct !{!95, !93, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_: argument 1"}
!96 = !{!94}
!97 = !{!94, !95}
!98 = distinct !{!98, i1 true, !"_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf"}
!99 = distinct !{!99, !98, !"_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf: argument 0"}
!100 = !{!99}
end_hunk_0
