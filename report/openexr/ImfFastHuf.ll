Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfFastHuf?download=true
inline.NumInlined: 69
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7Imf_3_414FastHufDecoderC2ERPKciiii:bb.a
  %sext = add nsw i64 %i.ch, -244813135872
  %i.ci = lshr exact i64 %sext, 32
  %i.cj = add i64 %i.ci, %.093208
  %i.ck = icmp ugt i64 %i.cj, %i.n
  br i1 %i.ck, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull @.str.1)
          to label %.invoke unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cl) #15
  br label %bb.as

bb.q:                                             ; preds = %bb.n
  %sext113 = add nsw i64 %i.ch, -249108103168
  %i.cn = lshr exact i64 %sext113, 32
  %i.co = add i64 %i.cn, %.093208
  br label %bb.ac

bb.r:                                             ; preds = %bb.m
  %.not112 = icmp eq i64 %i.bc, 0
  br i1 %.not112, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = shl i64 %.093208, 6
  %i.cq = or disjoint i64 %i.bc, %i.cp            ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9.0206, %.sroa.13.0202
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.cq, ptr %.sroa.9.0206, align 8, !tbaa !16
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.u:                                             ; preds = %bb.s
  %i.cr = ptrtoint ptr %.sroa.9.0206 to i64
  %i.cs = ptrtoint ptr %.sroa.0146.0207 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #16
          to label %.noexc131 unwind label %.loopexit ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 2 uses
  store i64 %i.cq, ptr %i.dc, align 8, !tbaa !16
  %i.dd = icmp sgt i64 %i.ct, 0
  br i1 %i.dd, label %bb.w, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %.sroa.0146.0207, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %.noexc131
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0146.0207, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0207, i64 noundef %i.ct) #18
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  %.pre = load i8, ptr %i.f, align 8, !tbaa !13
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.t
  %i.df = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ah, %bb.t ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.de, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0202, %bb.t ]
  %.pn = phi ptr [ %i.dc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0206, %bb.t ]
  %.sroa.0146.2 = phi ptr [ %i.db, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0146.0207, %bb.t ]
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dg = zext i8 %i.df to i64
  %i.dh = icmp samesign ult i64 %i.bc, %i.dg
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.di = trunc nuw nsw i64 %i.bc to i8           ; 2 uses
  store i8 %i.di, ptr %i.f, align 8, !tbaa !13
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %.invoke, %bb.v, %.preheader163, %._crit_edge231
  %.sroa.13.0199 = phi ptr [ %.sroa.9.0206, %bb.v ], [ %.sroa.13.0202, %.invoke ], [ %.sroa.13.0.lcssa, %.preheader163 ], [ %.sroa.13.0.lcssa, %._crit_edge231 ]
  %.sroa.0146.0178 = phi ptr [ %.sroa.0146.0207, %bb.v ], [ %.sroa.0146.0207, %.invoke ], [ %.sroa.0146.0.lcssa, %.preheader163 ], [ %.sroa.0146.0.lcssa, %._crit_edge231 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dj = phi i8 [ %i.di, %bb.y ], [ %i.df, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dk = load i8, ptr %i.g, align 1, !tbaa !14
  %i.dl = zext i8 %i.dk to i64
  %i.dm = icmp samesign ugt i64 %i.bc, %i.dl
  br i1 %i.dm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = trunc nuw nsw i64 %i.bc to i8
  store i8 %i.dn, ptr %i.g, align 1, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bc ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.ab, %bb.r, %bb.l
  %i.dr = phi i8 [ %i.ah, %bb.l ], [ %i.ah, %bb.q ], [ %i.ah, %bb.r ], [ %i.dj, %bb.ab ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0202, %bb.l ], [ %.sroa.13.0202, %bb.q ], [ %.sroa.13.0202, %bb.r ], [ %.sroa.13.2, %bb.ab ] ; 2 uses
  %.1158 = phi ptr [ %.3160, %bb.l ], [ %.2159, %bb.q ], [ %.2159, %bb.r ], [ %.2159, %bb.ab ] ; 2 uses
  %.1156 = phi i64 [ %.3, %bb.l ], [ %.2, %bb.q ], [ %.2, %bb.r ], [ %.2, %bb.ab ]
  %.1 = phi i32 [ %i.bt, %bb.l ], [ %i.az, %bb.q ], [ %i.az, %bb.r ], [ %i.az, %bb.ab ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0206, %bb.l ], [ %.sroa.9.0206, %bb.q ], [ %.sroa.9.0206, %bb.r ], [ %.sroa.9.2, %bb.ab ] ; 2 uses
  %.sroa.0146.1 = phi ptr [ %.sroa.0146.0207, %bb.l ], [ %.sroa.0146.0207, %bb.q ], [ %.sroa.0146.0207, %bb.r ], [ %.sroa.0146.2, %bb.ab ] ; 2 uses
  %.194 = phi i64 [ %i.cf, %bb.l ], [ %i.co, %bb.q ], [ %.093208, %bb.r ], [ %.093208, %bb.ab ]
  %i.ds = add i64 %.194, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.ds, %i.j
  br i1 %.not, label %.preheader163.loopexit, label %bb.b, !llvm.loop !25

bb.ad:                                            ; preds = %.preheader163
  %i.dt = load i8, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.du = load i8, ptr %i.g, align 1, !tbaa !14   ; 4 uses
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %.not103214 = icmp ugt i8 %i.dt, %i.du
  br i1 %.not103214, label %._crit_edge226, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %bb.ad
  %i.dw = zext i8 %i.dt to i64                    ; 7 uses
  %i.dx = zext i8 %i.du to i64                    ; 5 uses
  %i.dy = add nuw nsw i32 %i.dv, 1
  %wide.trip.count = zext nneg i32 %i.dy to i64
  %i.dz = add nuw nsw i64 %i.dx, 1
  %i.ea = sub nsw i64 %i.dz, %i.dw                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ea, 2
  br i1 %min.iters.check, label %.lr.ph216.preheader396, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph216.preheader
  %n.vec = and i64 %i.ea, -2                      ; 3 uses
  %i.eb = add nsw i64 %n.vec, %i.dw
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert391 = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat392 = shufflevector <2 x i64> %broadcast.splatinsert391, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat392, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ec = add nuw i64 %index, %i.dw               ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ec
  %wide.load = load <2 x i64>, ptr %i.ed, align 8, !tbaa !16
  %i.ee = uitofp <2 x i64> %wide.load to <2 x double>
  %i.ef = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.eg = shl <2 x i64> splat (i64 2), %i.ef
  %i.eh = sitofp <2 x i64> %i.eg to <2 x double>
  %i.ei = fmul nnan <2 x double> %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ec
  store <2 x double> %i.ei, ptr %i.ej, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %.lr.ph225.preheader, label %.lr.ph216.preheader396

.lr.ph216.preheader396:                           ; preds = %.lr.ph216.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dw, %.lr.ph216.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph216

.lr.ph225.preheader:                              ; preds = %.lr.ph216, %middle.block
  %6 = zext i8 %i.dt to i64                       ; 2 uses
  %7 = add nuw nsw i32 %i.dv, 1
  %i.el = zext i8 %i.du to i64                    ; 2 uses
  %wide.trip.count273 = zext nneg i32 %7 to i64   ; 2 uses
  %i.em = sub nsw i64 %i.dw, %i.dx
  br label %.lr.ph225

.lr.ph216:                                        ; preds = %.lr.ph216.preheader396, %.lr.ph216
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph216 ], [ %indvars.iv.ph, %.lr.ph216.preheader396 ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !16
  %i.ep = uitofp i64 %i.eo to double
  %i.eq = sub nuw nsw i64 %i.dx, %indvars.iv
  %i.er = shl i64 2, %i.eq
  %i.es = sitofp i64 %i.er to double
  %i.et = fmul nnan double %i.es, %i.ep
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.et, ptr %i.eu, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph225.preheader, label %.lr.ph216, !llvm.loop !27

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph225.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv270 = phi i64 [ %6, %.lr.ph225.preheader ], [ %indvars.iv.next271, %._crit_edge ] ; 4 uses
  %indvars.iv263.in = phi i64 [ %6, %.lr.ph225.preheader ], [ %indvars.iv263, %._crit_edge ]
  %indvars.iv263 = add nuw nsw i64 %indvars.iv263.in, 1 ; 3 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %.not110218.not = icmp samesign ult i64 %indvars.iv270, %i.el
  br i1 %.not110218.not, label %.lr.ph221.preheader, label %._crit_edge

.lr.ph221.preheader:                              ; preds = %.lr.ph225
  %i.ev = add i64 %indvar, %i.dw
  %i.ew = sub i64 %i.dx, %i.ev
  %xtraiter = and i64 %i.ew, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph221.prol.loopexit, label %.lr.ph221.prol

.lr.ph221.prol:                                   ; preds = %.lr.ph221.preheader, %.lr.ph221.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %.lr.ph221.prol ], [ %indvars.iv263, %.lr.ph221.preheader ] ; 2 uses
  %.081219.prol = phi double [ %i.ez, %.lr.ph221.prol ], [ 0.000000e+00, %.lr.ph221.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph221.prol ], [ 0, %.lr.ph221.preheader ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265.prol
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !38
  %i.ez = fadd double %.081219.prol, %i.ey        ; 3 uses
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph221.prol.loopexit, label %.lr.ph221.prol, !llvm.loop !28

.lr.ph221.prol.loopexit:                          ; preds = %.lr.ph221.prol, %.lr.ph221.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph221.preheader ], [ %i.ez, %.lr.ph221.prol ]
  %indvars.iv265.unr = phi i64 [ %indvars.iv263, %.lr.ph221.preheader ], [ %indvars.iv.next266.prol, %.lr.ph221.prol ]
  %.081219.unr = phi double [ 0.000000e+00, %.lr.ph221.preheader ], [ %i.ez, %.lr.ph221.prol ]
  %i.fa = add i64 %i.em, %indvar
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %._crit_edge, label %.lr.ph221

._crit_edge:                                      ; preds = %.lr.ph221.prol.loopexit, %.lr.ph221, %.lr.ph225
  %.081.lcssa = phi double [ 0.000000e+00, %.lr.ph225 ], [ %.lcssa.unr, %.lr.ph221.prol.loopexit ], [ %i.gn, %.lr.ph221 ]
  %i.fc = sub nuw nsw i64 %i.el, %indvars.iv270
  %i.fd = shl i64 2, %i.fc
  %i.fe = sitofp i64 %i.fd to double
  %i.ff = fdiv double %.081.lcssa, %i.fe
  %i.fg = tail call double @llvm.ceil.f64(double %i.ff)
  %i.fh = fptoui double %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv270
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !16
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond274.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !29

.lr.ph221:                                        ; preds = %.lr.ph221.prol.loopexit, %.lr.ph221
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.7, %.lr.ph221 ], [ %indvars.iv265.unr, %.lr.ph221.prol.loopexit ] ; 9 uses
  %.081219 = phi double [ %i.gn, %.lr.ph221 ], [ %.081219.unr, %.lr.ph221.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !38
  %i.fl = fadd double %.081219, %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !38
  %i.fp = fadd double %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !38
  %i.ft = fadd double %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !38
  %i.fx = fadd double %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !38
  %i.gb = fadd double %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !38
  %i.gf = fadd double %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !38
  %i.gj = fadd double %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv265
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !38
  %i.gn = fadd double %i.gj, %i.gm                ; 2 uses
  %indvars.iv.next266.7 = add nuw nsw i64 %indvars.iv265, 8 ; 2 uses
  %exitcond269.not.7 = icmp eq i64 %indvars.iv.next266.7, %wide.trip.count273
  br i1 %exitcond269.not.7, label %._crit_edge, label %.lr.ph221, !llvm.loop !30

._crit_edge226:                                   ; preds = %._crit_edge, %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %i.ag) #18
  %i.go = load i8, ptr %i.g, align 1, !tbaa !14   ; 2 uses
  %i.gp = zext i8 %i.go to i64                    ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gp
  store i64 0, ptr %i.gq, align 8, !tbaa !16
  %i.gr = load i8, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not105.not227 = icmp ugt i8 %i.go, %i.gr
  br i1 %.not105.not227, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %._crit_edge226
  %i.gs = zext i8 %i.gr to i64                    ; 2 uses
  %i.gt = sub nsw i64 %i.gp, %i.gs                ; 2 uses
  %xtraiter423 = and i64 %i.gt, 3                 ; 3 uses
  %i.gu = sub nsw i64 %i.gs, %i.gp
  %i.gv = icmp ugt i64 %i.gu, -4
  br i1 %i.gv, label %.lr.ph230.epil.preheader, label %.lr.ph230.preheader.new

.lr.ph230.preheader.new:                          ; preds = %.lr.ph230.preheader
  %unroll_iter = and i64 %i.gt, -4
  br label %.lr.ph230

._crit_edge231.loopexit.unr-lcssa:                ; preds = %.lr.ph230
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod424.not, label %._crit_edge231, label %.lr.ph230.epil.preheader

.lr.ph230.epil.preheader:                         ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph230.preheader ], [ %i.hw, %._crit_edge231.loopexit.unr-lcssa ]
  %indvars.iv275.epil.init = phi i64 [ %i.gp, %.lr.ph230.preheader ], [ %indvars.iv.next276.3, %._crit_edge231.loopexit.unr-lcssa ]
  %lcmp.mod425 = icmp ne i64 %xtraiter423, 0
  tail call void @llvm.assume(i1 %lcmp.mod425)
  br label %.lr.ph230.epil

.lr.ph230.epil:                                   ; preds = %.lr.ph230.epil, %.lr.ph230.epil.preheader
  %i.gw = phi i64 [ %.epil.init, %.lr.ph230.epil.preheader ], [ %i.gz, %.lr.ph230.epil ]
  %indvars.iv275.epil = phi i64 [ %indvars.iv275.epil.init, %.lr.ph230.epil.preheader ], [ %indvars.iv.next276.epil, %.lr.ph230.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph230.epil.preheader ], [ %epil.iter.next, %.lr.ph230.epil ]
  %indvars.iv.next276.epil = add nsw i64 %indvars.iv275.epil, -1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv275.epil
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !16
  %i.gz = add i64 %i.gy, %i.gw                    ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next276.epil
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %._crit_edge231, label %.lr.ph230.epil, !llvm.loop !31

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.epil, %._crit_edge226
  %i.hb = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i32 %i.hb, 0
  %i.he = shl nsw i64 %i.hc, 2
  %i.hf = select i1 %i.hd, i64 -1, i64 %i.he
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hf) #16
          to label %bb.ae unwind label %.loopexit.split-lp ; 3 uses

.lr.ph230:                                        ; preds = %.lr.ph230, %.lr.ph230.preheader.new
  %i.hh = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %i.hw, %.lr.ph230 ]
  %indvars.iv275 = phi i64 [ %i.gp, %.lr.ph230.preheader.new ], [ %indvars.iv.next276.3, %.lr.ph230 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %niter.next.3, %.lr.ph230 ]
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, -1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv275
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !16
  %i.hk = add i64 %i.hj, %i.hh                    ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next276
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !16
  %indvars.iv.next276.1 = add nsw i64 %indvars.iv275, -2 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next276
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !16
  %i.ho = add i64 %i.hn, %i.hk                    ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next276.1
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !16
  %indvars.iv.next276.2 = add nsw i64 %indvars.iv275, -3 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next276.1
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !16
  %i.hs = add i64 %i.hr, %i.ho                    ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next276.2
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !16
  %indvars.iv.next276.3 = add nsw i64 %indvars.iv275, -4 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next276.2
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !16
  %i.hw = add i64 %i.hv, %i.hs                    ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next276.3
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !16
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge231.loopexit.unr-lcssa, label %.lr.ph230, !llvm.loop !32

bb.ae:                                            ; preds = %._crit_edge231
  store ptr %i.hg, ptr %i.h, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 -1, i64 472, i1 false), !tbaa !16
  %i.hy = load i8, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.hz = load i8, ptr %i.g, align 1, !tbaa !14   ; 2 uses
  %.not106233 = icmp ugt i8 %i.hy, %i.hz
  br i1 %.not106233, label %.preheader, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.ae
  %i.ia = zext i8 %i.hy to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ib
  %scevgep281 = getelementptr i8, ptr %i.b, i64 %i.ib
  %narrow = sub nuw i8 %i.hz, %i.hy
  %i.ic = zext i8 %narrow to i64
  %i.id = shl nuw nsw i64 %i.ic, 3
  %i.ie = add nuw nsw i64 %i.id, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep281, i64 range(i64 0, 2049) %i.ie, i1 false), !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph236.preheader, %bb.ae
  %.not161237 = icmp eq ptr %.sroa.0146.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not161237, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader
  %i.if = load i32, ptr %i.e, align 4, !tbaa !12
  %i.ig = sext i32 %i.if to i64
  br label %bb.af

._crit_edge240:                                   ; preds = %bb.ak, %.preheader
  invoke void @_ZN7Imf_3_414FastHufDecoder11buildTablesEPmS1_(ptr noundef nonnull align 8 dereferenceable(21456) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ap unwind label %bb.al

bb.af:                                            ; preds = %.lr.ph239, %bb.ak
  %.sroa.0135.0238 = phi ptr [ %.sroa.0146.0.lcssa, %.lr.ph239 ], [ %i.is, %bb.ak ] ; 2 uses
  %i.ih = load i64, ptr %.sroa.0135.0238, align 8, !tbaa !16 ; 2 uses
  %i.ii = and i64 %i.ih, 63
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ii ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !16 ; 3 uses
  %.not107 = icmp ult i64 %i.ik, %i.ig
  br i1 %.not107, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.hg) #18
  store ptr null, ptr %i.h, align 8, !tbaa !15
  %i.il = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.il, ptr noundef nonnull @.str.2)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.il, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
          to label %bb.av unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.im = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.il) #15
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %bb.af
  %i.io = lshr i64 %i.ih, 6
  %i.ip = trunc i64 %i.io to i32
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ik
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !22
  %i.ir = add nuw i64 %i.ik, 1
  store i64 %i.ir, ptr %i.ij, align 8, !tbaa !16
end_hunk_0
