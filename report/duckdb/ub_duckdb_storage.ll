inline.NumInlined: 20074
inline.NumDeleted: 9324
begin_hunk_0_@_ZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS_20TemporaryMemoryStateE:bb.a
  %.0.i.i.i181 = phi i1 [ false, %bb.an ], [ true, %.noexc238 ] ; 2 uses
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gj = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gc
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.gj) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i.i.i181, label %bb.ap, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i.i.i181, label %bb.ap, label %.body

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i178
  %.pn8.i.i.i179 = phi { ptr, i32 } [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i178 ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183 ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182 ]
  call void @__cxa_free_exception(ptr %i.gb) #23
  br label %.body

bb.aq:                                            ; preds = %bb.an
  unreachable

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.296319
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !1170 ; 2 uses
  %i.gn = fcmp olt double %i.gm, %.0128317
  br i1 %i.gn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ak
  %.2130 = phi double [ %.0128317, %bb.ak ], [ %i.gm, %bb.as ], [ %.0128317, %bb.ar ]
  %.2127 = phi i64 [ %.0125318, %bb.ak ], [ %.296319, %bb.as ], [ %.0125318, %bb.ar ] ; 4 uses
  %i.go = add nuw i64 %.296319, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.go, %.195
  br i1 %exitcond.not, label %._crit_edge321, label %.lr.ph320, !llvm.loop !1172

._crit_edge321:                                   ; preds = %bb.at
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.2127)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %._crit_edge321
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !1154
  %i.gr = uitofp i64 %.0120324 to double
  %i.gs = sub i64 %i.du, %.0123323
  %i.gt = uitofp i64 %i.gs to double
  %i.gu = fdiv double %i.gr, %i.gt
  %i.gv = call double @llvm.ceil.f64(double %i.gu)
  %i.gw = fptoui double %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gy = load atomic i64, ptr %i.gx seq_cst, align 8
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.2127)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !70
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.2127)
          to label %bb.aw unwind label %bb.az     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.hc = sub i64 %i.gy, %i.ha                    ; 2 uses
  %i.hd = call noundef i64 @llvm.umin.i64(i64 %i.gw, i64 %i.hc) ; 2 uses
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !70
  %i.hf = add i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.hb, align 8, !tbaa !70
  %i.hg = sub i64 %.0120324, %i.hd
  %i.hh = icmp eq i64 %.0123323, %i.dy
  %i.hi = icmp ult i64 %i.hc, %i.gw
  %or.cond = and i1 %i.hh, %i.hi
  %i.hj = sext i1 %or.cond to i64
  %.1124 = add i64 %.0123323, 1
  %i.hk = add i64 %.1124, %i.hj                   ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.du
  br i1 %i.hl, label %bb.aa, label %._crit_edge327, !llvm.loop !1173

bb.ax:                                            ; preds = %._crit_edge321
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.au
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.av
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph330.preheader:                              ; preds = %.noexc166
  store ptr %i.eh, ptr %13, align 8, !tbaa !526
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.195
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !1165
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eh, i8 0, i64 %i.eb, i1 false), !tbaa !70
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eb
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !1164
  br label %.lr.ph330

.lr.ph330:                                        ; preds = %.lr.ph330.preheader, %bb.bc
  %.397328 = phi i64 [ %i.ia, %bb.bc ], [ 0, %.lr.ph330.preheader ] ; 5 uses
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %.397328)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit

bb.ba:                                            ; preds = %.lr.ph330
  store i64 %.397328, ptr %i.ht, align 8, !tbaa !70
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.397328)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1154
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load atomic i64, ptr %i.hw seq_cst, align 8
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.397328)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.hz = add i64 %i.hx, -1
  store i64 %i.hz, ptr %i.hy, align 8, !tbaa !70
  %i.ia = add nuw i64 %.397328, 1                 ; 2 uses
  %exitcond360.not = icmp eq i64 %i.ia, %.195
  br i1 %exitcond360.not, label %._crit_edge331, label %.lr.ph330, !llvm.loop !1174

bb.bd:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.z
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit220

bb.be:                                            ; preds = %.noexc166
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit218

.loopexit:                                        ; preds = %bb.bi, %.noexc209
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body211

.loopexit.split-lp.loopexit:                      ; preds = %bb.bb, %bb.ba, %.lr.ph330
  %lpad.loopexit269 = landingpad { ptr, i32 }
          cleanup
  br label %.body211

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bp, %bb.bh, %bb.bg, %._crit_edge331
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %.body211

._crit_edge331:                                   ; preds = %bb.bc, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread
  %i.id = phi ptr [ %i.dz, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread ], [ %i.eg, %bb.bc ] ; 2 uses
  %i.ie = phi ptr [ %.ph416, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread ], [ %i.w, %bb.bc ]
  %.094.lcssa409414420423430 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread ], [ %.195, %bb.bc ]
  %i.if = phi i64 [ %.ph, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread ], [ %i.dt, %bb.bc ]
  invoke fastcc void @_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %.094.lcssa409414420423430)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %._crit_edge331
  %i.ig = load ptr, ptr %12, align 8, !tbaa !338  ; 6 uses
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !338 ; 6 uses
  %.not.i.i205 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not.i.i205, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.ig to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = ashr exact i64 %i.ik, 3
  %i.im = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.il, i1 true)
  %i.in = shl nuw nsw i64 %i.im, 1
  %i.io = xor i64 %i.in, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_T1_"(ptr %i.ig, ptr %i.ih, i64 noundef %i.io, ptr nonnull %10)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.bg
  %i.ip = icmp sgt i64 %i.ik, 128
  br i1 %i.ip, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %.noexc207
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_"(ptr %i.ig, ptr nonnull %i.iq, ptr nonnull %10)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc208:                                        ; preds = %bb.bh
  %.not29.i.i.i.i = icmp eq ptr %i.iq, %i.ih
  br i1 %.not29.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc208
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.bi

bb.bi:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.0.030.i.i.i.i = phi ptr [ %i.iq, %.lr.ph.i.i.i.i ], [ %i.kf, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 6 uses
  %i.is = load i64, ptr %.sroa.0.030.i.i.i.i, align 8, !tbaa !70 ; 5 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.030.i.i.i.i, i64 -8 ; 3 uses
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.is)
          to label %.noexc209 unwind label %.loopexit

.noexc209:                                        ; preds = %bb.bi
  %i.iu = load double, ptr %i.it, align 8, !tbaa !1170
  %i.iv = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !70
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.iv)
          to label %.noexc210 unwind label %.loopexit

.noexc210:                                        ; preds = %.noexc209
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !1170
  %i.iy = fcmp olt double %i.iu, %i.ix
  br i1 %i.iy, label %.lr.ph.i.preheader.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.noexc210
  %i.iz = load ptr, ptr %i.ir, align 8, !tbaa !1166
  %i.ja = load ptr, ptr %10, align 8, !tbaa !1171 ; 3 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3                 ; 4 uses
  %.not.i.i.i5.i.i.i.i = icmp ult i64 %i.is, %i.je
  br i1 %.not.i.i.i5.i.i.i.i, label %.lr.ph.i.us.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.i, !prof !1037

.lr.ph.i.us.preheader.i.i.i.i:                    ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.is
  %.pre.i.i.i.i.a = load double, ptr %i.jf, align 8, !tbaa !1170
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i, %.lr.ph.i.us.preheader.i.i.i.i
  %.sroa.0.011.i.us.i.i.i.i = phi ptr [ %.sroa.0.0.i.us.i.i.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i.us.preheader.i.i.i.i ] ; 4 uses
  %.sroa.06.010.i.us.i.i.i.i.a = phi ptr [ %.sroa.0.011.i.us.i.i.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i ], [ %.sroa.0.030.i.i.i.i, %.lr.ph.i.us.preheader.i.i.i.i ]
  %16 = load i64, ptr %.sroa.0.011.i.us.i.i.i.i, align 8, !tbaa !70
  store i64 %16, ptr %.sroa.06.010.i.us.i.i.i.i.a, align 8, !tbaa !70
  %.sroa.0.0.i.us.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.us.i.i.i.i, i64 -8 ; 2 uses
  %i.jg = load i64, ptr %.sroa.0.0.i.us.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.jg, ptr %i.h, align 8, !tbaa !70
  store i64 %i.je, ptr %i.i, align 8, !tbaa !70
  %.not.i.i.i.us.i.i.i.i = icmp ult i64 %i.jg, %i.je
  br i1 %.not.i.i.i.us.i.i.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i, label %.noexc.i.i.i.i.i, !prof !1037

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !1170
  %i.jj = fcmp olt double %.pre.i.i.i.i.a, %i.ji
  br i1 %i.jj, label %.lr.ph.i.us.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1175

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.jk = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !70
  store i64 %i.jk, ptr %.sroa.0.030.i.i.i.i, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.is, ptr %i.f, align 8, !tbaa !70
  store i64 %i.je, ptr %i.g, align 8, !tbaa !70
  %i.jl = call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.jm, ptr %2, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 55, ptr %i.d, align 8, !tbaa !70
  %i.jn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc15.i.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i6.i.i.i.i ; 3 uses

.noexc15.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.jn, ptr %2, align 8, !tbaa !82
  %i.jo = load i64, ptr %i.d, align 8, !tbaa !70  ; 3 uses
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.jn, ptr noundef nonnull align 1 dereferenceable(55) @.str.230, i64 55, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !185
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo
  store i8 0, ptr %i.jq, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc15.i.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.jl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.bl unwind label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i6.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume.sink.split.i.i.i.i

bb.bk:                                            ; preds = %bb.bj, %.noexc15.i.i.i.i
  %.0.i.i.i9.i.i.i.i = phi i1 [ false, %bb.bj ], [ true, %.noexc15.i.i.i.i ] ; 2 uses
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jt = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.jm
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.jt) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i.i9.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i.i9.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body211

common.resume.sink.split.i.i.i.i:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i6.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i.i ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i6.i.i.i.i ]
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i.i ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i6.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i.i.i) #23
  br label %.body211

bb.bl:                                            ; preds = %bb.bj
  unreachable

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.us.i.i.i.i
  %i.jv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.jw, ptr %3, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 55, ptr %i.e, align 8, !tbaa !70
  %i.jx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i.i ; 3 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.jx, ptr %3, align 8, !tbaa !82
  %i.jy = load i64, ptr %i.e, align 8, !tbaa !70  ; 3 uses
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.jx, ptr noundef nonnull align 1 dereferenceable(55) @.str.230, i64 55, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !185
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  store i8 0, ptr %i.ka, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %.noexc.i.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.jv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.bo unwind label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume.sink.split.i.i.i.i

bb.bn:                                            ; preds = %bb.bm, %.noexc.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i1 [ false, %bb.bm ], [ true, %.noexc.i.i.i.i ] ; 2 uses
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kd = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jw
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.kd) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0.i.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body211

bb.bo:                                            ; preds = %bb.bm
  unreachable

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i, %.noexc210
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.030.i.i.i.i, %.noexc210 ], [ %.sroa.0.011.i.us.i.i.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us.i.i.i.i ]
  store i64 %i.is, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !70
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i206 = icmp eq ptr %i.kf, %i.ih
  br i1 %.not.i.i.i.i206, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit", label %bb.bi, !llvm.loop !1176

bb.bp:                                            ; preds = %.noexc207
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_"(ptr %i.ig, ptr %i.ih, ptr nonnull %10)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_.exit.i.i.i.i", %.noexc208, %bb.bf, %bb.bp
  %i.kg = load ptr, ptr %12, align 8, !tbaa !338  ; 2 uses
  %i.kh = load ptr, ptr %i.id, align 8, !tbaa !338 ; 2 uses
  %.not267332 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not267332, label %.critedge, label %.lr.ph335

.lr.ph335:                                        ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit"
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph335, %bb.bw
  %.1121334 = phi i64 [ %i.if, %.lr.ph335 ], [ %i.lr, %bb.bw ]
  %.sroa.0244.0333 = phi ptr [ %i.kg, %.lr.ph335 ], [ %i.ls, %bb.bw ] ; 2 uses
  %i.kk = load i64, ptr %.sroa.0244.0333, align 8, !tbaa !70 ; 3 uses
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.kk)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !1154 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load atomic i64, ptr %i.kn seq_cst, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.kq = load atomic i64, ptr %i.kp seq_cst, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ks = load atomic i64, ptr %i.kr seq_cst, align 8
  %i.kt = load i64, ptr %i.ki, align 8, !tbaa !1069
  %i.ku = load i64, ptr %i.kj, align 8, !tbaa !1068
  %i.kv = load i64, ptr %i.ie, align 8, !tbaa !1066
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.kk)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.kx = call noundef i64 @llvm.umax.i64(i64 %i.ko, i64 %i.kq)
  %i.ky = call noundef i64 @llvm.umin.i64(i64 %i.kx, i64 %i.ks)
  %i.kz = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.ky, i64 1) ; 2 uses
  %i.la = add i64 %i.kz, %.1121334                ; 2 uses
  %i.lb = uitofp i64 %i.la to double
  %i.lc = fmul nnan double %i.lb, 9.000000e-01
  %i.ld = fptoui double %i.lc to i64
  %i.le = call i64 @llvm.umax.i64(i64 %i.kt, i64 8)
  %i.lf = call i64 @llvm.umin.i64(i64 %i.le, i64 32)
  %i.lg = shl i64 %i.ku, 27
  %i.lh = lshr i64 %i.kv, 4
  %i.li = call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.lg, i64 %i.lh)
  %i.lj = mul i64 %i.li, %i.lf
  %i.lk = call noundef i64 @llvm.umin.i64(i64 %i.ld, i64 %i.lj)
  %i.ll = load i64, ptr %i.kw, align 8, !tbaa !70
  %i.lm = call noundef i64 @llvm.umin.i64(i64 %i.ll, i64 %i.lk)
  %i.ln = call noundef i64 @llvm.umax.i64(i64 %i.lm, i64 %i.kz) ; 2 uses
  %i.lo = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not136 = icmp eq i64 %i.kk, %i.lo
  br i1 %.not136, label %bb.cb, label %bb.bw

bb.bu:                                            ; preds = %bb.bq
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.bv:                                            ; preds = %bb.bs, %bb.br
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.bw:                                            ; preds = %bb.bt
  %i.lr = sub i64 %i.la, %i.ln
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0244.0333, i64 8 ; 2 uses
  %.not267 = icmp eq ptr %i.ls, %i.kh
  br i1 %.not267, label %.critedge, label %bb.bq

.critedge:                                        ; preds = %bb.bw, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS7_20TemporaryMemoryStateEE3$_0EvT_SD_T0_.exit"
  %i.lt = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bx:                                            ; preds = %.critedge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.lt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.cn unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.critedge
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0 = phi i1 [ false, %bb.by ], [ true, %bb.bx ] ; 2 uses
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lw = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bz
  call void @_ZdlPv(ptr noundef %i.lw) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0, label %bb.ca, label %.body211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0, label %bb.ca, label %.body211

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137265 = phi { ptr, i32 } [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.lt) #23
  br label %.body211

bb.cb:                                            ; preds = %bb.bt
  %i.lz = load ptr, ptr %13, align 8, !tbaa !526  ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZdlPv(ptr noundef nonnull %i.lz) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ma = load ptr, ptr %12, align 8, !tbaa !526  ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorImSaImEED2Ev.exit216, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ma) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit216

_ZNSt6vectorImSaImEED2Ev.exit216:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cg

.body211:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bu, %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i, %common.resume.sink.split.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ca
  %.pn139 = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ], [ %.pn137265, %bb.ca ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lq, %bb.bv ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10.i.i.i.i ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i11.i.i.i.i ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i ], [ %i.lp, %bb.bu ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit269, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mb = load ptr, ptr %13, align 8, !tbaa !526  ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorImSaImEED2Ev.exit218, label %bb.ce

bb.ce:                                            ; preds = %.body211
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit218

_ZNSt6vectorImSaImEED2Ev.exit218:                 ; preds = %bb.ce, %.body211, %bb.be
  %.pn139.pn = phi { ptr, i32 } [ %i.ic, %bb.be ], [ %.pn139, %.body211 ], [ %.pn139, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.mc = load ptr, ptr %12, align 8, !tbaa !526  ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorImSaImEED2Ev.exit220, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit218
  call void @_ZdlPv(ptr noundef nonnull %i.mc) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit220

_ZNSt6vectorImSaImEED2Ev.exit220:                 ; preds = %bb.cf, %_ZNSt6vectorImSaImEED2Ev.exit218, %bb.bd
  %.pn139.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.bd ], [ %.pn139.pn, %_ZNSt6vectorImSaImEED2Ev.exit218 ], [ %.pn139.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

bb.cg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit216, %bb.w
  %.3 = phi i64 [ %i.dr, %bb.w ], [ %i.ln, %_ZNSt6vectorImSaImEED2Ev.exit216 ]
  %i.md = load ptr, ptr %10, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef nonnull %i.md) #44
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.me = load ptr, ptr %9, align 8, !tbaa !526   ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i222, label %_ZNSt6vectorImSaImEED2Ev.exit223, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.me) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit223

_ZNSt6vectorImSaImEED2Ev.exit223:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #44
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !1143
  store ptr %.0.i, ptr %0, align 8, !tbaa !1142
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 9 uses
  %i.g = alloca i64, align 8                      ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp sgt i64 %i.m, 16
  br i1 %i.n, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = icmp eq i64 %2, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph152

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEET_SG_SG_T0_.exit"
  %i.r = icmp eq i64 %i.af, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph152, !llvm.loop !4319

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa137 = phi i64 [ %i.m, %.lr.ph ], [ %i.dv, %bb.b ] ; 2 uses
  %storemerge51.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.051.171.us.i.i, %bb.b ]
  %i.s = add nsw i64 %.lcssa137, -2
  %i.t = lshr i64 %i.s, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.w, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !70
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_T2_"(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa137, i64 noundef %i.v, ptr %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.w = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !4320

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.x, %.lr.ph.i9.i ], [ %storemerge51.lcssa, %bb.c ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !70
  %i.z = load i64, ptr %0, align 8, !tbaa !70
  store i64 %i.z, ptr %i.x, align 8, !tbaa !70
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.aa, %i.j                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.y, ptr %3)
  %i.ad = icmp sgt i64 %i.ab, 8
  br i1 %i.ad, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !4321

.lr.ph152:                                        ; preds = %.lr.ph, %bb.b
  %storemerge51151 = phi ptr [ %.sroa.051.171.us.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.052150 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %i.ae = phi i64 [ %i.dv, %bb.b ], [ %i.m, %.lr.ph ]
  %i.af = add nsw i64 %.052150, -1                ; 3 uses
  %i.ag = lshr i64 %i.ae, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 7 uses
  %i.ai = getelementptr inbounds i8, ptr %storemerge51151, i64 -8 ; 8 uses
  %.val.i.i.i = load i64, ptr %i.o, align 8, !tbaa !70
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i.i.i)
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1170
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.al)
  %i.an = load double, ptr %i.am, align 8, !tbaa !1170
  %i.ao = fcmp olt double %i.ak, %i.an
  br i1 %i.ao, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph152
  %.val.i26.i.i = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i26.i.i)
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1170
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ar)
  %i.at = load double, ptr %i.as, align 8, !tbaa !1170
  %i.au = fcmp olt double %i.aq, %i.at
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = load i64, ptr %0, align 8, !tbaa !70
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.aw, ptr %0, align 8, !tbaa !70
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

bb.f:                                             ; preds = %bb.d
  %.val.i27.i.i = load i64, ptr %i.o, align 8, !tbaa !70
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i27.i.i)
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !1170
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.az)
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !1170
  %i.bc = fcmp olt double %i.ay, %i.bb
  %i.bd = load i64, ptr %0, align 8, !tbaa !70    ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i64, ptr %i.ai, align 8, !tbaa !70
  store i64 %i.be, ptr %0, align 8, !tbaa !70
  store i64 %i.bd, ptr %i.ai, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

bb.h:                                             ; preds = %bb.f
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.bf, ptr %0, align 8, !tbaa !70
  store i64 %i.bd, ptr %i.o, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

bb.i:                                             ; preds = %.lr.ph152
  %.val.i28.i.i = load i64, ptr %i.o, align 8, !tbaa !70
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i28.i.i)
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !1170
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bi)
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !1170
  %i.bl = fcmp olt double %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load <2 x i64>, ptr %0, align 8, !tbaa !70
  %i.bn = shufflevector <2 x i64> %i.bm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bn, ptr %0, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

bb.k:                                             ; preds = %bb.i
  %.val.i29.i.i = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i29.i.i)
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !1170
  %i.bq = load i64, ptr %i.ai, align 8, !tbaa !70
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bq)
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1170
  %i.bt = fcmp olt double %i.bp, %i.bs
  %i.bu = load i64, ptr %0, align 8, !tbaa !70    ; 2 uses
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.ai, align 8, !tbaa !70
  store i64 %i.bv, ptr %0, align 8, !tbaa !70
  store i64 %i.bu, ptr %i.ai, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

bb.m:                                             ; preds = %bb.k
  %i.bw = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.bw, ptr %0, align 8, !tbaa !70
  store i64 %i.bu, ptr %i.ah, align 8, !tbaa !70
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !1166
  %i.by = load ptr, ptr %3, align 8, !tbaa !1171  ; 4 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 10 uses
  %.val.i6995.i.i = load i64, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i6995.i.i, ptr %i.f, align 8, !tbaa !70
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i97096.i.i = icmp ult i64 %.val.i6995.i.i, %i.cc
  br i1 %.not.i.i.i97096.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.lr.ph.i.i, label %.noexc.i34.i.i, !prof !4322

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.lr.ph.i.i: ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i", %bb.y
  %.val.i6999.i.i = phi i64 [ %.val.i69.i.i, %bb.y ], [ %.val.i6995.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ]
  %.sroa.051.098.i.i = phi ptr [ %i.ds, %bb.y ], [ %i.o, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ]
  %.sroa.048.097.i.i = phi ptr [ %.sroa.048.1.i.i, %bb.y ], [ %storemerge51151, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ]
  %i.cd = load i64, ptr %0, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.cd, %i.cc
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.preheader.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.i.i, !prof !1037

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.preheader.i.i: ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.lr.ph.i.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  %.pre.i.i = load double, ptr %i.ce, align 8, !tbaa !1170 ; 2 uses
  br label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i:  ; preds = %bb.n, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.preheader.i.i
  %.val.i72.us.i.i = phi i64 [ %.val.i.us.i.i, %bb.n ], [ %.val.i6999.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.preheader.i.i ]
  %.sroa.051.171.us.i.i = phi ptr [ %i.ci, %bb.n ], [ %.sroa.051.098.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.preheader.i.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.val.i72.us.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !1170
  %i.ch = fcmp olt double %i.cg, %.pre.i.i
  br i1 %i.ch, label %bb.n, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit32.i.i

bb.n:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.051.171.us.i.i, i64 8 ; 2 uses
  %.val.i.us.i.i = load i64, ptr %i.ci, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i.us.i.i, ptr %i.f, align 8, !tbaa !70
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i9.us.i.i = icmp ult i64 %.val.i.us.i.i, %i.cc
  br i1 %.not.i.i.i9.us.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i, label %.noexc.i34.i.i, !prof !4323, !llvm.loop !4324

.noexc.i34.i.i:                                   ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_SG_T0_.exit.i", %bb.y, %bb.n
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 55, ptr %i.b, align 8, !tbaa !70
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc35.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i.i ; 3 uses

.noexc35.i.i:                                     ; preds = %.noexc.i34.i.i
  store ptr %i.cl, ptr %5, align 8, !tbaa !82
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cl, ptr noundef nonnull align 1 dereferenceable(55) @.str.230, i64 55, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !185
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc35.i.i
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.q unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i.i: ; preds = %.noexc.i34.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume.sink.split.i.i

bb.p:                                             ; preds = %bb.o, %.noexc35.i.i
  %.0.i.i.i13.i.i = phi i1 [ false, %bb.o ], [ true, %.noexc35.i.i ] ; 2 uses
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ck
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.cr) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i13.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i13.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

common.resume.sink.split.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i18.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i.i
  %.sink.i.i = phi ptr [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i18.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i.i ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i18.i.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #23
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %common.resume.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.q:                                             ; preds = %bb.o
  unreachable

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.i.i:     ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.cd, ptr %i.h, align 8, !tbaa !70
  store i64 %i.cc, ptr %i.i, align 8, !tbaa !70
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.cu, ptr %6, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 55, ptr %i.c, align 8, !tbaa !70
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ; 3 uses

.noexc.i.i:                                       ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.i.i
  store ptr %i.cv, ptr %6, align 8, !tbaa !82
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !70  ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cv, ptr noundef nonnull align 1 dereferenceable(55) @.str.230, i64 55, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !185
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.t unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume.sink.split.i.i

bb.s:                                             ; preds = %bb.r, %.noexc.i.i
  %.0.i.i.i.i.i = phi i1 [ false, %bb.r ], [ true, %.noexc.i.i ] ; 2 uses
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cu
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.db) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.t:                                             ; preds = %bb.r
  unreachable

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit32.i.i:     ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit24.i.i
  %.sroa.048.0.pn.i.i = phi ptr [ %.sroa.048.1.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit24.i.i ], [ %.sroa.048.097.i.i, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.us.i.i ]
  %.sroa.048.1.i.i = getelementptr inbounds i8, ptr %.sroa.048.0.pn.i.i, i64 -8 ; 6 uses
  %i.dd = load i64, ptr %.sroa.048.1.i.i, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.dd, ptr %i.d, align 8, !tbaa !70
  store i64 %i.cc, ptr %i.e, align 8, !tbaa !70
  %.not.i.i.i17.i.i = icmp ult i64 %i.dd, %i.cc
  br i1 %.not.i.i.i17.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit24.i.i, label %.noexc.i38.i.i, !prof !1037

.noexc.i38.i.i:                                   ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit32.i.i
  %i.de = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.df, ptr %4, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 55, ptr %i.a, align 8, !tbaa !70
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc39.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i18.i.i ; 3 uses

.noexc39.i.i:                                     ; preds = %.noexc.i38.i.i
  store ptr %i.dg, ptr %4, align 8, !tbaa !82
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !70  ; 3 uses
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dg, ptr noundef nonnull align 1 dereferenceable(55) @.str.230, i64 55, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !185
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc39.i.i
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i18.i.i: ; preds = %.noexc.i38.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume.sink.split.i.i

bb.v:                                             ; preds = %bb.u, %.noexc39.i.i
  %.0.i.i.i21.i.i = phi i1 [ false, %bb.u ], [ true, %.noexc39.i.i ] ; 2 uses
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dm = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.df
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dm) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i.i.i21.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i23.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.0.i.i.i21.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit24.i.i:     ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dd
  %i.dp = load double, ptr %i.do, align 8, !tbaa !1170
  %i.dq = fcmp olt double %.pre.i.i, %i.dp
  br i1 %i.dq, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit32.i.i, label %bb.x, !llvm.loop !4325

bb.x:                                             ; preds = %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit24.i.i
  %i.dr = icmp ult ptr %.sroa.051.171.us.i.i, %.sroa.048.1.i.i
  br i1 %i.dr, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEET_SG_SG_T0_.exit"

bb.y:                                             ; preds = %bb.x
  %7 = load i64, ptr %.sroa.051.171.us.i.i, align 8, !tbaa !70
  %8 = load i64, ptr %.sroa.048.1.i.i, align 8, !tbaa !70
  store i64 %8, ptr %.sroa.051.171.us.i.i, align 8, !tbaa !70
  store i64 %7, ptr %.sroa.048.1.i.i, align 8, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.051.171.us.i.i, i64 8 ; 2 uses
  %.val.i69.i.i = load i64, ptr %i.ds, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i69.i.i, ptr %i.f, align 8, !tbaa !70
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i970.i.i = icmp ult i64 %.val.i69.i.i, %i.cc
  br i1 %.not.i.i.i970.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit16.lr.ph.i.i, label %.noexc.i34.i.i, !prof !4326, !llvm.loop !4327

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_T1_"(ptr %.sroa.051.171.us.i.i, ptr %storemerge51151, i64 noundef %i.af, ptr nonnull %3)
  %i.dt = ptrtoint ptr %.sroa.051.171.us.i.i to i64
  %i.du = sub i64 %i.dt, %i.j
  %i.dv = ashr exact i64 %i.du, 3                 ; 3 uses
  %i.dw = icmp sgt i64 %i.dv, 16
  br i1 %i.dw, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !4319

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEET_SG_SG_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.038 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.038, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !70
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i)
  %i.j = load double, ptr %i.i, align 8, !tbaa !1170
  %i.k = load i64, ptr %i.h, align 8, !tbaa !70
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k)
  %i.m = load double, ptr %i.l, align 8, !tbaa !1170
  %i.n = fcmp olt double %i.j, %i.m
  %spec.select = select i1 %i.n, i64 %i.g, i64 %i.e ; 4 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %.038
  store i64 %i.p, ptr %i.q, align 8, !tbaa !70
  %i.r = icmp slt i64 %spec.select, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !4328

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.u = add nsw i64 %2, -2
  %i.v = ashr exact i64 %i.u, 1
  %i.w = icmp eq i64 %.0.lcssa, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = shl nsw i64 %.0.lcssa, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ac = icmp sgt i64 %.1, %1
  br i1 %i.ac, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i.i = load i64, ptr %i.ad, align 8, !tbaa !70
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i.i)
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1170
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %3)
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1170
  %i.ai = fcmp olt double %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_RT2_.exit"

bb.e:                                             ; preds = %.lr.ph.i
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !70
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !70
  %i.al = icmp sgt i64 %.0911.i, %1
  br i1 %i.al, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_RT2_.exit", !llvm.loop !4329

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_T0_SH_T1_RT2_.exit": ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %bb.e ]
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store i64 %3, ptr %i.am, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS9_20TemporaryMemoryStateEE3$_0EEEvT_SG_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.042 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.0.042, %1
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.045 = phi ptr [ %.sroa.0.042, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ] ; 8 uses
  %.pn44 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.045, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ] ; 5 uses
  %.val.i = load i64, ptr %.sroa.0.045, align 8, !tbaa !70
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.val.i)
  %i.k = load double, ptr %i.j, align 8, !tbaa !1170
  %i.l = load i64, ptr %0, align 8, !tbaa !70
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l)
  %i.n = load double, ptr %i.m, align 8, !tbaa !1170
  %i.o = fcmp olt double %i.k, %i.n
  %i.p = load i64, ptr %.sroa.0.045, align 8, !tbaa !70 ; 5 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %.sroa.0.045 to i64
  %i.r = sub i64 %i.q, %i.i                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !1037

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn44, i64 16
  %i.v = sub nsw i64 0, %i.s
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.r, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.r, 8
  br i1 %i.x, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.pn44, i64 8
  %i.z = load i64, ptr %0, align 8, !tbaa !70
  store i64 %i.z, ptr %i.y, align 8, !tbaa !70
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.p)
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !1170
  %i.ac = load i64, ptr %.pn44, align 8, !tbaa !70
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ac)
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1170
  %i.af = fcmp olt double %i.ab, %i.ae
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !1166
  %i.ah = load ptr, ptr %2, align 8, !tbaa !1171  ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 4 uses
  %.not.i.i.i9 = icmp ult i64 %i.p, %i.al
  br i1 %.not.i.i.i9, label %.lr.ph.i.us.preheader, label %.lr.ph.i, !prof !1037

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.p
  %.pre = load double, ptr %i.am, align 8, !tbaa !1170
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us
  %.sroa.0.011.i.us = phi ptr [ %.sroa.0.0.i.us, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us ], [ %.pn44, %.lr.ph.i.us.preheader ] ; 4 uses
  %.sroa.06.010.i.us = phi ptr [ %.sroa.0.011.i.us, %_ZN6duckdb6vectorIdLb1ESaIdEEixEm.exit.us ], [ %.sroa.0.045, %.lr.ph.i.us.preheader ]
  %i.an = load i64, ptr %.sroa.0.011.i.us, align 8, !tbaa !70
  store i64 %i.an, ptr %.sroa.06.010.i.us, align 8, !tbaa !70
  %.sroa.0.0.i.us = getelementptr inbounds i8, ptr %.sroa.0.011.i.us, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i.us, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_1
