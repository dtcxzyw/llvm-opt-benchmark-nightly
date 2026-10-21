Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_:bb.a

vector.memcheck:                                  ; preds = %.lr.ph95
  %scevgep = getelementptr i8, ptr %i.di, i64 %i.bm
  %scevgep131 = getelementptr i8, ptr %i.dh, i64 %i.bm
  %bound0 = icmp ult ptr %i.di, %scevgep131
  %bound1 = icmp ult ptr %i.dh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <2 x i64>, ptr %i.dj, align 8, !tbaa !78, !alias.scope !1132
  %wide.load132 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !78, !alias.scope !1132
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load133 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !78, !alias.scope !1133, !noalias !1132
  %wide.load134 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !78, !alias.scope !1133, !noalias !1132
  %i.dn = add <2 x i64> %wide.load133, %wide.load
  %i.do = add <2 x i64> %wide.load134, %wide.load132
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !78, !alias.scope !1133, !noalias !1132
  store <2 x i64> %i.do, ptr %i.dm, align 8, !tbaa !78, !alias.scope !1133, !noalias !1132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge96, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph95, %middle.block
  %.094.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph95 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.094.prol = phi i64 [ %i.dv, %scalar.ph.prol ], [ %.094.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.094.prol
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !78
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.094.prol ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !78
  %i.du = add i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !78
  %i.dv = add nuw nsw i64 %.094.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1129

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.094.unr = phi i64 [ %.094.ph, %scalar.ph.preheader ], [ %i.dv, %scalar.ph.prol ]
  %i.dw = sub nsw i64 %.094.ph, %i.aq
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge96, label %scalar.ph

._crit_edge96:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit78
  %i.dy = add nuw i64 %.02597, 1                  ; 2 uses
  %exitcond101.not = icmp eq i64 %i.dy, %3
  br i1 %exitcond101.not, label %._crit_edge99, label %bb.u, !llvm.loop !1130

bb.ad:                                            ; preds = %bb.aa, %bb.x
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.aa ], [ %i.cx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.094 = phi i64 [ %i.ew, %scalar.ph ], [ %.094.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.094
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !78
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.094 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !78
  %i.ed = add i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !78
  %i.ee = add nuw nsw i64 %.094, 1                ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ee ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !78
  %i.ej = add i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !78
  %i.ek = add nuw nsw i64 %.094, 2                ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !78
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ek ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !78
  %i.ep = add i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !78
  %i.eq = add nuw nsw i64 %.094, 3                ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !78
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.eq ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !78
  %i.ev = add i64 %i.eu, %i.es
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !78
  %i.ew = add nuw nsw i64 %.094, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ew, %i.aq
  br i1 %exitcond.not.3, label %._crit_edge96, label %scalar.ph, !llvm.loop !1131

bb.ae:                                            ; preds = %bb.s, %bb.r, %bb.q
  %i.ex = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  store ptr %i.ex, ptr %i.bw, align 8, !tbaa !175
  %i.ey = load ptr, ptr %5, align 8, !tbaa !196   ; 3 uses
  %i.ez = load ptr, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fg, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.ey, %bb.ae ] ; 3 uses
  %i.fa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !167
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #31
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.af, %.lr.ph.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fg, %i.ez
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !196
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.ae
  %i.fh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ey, %bb.ae ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !197
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #31
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.t, %bb.ad, %bb.ah, %bb.i, %bb.f
  %.pn40 = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.bc, %bb.i ], [ %.pn36.pn, %bb.ad ], [ %i.fm, %bb.ah ], [ %.pn.pn, %bb.t ]
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn40

bb.aj:                                            ; preds = %bb.z, %bb.l
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_14CalcColumnSizeINS_4data17DenseAdapterBatchERNS3_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_EEvSA_iNS0_5SchedESE_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %.not114 = icmp eq i64 %0, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !349, !nonnull !67, !align !311 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !67, !align !311 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !67, !align !335 ; 3 uses
  br i1 %.not.i.i.not.i, label %bb.b, label %.lr.ph107.split

.lr.ph107.split:                                  ; preds = %.lr.ph107
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !350, !noalias !1147
  %i.n = load i64, ptr %i.j, align 8, !tbaa !351, !noalias !1147 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.i

_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.ithread-pre-split: ; preds = %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit
  %.pr152 = load i64, ptr %i.j, align 8, !tbaa !351, !noalias !1147
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.i

_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.i:      ; preds = %.lr.ph107.split, %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.ithread-pre-split
  %i.p = phi i64 [ %.pr152, %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.ithread-pre-split ], [ %i.n, %.lr.ph107.split ] ; 6 uses
  %.049106 = phi i64 [ %i.az, %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.ithread-pre-split ], [ 0, %.lr.ph107.split ] ; 2 uses
  %i.q = mul i64 %i.p, %.049106
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q ; 3 uses
  %.not.i55 = icmp eq i64 %i.p, 0
  br i1 %.not.i55, label %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph107
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.49, i64 noundef 0, i64 noundef 0) #29
  unreachable

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.i
  %.pre9.i = load float, ptr %i.l, align 4        ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.p, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.p, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.t = phi float [ %.pre9.i, %.lr.ph.i.new ], [ %i.ao, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ap, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.08.i
  %i.v = load float, ptr %i.u, align 4, !tbaa !77, !noalias !1148 ; 2 uses
  %i.w = fcmp ord float %i.v, 0.000000e+00
  %i.x = fcmp une float %i.v, %i.t
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.08.i ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !78
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !78
  %.pre.i = load float, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = phi float [ %.pre.i, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.ae = or disjoint i64 %.08.i, 1               ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !77, !noalias !1148 ; 2 uses
  %i.ah = fcmp ord float %i.ag, 0.000000e+00
  %i.ai = fcmp une float %i.ag, %i.ad
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ae ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !78
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !78
  %.pre.i.1 = load float, ptr %i.l, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi float [ %.pre.i.1, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ap = add nuw i64 %.08.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !13

_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi float [ %.pre9.i, %.lr.ph.i ], [ %i.ao, %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa ]
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.08.i.epil.init
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !77, !noalias !1148 ; 2 uses
  %i.as = fcmp ord float %i.ar, 0.000000e+00
  %i.at = fcmp une float %i.ar, %.epil.init
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %bb.h, label %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit

bb.h:                                             ; preds = %.epil.preheader
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.08.i.epil.init ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !78
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !78
  br label %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit

_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit: ; preds = %_ZZN7xgboost6common14CalcColumnSizeINS_4data17DenseAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_ENKUlmE_clEm.exit.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.i
  %i.az = add nuw i64 %.049106, 1                 ; 2 uses
  %exitcond137.not = icmp eq i64 %i.az, %0
  br i1 %exitcond137.not, label %.loopexit, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE2atEm.exit.ithread-pre-split, !llvm.loop !1138

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !111, !noalias !1149
  store i32 1, ptr %i.b, align 4, !tbaa !111, !noalias !1149
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ba = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ba, ptr noundef nonnull @.str.46, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.47, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !80    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bl, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ac

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.pr70 = load ptr, ptr %6, align 8, !tbaa !80   ; 4 uses
  %.not.i64 = icmp eq ptr %.pr70, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %.pr70, align 8, !tbaa !81 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pr70, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr70, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader73
    i32 1, label %bb.q
    i32 2, label %bb.t
    i32 3, label %.preheader93
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader93:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not108 = icmp eq i64 %0, 0
  br i1 %.not108, label %bb.x, label %.lr.ph

.preheader73:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not113 = icmp eq i64 %0, 0
  br i1 %.not113, label %bb.x, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader73, %bb.p
  %.044104 = phi i64 [ %i.br, %bb.p ], [ 0, %.preheader73 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.044104)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph105
  %i.br = add nuw i64 %.044104, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.br, %0
  br i1 %exitcond136.not, label %thread-pre-split154, label %.lr.ph105, !llvm.loop !1141

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bs = icmp eq i64 %3, 0
  %.not112 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.bs, label %.preheader75, label %.preheader80

.preheader80:                                     ; preds = %bb.q
  br i1 %.not112, label %bb.x, label %.lr.ph101

.preheader75:                                     ; preds = %bb.q
  br i1 %.not112, label %bb.x, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader75, %bb.r
  %.043102 = phi i64 [ %i.bt, %bb.r ], [ 0, %.preheader75 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.043102)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph103
  %i.bt = add nuw i64 %.043102, 1                 ; 2 uses
  %exitcond135.not = icmp eq i64 %i.bt, %0
  br i1 %exitcond135.not, label %thread-pre-split154, label %.lr.ph103, !llvm.loop !1142

.lr.ph101:                                        ; preds = %.preheader80, %bb.s
  %.042100 = phi i64 [ %i.bu, %bb.s ], [ 0, %.preheader80 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.042100)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.lr.ph101
  %i.bu = add nuw i64 %.042100, 1                 ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bu, %0
  br i1 %exitcond134.not, label %thread-pre-split154, label %.lr.ph101, !llvm.loop !1143

bb.t:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bv = icmp eq i64 %3, 0
  %.not110 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.bv, label %.preheader84, label %.preheader89

.preheader89:                                     ; preds = %bb.t
  br i1 %.not110, label %bb.x, label %.lr.ph97

.preheader84:                                     ; preds = %bb.t
  br i1 %.not110, label %bb.x, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader84, %bb.u
  %.04198 = phi i64 [ %i.bw, %bb.u ], [ 0, %.preheader84 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.04198)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.lr.ph99
  %i.bw = add nuw i64 %.04198, 1                  ; 2 uses
  %exitcond133.not = icmp eq i64 %i.bw, %0
  br i1 %exitcond133.not, label %thread-pre-split154, label %.lr.ph99, !llvm.loop !1144

.lr.ph97:                                         ; preds = %.preheader89, %bb.v
  %.04096 = phi i64 [ %i.bx, %bb.v ], [ 0, %.preheader89 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.04096)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph97
  %i.bx = add nuw i64 %.04096, 1                  ; 2 uses
  %exitcond132.not = icmp eq i64 %i.bx, %0
  br i1 %exitcond132.not, label %thread-pre-split154, label %.lr.ph97, !llvm.loop !1145

.lr.ph:                                           ; preds = %.preheader93, %bb.w
  %.095 = phi i64 [ %i.by, %bb.w ], [ 0, %.preheader93 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common14CalcColumnSizeINS2_4data17DenseAdapterBatchERNS5_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_EUlmE_JmEEEvSC_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.167) align 8 %4, i64 noundef %.095)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
