Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  br i1 %i.ei, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel, label %.loopexit865

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel:     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 2352
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46 ; 9 uses
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !34  ; 9 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !47
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.en
  store float %i.ep, ptr %i.eq, align 4, !tbaa !52
  %exitcond.peel.not = icmp eq i32 %i.eg, 1
  br i1 %exitcond.peel.not, label %.loopexit865, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel
  %i.er = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.es = add nsw i64 %i.eh, -2
  %xtraiter = and i64 %i.er, 3                    ; 3 uses
  %i.et = icmp ult i64 %i.es, 3
  br i1 %i.et, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.er, -4
  br label %.peel.next

.peel.next:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3, %.peel.next.preheader.new
  %.0380880 = phi i8 [ 0, %.peel.next.preheader.new ], [ %.1381.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ]
  %.0398879 = phi i64 [ 1, %.peel.next.preheader.new ], [ %i.hp, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ] ; 8 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9  ; 2 uses
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !47 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ew
  store float %i.ey, ptr %i.ez, align 4, !tbaa !52
  %i.fa = trunc nuw i8 %.0380880 to i1
  br i1 %i.fa, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit:          ; preds = %.peel.next
  %i.fb = getelementptr i8, ptr %i.eu, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !52
  %i.fg = fcmp une float %i.ey, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !9  ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !47 ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fk
  store float %i.fm, ptr %i.fn, align 4, !tbaa !52
  br i1 %i.fg, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1

bb.ag:                                            ; preds = %._crit_edge.i.i519
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.du
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527: ; preds = %bb.ag
  %i.fr = load i64, ptr %i.du, align 8, !tbaa !29
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.ft = sext i32 %i.ev to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !52
  %i.fw = fcmp une float %i.fm, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !9  ; 2 uses
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !47 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ga
  store float %i.gc, ptr %i.gd, align 4, !tbaa !52
  br i1 %i.fw, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1
  %i.ge = sext i32 %i.fj to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !52
  %i.gh = fcmp une float %i.gc, %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !9
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !47 ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gl
  store float %i.gn, ptr %i.go, align 4, !tbaa !52
  br i1 %i.gh, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3, label %bb.ah

bb.ah:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2
  %i.gp = sext i32 %i.fz to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !52
  %i.gs = fcmp une float %i.gn, %i.gr
  %i.gt = zext i1 %i.gs to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge: ; preds = %.peel.next
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !9
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !47
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gx
  store float %i.gz, ptr %i.ha, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !9
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !47
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.he
  store float %i.hg, ptr %i.hh, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !47
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hl
  store float %i.hn, ptr %i.ho, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge, %bb.ah, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2
  %.1381.3 = phi i8 [ %i.gt, %bb.ah ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2 ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge ] ; 3 uses
  %i.hp = add nuw nsw i64 %.0398879, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit865.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !53

.loopexit865.loopexit.unr-lcssa:                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit865, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.loopexit865.loopexit.unr-lcssa, %.peel.next.preheader
  %.0380880.epil.init = phi i8 [ 0, %.peel.next.preheader ], [ %.1381.3, %.loopexit865.loopexit.unr-lcssa ]
  %.0398879.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %i.hp, %.loopexit865.loopexit.unr-lcssa ]
  %lcmp.mod1612 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1612)
  br label %.peel.next.epil

.peel.next.epil:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %.peel.next.epil.preheader
  %.0380880.epil = phi i8 [ %.1381.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %.0380880.epil.init, %.peel.next.epil.preheader ]
  %.0398879.epil = phi i64 [ %i.ie, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %.0398879.epil.init, %.peel.next.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ 0, %.peel.next.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398879.epil ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !9
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !47 ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hs
  store float %i.hu, ptr %i.hv, align 4, !tbaa !52
  %i.hw = trunc nuw i8 %.0380880.epil to i1
  br i1 %i.hw, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, label %bb.ai

bb.ai:                                            ; preds = %.peel.next.epil
  %i.hx = getelementptr i8, ptr %i.hq, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !9
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !52
  %i.ic = fcmp une float %i.hu, %i.ib
  %i.id = zext i1 %i.ic to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil:     ; preds = %bb.ai, %.peel.next.epil
  %.1381.epil = phi i8 [ %i.id, %bb.ai ], [ 1, %.peel.next.epil ] ; 2 uses
  %i.ie = add nuw nsw i64 %.0398879.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit865, label %.peel.next.epil, !llvm.loop !56

.loopexit865:                                     ; preds = %.loopexit865.loopexit.unr-lcssa, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525
  %.0838 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %i.ef, %.loopexit865.loopexit.unr-lcssa ] ; 11 uses
  %.2382 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525 ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel ], [ %.1381.3, %.loopexit865.loopexit.unr-lcssa ], [ %.1381.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ] ; 2 uses
  %i.if = load i32, ptr %i.l, align 4, !tbaa !9
  %i.ig = sext i32 %i.if to i64
  %i.ih = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef 260, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ig, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 26 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader: ; preds = %.loopexit865
  %i.ii = load i32, ptr %i.l, align 4, !tbaa !9   ; 8 uses
  %i.ij = sext i32 %i.ii to i64                   ; 8 uses
  %i.ik = icmp sgt i32 %i.ii, 0
  br i1 %i.ik, label %.lr.ph883, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge

.lr.ph883:                                        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader
  %i.il = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !30, !range !32, !noundef !33
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 2352
  %i.io = load ptr, ptr %i.in, align 8            ; 9 uses
  %i.ip = load ptr, ptr %i.x, align 8             ; 9 uses
  br i1 %i.im, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.peel, label %iter.check

iter.check:                                       ; preds = %.lr.ph883
  %min.iters.check = icmp ult i32 %i.ii, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader1610, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1291 = icmp ult i32 %i.ii, 32
  br i1 %min.iters.check1291, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ij, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.iq, align 4, !tbaa !52
  store <8 x float> splat (float 1.000000e+00), ptr %i.ir, align 4, !tbaa !52
  store <8 x float> splat (float 1.000000e+00), ptr %i.is, align 4, !tbaa !52
  store <8 x float> splat (float 1.000000e+00), ptr %i.it, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ij
  br i1 %cmp.n, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.iv = and i32 %i.ii, 28
  %min.epilog.iters.check = icmp eq i32 %i.iv, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader1610, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1292 = and i64 %i.ij, 2147483644          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1293 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1294, %vec.epilog.vector.body ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index1293
  store <4 x float> splat (float 1.000000e+00), ptr %i.iw, align 4, !tbaa !52
  %index.next1294 = add nuw i64 %index1293, 4     ; 2 uses
  %i.ix = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %i.ix, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1295 = icmp eq i64 %n.vec1292, %i.ij
  br i1 %cmp.n1295, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader1610

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.preheader1610: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1399881.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1292, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.peel: ; preds = %.lr.ph883
  %i.iy = load i32, ptr %i.ip, align 4, !tbaa !9
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !47
  %i.jc = call noundef float @sqrtf(float noundef %i.jb) #24
  store float %i.jc, ptr %i.ih, align 4, !tbaa !52
  %exitcond999.peel.not = icmp eq i32 %i.ii, 1
  br i1 %exitcond999.peel.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge, label %.lr.ph883.split.us.peel.next.preheader

.lr.ph883.split.us.peel.next.preheader:           ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.peel
  %i.jd = add nsw i64 %i.ij, -1                   ; 2 uses
  %i.je = add nsw i64 %i.ij, -2
  %xtraiter1613 = and i64 %i.jd, 3                ; 3 uses
  %i.jf = icmp ult i64 %i.je, 3
  br i1 %i.jf, label %.lr.ph883.split.us.peel.next.epil.preheader, label %.lr.ph883.split.us.peel.next.preheader.new

.lr.ph883.split.us.peel.next.preheader.new:       ; preds = %.lr.ph883.split.us.peel.next.preheader
  %unroll_iter1618 = and i64 %i.jd, -4
  br label %.lr.ph883.split.us.peel.next

.lr.ph883.split.us.peel.next:                     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3, %.lr.ph883.split.us.peel.next.preheader.new
  %.0378882.us = phi i8 [ 0, %.lr.ph883.split.us.peel.next.preheader.new ], [ %.1379.us.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3 ]
  %.1399881.us = phi i64 [ 1, %.lr.ph883.split.us.peel.next.preheader.new ], [ %i.lx, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3 ] ; 9 uses
  %niter1619 = phi i64 [ 0, %.lr.ph883.split.us.peel.next.preheader.new ], [ %niter1619.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1399881.us
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !9
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !47
  %i.jl = call noundef float @sqrtf(float noundef %i.jk) #24 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1399881.us ; 2 uses
  store float %i.jl, ptr %i.jm, align 4, !tbaa !52
  %i.jn = trunc nuw i8 %.0378882.us to i1
  br i1 %i.jn, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us:    ; preds = %.lr.ph883.split.us.peel.next
  %i.jo = getelementptr i8, ptr %i.jm, i64 -4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !52
  %i.jq = fcmp une float %i.jl, %i.jp
  %i.jr = add nuw nsw i64 %.1399881.us, 1         ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !9
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !47
  %i.jx = call noundef float @sqrtf(float noundef %i.jw) #24 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jr ; 2 uses
  store float %i.jx, ptr %i.jy, align 4, !tbaa !52
  br i1 %i.jq, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !52
  %i.kb = fcmp une float %i.jx, %i.ka
  %i.kc = add nuw nsw i64 %.1399881.us, 2         ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !9
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kf
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !47
  %i.ki = call noundef float @sqrtf(float noundef %i.kh) #24 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kc ; 2 uses
  store float %i.ki, ptr %i.kj, align 4, !tbaa !52
  br i1 %i.kb, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1.critedge: ; preds = %.lr.ph883.split.us.peel.next
  %i.kk = add nuw nsw i64 %.1399881.us, 1         ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !47
  %i.kq = call noundef float @sqrtf(float noundef %i.kp) #24
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kk
  store float %i.kq, ptr %i.kr, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1
  %i.ks = getelementptr i8, ptr %i.kj, i64 -4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !52
  %i.ku = fcmp une float %i.ki, %i.kt
  %i.kv = add nuw nsw i64 %.1399881.us, 3         ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !9
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !47
  %i.lb = call noundef float @sqrtf(float noundef %i.la) #24 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kv ; 2 uses
  store float %i.lb, ptr %i.lc, align 4, !tbaa !52
  br i1 %i.ku, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3, label %bb.aj

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us
  %i.ld = add nuw nsw i64 %.1399881.us, 2         ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !9
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !47
  %i.lj = call noundef float @sqrtf(float noundef %i.li) #24
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ld
  store float %i.lj, ptr %i.lk, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3.critedge

bb.aj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2
  %i.ll = getelementptr i8, ptr %i.lc, i64 -4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !52
  %i.ln = fcmp une float %i.lb, %i.lm
  %i.lo = zext i1 %i.ln to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.1
  %i.lp = add nuw nsw i64 %.1399881.us, 3         ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !9
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !47
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #24
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.lp
  store float %i.lv, ptr %i.lw, align 4, !tbaa !52
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3.critedge, %bb.aj, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2
  %.1379.us.3 = phi i8 [ %i.lo, %bb.aj ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.2 ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531.us.3.critedge ] ; 3 uses
  %i.lx = add nuw nsw i64 %.1399881.us, 4         ; 2 uses
  %niter1619.next.3 = add i64 %niter1619, 4       ; 2 uses
  %niter1619.ncmp.3 = icmp eq i64 %niter1619.next.3, %unroll_iter1618
end_hunk_0
begin_hunk_1_@_Z9gmx_covariPPc:bb.a
  br i1 %or.cond3, label %.loopexit864, label %bb.al

bb.al:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge
  %i.mr = load i32, ptr %i.w, align 4, !tbaa !9
  %i.ms = icmp ne i32 %i.ii, %i.mr                ; 2 uses
  %i.mt = icmp slt i32 %i.ii, 1
  %.not455890 = select i1 %i.mt, i1 true, i1 %i.ms
  br i1 %.not455890, label %._crit_edge, label %.lr.ph892

.lr.ph892:                                        ; preds = %bb.al
  %i.mu = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.mv = load ptr, ptr %i.y, align 8, !tbaa !34
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph892, %bb.am
  %.2400891 = phi i64 [ 0, %.lr.ph892 ], [ %i.nb, %bb.am ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.2400891
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !9
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.2400891
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !9
  %i.na = icmp ne i32 %i.mx, %i.mz                ; 2 uses
  %i.nb = add nuw nsw i64 %.2400891, 1            ; 2 uses
  %i.nc = icmp sge i64 %i.nb, %i.ij
  %.not455 = select i1 %i.nc, i1 true, i1 %i.na
  br i1 %.not455, label %._crit_edge, label %bb.am, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.am, %bb.al
  %.3383.in.lcssa889 = phi i1 [ %i.ms, %bb.al ], [ %i.na, %bb.am ]
  br i1 %.3383.in.lcssa889, label %.loopexit864, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ne = call i64 @fwrite(ptr nonnull @.str.56, i64 152, i64 1, ptr %i.nd) #27 ; 0 uses
  %i.nf = load i32, ptr %i.w, align 4, !tbaa !9   ; 4 uses
  %i.ng = zext i32 %i.nf to i64                   ; 6 uses
  %i.nh = icmp sgt i32 %i.nf, 0
  br i1 %i.nh, label %iter.check1313, label %.loopexit864

iter.check1313:                                   ; preds = %bb.an
  %i.ni = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %min.iters.check1296 = icmp ult i32 %i.nf, 4
  br i1 %min.iters.check1296, label %vec.epilog.scalar.ph1314.preheader, label %vector.main.loop.iter.check1297

vector.main.loop.iter.check1297:                  ; preds = %iter.check1313
  %min.iters.check1298 = icmp ult i32 %i.nf, 32
  br i1 %min.iters.check1298, label %vec.epilog.ph1317, label %vector.ph1299

vector.ph1299:                                    ; preds = %vector.main.loop.iter.check1297
  %i.nj = and i64 %i.ng, 28
  %n.vec1300 = and i64 %i.ng, 2147483616          ; 4 uses
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1309, %vector.body1301 ] ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index1302 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  %wide.load = load <8 x i32>, ptr %i.nk, align 4, !tbaa !9
  %wide.load1303 = load <8 x i32>, ptr %i.nl, align 4, !tbaa !9
  %wide.load1304 = load <8 x i32>, ptr %i.nm, align 4, !tbaa !9
  %wide.load1305 = load <8 x i32>, ptr %i.nn, align 4, !tbaa !9
  %i.no = sext <8 x i32> %wide.load to <8 x i64>
  %i.np = sext <8 x i32> %wide.load1303 to <8 x i64>
  %i.nq = sext <8 x i32> %wide.load1304 to <8 x i64>
  %i.nr = sext <8 x i32> %wide.load1305 to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %.0838, <8 x i64> %i.no
  %wide.gep1306 = getelementptr inbounds [4 x i8], ptr %.0838, <8 x i64> %i.np
  %wide.gep1307 = getelementptr inbounds [4 x i8], ptr %.0838, <8 x i64> %i.nq
  %wide.gep1308 = getelementptr inbounds [4 x i8], ptr %.0838, <8 x i64> %i.nr
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1306, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1307, <8 x i1> splat (i1 true)), !tbaa !52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1308, <8 x i1> splat (i1 true)), !tbaa !52
  %index.next1309 = add nuw i64 %index1302, 32    ; 2 uses
  %i.ns = icmp eq i64 %index.next1309, %n.vec1300
  br i1 %i.ns, label %middle.block1310, label %vector.body1301, !llvm.loop !69

middle.block1310:                                 ; preds = %vector.body1301
  %cmp.n1311 = icmp eq i64 %n.vec1300, %i.ng
  br i1 %cmp.n1311, label %.loopexit864, label %vec.epilog.iter.check1315

vec.epilog.iter.check1315:                        ; preds = %middle.block1310
  %min.epilog.iters.check1316 = icmp eq i64 %i.nj, 0
  br i1 %min.epilog.iters.check1316, label %vec.epilog.scalar.ph1314.preheader, label %vec.epilog.ph1317, !prof !61

vec.epilog.ph1317:                                ; preds = %vector.main.loop.iter.check1297, %vec.epilog.iter.check1315
  %vec.epilog.resume.val1312 = phi i64 [ %n.vec1300, %vec.epilog.iter.check1315 ], [ 0, %vector.main.loop.iter.check1297 ]
  %n.vec1318 = and i64 %i.ng, 2147483644          ; 3 uses
  br label %vec.epilog.vector.body1319

vec.epilog.vector.body1319:                       ; preds = %vec.epilog.vector.body1319, %vec.epilog.ph1317
  %index1320 = phi i64 [ %vec.epilog.resume.val1312, %vec.epilog.ph1317 ], [ %index.next1323, %vec.epilog.vector.body1319 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index1320
  %wide.load1321 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !9
  %i.nu = sext <4 x i32> %wide.load1321 to <4 x i64>
  %wide.gep1322 = getelementptr inbounds [4 x i8], ptr %.0838, <4 x i64> %i.nu
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> splat (float 1.000000e+00), <4 x ptr> align 4 %wide.gep1322, <4 x i1> splat (i1 true)), !tbaa !52
  %index.next1323 = add nuw i64 %index1320, 4     ; 2 uses
  %i.nv = icmp eq i64 %index.next1323, %n.vec1318
  br i1 %i.nv, label %vec.epilog.middle.block1324, label %vec.epilog.vector.body1319, !llvm.loop !70

vec.epilog.middle.block1324:                      ; preds = %vec.epilog.vector.body1319
  %cmp.n1325 = icmp eq i64 %n.vec1318, %i.ng
  br i1 %cmp.n1325, label %.loopexit864, label %vec.epilog.scalar.ph1314.preheader

vec.epilog.scalar.ph1314.preheader:               ; preds = %iter.check1313, %vec.epilog.iter.check1315, %vec.epilog.middle.block1324
  %.3401895.ph = phi i64 [ 0, %iter.check1313 ], [ %n.vec1300, %vec.epilog.iter.check1315 ], [ %n.vec1318, %vec.epilog.middle.block1324 ]
  br label %vec.epilog.scalar.ph1314

vec.epilog.scalar.ph1314:                         ; preds = %vec.epilog.scalar.ph1314.preheader, %vec.epilog.scalar.ph1314
  %.3401895 = phi i64 [ %i.oa, %vec.epilog.scalar.ph1314 ], [ %.3401895.ph, %vec.epilog.scalar.ph1314.preheader ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.3401895
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !9
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.0838, i64 %i.ny
  store float 1.000000e+00, ptr %i.nz, align 4, !tbaa !52
  %i.oa = add nuw nsw i64 %.3401895, 1            ; 2 uses
  %exitcond1001.not = icmp eq i64 %i.oa, %i.ng
  br i1 %exitcond1001.not, label %.loopexit864, label %vec.epilog.scalar.ph1314, !llvm.loop !71

.loopexit864:                                     ; preds = %vec.epilog.scalar.ph1314, %middle.block1310, %vec.epilog.middle.block1324, %bb.an, %._crit_edge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge
  %.4384 = phi i8 [ %.2382, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit531._crit_edge ], [ 1, %._crit_edge ], [ 0, %bb.an ], [ 0, %middle.block1310 ], [ 0, %vec.epilog.middle.block1324 ], [ 0, %vec.epilog.scalar.ph1314 ]
  %i.ob = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !30, !range !32, !noundef !33
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %.loopexit864
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !72
  %i.of = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.og = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.od, i32 noundef %i.oe, i32 noundef %i.of)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.oh = load i32, ptr %i.f, align 4, !tbaa !72
  %i.oi = invoke noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %i.oh, ptr noundef nonnull %i.i)
          to label %bb.aq unwind label %bb.au     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %.not = icmp eq ptr %i.oi, null
  br i1 %.not, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 304, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.oi) #26
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.ar
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn508 = phi { ptr, i32 } [ %i.ol, %bb.aw ], [ %i.ok, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.aq
  %i.om = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.on = load ptr, ptr %i.h, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.og, i32 noundef %i.om, ptr noundef nonnull %i.i, ptr noundef %i.on)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay, %.loopexit864
  %.0377 = phi ptr [ %i.og, %bb.ay ], [ null, %.loopexit864 ] ; 3 uses
  %i.oo = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.oq = load i32, ptr %i.w, align 4, !tbaa !9
  %i.or = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.os = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.ot = load ptr, ptr %i.h, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.oq, ptr noundef %i.or, i32 noundef %i.os, ptr noundef null, ptr noundef %i.ot, ptr noundef %.0838)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ou = load i32, ptr %i.l, align 4, !tbaa !9
  %i.ov = sext i32 %i.ou to i64
  %i.ow = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef 313, i64 noundef range(i64 -2147483648, 2147483648) %i.ov, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 22 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.bb
  %i.ox = load i32, ptr %i.l, align 4, !tbaa !9
  %i.oy = sext i32 %i.ox to i64
  %i.oz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef 314, i64 noundef range(i64 -2147483648, 2147483648) %i.oy, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit534 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit534:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.pa = load i32, ptr %i.l, align 4, !tbaa !9   ; 4 uses
  %i.pb = mul nsw i32 %i.pa, 3                    ; 24 uses
  %i.pc = sext i32 %i.pb to i64                   ; 51 uses
  %i.pd = mul nsw i64 %i.pc, %i.pc                ; 4 uses
  %i.pe = icmp samesign ugt i64 %i.pd, 2147483647
  br i1 %i.pe, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit534
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 319, ptr noundef nonnull @.str.60) #26
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn506 = phi { ptr, i32 } [ %i.pg, %bb.bg ], [ %i.pf, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.loopexit.split-lp

bb.bi:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit534
  %i.ph = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.50, i32 noundef 321, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.pd, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit536 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 45 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit536:       ; preds = %bb.bi
  %i.pi = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.pj = call i64 @fwrite(ptr nonnull @.str.62, i64 38, i64 1, ptr %i.pi) #27 ; 0 uses
  %i.pk = load ptr, ptr %i.z, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit536
  %i.pl = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.pk, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
          to label %bb.bk unwind label %bb.bo     ; 7 uses

bb.bk:                                            ; preds = %bb.bj
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i537 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i537, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i538, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef nonnull %i.pn) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i538

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i538: ; preds = %bb.bl, %bb.bk
  %i.po = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i539: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i538
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !29
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit541

_ZNSt10filesystem7__cxx114pathD2Ev.exit541:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i538, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i539
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.pt = load i32, ptr %i.cp, align 8, !tbaa !36 ; 2 uses
  %.not458 = icmp eq i32 %i.pl, %i.pt
  br i1 %.not458, label %._crit_edge.i.i542, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit541
  %i.pu = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.pv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pu, ptr noundef nonnull @.str.63, i32 noundef %i.pt, i32 noundef %i.pl) #28 ; 0 uses
  br label %._crit_edge.i.i542

bb.bn:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit536
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #24
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn456 = phi { ptr, i32 } [ %i.px, %bb.bo ], [ %i.pw, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit.split-lp

._crit_edge.i.i542:                               ; preds = %bb.bm, %_ZNSt10filesystem7__cxx114pathD2Ev.exit541
  %i.py = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.pz = load i32, ptr %i.w, align 4, !tbaa !9
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.qc, ptr %12, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.qc, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 7, ptr %i.qd, align 8, !tbaa !45
  %i.qe = getelementptr inbounds nuw i8, ptr %12, i64 23
  store i8 0, ptr %i.qe, align 1, !tbaa !29
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.py, ptr %i.qb, i32 noundef %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %._crit_edge.i.i542
  %i.qf = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.qc
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %bb.bq
  %i.qh = load i64, ptr %i.qc, align 8, !tbaa !29
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.qj = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  %i.qk = load i32, ptr %i.l, align 4, !tbaa !9
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.qj, i64 %i.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.qn, ptr %13, align 8, !tbaa !44
  store i64 8316305152262893153, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.qo, align 8, !tbaa !45
  %i.qp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.qp, align 8, !tbaa !29
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.qj, ptr %i.qm, i32 noundef %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.qq = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.qn
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %bb.br
  %i.qs = load i64, ptr %i.qn, align 8, !tbaa !29
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555
  %.0422 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ %i.qu, %bb.ck ] ; 2 uses
  %i.qu = add nuw nsw i32 %.0422, 1               ; 2 uses
  %i.qv = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !30, !range !32, !noundef !33
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.bt, label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  %i.qx = load i32, ptr %i.f, align 4, !tbaa !72
  %i.qy = invoke noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %i.qx, ptr noundef nonnull %i.i)
          to label %bb.bu unwind label %bb.ca     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %.not463 = icmp eq ptr %i.qy, null
  br i1 %.not463, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(65) @.str.50, i8 noundef zeroext 2)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 345, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.qy) #26
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %._crit_edge.i.i542
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qc
end_hunk_1
begin_hunk_2_@_Z9gmx_covariPPc:bb.a

bb.dc:                                            ; preds = %bb.cv, %bb.cu
  %i.xn = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.xp = load i32, ptr %i.w, align 4, !tbaa !9
  %i.xq = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.xr = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.xp, ptr noundef %i.xq, i32 noundef %i.wl, ptr noundef null, ptr noundef %i.xr, ptr noundef %.0838)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.xs = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.xt = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.wl, ptr noundef %.0838, ptr noundef %i.xs, ptr noundef %i.xt)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.xu = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xv = trunc nuw i8 %i.xu to i1
  %i.xw = load i32, ptr %i.l, align 4, !tbaa !9   ; 8 uses
  %i.xx = sext i32 %i.xw to i64                   ; 11 uses
  %i.xy = icmp sgt i32 %i.xw, 0                   ; 2 uses
  br i1 %i.xv, label %.preheader854, label %.preheader856

.preheader856:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph906, label %._crit_edge914

.lr.ph906:                                        ; preds = %.preheader856
  %i.xz = load ptr, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %i.ya = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.yb = icmp eq i32 %i.xw, 1
  br i1 %i.yb, label %.epil.preheader1632, label %.lr.ph906.new

.lr.ph906.new:                                    ; preds = %.lr.ph906
  %unroll_iter1637 = and i64 %i.xx, 2147483646
  br label %bb.dh

.preheader854:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph908, label %._crit_edge914

.lr.ph908:                                        ; preds = %.preheader854
  %i.yc = load ptr, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %i.yd = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.ye = load ptr, ptr %i.h, align 8, !tbaa !74  ; 3 uses
  %i.yf = icmp eq i32 %i.xw, 1
  br i1 %i.yf, label %.epil.preheader1639, label %.lr.ph908.new

.lr.ph908.new:                                    ; preds = %.lr.ph908
  %unroll_iter1644 = and i64 %i.xx, 2147483646
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph908.new
  %.6404907 = phi i64 [ 0, %.lr.ph908.new ], [ %i.zl, %bb.dg ] ; 4 uses
  %niter1645 = phi i64 [ 0, %.lr.ph908.new ], [ %niter1645.next.1, %bb.dg ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404907
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !9
  %i.yi = sext i32 %i.yh to i64                   ; 2 uses
  %i.yj = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yi ; 2 uses
  %i.yl = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404907 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !52
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !52
  %i.yq = fsub float %i.yn, %i.yp
  %i.yr = load <2 x float>, ptr %i.yj, align 4, !tbaa !52
  %i.ys = load <2 x float>, ptr %i.yk, align 4, !tbaa !52
  %i.yt = fsub <2 x float> %i.yr, %i.ys
  store <2 x float> %i.yt, ptr %i.yl, align 4, !tbaa !52
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store float %i.yq, ptr %i.yu, align 4, !tbaa !52
  %i.yv = or disjoint i64 %.6404907, 1            ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !9
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yy ; 2 uses
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.yv ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !52
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !52
  %i.zg = fsub float %i.zd, %i.zf
  %i.zh = load <2 x float>, ptr %i.yz, align 4, !tbaa !52
  %i.zi = load <2 x float>, ptr %i.za, align 4, !tbaa !52
  %i.zj = fsub <2 x float> %i.zh, %i.zi
  store <2 x float> %i.zj, ptr %i.zb, align 4, !tbaa !52
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store float %i.zg, ptr %i.zk, align 4, !tbaa !52
  %i.zl = add nuw nsw i64 %.6404907, 2            ; 2 uses
  %niter1645.next.1 = add i64 %niter1645, 2       ; 2 uses
  %niter1645.ncmp.1 = icmp eq i64 %niter1645.next.1, %unroll_iter1644
  br i1 %niter1645.ncmp.1, label %.preheader853.preheader.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !83

bb.dh:                                            ; preds = %bb.dh, %.lr.ph906.new
  %.7405905 = phi i64 [ 0, %.lr.ph906.new ], [ %i.aar, %bb.dh ] ; 5 uses
  %niter1638 = phi i64 [ 0, %.lr.ph906.new ], [ %niter1638.next.1, %bb.dh ]
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405905
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !9
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.zo ; 2 uses
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405905 ; 2 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405905 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !52
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !52
  %i.zw = fsub float %i.zt, %i.zv
  %i.zx = load <2 x float>, ptr %i.zp, align 4, !tbaa !52
  %i.zy = load <2 x float>, ptr %i.zq, align 4, !tbaa !52
  %i.zz = fsub <2 x float> %i.zx, %i.zy
  store <2 x float> %i.zz, ptr %i.zr, align 4, !tbaa !52
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store float %i.zw, ptr %i.aaa, align 4, !tbaa !52
  %i.aab = or disjoint i64 %.7405905, 1           ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !9
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %i.aab ; 2 uses
  %i.aah = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aab ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !52
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !52
  %i.aam = fsub float %i.aaj, %i.aal
  %i.aan = load <2 x float>, ptr %i.aaf, align 4, !tbaa !52
  %i.aao = load <2 x float>, ptr %i.aag, align 4, !tbaa !52
  %i.aap = fsub <2 x float> %i.aan, %i.aao
  store <2 x float> %i.aap, ptr %i.aah, align 4, !tbaa !52
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  store float %i.aam, ptr %i.aaq, align 4, !tbaa !52
  %i.aar = add nuw nsw i64 %.7405905, 2           ; 2 uses
  %niter1638.next.1 = add i64 %niter1638, 2       ; 2 uses
  %niter1638.ncmp.1 = icmp eq i64 %niter1638.next.1, %unroll_iter1637
  br i1 %niter1638.ncmp.1, label %.preheader853.preheader.loopexit1595.unr-lcssa, label %bb.dh, !llvm.loop !84

.preheader853.preheader.loopexit.unr-lcssa:       ; preds = %bb.dg
  %i.aas = and i32 %i.xw, 1
  %lcmp.mod1642.not = icmp eq i32 %i.aas, 0
  br i1 %lcmp.mod1642.not, label %.preheader853.preheader, label %.epil.preheader1639

.epil.preheader1639:                              ; preds = %.preheader853.preheader.loopexit.unr-lcssa, %.lr.ph908
  %.6404907.epil.init = phi i64 [ 0, %.lr.ph908 ], [ %i.zl, %.preheader853.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1643 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1643)
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404907.epil.init
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !9
  %i.aav = sext i32 %i.aau to i64                 ; 2 uses
  %i.aaw = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.aav ; 2 uses
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404907.epil.init ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !52
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !52
  %i.abd = fsub float %i.aba, %i.abc
  %i.abe = load <2 x float>, ptr %i.aaw, align 4, !tbaa !52
  %i.abf = load <2 x float>, ptr %i.aax, align 4, !tbaa !52
  %i.abg = fsub <2 x float> %i.abe, %i.abf
  store <2 x float> %i.abg, ptr %i.aay, align 4, !tbaa !52
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store float %i.abd, ptr %i.abh, align 4, !tbaa !52
  br label %.preheader853.preheader

.preheader853.preheader.loopexit1595.unr-lcssa:   ; preds = %bb.dh
  %i.abi = and i32 %i.xw, 1
  %lcmp.mod1635.not = icmp eq i32 %i.abi, 0
  br i1 %lcmp.mod1635.not, label %.preheader853.preheader, label %.epil.preheader1632

.epil.preheader1632:                              ; preds = %.preheader853.preheader.loopexit1595.unr-lcssa, %.lr.ph906
  %.7405905.epil.init = phi i64 [ 0, %.lr.ph906 ], [ %i.aar, %.preheader853.preheader.loopexit1595.unr-lcssa ] ; 3 uses
  %lcmp.mod1636 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1636)
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405905.epil.init
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !9
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405905.epil.init ; 2 uses
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405905.epil.init ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !52
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !52
  %i.abt = fsub float %i.abq, %i.abs
  %i.abu = load <2 x float>, ptr %i.abm, align 4, !tbaa !52
  %i.abv = load <2 x float>, ptr %i.abn, align 4, !tbaa !52
  %i.abw = fsub <2 x float> %i.abu, %i.abv
  store <2 x float> %i.abw, ptr %i.abo, align 4, !tbaa !52
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  store float %i.abt, ptr %i.abx, align 4, !tbaa !52
  br label %.preheader853.preheader

.preheader853.preheader:                          ; preds = %.epil.preheader1632, %.preheader853.preheader.loopexit1595.unr-lcssa, %.epil.preheader1639, %.preheader853.preheader.loopexit.unr-lcssa
  br label %.preheader853

.preheader853:                                    ; preds = %.preheader853.preheader, %._crit_edge911.2
  %.0392913 = phi i64 [ %i.agf, %._crit_edge911.2 ], [ 0, %.preheader853.preheader ] ; 31 uses
  %i.aby = add nuw i64 %.0392913, 1
  %smax1357 = call i64 @llvm.smax.i64(i64 %i.aby, i64 %i.xx)
  %i.abz = sub i64 %smax1357, %.0392913           ; 6 uses
  %i.aca = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep1348 = getelementptr i8, ptr %i.wy, i64 %i.aca
  %scevgep1349 = getelementptr i8, ptr %i.xa, i64 %i.aca
  %i.acb = add nuw i64 %.0392913, 1
  %smax1350 = call i64 @llvm.smax.i64(i64 %i.acb, i64 %i.xx)
  %i.acc = xor i64 %.0392913, -1
  %i.acd = add i64 %smax1350, %i.acc
  %i.ace = mul i64 %i.acd, 12                     ; 2 uses
  %scevgep1351 = getelementptr i8, ptr %scevgep1349, i64 %i.ace
  %i.acf = mul nuw nsw i64 %.0392913, 12
  %i.acg = getelementptr i8, ptr %i.ow, i64 %i.acf
  %scevgep1352 = getelementptr i8, ptr %i.acg, i64 12
  %scevgep1353 = getelementptr i8, ptr %scevgep1352, i64 %i.ace
  %i.ach = add nuw i64 %.0392913, 1
  %smax1331 = call i64 @llvm.smax.i64(i64 %i.ach, i64 %i.xx)
  %i.aci = sub i64 %smax1331, %.0392913           ; 3 uses
  %i.acj = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.xb, i64 %i.acj
  %scevgep1327 = getelementptr i8, ptr %i.xd, i64 %i.acj
  %i.ack = add nuw i64 %.0392913, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.ack, i64 %i.xx)
  %i.acl = xor i64 %.0392913, -1
  %i.acm = add i64 %smax, %i.acl
  %i.acn = mul i64 %i.acm, 12                     ; 2 uses
  %scevgep1328 = getelementptr i8, ptr %scevgep1327, i64 %i.acn
  %i.aco = mul nuw nsw i64 %.0392913, 12
  %i.acp = getelementptr i8, ptr %i.ow, i64 %i.aco
  %scevgep1329 = getelementptr i8, ptr %i.acp, i64 12
  %scevgep1330 = getelementptr i8, ptr %scevgep1329, i64 %i.acn
  %i.acq = mul nuw nsw i64 %.0392913, 3           ; 3 uses
  %i.acr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.0392913 ; 6 uses
  %i.acs = mul nsw i64 %i.acq, %i.pc
  %i.act = load float, ptr %i.acr, align 4, !tbaa !52 ; 4 uses
  %i.acu = getelementptr [4 x i8], ptr %i.ph, i64 %i.acs ; 2 uses
  %min.iters.check1388 = icmp ult i64 %i.abz, 8
  br i1 %min.iters.check1388, label %.preheader852.preheader, label %vector.memcheck1379

vector.memcheck1379:                              ; preds = %.preheader853
  %i.acv = mul nuw nsw i64 %.0392913, 12
  %i.acw = getelementptr i8, ptr %i.ow, i64 %i.acv
  %scevgep1381.a = getelementptr i8, ptr %i.acw, i64 12
  %i.acx = add nuw i64 %.0392913, 1
  %smax1382 = call i64 @llvm.smax.i64(i64 %i.acx, i64 %i.xx)
  %i.acy = xor i64 %.0392913, -1
  %i.acz = add i64 %smax1382, %i.acy
  %42 = mul i64 %i.acz, 12                        ; 2 uses
  %scevgep1385 = getelementptr i8, ptr %scevgep1381.a, i64 %42
  %i.ada = mul i64 %i.ww, %.0392913               ; 2 uses
  %43 = getelementptr i8, ptr %i.ph, i64 %i.ada
  %scevgep1381 = getelementptr i8, ptr %43, i64 12
  %scevgep1383 = getelementptr i8, ptr %scevgep1381, i64 %42
  %scevgep1380 = getelementptr i8, ptr %i.ph, i64 %i.ada
  %bound01384 = icmp ult ptr %scevgep1380, %scevgep1385
  %bound11385 = icmp ult ptr %i.acr, %scevgep1383
  %found.conflict1386 = and i1 %bound01384, %bound11385
  br i1 %found.conflict1386, label %.preheader852.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %vector.memcheck1379
  %n.vec1390 = and i64 %i.abz, -8                 ; 3 uses
  %i.adb = add i64 %.0392913, %n.vec1390
  %broadcast.splatinsert1391 = insertelement <8 x float> poison, float %i.act, i64 0
  %i.adc = shufflevector <8 x float> %broadcast.splatinsert1391, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1389
  %index1394 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1404, %vector.body1393 ] ; 2 uses
  %i.add = add nuw i64 %.0392913, %index1394      ; 2 uses
  %i.ade = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.add
  %i.adf = mul nuw nsw i64 %i.add, 12
  %i.adg = getelementptr i8, ptr %i.acu, i64 %i.adf ; 2 uses
  %wide.vec1395 = load <24 x float>, ptr %i.ade, align 4, !tbaa !52, !alias.scope !85
  %wide.vec1399 = load <24 x float>, ptr %i.adg, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %interleaved.vec1403 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1395, <24 x float> %i.adc, <24 x float> %wide.vec1399)
  store <24 x float> %interleaved.vec1403, ptr %i.adg, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %index.next1404 = add nuw i64 %index1394, 8     ; 2 uses
  %i.adh = icmp eq i64 %index.next1404, %n.vec1390
  br i1 %i.adh, label %middle.block1405, label %vector.body1393, !llvm.loop !90

middle.block1405:                                 ; preds = %vector.body1393
  %cmp.n1406 = icmp eq i64 %i.abz, %n.vec1390
  br i1 %cmp.n1406, label %._crit_edge911, label %.preheader852.preheader

.preheader852.preheader:                          ; preds = %vector.memcheck1379, %.preheader853, %middle.block1405
  %.8406910.ph = phi i64 [ %.0392913, %vector.memcheck1379 ], [ %.0392913, %.preheader853 ], [ %i.adb, %middle.block1405 ]
  br label %.preheader852

.preheader852:                                    ; preds = %.preheader852.preheader, %.preheader852
  %.8406910 = phi i64 [ %i.adx, %.preheader852 ], [ %.8406910.ph, %.preheader852.preheader ] ; 3 uses
  %i.adi = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910 ; 3 uses
  %.idx502 = mul nuw nsw i64 %.8406910, 12
  %i.adj = getelementptr i8, ptr %i.acu, i64 %.idx502 ; 4 uses
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !52
  %i.adl = load float, ptr %i.adj, align 4, !tbaa !52
  %i.adm = call float @llvm.fmuladd.f32(float %i.adk, float %i.act, float %i.adl)
  store float %i.adm, ptr %i.adj, align 4, !tbaa !52
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !52
  %i.adp = getelementptr i8, ptr %i.adj, i64 4    ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !52
  %i.adr = call float @llvm.fmuladd.f32(float %i.ado, float %i.act, float %i.adq)
  store float %i.adr, ptr %i.adp, align 4, !tbaa !52
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !52
  %i.adu = getelementptr i8, ptr %i.adj, i64 8    ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !52
  %i.adw = call float @llvm.fmuladd.f32(float %i.adt, float %i.act, float %i.adv)
  store float %i.adw, ptr %i.adu, align 4, !tbaa !52
  %i.adx = add nuw nsw i64 %.8406910, 1           ; 2 uses
  %i.ady = icmp slt i64 %i.adx, %i.xx
  br i1 %i.ady, label %.preheader852, label %._crit_edge911, !llvm.loop !91

._crit_edge911:                                   ; preds = %.preheader852, %middle.block1405
  %i.adz = add nuw nsw i64 %i.acq, 1
  %i.aea = mul nsw i64 %i.adz, %i.pc
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !52 ; 4 uses
  %i.aed = getelementptr [4 x i8], ptr %i.ph, i64 %i.aea ; 2 uses
  %min.iters.check1359 = icmp ult i64 %i.abz, 8
  br i1 %min.iters.check1359, label %.preheader852.1.preheader, label %vector.memcheck1347

vector.memcheck1347:                              ; preds = %._crit_edge911
  %bound01354 = icmp ult ptr %scevgep1348, %scevgep1353
  %bound11355 = icmp ult ptr %i.acr, %scevgep1351
  %found.conflict1356 = and i1 %bound01354, %bound11355
  br i1 %found.conflict1356, label %.preheader852.1.preheader, label %vector.ph1360

vector.ph1360:                                    ; preds = %vector.memcheck1347
  %n.vec1361 = and i64 %i.abz, -8                 ; 3 uses
  %i.aee = add i64 %.0392913, %n.vec1361
  %broadcast.splatinsert1362 = insertelement <8 x float> poison, float %i.aec, i64 0
  %i.aef = shufflevector <8 x float> %broadcast.splatinsert1362, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1360
  %index1365 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1375, %vector.body1364 ] ; 2 uses
  %i.aeg = add nuw i64 %.0392913, %index1365      ; 2 uses
  %i.aeh = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aeg
  %i.aei = mul nuw nsw i64 %i.aeg, 12
  %i.aej = getelementptr i8, ptr %i.aed, i64 %i.aei ; 2 uses
  %wide.vec1366 = load <24 x float>, ptr %i.aeh, align 4, !tbaa !52, !alias.scope !92
  %wide.vec1370 = load <24 x float>, ptr %i.aej, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %interleaved.vec1374 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1366, <24 x float> %i.aef, <24 x float> %wide.vec1370)
  store <24 x float> %interleaved.vec1374, ptr %i.aej, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %index.next1375 = add nuw i64 %index1365, 8     ; 2 uses
  %i.aek = icmp eq i64 %index.next1375, %n.vec1361
  br i1 %i.aek, label %middle.block1376, label %vector.body1364, !llvm.loop !97

middle.block1376:                                 ; preds = %vector.body1364
  %cmp.n1377 = icmp eq i64 %i.abz, %n.vec1361
  br i1 %cmp.n1377, label %._crit_edge911.1, label %.preheader852.1.preheader

.preheader852.1.preheader:                        ; preds = %vector.memcheck1347, %._crit_edge911, %middle.block1376
  %.8406910.1.ph = phi i64 [ %.0392913, %vector.memcheck1347 ], [ %.0392913, %._crit_edge911 ], [ %i.aee, %middle.block1376 ]
  br label %.preheader852.1

.preheader852.1:                                  ; preds = %.preheader852.1.preheader, %.preheader852.1
  %.8406910.1 = phi i64 [ %i.afa, %.preheader852.1 ], [ %.8406910.1.ph, %.preheader852.1.preheader ] ; 3 uses
  %i.ael = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.1 ; 3 uses
  %.idx502.1 = mul nuw nsw i64 %.8406910.1, 12
  %i.aem = getelementptr i8, ptr %i.aed, i64 %.idx502.1 ; 4 uses
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !52
  %i.aeo = load float, ptr %i.aem, align 4, !tbaa !52
  %i.aep = call float @llvm.fmuladd.f32(float %i.aen, float %i.aec, float %i.aeo)
  store float %i.aep, ptr %i.aem, align 4, !tbaa !52
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !52
  %i.aes = getelementptr i8, ptr %i.aem, i64 4    ; 2 uses
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !52
  %i.aeu = call float @llvm.fmuladd.f32(float %i.aer, float %i.aec, float %i.aet)
  store float %i.aeu, ptr %i.aes, align 4, !tbaa !52
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !52
  %i.aex = getelementptr i8, ptr %i.aem, i64 8    ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !52
  %i.aez = call float @llvm.fmuladd.f32(float %i.aew, float %i.aec, float %i.aey)
  store float %i.aez, ptr %i.aex, align 4, !tbaa !52
  %i.afa = add nuw nsw i64 %.8406910.1, 1         ; 2 uses
  %i.afb = icmp slt i64 %i.afa, %i.xx
  br i1 %i.afb, label %.preheader852.1, label %._crit_edge911.1, !llvm.loop !98

._crit_edge911.1:                                 ; preds = %.preheader852.1, %middle.block1376
  %i.afc = add nuw nsw i64 %i.acq, 2
  %i.afd = mul nsw i64 %i.afc, %i.pc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !52 ; 4 uses
  %i.afg = getelementptr [4 x i8], ptr %i.ph, i64 %i.afd ; 2 uses
  %min.iters.check1332 = icmp ult i64 %i.aci, 8
  br i1 %min.iters.check1332, label %.preheader852.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge911.1
  %bound0 = icmp ult ptr %scevgep, %scevgep1330
  %bound1 = icmp ult ptr %i.acr, %scevgep1328
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader852.2.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %vector.memcheck
  %n.vec1334 = and i64 %i.aci, -8                 ; 3 uses
  %i.afh = add i64 %.0392913, %n.vec1334
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.aff, i64 0
  %i.afi = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1343, %vector.body1335 ] ; 2 uses
  %i.afj = add nuw i64 %.0392913, %index1336      ; 2 uses
  %i.afk = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.afj
  %i.afl = mul nuw nsw i64 %i.afj, 12
  %i.afm = getelementptr i8, ptr %i.afg, i64 %i.afl ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.afk, align 4, !tbaa !52, !alias.scope !99
  %wide.vec1339 = load <24 x float>, ptr %i.afm, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec, <24 x float> %i.afi, <24 x float> %wide.vec1339)
  store <24 x float> %interleaved.vec, ptr %i.afm, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %index.next1343 = add nuw i64 %index1336, 8     ; 2 uses
  %i.afn = icmp eq i64 %index.next1343, %n.vec1334
  br i1 %i.afn, label %middle.block1344, label %vector.body1335, !llvm.loop !104

middle.block1344:                                 ; preds = %vector.body1335
  %cmp.n1345 = icmp eq i64 %i.aci, %n.vec1334
  br i1 %cmp.n1345, label %._crit_edge911.2, label %.preheader852.2.preheader

.preheader852.2.preheader:                        ; preds = %vector.memcheck, %._crit_edge911.1, %middle.block1344
  %.8406910.2.ph = phi i64 [ %.0392913, %vector.memcheck ], [ %.0392913, %._crit_edge911.1 ], [ %i.afh, %middle.block1344 ]
  br label %.preheader852.2

.preheader852.2:                                  ; preds = %.preheader852.2.preheader, %.preheader852.2
  %.8406910.2 = phi i64 [ %i.agd, %.preheader852.2 ], [ %.8406910.2.ph, %.preheader852.2.preheader ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.2 ; 3 uses
  %.idx502.2 = mul nuw nsw i64 %.8406910.2, 12
  %i.afp = getelementptr i8, ptr %i.afg, i64 %.idx502.2 ; 4 uses
  %i.afq = load float, ptr %i.afo, align 4, !tbaa !52
  %i.afr = load float, ptr %i.afp, align 4, !tbaa !52
  %i.afs = call float @llvm.fmuladd.f32(float %i.afq, float %i.aff, float %i.afr)
  store float %i.afs, ptr %i.afp, align 4, !tbaa !52
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !52
  %i.afv = getelementptr i8, ptr %i.afp, i64 4    ; 2 uses
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !52
  %i.afx = call float @llvm.fmuladd.f32(float %i.afu, float %i.aff, float %i.afw)
  store float %i.afx, ptr %i.afv, align 4, !tbaa !52
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !52
  %i.aga = getelementptr i8, ptr %i.afp, i64 8    ; 2 uses
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !52
  %i.agc = call float @llvm.fmuladd.f32(float %i.afz, float %i.aff, float %i.agb)
  store float %i.agc, ptr %i.aga, align 4, !tbaa !52
  %i.agd = add nuw nsw i64 %.8406910.2, 1         ; 2 uses
  %i.age = icmp slt i64 %i.agd, %i.xx
  br i1 %i.age, label %.preheader852.2, label %._crit_edge911.2, !llvm.loop !105

._crit_edge911.2:                                 ; preds = %.preheader852.2, %middle.block1344
  %i.agf = add nuw nsw i64 %.0392913, 1           ; 2 uses
  %exitcond1012.not = icmp eq i64 %i.agf, %i.xx
  br i1 %exitcond1012.not, label %._crit_edge914, label %.preheader853, !llvm.loop !106

._crit_edge914:                                   ; preds = %._crit_edge911.2, %.preheader854, %.preheader856
  %i.agg = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.agh = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.agi = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.agj = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.agg, ptr noundef %i.agh, ptr noundef nonnull %i.k, ptr noundef %i.agi, ptr noundef nonnull %i.i)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.di:                                            ; preds = %._crit_edge914
  br i1 %i.agj, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.agk = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.agl = trunc nuw i8 %i.agk to i1
  %i.agm = icmp samesign ult i32 %.0421, %.0422
  %i.agn = select i1 %i.agl, i1 true, i1 %i.agm
  br i1 %i.agn, label %bb.cu, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %bb.di, %bb.dj
  %i.ago = load ptr, ptr %i.e, align 8, !tbaa !79
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.ago)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.agp = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.agq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agp, ptr noundef nonnull @.str.67, i32 noundef %i.xe) #28 ; 0 uses
  %i.agr = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.ags = trunc nuw i8 %i.agr to i1
  %.pre1051 = load i32, ptr %i.l, align 4, !tbaa !9 ; 3 uses
  br i1 %i.ags, label %bb.dm, label %.loopexit851

bb.dm:                                            ; preds = %bb.dl
  %i.agt = sext i32 %.pre1051 to i64
  %i.agu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.agt, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader: ; preds = %bb.dm
  %i.agv = load i32, ptr %i.l, align 4, !tbaa !9  ; 5 uses
  %i.agw = sext i32 %i.agv to i64                 ; 4 uses
  %i.agx = icmp sgt i32 %i.agv, 0
  br i1 %i.agx, label %.lr.ph916, label %.preheader848

.lr.ph916:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader
  %i.agy = load ptr, ptr %i.h, align 8, !tbaa !74 ; 5 uses
  %i.agz = load ptr, ptr %i.x, align 8, !tbaa !34 ; 5 uses
  %xtraiter1646 = and i64 %i.agw, 3
  %i.aha = icmp ult i32 %i.agv, 4
  br i1 %i.aha, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader, label %.lr.ph916.new

.lr.ph916.new:                                    ; preds = %.lr.ph916
  %unroll_iter1650 = and i64 %i.agw, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, %.lr.ph916.new
  %.9407915 = phi i64 [ 0, %.lr.ph916.new ], [ %i.aja, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ] ; 6 uses
  %niter1651 = phi i64 [ 0, %.lr.ph916.new ], [ %niter1651.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ]
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %.9407915
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !9
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ahd ; 3 uses
  %i.ahf = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %.9407915 ; 3 uses
  %i.ahg = load float, ptr %i.ahe, align 4, !tbaa !52
  store float %i.ahg, ptr %i.ahf, align 4, !tbaa !52
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !52
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store float %i.ahi, ptr %i.ahj, align 4, !tbaa !52
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !52
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !52
  %i.ahn = or disjoint i64 %.9407915, 1           ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !9
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ahq ; 3 uses
  %i.ahs = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.ahn ; 3 uses
  %i.aht = load float, ptr %i.ahr, align 4, !tbaa !52
  store float %i.aht, ptr %i.ahs, align 4, !tbaa !52
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !52
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !52
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !52
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store float %i.ahy, ptr %i.ahz, align 4, !tbaa !52
  %i.aia = or disjoint i64 %.9407915, 2           ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !9
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.aid ; 3 uses
  %i.aif = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.aia ; 3 uses
  %i.aig = load float, ptr %i.aie, align 4, !tbaa !52
  store float %i.aig, ptr %i.aif, align 4, !tbaa !52
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !52
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  store float %i.aii, ptr %i.aij, align 4, !tbaa !52
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !52
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store float %i.ail, ptr %i.aim, align 4, !tbaa !52
  %i.ain = or disjoint i64 %.9407915, 3           ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !9
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.aiq ; 3 uses
  %i.ais = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.ain ; 3 uses
  %i.ait = load float, ptr %i.air, align 4, !tbaa !52
  store float %i.ait, ptr %i.ais, align 4, !tbaa !52
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !52
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ais, i64 4
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !52
  %i.aix = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !52
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store float %i.aiy, ptr %i.aiz, align 4, !tbaa !52
  %i.aja = add nuw nsw i64 %.9407915, 4           ; 2 uses
  %niter1651.next.3 = add i64 %niter1651, 4       ; 2 uses
  %niter1651.ncmp.3 = icmp eq i64 %niter1651.next.3, %unroll_iter1650
  br i1 %niter1651.ncmp.3, label %.preheader850.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, !llvm.loop !108

.loopexit851:                                     ; preds = %bb.dl
  %.pre1053 = zext nneg i32 %.pre1051 to i64
  %i.ajb = icmp sgt i32 %.pre1051, 0
  br i1 %i.ajb, label %.preheader850.preheader, label %.preheader848

.preheader850.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574
  %i.ajc = and i32 %i.agv, 3
  %lcmp.mod1648.not = icmp eq i32 %i.ajc, 0
  br i1 %lcmp.mod1648.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader: ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %.lr.ph916
  %.9407915.epil.init = phi i64 [ 0, %.lr.ph916 ], [ %i.aja, %.preheader850.preheader.loopexit.unr-lcssa ]
  %i.ajd = and i32 %i.agv, 3
  %lcmp.mod1649 = icmp ne i32 %i.ajd, 0
  call void @llvm.assume(i1 %lcmp.mod1649)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader
  %.9407915.epil = phi i64 [ %.9407915.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %i.ajq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ] ; 3 uses
  %epil.iter1647 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %epil.iter1647.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ]
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %.9407915.epil
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !9
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ajg ; 3 uses
  %i.aji = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %.9407915.epil ; 3 uses
  %i.ajj = load float, ptr %i.ajh, align 4, !tbaa !52
  store float %i.ajj, ptr %i.aji, align 4, !tbaa !52
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !52
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 4
  store float %i.ajl, ptr %i.ajm, align 4, !tbaa !52
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !52
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !52
  %i.ajq = add nuw nsw i64 %.9407915.epil, 1
  %epil.iter1647.next = add i64 %epil.iter1647, 1 ; 2 uses
  %epil.iter1647.cmp.not = icmp eq i64 %epil.iter1647.next, %xtraiter1646
  br i1 %epil.iter1647.cmp.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, !llvm.loop !109

.preheader850.preheader:                          ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %.loopexit851
  %.01251 = phi ptr [ %i.oz, %.loopexit851 ], [ %i.agu, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.agu, %.preheader850.preheader.loopexit.unr-lcssa ]
  %.pre-phi10541249 = phi i64 [ %.pre1053, %.loopexit851 ], [ %i.agw, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.agw, %.preheader850.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1271 = uitofp nneg i32 %i.xe to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1271
  %i.ajr = fptrunc double %.in to float           ; 12 uses
  %i.ajs = shl nsw i64 %.pre-phi10541249, 2
  %scevgep1413 = getelementptr i8, ptr %i.ih, i64 %i.ajs ; 3 uses
  %i.ajt = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.aju = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajv = getelementptr i8, ptr %i.aju, i64 12
  %i.ajw = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajx = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 12
  %broadcast.splatinsert1506 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1507 = shufflevector <8 x float> %broadcast.splatinsert1506, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1468 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1469 = shufflevector <8 x float> %broadcast.splatinsert1468, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1427 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1428 = shufflevector <8 x float> %broadcast.splatinsert1427, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader850

.preheader850:                                    ; preds = %.preheader850.preheader, %._crit_edge920.2
  %.1393923 = phi i64 [ %i.aqg, %._crit_edge920.2 ], [ 0, %.preheader850.preheader ] ; 31 uses
  %i.ajz = add nuw i64 %.1393923, 1
  %smax1463 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.ajz)
  %i.aka = sub i64 %smax1463, %.1393923           ; 6 uses
  %i.akb = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1450 = getelementptr i8, ptr %i.ajt, i64 %i.akb ; 2 uses
  %scevgep1451 = getelementptr i8, ptr %i.ajv, i64 %i.akb
  %i.akc = add nuw i64 %.1393923, 1
  %smax1452 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akc)
  %i.akd = xor i64 %.1393923, -1
  %i.ake = add i64 %smax1452, %i.akd              ; 2 uses
  %i.akf = mul i64 %i.ake, 12
  %scevgep1453 = getelementptr i8, ptr %scevgep1451, i64 %i.akf ; 2 uses
  %i.akg = shl nuw nsw i64 %.1393923, 2
  %i.akh = getelementptr i8, ptr %i.ih, i64 %i.akg
  %scevgep1454 = getelementptr i8, ptr %i.akh, i64 4
  %i.aki = shl i64 %i.ake, 2
  %scevgep1455 = getelementptr i8, ptr %scevgep1454, i64 %i.aki
  %i.akj = add nuw i64 %.1393923, 1
  %smax1422 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akj)
  %i.akk = sub i64 %smax1422, %.1393923           ; 3 uses
  %i.akl = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1409 = getelementptr i8, ptr %i.ajw, i64 %i.akl ; 2 uses
  %scevgep1410 = getelementptr i8, ptr %i.ajy, i64 %i.akl
  %i.akm = add nuw i64 %.1393923, 1
  %smax1411 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akm)
  %i.akn = xor i64 %.1393923, -1
  %i.ako = add i64 %smax1411, %i.akn              ; 2 uses
  %i.akp = mul i64 %i.ako, 12
  %scevgep1412 = getelementptr i8, ptr %scevgep1410, i64 %i.akp ; 2 uses
  %i.akq = shl nuw nsw i64 %.1393923, 2
  %i.akr = getelementptr i8, ptr %i.ih, i64 %i.akq
  %scevgep1414 = getelementptr i8, ptr %i.akr, i64 4
  %i.aks = shl i64 %i.ako, 2
  %scevgep1415 = getelementptr i8, ptr %scevgep1414, i64 %i.aks
  %i.akt = mul nuw nsw i64 %.1393923, 3           ; 3 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393923 ; 15 uses
  %i.akv = mul nsw i64 %i.akt, %i.pc
  %i.akw = getelementptr [4 x i8], ptr %i.ph, i64 %i.akv ; 2 uses
  %min.iters.check1503 = icmp ult i64 %i.aka, 8
  br i1 %min.iters.check1503, label %scalar.ph1502.preheader, label %vector.memcheck1490

vector.memcheck1490:                              ; preds = %.preheader850
  %44 = shl nuw nsw i64 %.1393923, 2
  %i.akx = getelementptr i8, ptr %i.ih, i64 %44
  %scevgep1492 = getelementptr i8, ptr %i.akx, i64 4
  %i.aky = add nuw i64 %.1393923, 1
  %smax1493 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.aky)
  %i.akz = xor i64 %.1393923, -1
  %i.ala = add i64 %smax1493, %i.akz              ; 2 uses
  %45 = shl i64 %i.ala, 2
  %scevgep1498 = getelementptr i8, ptr %scevgep1492, i64 %45
  %46 = mul i64 %i.ww, %.1393923                  ; 2 uses
  %47 = getelementptr i8, ptr %i.ph, i64 %46
  %scevgep1494 = getelementptr i8, ptr %47, i64 12
  %i.alb = mul i64 %i.ala, 12
  %scevgep1494.a = getelementptr i8, ptr %scevgep1494, i64 %i.alb ; 2 uses
  %scevgep1491 = getelementptr i8, ptr %i.ph, i64 %46 ; 2 uses
  %bound01495 = icmp ult ptr %scevgep1491, %scevgep1413
  %bound11496 = icmp ult ptr %i.ih, %scevgep1494.a
  %found.conflict1497 = and i1 %bound01495, %bound11496
  %bound01498 = icmp ult ptr %scevgep1491, %scevgep1498
  %bound11499 = icmp ult ptr %i.aku, %scevgep1494.a
  %found.conflict1500 = and i1 %bound01498, %bound11499
  %conflict.rdx1501 = or i1 %found.conflict1497, %found.conflict1500
  br i1 %conflict.rdx1501, label %scalar.ph1502.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1490
  %n.vec1505 = and i64 %i.aka, -8                 ; 3 uses
  %i.alc = add i64 %.1393923, %n.vec1505
  %i.ald = load float, ptr %i.aku, align 4, !tbaa !52, !alias.scope !110 ; 3 uses
  %broadcast.splatinsert1515 = insertelement <8 x float> poison, float %i.ald, i64 0
  %broadcast.splatinsert1518 = insertelement <8 x float> poison, float %i.ald, i64 0
  %broadcast.splatinsert1521 = insertelement <8 x float> poison, float %i.ald, i64 0
  %broadcast.splat1522 = shufflevector <8 x float> %broadcast.splatinsert1521, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ale = shufflevector <8 x float> %broadcast.splatinsert1515, <8 x float> %broadcast.splatinsert1518, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1504
  %index1509 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1524, %vector.body1508 ] ; 2 uses
  %i.alf = add nuw i64 %.1393923, %index1509      ; 2 uses
  %i.alg = mul nuw nsw i64 %i.alf, 12
  %i.alh = getelementptr i8, ptr %i.akw, i64 %i.alg ; 2 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alf
  %wide.vec1510 = load <24 x float>, ptr %i.alh, align 4, !tbaa !52, !alias.scope !113, !noalias !115 ; 3 uses
  %strided.vec1511 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1512 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1513 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.alj = fmul <8 x float> %strided.vec1511, %broadcast.splat1507
  %wide.load1514 = load <8 x float>, ptr %i.ali, align 4, !tbaa !52, !alias.scope !117 ; 3 uses
  %i.alk = fmul <8 x float> %i.alj, %wide.load1514
  %i.all = fmul <8 x float> %strided.vec1512, %broadcast.splat1507
  %i.alm = fmul <8 x float> %i.all, %wide.load1514
  %i.aln = fmul <8 x float> %strided.vec1513, %broadcast.splat1507
  %i.alo = fmul <8 x float> %i.aln, %wide.load1514
  %i.alp = fmul <8 x float> %i.alo, %broadcast.splat1522
  %i.alq = shufflevector <8 x float> %i.alk, <8 x float> %i.alm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alr = fmul <16 x float> %i.alq, %i.ale
  %i.als = shufflevector <8 x float> %i.alp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1523 = shufflevector <16 x float> %i.alr, <16 x float> %i.als, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1523, ptr %i.alh, align 4, !tbaa !52, !alias.scope !113, !noalias !115
  %index.next1524 = add nuw i64 %index1509, 8     ; 2 uses
  %i.alt = icmp eq i64 %index.next1524, %n.vec1505
  br i1 %i.alt, label %middle.block1525, label %vector.body1508, !llvm.loop !118

middle.block1525:                                 ; preds = %vector.body1508
  %cmp.n1526 = icmp eq i64 %i.aka, %n.vec1505
  br i1 %cmp.n1526, label %._crit_edge920, label %scalar.ph1502.preheader

scalar.ph1502.preheader:                          ; preds = %vector.memcheck1490, %.preheader850, %middle.block1525
  %.10408918.ph = phi i64 [ %.1393923, %vector.memcheck1490 ], [ %.1393923, %.preheader850 ], [ %i.alc, %middle.block1525 ]
  br label %scalar.ph1502

.preheader848:                                    ; preds = %._crit_edge920.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader, %.loopexit851
  %.01250 = phi ptr [ %i.agu, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader ], [ %i.oz, %.loopexit851 ], [ %.01251, %._crit_edge920.2 ]
  %i.alu = icmp sgt i32 %i.pa, 0                  ; 8 uses
  br i1 %i.alu, label %.preheader847.preheader, label %._crit_edge929

.preheader847.preheader:                          ; preds = %.preheader848
  %xtraiter1652 = and i64 %i.pc, 3
  %i.alv = icmp ult i32 %i.pb, 4
  br i1 %i.alv, label %.preheader847.epil.preheader, label %.preheader847.preheader.new

.preheader847.preheader.new:                      ; preds = %.preheader847.preheader
  %unroll_iter1656 = and i64 %i.pc, 2147483644
  br label %.preheader847

scalar.ph1502:                                    ; preds = %scalar.ph1502.preheader, %scalar.ph1502
  %.10408918 = phi i64 [ %i.ams, %scalar.ph1502 ], [ %.10408918.ph, %scalar.ph1502.preheader ] ; 3 uses
  %.idx501 = mul nuw nsw i64 %.10408918, 12
  %i.alw = getelementptr i8, ptr %i.akw, i64 %.idx501 ; 4 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918 ; 3 uses
  %i.aly = load float, ptr %i.alw, align 4, !tbaa !52
  %i.alz = fmul float %i.aly, %i.ajr
  %i.ama = load float, ptr %i.alx, align 4, !tbaa !52
  %i.amb = fmul float %i.alz, %i.ama
  %i.amc = load float, ptr %i.aku, align 4, !tbaa !52
  %i.amd = fmul float %i.amb, %i.amc
  store float %i.amd, ptr %i.alw, align 4, !tbaa !52
  %i.ame = getelementptr i8, ptr %i.alw, i64 4    ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !52
  %i.amg = fmul float %i.amf, %i.ajr
  %i.amh = load float, ptr %i.alx, align 4, !tbaa !52
  %i.ami = fmul float %i.amg, %i.amh
  %i.amj = load float, ptr %i.aku, align 4, !tbaa !52
  %i.amk = fmul float %i.ami, %i.amj
  store float %i.amk, ptr %i.ame, align 4, !tbaa !52
  %i.aml = getelementptr i8, ptr %i.alw, i64 8    ; 2 uses
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !52
  %i.amn = fmul float %i.amm, %i.ajr
  %i.amo = load float, ptr %i.alx, align 4, !tbaa !52
  %i.amp = fmul float %i.amn, %i.amo
  %i.amq = load float, ptr %i.aku, align 4, !tbaa !52
  %i.amr = fmul float %i.amp, %i.amq
  store float %i.amr, ptr %i.aml, align 4, !tbaa !52
  %i.ams = add nuw nsw i64 %.10408918, 1          ; 2 uses
  %i.amt = icmp slt i64 %i.ams, %.pre-phi10541249
  br i1 %i.amt, label %scalar.ph1502, label %._crit_edge920, !llvm.loop !119

._crit_edge920:                                   ; preds = %scalar.ph1502, %middle.block1525
  %i.amu = add nuw nsw i64 %i.akt, 1
  %i.amv = mul nsw i64 %i.amu, %i.pc
  %i.amw = getelementptr [4 x i8], ptr %i.ph, i64 %i.amv ; 2 uses
  %min.iters.check1465 = icmp ult i64 %i.aka, 8
  br i1 %min.iters.check1465, label %scalar.ph1464.preheader, label %vector.memcheck1449

vector.memcheck1449:                              ; preds = %._crit_edge920
  %bound01456 = icmp ult ptr %scevgep1450, %scevgep1413
  %bound11457 = icmp ult ptr %i.ih, %scevgep1453
  %found.conflict1458 = and i1 %bound01456, %bound11457
  %bound01459 = icmp ult ptr %scevgep1450, %scevgep1455
  %bound11460 = icmp ult ptr %i.aku, %scevgep1453
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %conflict.rdx1462 = or i1 %found.conflict1458, %found.conflict1461
  br i1 %conflict.rdx1462, label %scalar.ph1464.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %vector.memcheck1449
  %n.vec1467 = and i64 %i.aka, -8                 ; 3 uses
  %i.amx = add i64 %.1393923, %n.vec1467
  %i.amy = load float, ptr %i.aku, align 4, !tbaa !52, !alias.scope !120 ; 3 uses
  %broadcast.splatinsert1477 = insertelement <8 x float> poison, float %i.amy, i64 0
  %broadcast.splatinsert1480 = insertelement <8 x float> poison, float %i.amy, i64 0
  %broadcast.splatinsert1483 = insertelement <8 x float> poison, float %i.amy, i64 0
  %broadcast.splat1484 = shufflevector <8 x float> %broadcast.splatinsert1483, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amz = shufflevector <8 x float> %broadcast.splatinsert1477, <8 x float> %broadcast.splatinsert1480, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1466
  %index1471 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1486, %vector.body1470 ] ; 2 uses
  %i.ana = add nuw i64 %.1393923, %index1471      ; 2 uses
  %i.anb = mul nuw nsw i64 %i.ana, 12
  %i.anc = getelementptr i8, ptr %i.amw, i64 %i.anb ; 2 uses
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ana
  %wide.vec1472 = load <24 x float>, ptr %i.anc, align 4, !tbaa !52, !alias.scope !123, !noalias !125 ; 3 uses
  %strided.vec1473 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1474 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1475 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ane = fmul <8 x float> %strided.vec1473, %broadcast.splat1469
  %wide.load1476 = load <8 x float>, ptr %i.and, align 4, !tbaa !52, !alias.scope !127 ; 3 uses
  %i.anf = fmul <8 x float> %i.ane, %wide.load1476
  %i.ang = fmul <8 x float> %strided.vec1474, %broadcast.splat1469
  %i.anh = fmul <8 x float> %i.ang, %wide.load1476
  %i.ani = fmul <8 x float> %strided.vec1475, %broadcast.splat1469
  %i.anj = fmul <8 x float> %i.ani, %wide.load1476
  %i.ank = fmul <8 x float> %i.anj, %broadcast.splat1484
  %i.anl = shufflevector <8 x float> %i.anf, <8 x float> %i.anh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anm = fmul <16 x float> %i.anl, %i.amz
  %i.ann = shufflevector <8 x float> %i.ank, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1485 = shufflevector <16 x float> %i.anm, <16 x float> %i.ann, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1485, ptr %i.anc, align 4, !tbaa !52, !alias.scope !123, !noalias !125
  %index.next1486 = add nuw i64 %index1471, 8     ; 2 uses
  %i.ano = icmp eq i64 %index.next1486, %n.vec1467
  br i1 %i.ano, label %middle.block1487, label %vector.body1470, !llvm.loop !128

middle.block1487:                                 ; preds = %vector.body1470
  %cmp.n1488 = icmp eq i64 %i.aka, %n.vec1467
  br i1 %cmp.n1488, label %._crit_edge920.1, label %scalar.ph1464.preheader

scalar.ph1464.preheader:                          ; preds = %vector.memcheck1449, %._crit_edge920, %middle.block1487
  %.10408918.1.ph = phi i64 [ %.1393923, %vector.memcheck1449 ], [ %.1393923, %._crit_edge920 ], [ %i.amx, %middle.block1487 ]
  br label %scalar.ph1464

scalar.ph1464:                                    ; preds = %scalar.ph1464.preheader, %scalar.ph1464
  %.10408918.1 = phi i64 [ %i.aol, %scalar.ph1464 ], [ %.10408918.1.ph, %scalar.ph1464.preheader ] ; 3 uses
  %.idx501.1 = mul nuw nsw i64 %.10408918.1, 12
  %i.anp = getelementptr i8, ptr %i.amw, i64 %.idx501.1 ; 4 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.1 ; 3 uses
  %i.anr = load float, ptr %i.anp, align 4, !tbaa !52
  %i.ans = fmul float %i.anr, %i.ajr
  %i.ant = load float, ptr %i.anq, align 4, !tbaa !52
  %i.anu = fmul float %i.ans, %i.ant
  %i.anv = load float, ptr %i.aku, align 4, !tbaa !52
  %i.anw = fmul float %i.anu, %i.anv
  store float %i.anw, ptr %i.anp, align 4, !tbaa !52
  %i.anx = getelementptr i8, ptr %i.anp, i64 4    ; 2 uses
  %i.any = load float, ptr %i.anx, align 4, !tbaa !52
  %i.anz = fmul float %i.any, %i.ajr
  %i.aoa = load float, ptr %i.anq, align 4, !tbaa !52
  %i.aob = fmul float %i.anz, %i.aoa
  %i.aoc = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aod = fmul float %i.aob, %i.aoc
  store float %i.aod, ptr %i.anx, align 4, !tbaa !52
  %i.aoe = getelementptr i8, ptr %i.anp, i64 8    ; 2 uses
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !52
  %i.aog = fmul float %i.aof, %i.ajr
  %i.aoh = load float, ptr %i.anq, align 4, !tbaa !52
  %i.aoi = fmul float %i.aog, %i.aoh
  %i.aoj = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aok = fmul float %i.aoi, %i.aoj
  store float %i.aok, ptr %i.aoe, align 4, !tbaa !52
  %i.aol = add nuw nsw i64 %.10408918.1, 1        ; 2 uses
  %i.aom = icmp slt i64 %i.aol, %.pre-phi10541249
  br i1 %i.aom, label %scalar.ph1464, label %._crit_edge920.1, !llvm.loop !129

._crit_edge920.1:                                 ; preds = %scalar.ph1464, %middle.block1487
  %i.aon = add nuw nsw i64 %i.akt, 2
  %i.aoo = mul nsw i64 %i.aon, %i.pc
  %i.aop = getelementptr [4 x i8], ptr %i.ph, i64 %i.aoo ; 2 uses
  %min.iters.check1424 = icmp ult i64 %i.akk, 8
  br i1 %min.iters.check1424, label %scalar.ph1423.preheader, label %vector.memcheck1408

vector.memcheck1408:                              ; preds = %._crit_edge920.1
end_hunk_2
