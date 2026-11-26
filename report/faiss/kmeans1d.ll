Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/kmeans1d?download=true
inline.NumInlined: 735
inline.NumDeleted: 377
begin_hunk_0_@_ZN5faiss8kmeans1dEPKfmmPf:bb.a
  %i.cu = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %.invoke.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i39.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i39.i: ; preds = %bb.u
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i40.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i40.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i.i41.i = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41.i)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #19
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc46.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i39.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store double %i.cr, ptr %i.de, align 8, !tbaa !55
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.v, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i

bb.v:                                             ; preds = %.noexc46.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.co, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i: ; preds = %bb.v, %.noexc46.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !59
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.dj) #20
  store ptr %i.dd, ptr %i.aa, align 8, !tbaa !58
  store ptr %i.dg, ptr %i.af, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db ; 2 uses
  store ptr %i.dk, ptr %i.ah, align 8, !tbaa !59
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit47.i

_ZNSt6vectorIdSaIdEE9push_backEOd.exit47.i:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i, %bb.t
  %i.dl = phi ptr [ %i.dk, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i ], [ %i.ck, %bb.t ]
  %i.dm = phi ptr [ %i.dg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i44.i ], [ %i.cs, %bb.t ]
  %i.dn = add nuw nsw i64 %.057.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %1
  br i1 %exitcond.not.i, label %_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit, label %.lr.ph.i, !llvm.loop !94

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i39.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i29.i, %.invoke.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i19.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_.exit
  %lpad.loopexit.split-lp372 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.du = load ptr, ptr %5, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i48.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i48.i, label %.body135, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #20
  br label %.body135

_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit: ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit47.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %2, ptr %i.dz, align 8, !tbaa !103
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i64 %1, ptr %i.ea, align 8, !tbaa !65
  %i.eb = mul nsw i64 %2, %1                      ; 10 uses
  %.not.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_16MatrixIlEC2Ell.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ee = icmp ugt i64 %i.eb, 2305843009213693951
  br i1 %i.ee, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc187 unwind label %bb.aa

.noexc187:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.y
  %i.ef = shl nuw nsw i64 %i.eb, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #19
          to label %.noexc188 unwind label %bb.aa ; 6 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.eg, align 4, !tbaa !44
  %i.eh = add nsw i64 %i.eb, -1                   ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.thread, label %bb.ac

.thread:                                          ; preds = %.noexc188
  store ptr %i.eg, ptr %6, align 8, !tbaa !66
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eb ; 2 uses
  store ptr %i.ej, ptr %i.ec, align 8, !tbaa !104
  store ptr %i.ej, ptr %i.ed, align 8, !tbaa !105
  br label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !66    ; 3 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i137, label %.body138, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !105
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #20
  br label %.body138

bb.ac:                                            ; preds = %.noexc188
  %i.eq = getelementptr i8, ptr %i.eg, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.eh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !44
  store ptr %i.eg, ptr %6, align 8, !tbaa !66
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eb ; 2 uses
  store ptr %i.er, ptr %i.ec, align 8, !tbaa !104
  store ptr %i.er, ptr %i.ed, align 8, !tbaa !105
  %i.es = icmp samesign ugt i64 %i.eb, 1152921504606846975
  br i1 %i.es, label %bb.ad, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc196 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

.noexc196:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i:  ; preds = %.thread, %bb.ac
  %i.et = shl nuw nsw i64 %i.eb, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #19
          to label %.noexc197 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit.i ; 4 uses

.noexc197:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.eu, align 8, !tbaa !17
  %i.ev = add nsw i64 %i.eb, -1                   ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc197
  %i.ex = getelementptr i8, ptr %i.eu, i64 8
  %.idx.i.i.i.i.i31.i194 = shl nuw nsw i64 %i.ev, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %.idx.i.i.i.i.i31.i194, i1 false), !tbaa !17
  br label %_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit

_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit:   ; preds = %.noexc197, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eb
  %i.ez = ptrtoint ptr %i.ey to i64
  br label %_ZN5faiss12_GLOBAL__N_16MatrixIlEC2Ell.exit

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.ad, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body142

_ZN5faiss12_GLOBAL__N_16MatrixIlEC2Ell.exit:      ; preds = %_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit, %_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit
  %.sroa.0211.0 = phi ptr [ %i.eu, %_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit ], [ null, %_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit ] ; 9 uses
  %.sroa.15.0 = phi i64 [ %i.ez, %_ZNSt6vectorIlSaIlEE17_M_default_appendEm.exit ], [ 0, %_ZN5faiss12_GLOBAL__N_114CostCalculatorC2ERKSt6vectorIfSaIfEEl.exit ] ; 2 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5faiss12_GLOBAL__N_16MatrixIlEC2Ell.exit
  %.val116 = load ptr, ptr %6, align 8, !tbaa !66
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %_ZN5faiss12_GLOBAL__N_16MatrixIlEC2Ell.exit
  %i.fb = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.fb, label %bb.ae, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.ae:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc145 unwind label %bb.ah

.noexc145:                                        ; preds = %bb.ae
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i144 = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i144, label %_ZNSt6vectorIlSaIlEED2Ev.exit161, label %9

9:                                                ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %10 = shl nuw nsw i64 %2, 3                     ; 2 uses
  %11 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #19
          to label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit unwind label %bb.ah ; 3 uses

bb.af:                                            ; preds = %.noexc, %bb.l
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ag:                                            ; preds = %.lr.ph, %bb.ag
  %.077247 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %bb.ag ] ; 3 uses
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  %.val115 = load ptr, ptr %i.aa, align 8         ; 2 uses
  %i.fd = add nuw nsw i64 %.077247, 1             ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !55
  %i.fg = load double, ptr %.val, align 8, !tbaa !55
  %i.fh = fsub double %i.ff, %i.fg                ; 2 uses
  %i.fi = uitofp nneg i64 %i.fd to double         ; 2 uses
  %i.fj = fdiv double %i.fh, %i.fi                ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val115, i64 %i.fd
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !55
  %i.fm = load double, ptr %.val115, align 8, !tbaa !55
  %i.fn = fsub double %i.fl, %i.fm
  %i.fo = fmul double %i.fj, %i.fj
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fo, double %i.fn)
  %i.fq = fmul double %i.fj, -2.000000e+00
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fh, double %i.fp)
  %i.fs = fptrunc double %i.fr to float
  %i.ft = getelementptr [4 x i8], ptr %.val116, i64 %.077247
  store float %i.fs, ptr %i.ft, align 4, !tbaa !44
  %i.fu = getelementptr [8 x i8], ptr %.sroa.0211.0, i64 %.077247
  store i64 0, ptr %i.fu, align 8, !tbaa !17
  %exitcond.not = icmp eq i64 %i.fd, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !95

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %11, i8 0, i64 %10, i1 false), !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 1, ptr %i.a, align 8, !tbaa !17
  %.not347 = icmp eq i64 %2, 1
  br i1 %.not347, label %.lr.ph259.preheader, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fv = icmp ugt i64 %1, 1152921504606846975
  %i.fw = shl nuw nsw i64 %1, 3                   ; 3 uses
  %i.fx = add nsw i64 %1, -1                      ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fx, 3  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br i1 %i.fv, label %bb.ai, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i147

.lr.ph259.preheader:                              ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.lr.ph259

bb.ah:                                            ; preds = %9, %bb.ae
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit176

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i147: ; preds = %.lr.ph251, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #19
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.ai:                                            ; preds = %.lr.ph251
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.ai
  unreachable

.noexc151:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i147
  store i64 0, ptr %i.gb, align 8, !tbaa !17
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 3 uses
  br i1 %i.fy, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc151
  call void @llvm.memset.p0.i64(ptr align 8 %i.gc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc151
  %.0.i.i.i.i.i = phi ptr [ %i.gd, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gc, %.noexc151 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ge = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.am unwind label %bb.aj     ; 4 uses

bb.aj:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = invoke noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.ay unwind label %bb.al     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #22
  unreachable

bb.am:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  store ptr %6, ptr %i.ge, align 16, !tbaa !68
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !70
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.a, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !15
  store ptr %i.ge, ptr %7, align 8, !tbaa !47
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFfllEZN5faiss8kmeans1dEPKfmmPfE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFfllEZN5faiss8kmeans1dEPKfmmPfE3$_0E9_M_invokeERKSt9_Any_dataOlSA_">, ptr %i.fz, align 8, !tbaa !47
  invoke void @_ZN5faiss5smawkEllRKSt8functionIFfllEEPl(i64 noundef %1, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.gb)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gk = load ptr, ptr %i.fz, align 8, !tbaa !21 ; 2 uses
  %.not.i154 = icmp eq ptr %i.gk, null
  br i1 %.not.i154, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = invoke noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not263 = icmp eq ptr %.0.i.i.i.i.i, %i.gb
  br i1 %.not263, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.lr.ph249

.lr.ph249:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.go = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.gp = ptrtoint ptr %i.gb to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  %i.gs = load i64, ptr %i.a, align 8             ; 3 uses
  %i.gt = add nsw i64 %i.gs, -1
  %.val10.i = load ptr, ptr %6, align 8           ; 2 uses
  %.val11.i = load i64, ptr %i.ea, align 8        ; 2 uses
  %i.gu = mul nsw i64 %.val11.i, %i.gt
  %i.gv = getelementptr [4 x i8], ptr %.val10.i, i64 %i.gu
  %i.gw = mul nsw i64 %.val11.i, %i.gs
  %i.gx = getelementptr [4 x i8], ptr %.val10.i, i64 %i.gw
  %i.gy = mul nsw i64 %i.gs, %1
  %i.gz = getelementptr [8 x i8], ptr %.sroa.0211.0, i64 %i.gy
  br label %bb.at

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit", %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.fw) #20
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !17
  %i.hb = add nsw i64 %i.ha, 1                    ; 2 uses
  store i64 %i.hb, ptr %i.a, align 8, !tbaa !17
  %i.hc = icmp slt i64 %i.hb, %2
  br i1 %i.hc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i147, label %.lr.ph259.preheader, !llvm.loop !96

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i147, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit159

bb.aq:                                            ; preds = %bb.am
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.he = load ptr, ptr %i.fz, align 8, !tbaa !21 ; 2 uses
  %.not.i156 = icmp eq ptr %i.he, null
  br i1 %.not.i156, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = invoke noundef zeroext i1 %i.he(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.ay unwind label %bb.as     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #22
  unreachable

bb.at:                                            ; preds = %.lr.ph249, %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit"
  %.076248 = phi i64 [ 0, %.lr.ph249 ], [ %i.jc, %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit" ] ; 9 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.076248
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !17 ; 7 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hl = icmp slt i64 %.076248, 0
  br i1 %i.hl, label %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val9.i = load ptr, ptr %i.aa, align 8         ; 2 uses
  %.val8.i = load ptr, ptr %5, align 8            ; 2 uses
  %i.hm = add nuw nsw i64 %.076248, 1             ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !55
  %i.hp = load double, ptr %.val8.i, align 8, !tbaa !55
  %i.hq = fsub double %i.ho, %i.hp                ; 2 uses
  %i.hr = uitofp nneg i64 %i.hm to double         ; 2 uses
  %i.hs = fdiv double %i.hq, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val9.i, i64 %i.hm
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !55
  %i.hv = load double, ptr %.val9.i, align 8, !tbaa !55
  %i.hw = fsub double %i.hu, %i.hv
  %i.hx = fmul double %i.hs, %i.hs
  %i.hy = call double @llvm.fmuladd.f64(double %i.hr, double %i.hx, double %i.hw)
  %i.hz = fmul double %i.hs, -2.000000e+00
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double %i.hq, double %i.hy)
  %i.ib = fptrunc double %i.ia to float
  br label %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit"

bb.aw:                                            ; preds = %bb.at
  %i.ic = add nsw i64 %i.hj, -1
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.ic, i64 %.076248)
  %i.id = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.speculated.i
  %i.ie = load float, ptr %i.id, align 4, !tbaa !44
  %i.if = icmp slt i64 %.076248, %i.hj
  br i1 %i.if, label %_ZN5faiss12_GLOBAL__N_114CostCalculatorclEll.exit13.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val7.i = load ptr, ptr %i.aa, align 8         ; 2 uses
  %.val.i = load ptr, ptr %5, align 8             ; 2 uses
  %i.ig = add nuw i64 %.076248, 1                 ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !55
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.hj
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !55
  %i.il = fsub double %i.ii, %i.ik                ; 2 uses
  %i.im = sub i64 %i.ig, %i.hj
  %i.in = sitofp i64 %i.im to double              ; 2 uses
  %i.io = fdiv double %i.il, %i.in                ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.val7.i, i64 %i.ig
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !55
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.val7.i, i64 %i.hj
  %i.is = load double, ptr %i.ir, align 8, !tbaa !55
  %i.it = fsub double %i.iq, %i.is
  %i.iu = fmul double %i.io, %i.io
  %i.iv = call double @llvm.fmuladd.f64(double %i.in, double %i.iu, double %i.it)
  %i.iw = fmul double %i.io, -2.000000e+00
  %i.ix = call double @llvm.fmuladd.f64(double %i.iw, double %i.il, double %i.iv)
  %i.iy = fptrunc double %i.ix to float
  br label %_ZN5faiss12_GLOBAL__N_114CostCalculatorclEll.exit13.i

_ZN5faiss12_GLOBAL__N_114CostCalculatorclEll.exit13.i: ; preds = %bb.ax, %bb.aw
  %.0.i12.i = phi float [ %i.iy, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.iz = fadd float %i.ie, %.0.i12.i
  br label %"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit"

"_ZZN5faiss8kmeans1dEPKfmmPfENK3$_0clEll.exit":   ; preds = %_ZN5faiss12_GLOBAL__N_114CostCalculatorclEll.exit13.i, %bb.av, %bb.au
  %.0.i = phi float [ %i.iz, %_ZN5faiss12_GLOBAL__N_114CostCalculatorclEll.exit13.i ], [ %i.ib, %bb.av ], [ 0.000000e+00, %bb.au ]
  %i.ja = getelementptr [4 x i8], ptr %i.gx, i64 %.076248
  store float %.0.i, ptr %i.ja, align 4, !tbaa !44
  %i.jb = getelementptr [8 x i8], ptr %i.gz, i64 %.076248
  store i64 %i.hj, ptr %i.jb, align 8, !tbaa !17
  %i.jc = add nuw i64 %.076248, 1                 ; 2 uses
  %exitcond278.not = icmp eq i64 %i.jc, %i.gr
  br i1 %exitcond278.not, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.at, !llvm.loop !97

bb.ay:                                            ; preds = %bb.aj, %bb.ak, %bb.aq, %bb.ar
  %.pn102 = phi { ptr, i32 } [ %i.gf, %bb.aj ], [ %i.hd, %bb.ar ], [ %i.gf, %bb.ak ], [ %i.hd, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.fw) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit159

_ZNSt6vectorIlSaIlEED2Ev.exit159:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay
  %.pn104.pn = phi { ptr, i32 } [ %.pn102, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %12

._crit_edge260.loopexit:                          ; preds = %bb.bm
  %i.jd = fmul double %i.lg, %i.lg
  %i.je = uitofp nneg i64 %2 to double
  %i.jf = fmul double %i.lh, %i.je
  %i.jg = fdiv double %i.jf, %i.jd
  %.idx = shl nuw nsw i64 %2, 3
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %.idx) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit161

_ZNSt6vectorIlSaIlEED2Ev.exit161:                 ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge260.loopexit
  %i.jh = phi double [ %i.jg, %._crit_edge260.loopexit ], [ +qnan, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.not.i.i.i.i162 = icmp eq ptr %.sroa.0211.0, null
  br i1 %.not.i.i.i.i162, label %_ZN5faiss12_GLOBAL__N_16MatrixIlED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit161
  %i.ji = ptrtoint ptr %.sroa.0211.0 to i64
  %i.jj = sub i64 %.sroa.15.0, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0211.0, i64 noundef %i.jj) #20
  br label %_ZN5faiss12_GLOBAL__N_16MatrixIlED2Ev.exit

_ZN5faiss12_GLOBAL__N_16MatrixIlED2Ev.exit:       ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit161, %bb.az
  %.val132 = load ptr, ptr %6, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i164 = icmp eq ptr %.val132, null
  br i1 %.not.i.i.i.i164, label %_ZN5faiss12_GLOBAL__N_16MatrixIfED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5faiss12_GLOBAL__N_16MatrixIlED2Ev.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val133 = load ptr, ptr %i.jk, align 8
  %i.jl = ptrtoint ptr %.val133 to i64
  %i.jm = ptrtoint ptr %.val132 to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %.val132, i64 noundef %i.jn) #20
  br label %_ZN5faiss12_GLOBAL__N_16MatrixIfED2Ev.exit

_ZN5faiss12_GLOBAL__N_16MatrixIfED2Ev.exit:       ; preds = %_ZN5faiss12_GLOBAL__N_16MatrixIlED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jo = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i166, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i167, label %bb.bb

bb.bb:                                            ; preds = %_ZN5faiss12_GLOBAL__N_16MatrixIfED2Ev.exit
  %i.jp = load ptr, ptr %i.ah, align 8, !tbaa !59
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i167

_ZNSt6vectorIdSaIdEED2Ev.exit.i167:               ; preds = %bb.bb, %_ZN5faiss12_GLOBAL__N_16MatrixIfED2Ev.exit
  %i.jt = load ptr, ptr %5, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i1.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i167
  %i.ju = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNSt6vectorIdSaIdEED2Ev.exit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.bm
  %.0257.in = phi i64 [ %.0257, %bb.bm ], [ %2, %.lr.ph259.preheader ] ; 2 uses
  %.073256 = phi i64 [ %i.kc, %bb.bm ], [ %1, %.lr.ph259.preheader ] ; 4 uses
  %.074255 = phi double [ %i.lh, %bb.bm ], [ 0.000000e+00, %.lr.ph259.preheader ]
  %.075254 = phi double [ %i.lg, %bb.bm ], [ 0.000000e+00, %.lr.ph259.preheader ]
  %.0257 = add nsw i64 %.0257.in, -1              ; 4 uses
  %i.jy = mul nsw i64 %.0257, %1
  %i.jz = getelementptr [8 x i8], ptr %.sroa.0211.0, i64 %i.jy
  %i.ka = getelementptr [8 x i8], ptr %i.jz, i64 %.073256
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !17 ; 4 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.073256
  %.not7.i = icmp eq i64 %i.kc, %.073256
  br i1 %.not7.i, label %_ZSt10accumulateIPffET0_T_S2_S1_.exit, label %.lr.ph.i170.preheader

.lr.ph.i170.preheader:                            ; preds = %.lr.ph259
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.kc
  br label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %.lr.ph.i170.preheader, %.lr.ph.i170
  %.09.i = phi float [ %i.kg, %.lr.ph.i170 ], [ 0.000000e+00, %.lr.ph.i170.preheader ]
  %.068.i = phi ptr [ %i.kh, %.lr.ph.i170 ], [ %i.ke, %.lr.ph.i170.preheader ] ; 2 uses
  %i.kf = load float, ptr %.068.i, align 4, !tbaa !44
  %i.kg = fadd float %.09.i, %i.kf                ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.068.i, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.kh, %i.kd
  br i1 %.not.i171, label %_ZSt10accumulateIPffET0_T_S2_S1_.exit, label %.lr.ph.i170, !llvm.loop !98

_ZSt10accumulateIPffET0_T_S2_S1_.exit:            ; preds = %.lr.ph.i170, %.lr.ph259
  %.0.lcssa.i = phi float [ 0.000000e+00, %.lr.ph259 ], [ %i.kg, %.lr.ph.i170 ]
  %i.ki = sub nsw i64 %.073256, %i.kc             ; 4 uses
  %i.kj = icmp sgt i64 %i.ki, 0
  br i1 %i.kj, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %_ZSt10accumulateIPffET0_T_S2_S1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.kk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.kk, ptr %8, align 8, !tbaa !100
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.kl, align 8, !tbaa !51
  store i8 0, ptr %i.kk, align 8, !tbaa !52
  %i.km = trunc i64 %.0257 to i32                 ; 2 uses
  %i.kn = trunc i64 %i.ki to i32                  ; 2 uses
  %i.ko = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %i.km, i32 noundef %i.kn) #21 ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.kq = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.kr = add nuw nsw i64 %i.kq, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.kr)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ks = load ptr, ptr %8, align 8, !tbaa !53
  %i.kt = load i64, ptr %i.kl, align 8, !tbaa !51
  %i.ku = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ks, i64 noundef %i.kt, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %i.km, i32 noundef %i.kn) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.kq)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg, %bb.bf
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %i.kw = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss8kmeans1dEPKfmmPf, ptr noundef nonnull @.str.4, i32 noundef 289)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.kw, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.bq unwind label %bb.bh

bb.bk:                                            ; preds = %bb.bi
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kw) #21
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn100 = phi { ptr, i32 } [ %i.kv, %bb.bh ], [ %i.kx, %bb.bk ]
  %i.ky = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.kk
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bl
  %i.la = load i64, ptr %i.kk, align 8, !tbaa !52
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %12

bb.bm:                                            ; preds = %_ZSt10accumulateIPffET0_T_S2_S1_.exit
  %i.lc = uitofp nneg i64 %i.ki to float
  %i.ld = fdiv float %.0.lcssa.i, %i.lc
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0257
  store float %i.ld, ptr %i.le, align 4, !tbaa !44
  %i.lf = uitofp nneg i64 %i.ki to double         ; 3 uses
  %i.lg = fadd double %.075254, %i.lf             ; 3 uses
  %i.lh = call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double %.074255) ; 2 uses
  %i.li = icmp sgt i64 %.0257.in, 1
  br i1 %i.li, label %.lr.ph259, label %._crit_edge260.loopexit, !llvm.loop !99

12:                                               ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit159 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  %.idx348 = shl nuw nsw i64 %2, 3
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %.idx348) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit176

_ZNSt6vectorIlSaIlEED2Ev.exit176:                 ; preds = %12, %bb.ah
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.ah ], [ %.pn104.pn.pn, %12 ] ; 2 uses
  %.not.i.i.i.i177 = icmp eq ptr %.sroa.0211.0, null
  br i1 %.not.i.i.i.i177, label %.body142, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit176
  %i.lj = ptrtoint ptr %.sroa.0211.0 to i64
  %i.lk = sub i64 %.sroa.15.0, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0211.0, i64 noundef %i.lk) #20
  br label %.body142

.body142:                                         ; preds = %bb.bn, %_ZNSt6vectorIlSaIlEED2Ev.exit176, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %_ZNSt6vectorIlSaIlEED2Ev.exit.i ], [ %.pn104.pn.pn.pn, %bb.bn ], [ %.pn104.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit176 ] ; 2 uses
  %.val130 = load ptr, ptr %6, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %.val130, null
  br i1 %.not.i.i.i.i180, label %.body138, label %bb.bo

bb.bo:                                            ; preds = %.body142
  %i.ll = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val131 = load ptr, ptr %i.ll, align 8
  %i.lm = ptrtoint ptr %.val131 to i64
  %i.ln = ptrtoint ptr %.val130 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.val130, i64 noundef %i.lo) #20
  br label %.body138

.body138:                                         ; preds = %bb.bo, %.body142, %bb.ab, %bb.aa
  %.pn104.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.aa ], [ %.pn104.pn.pn.pn.pn, %bb.bo ], [ %i.ek, %bb.ab ], [ %.pn104.pn.pn.pn.pn, %.body142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call fastcc void @_ZN5faiss12_GLOBAL__N_114CostCalculatorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #21
  br label %.body135

.body135:                                         ; preds = %bb.x, %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %.body138
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn, %.body138 ], [ %lpad.loopexit.split-lp372, %_ZNSt6vectorIdSaIdEED2Ev.exit.i ], [ %lpad.loopexit.split-lp372, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.af, %.body135
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn, %.body135 ], [ %i.fc, %bb.af ]
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #20
  br label %.body

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.bd, %bb.k
  %.078 = phi double [ 0.000000e+00, %bb.k ], [ %i.jh, %bb.bd ]
  ret double %.078

.body:                                            ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn104.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn104.pn.pn.pn.pn.pn.pn.pn, %bb.bp ]
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.bq:                                            ; preds = %bb.bj, %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !52
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !51
  %i.p = load ptr, ptr %0, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_114CostCalculatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit2

_ZNSt6vectorIdSaIdEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 4 uses
end_hunk_0
