Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFSpectralHash?download=true
inline.NumInlined: 808
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl:bb.a
  %i.dt = fpext float %i.ds to double
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dp, double -2.500000e-01, double %i.dt)
  %i.dv = fptrunc double %i.du to float
  store float %i.dv, ptr %i.dr, align 4, !tbaa !65
  %i.dw = add nuw i64 %.080177, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dw, %i.cc
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader176, %bb.r
  %.not.i.i.i112 = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dx = ptrtoint ptr %.sroa.11.0 to i64
  %i.dy = ptrtoint ptr %.sroa.0170.0 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0, i64 noundef %i.dz) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

bb.v:                                             ; preds = %bb.l
  %i.ea = icmp ugt i64 %1, 2305843009213693951
  %i.eb = shl nuw i64 %1, 3
  %i.ec = select i1 %i.ea, i64 -1, i64 %i.eb
  %i.ed = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ec) #28 ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !76 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(36) %i.ef, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !74 ; 3 uses
  %i.el = add i64 %i.ek, 1                        ; 4 uses
  %i.em = icmp ugt i64 %i.el, 1152921504606846975
  br i1 %i.em, label %bb.x, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc117 unwind label %bb.aa

.noexc117:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.w
  %.not.i.i.i.i114 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.en = shl nuw nsw i64 %i.el, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #28
          to label %.noexc118 unwind label %bb.aa ; 5 uses

.noexc118:                                        ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.el ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !66
  %i.eq = icmp eq i64 %i.ek, 0
  br i1 %i.eq, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc118
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.idx.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %.idx.i.i.i.i.i.i.i115, i1 false), !tbaa !66
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc118, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0153.0 = phi ptr [ %i.eo, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eo, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 20 uses
  %.sroa.16.0 = phi ptr [ %i.ep, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ep, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.es = icmp sgt i64 %1, 0                      ; 2 uses
  br i1 %i.es, label %.lr.ph179, label %.preheader175

.preheader175:                                    ; preds = %bb.aj, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.et = load i64, ptr %i.ej, align 8, !tbaa !74 ; 4 uses
  %.not202 = icmp eq i64 %i.et, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %.preheader175
  %xtraiter316 = and i64 %i.et, 3                 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 4
  br i1 %i.eu, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter = and i64 %i.et, -4
  br label %.lr.ph182

bb.z:                                             ; preds = %bb.v
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

.lr.ph179:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %bb.aj
  %.079178 = phi i64 [ %i.ft, %bb.aj ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.079178
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !66 ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  br i1 %i.ez, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.fa, ptr %5, align 8, !tbaa !28
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !29
  store i8 0, ptr %i.fa, align 8, !tbaa !20
  %i.fc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fe = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ff)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %5, align 8, !tbaa !19
  %i.fh = load i64, ptr %i.fb, align 8, !tbaa !29
  %i.fi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fg, i64 noundef %i.fh, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fe)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.fk = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl, ptr noundef nonnull @.str.9, i32 noundef 118)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.aw unwind label %bb.ae

bb.ah:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fk) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn100 = phi { ptr, i32 } [ %i.fj, %bb.ae ], [ %i.fl, %bb.ah ]
  %i.fm = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fa
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ai
  %i.fo = load i64, ptr %i.fa, align 8, !tbaa !20
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140

bb.aj:                                            ; preds = %.lr.ph179
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.ey ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !66
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !66
  %i.ft = add nuw nsw i64 %.079178, 1             ; 2 uses
  %exitcond207.not = icmp eq i64 %i.ft, %1
  br i1 %exitcond207.not, label %.preheader175, label %.lr.ph179, !llvm.loop !165

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph182
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %._crit_edge, label %.lr.ph182.epil.preheader

.lr.ph182.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph182.preheader
  %.077181.epil.init = phi i64 [ 0, %.lr.ph182.preheader ], [ %i.gp, %._crit_edge.loopexit.unr-lcssa ]
  %.078180.epil.init = phi i64 [ 0, %.lr.ph182.preheader ], [ %i.go, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod318 = icmp ne i64 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %.lr.ph182.epil

.lr.ph182.epil:                                   ; preds = %.lr.ph182.epil, %.lr.ph182.epil.preheader
  %.077181.epil = phi i64 [ %i.fx, %.lr.ph182.epil ], [ %.077181.epil.init, %.lr.ph182.epil.preheader ] ; 2 uses
  %.078180.epil = phi i64 [ %i.fw, %.lr.ph182.epil ], [ %.078180.epil.init, %.lr.ph182.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph182.epil ], [ 0, %.lr.ph182.epil.preheader ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181.epil ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !66
  %i.fw = add i64 %i.fv, %.078180.epil
  store i64 %.078180.epil, ptr %i.fu, align 8, !tbaa !66
  %i.fx = add nuw i64 %.077181.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter316
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph182.epil, !llvm.loop !166

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph182.epil, %.preheader175
  %i.fy = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.fz = invoke noundef ptr @_ZNK5faiss15VectorTransform5applyElPKf(ptr noundef nonnull align 8 dereferenceable(17) %i.fy, i64 noundef %1, ptr noundef %2)
          to label %bb.ak unwind label %bb.ao     ; 6 uses

.lr.ph182:                                        ; preds = %.lr.ph182, %.lr.ph182.preheader.new
  %.077181 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %i.gp, %.lr.ph182 ] ; 5 uses
  %.078180 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %i.go, %.lr.ph182 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %niter.next.3, %.lr.ph182 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !66
  %i.gc = add i64 %i.gb, %.078180                 ; 2 uses
  store i64 %.078180, ptr %i.ga, align 8, !tbaa !66
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !66
  %i.gg = add i64 %i.gf, %i.gc                    ; 2 uses
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !66
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !66
  %i.gk = add i64 %i.gj, %i.gg                    ; 2 uses
  store i64 %i.gg, ptr %i.gi, align 8, !tbaa !66
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !66
  %i.go = add i64 %i.gn, %i.gk                    ; 2 uses
  store i64 %i.gk, ptr %i.gm, align 8, !tbaa !66
  %i.gp = add nuw i64 %.077181, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph182, !llvm.loop !167

bb.ak:                                            ; preds = %._crit_edge
  %6 = ptrtoaddr ptr %i.fz to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 4 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !64
  %i.gs = sext i32 %i.gr to i64
  %i.gt = mul nsw i64 %1, %i.gs                   ; 2 uses
  %i.gu = icmp ugt i64 %i.gt, 4611686018427387903
  %i.gv = shl i64 %i.gt, 2
  %i.gw = select i1 %i.gu, i64 -1, i64 %i.gv
  %i.gx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gw) #28
          to label %.preheader unwind label %bb.ap ; 5 uses

.preheader:                                       ; preds = %bb.ak
  %i.gy = ptrtoaddr ptr %i.gx to i64              ; 2 uses
  %.pre228 = load i32, ptr %i.gq, align 4, !tbaa !64 ; 4 uses
  %i.gz = sext i32 %.pre228 to i64                ; 9 uses
  br i1 %i.es, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %.not203 = icmp eq i32 %.pre228, 0
  br i1 %.not203, label %.lr.ph188.split.preheader, label %.lr.ph185.us.preheader

.lr.ph188.split.preheader:                        ; preds = %.lr.ph188
  %xtraiter321 = and i64 %1, 3                    ; 3 uses
  %7 = icmp ult i64 %1, 4
  br i1 %7, label %.lr.ph188.split.epil.preheader, label %.lr.ph188.split.preheader.new

.lr.ph188.split.preheader.new:                    ; preds = %.lr.ph188.split.preheader
  %unroll_iter325 = and i64 %1, 9223372036854775804
  br label %.lr.ph188.split

.lr.ph185.us.preheader:                           ; preds = %.lr.ph188
  %8 = sub i64 %i.gy, %6
  %9 = mul nsw i64 %i.gz, -4
  %min.iters.check274 = icmp ugt i32 %.pre228, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check274, %ident.check.not
  %n.vec276 = and i64 %i.gz, -8                   ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec276, %i.gz
  %xtraiter319.a = and i64 %i.gz, 3
  %i.ha = and i32 %.pre228, 3
  %lcmp.mod320.not = icmp eq i32 %i.ha, 0
  br label %.lr.ph185.us

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge186.us
  %.075187.us = phi i64 [ %i.ip, %._crit_edge186.us ], [ 0, %.lr.ph185.us.preheader ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187.us
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !66
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !66 ; 3 uses
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !66
  %i.hg = mul nsw i64 %.075187.us, %i.gz
  %i.hh = getelementptr [4 x i8], ptr %i.fz, i64 %i.hg ; 6 uses
  %i.hi = getelementptr [4 x i8], ptr %i.gx, i64 %i.he ; 6 uses
  br i1 %or.cond, label %vector.memcheck272, label %scalar.ph273.preheader

vector.memcheck272:                               ; preds = %.lr.ph185.us
  %10 = mul i64 %9, %.075187.us
  %11 = add i64 %8, %10
  %12 = shl i64 %i.he, 2
  %13 = add i64 %11, %12
  %14 = add i64 %13, -1
  %diff.check = icmp ult i64 %14, 31
  br i1 %diff.check, label %scalar.ph273.preheader, label %vector.body277

vector.body277:                                   ; preds = %vector.memcheck272, %vector.body277
  %index278 = phi i64 [ %index.next281, %vector.body277 ], [ 0, %vector.memcheck272 ] ; 3 uses
  %i.hj = getelementptr [4 x i8], ptr %i.hh, i64 %index278 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  %wide.load279.a = load <4 x float>, ptr %i.hj, align 4, !tbaa !65
  %wide.load280 = load <4 x float>, ptr %i.hk, align 4, !tbaa !65
  %i.hl = getelementptr [4 x i8], ptr %i.hi, i64 %index278 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store <4 x float> %wide.load279.a, ptr %i.hl, align 4, !tbaa !65
  store <4 x float> %wide.load280, ptr %i.hm, align 4, !tbaa !65
  %index.next281 = add nuw i64 %index278, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next281, %n.vec276
  br i1 %i.hn, label %middle.block282, label %vector.body277, !llvm.loop !168

middle.block282:                                  ; preds = %vector.body277
  br i1 %cmp.n283, label %._crit_edge186.us, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %vector.memcheck272, %.lr.ph185.us, %middle.block282
  %.074183.us.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph185.us ], [ %n.vec276, %middle.block282 ] ; 3 uses
  br i1 %lcmp.mod320.not, label %scalar.ph273.prol.loopexit, label %scalar.ph273.prol

scalar.ph273.prol:                                ; preds = %scalar.ph273.preheader, %scalar.ph273.prol
  %.074183.us.prol = phi i64 [ %i.hs, %scalar.ph273.prol ], [ %.074183.us.ph, %scalar.ph273.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph273.prol ], [ 0, %scalar.ph273.preheader ]
  %i.ho = getelementptr [4 x i8], ptr %i.hh, i64 %.074183.us.prol
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !65
  %i.hq = mul i64 %.074183.us.prol, %1
  %i.hr = getelementptr [4 x i8], ptr %i.hi, i64 %i.hq
  store float %i.hp, ptr %i.hr, align 4, !tbaa !65
  %i.hs = add nuw i64 %.074183.us.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter319.a
  br i1 %prol.iter.cmp.not, label %scalar.ph273.prol.loopexit, label %scalar.ph273.prol, !llvm.loop !169

scalar.ph273.prol.loopexit:                       ; preds = %scalar.ph273.prol, %scalar.ph273.preheader
  %.074183.us.unr = phi i64 [ %.074183.us.ph, %scalar.ph273.preheader ], [ %i.hs, %scalar.ph273.prol ]
  %i.ht = sub nsw i64 %.074183.us.ph, %i.gz
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %._crit_edge186.us, label %scalar.ph273

scalar.ph273:                                     ; preds = %scalar.ph273.prol.loopexit, %scalar.ph273
  %.074183.us = phi i64 [ %i.io, %scalar.ph273 ], [ %.074183.us.unr, %scalar.ph273.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hh, i64 %.074183.us
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !65
  %i.hx = mul i64 %.074183.us, %1
  %i.hy = getelementptr [4 x i8], ptr %i.hi, i64 %i.hx
  store float %i.hw, ptr %i.hy, align 4, !tbaa !65
  %i.hz = add nuw i64 %.074183.us, 1              ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hh, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !65
  %i.ic = mul i64 %i.hz, %1
  %i.id = getelementptr [4 x i8], ptr %i.hi, i64 %i.ic
  store float %i.ib, ptr %i.id, align 4, !tbaa !65
  %i.ie = add nuw i64 %.074183.us, 2              ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.hh, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !65
  %i.ih = mul i64 %i.ie, %1
  %i.ii = getelementptr [4 x i8], ptr %i.hi, i64 %i.ih
  store float %i.ig, ptr %i.ii, align 4, !tbaa !65
  %i.ij = add nuw i64 %.074183.us, 3              ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.hh, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !65
  %i.im = mul i64 %i.ij, %1
  %i.in = getelementptr [4 x i8], ptr %i.hi, i64 %i.im
  store float %i.il, ptr %i.in, align 4, !tbaa !65
  %i.io = add nuw i64 %.074183.us, 4              ; 2 uses
  %exitcond209.not.3 = icmp eq i64 %i.io, %i.gz
  br i1 %exitcond209.not.3, label %._crit_edge186.us, label %scalar.ph273, !llvm.loop !170

._crit_edge186.us:                                ; preds = %scalar.ph273.prol.loopexit, %scalar.ph273, %middle.block282
  %i.ip = add nuw nsw i64 %.075187.us, 1          ; 2 uses
  %exitcond210.not = icmp eq i64 %i.ip, %1
  br i1 %exitcond210.not, label %._crit_edge189, label %.lr.ph185.us, !llvm.loop !171

._crit_edge189.loopexit.unr-lcssa:                ; preds = %.lr.ph188.split
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %._crit_edge189, label %.lr.ph188.split.epil.preheader

.lr.ph188.split.epil.preheader:                   ; preds = %._crit_edge189.loopexit.unr-lcssa, %.lr.ph188.split.preheader
  %.075187.epil.init = phi i64 [ 0, %.lr.ph188.split.preheader ], [ %i.ki, %._crit_edge189.loopexit.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter321, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %.lr.ph188.split.epil

.lr.ph188.split.epil:                             ; preds = %.lr.ph188.split.epil, %.lr.ph188.split.epil.preheader
  %.075187.epil = phi i64 [ %i.iv, %.lr.ph188.split.epil ], [ %.075187.epil.init, %.lr.ph188.split.epil.preheader ] ; 2 uses
  %epil.iter322 = phi i64 [ %epil.iter322.next, %.lr.ph188.split.epil ], [ 0, %.lr.ph188.split.epil.preheader ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187.epil
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !66
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.ir ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !66
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !66
  %i.iv = add nuw nsw i64 %.075187.epil, 1
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %._crit_edge189, label %.lr.ph188.split.epil, !llvm.loop !172

._crit_edge189:                                   ; preds = %._crit_edge186.us, %._crit_edge189.loopexit.unr-lcssa, %.lr.ph188.split.epil, %.preheader
  %.pre-phi = phi i64 [ 0, %._crit_edge189.loopexit.unr-lcssa ], [ %i.gz, %.preheader ], [ 0, %.lr.ph188.split.epil ], [ %i.gz, %._crit_edge186.us ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.ix = mul nsw i64 %1, %.pre-phi               ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !77 ; 2 uses
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !70 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 2                 ; 3 uses
  %i.jf = icmp ugt i64 %i.ix, %i.je
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge189
  %i.jg = sub nuw i64 %i.ix, %i.je
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 noundef %i.jg)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit125 unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.am:                                            ; preds = %._crit_edge189
  %i.jh = icmp ult i64 %i.ix, %i.je
  br i1 %i.jh, label %bb.an, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit125

bb.an:                                            ; preds = %bb.am
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ix ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.iz, %i.ji
  br i1 %.not.i.i122, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit125, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i123

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i123:     ; preds = %bb.an
  store ptr %i.ji, ptr %i.iy, align 8, !tbaa !77
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit125

bb.ao:                                            ; preds = %._crit_edge
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140

bb.ap:                                            ; preds = %bb.ak
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.lr.ph188.split:                                  ; preds = %.lr.ph188.split, %.lr.ph188.split.preheader.new
  %.075187 = phi i64 [ 0, %.lr.ph188.split.preheader.new ], [ %i.ki, %.lr.ph188.split ] ; 5 uses
  %niter326 = phi i64 [ 0, %.lr.ph188.split.preheader.new ], [ %niter326.next.3, %.lr.ph188.split ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !66
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.jm ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !66
  %i.jp = add i64 %i.jo, 1
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !66
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !66
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.js ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !66
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !66
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !66
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !66
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !66
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !66
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.ke ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !66
  %i.kh = add i64 %i.kg, 1
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !66
  %i.ki = add nuw nsw i64 %.075187, 4             ; 2 uses
  %niter326.next.3 = add nuw nsw i64 %niter326, 4 ; 2 uses
  %niter326.ncmp.3 = icmp eq i64 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3, label %._crit_edge189.loopexit.unr-lcssa, label %.lr.ph188.split, !llvm.loop !171

_ZNSt6vectorIfSaIfEE6resizeEm.exit125:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i123, %bb.an, %bb.am, %bb.al
  %i.kj = load i64, ptr %i.ej, align 8, !tbaa !74 ; 2 uses
  %i.kk = icmp sgt i64 %i.kj, 0
  br i1 %i.kk, label %bb.aq, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit125
  %i.kl = add nsw i64 %i.kj, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.kl, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 1, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.e, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.km = load i64, ptr %i.b, align 8, !tbaa !66
  %i.kn = call i64 @llvm.smin.i64(i64 %i.km, i64 %i.kl) ; 3 uses
  store i64 %i.kn, ptr %i.b, align 8, !tbaa !66
  %i.ko = load i64, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %.not194 = icmp sgt i64 %i.ko, %i.kn
  br i1 %.not194, label %._crit_edge200, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %bb.aq
  %ident.check296.not = icmp eq i64 %1, 1
  br label %.lr.ph199

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.al
  %i.kp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.gx) #26
  br label %bb.at

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %._crit_edge192
  %indvar = phi i64 [ %indvar.next, %._crit_edge192 ], [ 0, %.lr.ph199.preheader ] ; 2 uses
  %i.kq = phi i64 [ %i.nm, %._crit_edge192 ], [ %i.kn, %.lr.ph199.preheader ] ; 8 uses
  %.073195 = phi i64 [ %i.nn, %._crit_edge192 ], [ %i.ko, %.lr.ph199.preheader ] ; 7 uses
  %i.kr = add i64 %i.ko, %indvar
  %i.ks = shl i64 %i.kr, 2
  %i.kt = icmp eq i64 %.073195, 0
  br i1 %i.kt, label %.split90, label %.split

.split:                                           ; preds = %.lr.ph199
  %i.ku = getelementptr [8 x i8], ptr %.sroa.0153.0, i64 %.073195 ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 -8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !66
  br label %.split90

.split90:                                         ; preds = %.lr.ph199, %.split
  %phi.call = phi ptr [ %i.ku, %.split ], [ %.sroa.0153.0, %.lr.ph199 ]
  %i.kx = phi i64 [ %i.kw, %.split ], [ 0, %.lr.ph199 ] ; 5 uses
  %i.ky = load i32, ptr %i.gq, align 4, !tbaa !64 ; 9 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  br i1 %i.kz, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.split90
  %i.la = load i64, ptr %phi.call, align 8, !tbaa !66 ; 3 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.kx ; 8 uses
  %i.lc = icmp eq i64 %i.kx, %i.la
  %i.ld = sub i64 %i.la, %i.kx                    ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.ld, 2
  %i.le = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ld, i1 true)
  %i.lf = shl nuw nsw i64 %i.le, 1
  %i.lg = xor i64 %i.lf, 126
  %i.lh = and i64 %i.ld, 1
  %.not.i127 = icmp eq i64 %i.lh, 0
  %i.li = lshr i64 %i.ld, 1
  br i1 %i.lc, label %.lr.ph191.split.us, label %.lr.ph191.split

.lr.ph191.split.us:                               ; preds = %.lr.ph191
  %i.lj = load ptr, ptr %i.iw, align 8, !tbaa !70
  %wide.trip.count222 = zext nneg i32 %i.ky to i64 ; 2 uses
  %i.lk = zext nneg i32 %i.ky to i64
  %i.ll = mul nsw i64 %.073195, %i.lk
  %i.lm = getelementptr [4 x i8], ptr %i.lj, i64 %i.ll ; 3 uses
  store float 0.000000e+00, ptr %i.lm, align 4, !tbaa !65
  %exitcond223.peel.not = icmp eq i32 %i.ky, 1
  br i1 %exitcond223.peel.not, label %._crit_edge192, label %.peel.next225.preheader

.peel.next225.preheader:                          ; preds = %.lr.ph191.split.us
  %i.ln = add nsw i64 %wide.trip.count222, -1     ; 2 uses
  %min.iters.check286 = icmp ult i32 %i.ky, 9
  br i1 %min.iters.check286, label %.peel.next225.preheader312, label %vector.ph287

vector.ph287:                                     ; preds = %.peel.next225.preheader
  %n.vec288 = and i64 %i.ln, -8                   ; 3 uses
  %i.lo = or disjoint i64 %n.vec288, 1
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next291, %vector.body289 ] ; 2 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lm, i64 %index290 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 4
  %i.lr = getelementptr i8, ptr %i.lp, i64 20
  store <4 x float> zeroinitializer, ptr %i.lq, align 4, !tbaa !65
  store <4 x float> zeroinitializer, ptr %i.lr, align 4, !tbaa !65
  %index.next291 = add nuw i64 %index290, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next291, %n.vec288
  br i1 %i.ls, label %middle.block292, label %vector.body289, !llvm.loop !173

middle.block292:                                  ; preds = %vector.body289
  %cmp.n293 = icmp eq i64 %i.ln, %n.vec288
  br i1 %cmp.n293, label %._crit_edge192, label %.peel.next225.preheader312

.peel.next225.preheader312:                       ; preds = %.peel.next225.preheader, %middle.block292
  %indvars.iv218.ph = phi i64 [ 1, %.peel.next225.preheader ], [ %i.lo, %middle.block292 ]
  br label %.peel.next225

.peel.next225:                                    ; preds = %.peel.next225.preheader312, %.peel.next225
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.peel.next225 ], [ %indvars.iv218.ph, %.peel.next225.preheader312 ] ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %i.lm, i64 %indvars.iv218
  store float 0.000000e+00, ptr %i.lt, align 4, !tbaa !65
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count222
  br i1 %exitcond223.not, label %._crit_edge192, label %.peel.next225, !llvm.loop !174

.lr.ph191.split:                                  ; preds = %.lr.ph191
  %i.lu = add i64 %i.kx, 1
  %i.lv = icmp eq i64 %i.la, %i.lu
  br i1 %i.lv, label %.lr.ph191.split.split.us, label %_ZSt4sortIPfEvT_S1_.exit.i

.lr.ph191.split.split.us:                         ; preds = %.lr.ph191.split
  %i.lw = load ptr, ptr %i.iw, align 8, !tbaa !70 ; 2 uses
  %i.lx = ptrtoaddr ptr %i.lw to i64
  %wide.trip.count = zext nneg i32 %i.ky to i64   ; 5 uses
  %i.ly = load float, ptr %i.lb, align 4, !tbaa !65
  %i.lz = zext nneg i32 %i.ky to i64
  %i.ma = mul nsw i64 %.073195, %i.lz
  %i.mb = getelementptr [4 x i8], ptr %i.lw, i64 %i.ma ; 7 uses
  store float %i.ly, ptr %i.mb, align 4, !tbaa !65
  %exitcond216.peel.not = icmp eq i32 %i.ky, 1
  br i1 %exitcond216.peel.not, label %._crit_edge192, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.lr.ph191.split.split.us
  %i.mc = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check300 = icmp ugt i32 %i.ky, 16
  %or.cond311 = and i1 %min.iters.check300, %ident.check296.not
  br i1 %or.cond311, label %vector.memcheck297, label %.peel.next.preheader313

vector.memcheck297:                               ; preds = %.peel.next.preheader
  %i.md = mul i64 %i.ks, %wide.trip.count
  %i.me = shl i64 %i.kx, 2
  %i.mf = add i64 %i.md, %i.lx
  %i.mg = add i64 %i.me, %i.gy
  %i.mh = sub i64 %i.mg, %i.mf
  %diff.check298 = icmp ugt i64 %i.mh, -32
  br i1 %diff.check298, label %.peel.next.preheader313, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.mc, -8                   ; 3 uses
  %i.mi = or disjoint i64 %n.vec302, 1
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 2 uses
  %i.mj = or disjoint i64 %index304, 1            ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load305 = load <4 x float>, ptr %i.mk, align 4, !tbaa !65
  %wide.load306 = load <4 x float>, ptr %i.ml, align 4, !tbaa !65
  %i.mm = getelementptr [4 x i8], ptr %i.mb, i64 %i.mj ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 16
  store <4 x float> %wide.load305, ptr %i.mm, align 4, !tbaa !65
  store <4 x float> %wide.load306, ptr %i.mn, align 4, !tbaa !65
  %index.next307 = add nuw i64 %index304, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.mo, label %middle.block308, label %vector.body303, !llvm.loop !175

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %i.mc, %n.vec302
  br i1 %cmp.n309, label %._crit_edge192, label %.peel.next.preheader313

.peel.next.preheader313:                          ; preds = %vector.memcheck297, %.peel.next.preheader, %middle.block308
  %indvars.iv213.ph = phi i64 [ 1, %vector.memcheck297 ], [ 1, %.peel.next.preheader ], [ %i.mi, %middle.block308 ] ; 4 uses
  %i.mp = sub nsw i64 %wide.trip.count, %indvars.iv213.ph
  %xtraiter327 = and i64 %i.mp, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader313, %.peel.next.prol
  %indvars.iv213.prol = phi i64 [ %indvars.iv.next214.prol, %.peel.next.prol ], [ %indvars.iv213.ph, %.peel.next.preheader313 ] ; 3 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %.peel.next.prol ], [ 0, %.peel.next.preheader313 ]
  %i.mq = mul nsw i64 %1, %indvars.iv213.prol
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !65
  %i.mt = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv213.prol
  store float %i.ms, ptr %i.mt, align 4, !tbaa !65
  %indvars.iv.next214.prol = add nuw nsw i64 %indvars.iv213.prol, 1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !176

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader313
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %.peel.next.preheader313 ], [ %indvars.iv.next214.prol, %.peel.next.prol ]
  %i.mu = sub nsw i64 %indvars.iv213.ph, %wide.trip.count
  %i.mv = icmp ugt i64 %i.mu, -4
  br i1 %i.mv, label %._crit_edge192, label %.peel.next

end_hunk_0
