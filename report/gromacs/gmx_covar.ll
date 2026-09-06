Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  br i1 %i.ei, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel, label %.loopexit868

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel:     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 2352
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !140 ; 9 uses
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !131 ; 9 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !145
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.en
  store float %i.ep, ptr %i.eq, align 4, !tbaa !146
  %exitcond.peel.not = icmp eq i32 %i.eg, 1
  br i1 %exitcond.peel.not, label %.loopexit868, label %.peel.next.preheader

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
  %.0380883 = phi i8 [ 0, %.peel.next.preheader.new ], [ %.1381.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ]
  %.0398882 = phi i64 [ 1, %.peel.next.preheader.new ], [ %i.hp, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ] ; 8 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3 ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !10 ; 2 uses
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !145 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ew
  store float %i.ey, ptr %i.ez, align 4, !tbaa !146
  %i.fa = trunc nuw i8 %.0380883 to i1
  br i1 %i.fa, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit:          ; preds = %.peel.next
  %i.fb = getelementptr i8, ptr %i.eu, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !146
  %i.fg = fcmp une float %i.ey, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !10 ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !145 ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fk
  store float %i.fm, ptr %i.fn, align 4, !tbaa !146
  br i1 %i.fg, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1

bb.ag:                                            ; preds = %._crit_edge.i.i520
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.du
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528: ; preds = %bb.ag
  %i.fr = load i64, ptr %i.du, align 8, !tbaa !22
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i528
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit.split-lp

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.ft = sext i32 %i.ev to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !146
  %i.fw = fcmp une float %i.fm, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !10 ; 2 uses
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !145 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ga
  store float %i.gc, ptr %i.gd, align 4, !tbaa !146
  br i1 %i.fw, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1
  %i.ge = sext i32 %i.fj to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !146
  %i.gh = fcmp une float %i.gc, %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !10
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !145 ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gl
  store float %i.gn, ptr %i.go, align 4, !tbaa !146
  br i1 %i.gh, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3, label %bb.ah

bb.ah:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2
  %i.gp = sext i32 %i.fz to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !146
  %i.gs = fcmp une float %i.gn, %i.gr
  %i.gt = zext i1 %i.gs to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge: ; preds = %.peel.next
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !10
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !145
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gx
  store float %i.gz, ptr %i.ha, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !10
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !145
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.he
  store float %i.hg, ptr %i.hh, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.1
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !10
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !145
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hl
  store float %i.hn, ptr %i.ho, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge, %bb.ah, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2
  %.1381.3 = phi i8 [ %i.gt, %bb.ah ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.2 ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3.critedge ] ; 3 uses
  %i.hp = add nuw nsw i64 %.0398882, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit868.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !35

.loopexit868.loopexit.unr-lcssa:                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit868, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.loopexit868.loopexit.unr-lcssa, %.peel.next.preheader
  %.0380883.epil.init = phi i8 [ 0, %.peel.next.preheader ], [ %.1381.3, %.loopexit868.loopexit.unr-lcssa ]
  %.0398882.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %i.hp, %.loopexit868.loopexit.unr-lcssa ]
  %lcmp.mod1605 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1605)
  br label %.peel.next.epil

.peel.next.epil:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %.peel.next.epil.preheader
  %.0380883.epil = phi i8 [ %.1381.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %.0380883.epil.init, %.peel.next.epil.preheader ]
  %.0398882.epil = phi i64 [ %i.ie, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %.0398882.epil.init, %.peel.next.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ 0, %.peel.next.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0398882.epil ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !10
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [36 x i8], ptr %i.ek, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !145 ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hs
  store float %i.hu, ptr %i.hv, align 4, !tbaa !146
  %i.hw = trunc nuw i8 %.0380883.epil to i1
  br i1 %i.hw, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, label %bb.ai

bb.ai:                                            ; preds = %.peel.next.epil
  %i.hx = getelementptr i8, ptr %i.hq, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !10
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !146
  %i.ic = fcmp une float %i.hu, %i.ib
  %i.id = zext i1 %i.ic to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil:     ; preds = %bb.ai, %.peel.next.epil
  %.1381.epil = phi i8 [ %i.id, %bb.ai ], [ 1, %.peel.next.epil ] ; 2 uses
  %i.ie = add nuw nsw i64 %.0398882.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit868, label %.peel.next.epil, !llvm.loop !36

.loopexit868:                                     ; preds = %.loopexit868.loopexit.unr-lcssa, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
  %.0839 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel ], [ %i.ef, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ], [ %i.ef, %.loopexit868.loopexit.unr-lcssa ] ; 11 uses
  %.2382 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader ], [ 0, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.peel ], [ %.1381.3, %.loopexit868.loopexit.unr-lcssa ], [ %.1381.epil, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.epil ] ; 2 uses
  %i.if = load i32, ptr %i.l, align 4, !tbaa !10
  %i.ig = sext i32 %i.if to i64
  %i.ih = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef 260, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ig, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 25 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader: ; preds = %.loopexit868
  %i.ii = load i32, ptr %i.l, align 4, !tbaa !10  ; 8 uses
  %i.ij = sext i32 %i.ii to i64                   ; 8 uses
  %i.ik = icmp sgt i32 %i.ii, 0
  br i1 %i.ik, label %.lr.ph886, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge

.lr.ph886:                                        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader
  %i.il = load i8, ptr @_ZZ9gmx_covariPPcE2bM, align 1, !tbaa !127, !range !128, !noundef !129
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 2352
  %i.io = load ptr, ptr %i.in, align 8            ; 9 uses
  %i.ip = load ptr, ptr %i.x, align 8             ; 9 uses
  br i1 %i.im, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.peel, label %iter.check

iter.check:                                       ; preds = %.lr.ph886
  %min.iters.check = icmp ult i32 %i.ii, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader1603, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1294 = icmp ult i32 %i.ii, 32
  br i1 %min.iters.check1294, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ij, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.iq, align 4, !tbaa !146
  store <8 x float> splat (float 1.000000e+00), ptr %i.ir, align 4, !tbaa !146
  store <8 x float> splat (float 1.000000e+00), ptr %i.is, align 4, !tbaa !146
  store <8 x float> splat (float 1.000000e+00), ptr %i.it, align 4, !tbaa !146
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ij
  br i1 %cmp.n, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.iv = and i32 %i.ii, 28
  %min.epilog.iters.check = icmp eq i32 %i.iv, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader1603, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1295 = and i64 %i.ij, 2147483644          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1296 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1297, %vec.epilog.vector.body ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index1296
  store <4 x float> splat (float 1.000000e+00), ptr %i.iw, align 4, !tbaa !146
  %index.next1297 = add nuw i64 %index1296, 4     ; 2 uses
  %i.ix = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %i.ix, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1298 = icmp eq i64 %n.vec1295, %i.ij
  br i1 %cmp.n1298, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader1603

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.preheader1603: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1399884.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1295, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.peel: ; preds = %.lr.ph886
  %i.iy = load i32, ptr %i.ip, align 4, !tbaa !10
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !145
  %i.jc = call noundef float @sqrtf(float noundef %i.jb) #24
  store float %i.jc, ptr %i.ih, align 4, !tbaa !146
  %exitcond1002.peel.not = icmp eq i32 %i.ii, 1
  br i1 %exitcond1002.peel.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge, label %.lr.ph886.split.us.peel.next.preheader

.lr.ph886.split.us.peel.next.preheader:           ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.peel
  %i.jd = add nsw i64 %i.ij, -1                   ; 2 uses
  %i.je = add nsw i64 %i.ij, -2
  %xtraiter1606 = and i64 %i.jd, 3                ; 3 uses
  %i.jf = icmp ult i64 %i.je, 3
  br i1 %i.jf, label %.lr.ph886.split.us.peel.next.epil.preheader, label %.lr.ph886.split.us.peel.next.preheader.new

.lr.ph886.split.us.peel.next.preheader.new:       ; preds = %.lr.ph886.split.us.peel.next.preheader
  %unroll_iter1611 = and i64 %i.jd, -4
  br label %.lr.ph886.split.us.peel.next

.lr.ph886.split.us.peel.next:                     ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3, %.lr.ph886.split.us.peel.next.preheader.new
  %.0378885.us = phi i8 [ 0, %.lr.ph886.split.us.peel.next.preheader.new ], [ %.1379.us.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3 ]
  %.1399884.us = phi i64 [ 1, %.lr.ph886.split.us.peel.next.preheader.new ], [ %i.lx, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3 ] ; 9 uses
  %niter1612 = phi i64 [ 0, %.lr.ph886.split.us.peel.next.preheader.new ], [ %niter1612.next.3, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.1399884.us
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !10
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !145
  %i.jl = call noundef float @sqrtf(float noundef %i.jk) #24 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1399884.us ; 2 uses
  store float %i.jl, ptr %i.jm, align 4, !tbaa !146
  %i.jn = trunc nuw i8 %.0378885.us to i1
  br i1 %i.jn, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us:    ; preds = %.lr.ph886.split.us.peel.next
  %i.jo = getelementptr i8, ptr %i.jm, i64 -4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !146
  %i.jq = fcmp une float %i.jl, %i.jp
  %i.jr = add nuw nsw i64 %.1399884.us, 1         ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !10
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !145
  %i.jx = call noundef float @sqrtf(float noundef %i.jw) #24 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jr ; 2 uses
  store float %i.jx, ptr %i.jy, align 4, !tbaa !146
  br i1 %i.jq, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !146
  %i.kb = fcmp une float %i.jx, %i.ka
  %i.kc = add nuw nsw i64 %.1399884.us, 2         ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !10
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kf
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !145
  %i.ki = call noundef float @sqrtf(float noundef %i.kh) #24 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kc ; 2 uses
  store float %i.ki, ptr %i.kj, align 4, !tbaa !146
  br i1 %i.kb, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3.critedge, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1.critedge: ; preds = %.lr.ph886.split.us.peel.next
  %i.kk = add nuw nsw i64 %.1399884.us, 1         ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !10
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !145
  %i.kq = call noundef float @sqrtf(float noundef %i.kp) #24
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kk
  store float %i.kq, ptr %i.kr, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2.critedge

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1
  %i.ks = getelementptr i8, ptr %i.kj, i64 -4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !146
  %i.ku = fcmp une float %i.ki, %i.kt
  %i.kv = add nuw nsw i64 %.1399884.us, 3         ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !10
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !145
  %i.lb = call noundef float @sqrtf(float noundef %i.la) #24 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kv ; 2 uses
  store float %i.lb, ptr %i.lc, align 4, !tbaa !146
  br i1 %i.ku, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3, label %bb.aj

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us
  %i.ld = add nuw nsw i64 %.1399884.us, 2         ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !10
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !145
  %i.lj = call noundef float @sqrtf(float noundef %i.li) #24
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ld
  store float %i.lj, ptr %i.lk, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3.critedge

bb.aj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2
  %i.ll = getelementptr i8, ptr %i.lc, i64 -4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !146
  %i.ln = fcmp une float %i.lb, %i.lm
  %i.lo = zext i1 %i.ln to i8
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3.critedge: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2.critedge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.1
  %i.lp = add nuw nsw i64 %.1399884.us, 3         ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !10
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [36 x i8], ptr %i.io, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !145
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #24
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.lp
  store float %i.lv, ptr %i.lw, align 4, !tbaa !146
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3:  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3.critedge, %bb.aj, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2
  %.1379.us.3 = phi i8 [ %i.lo, %bb.aj ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.2 ], [ 1, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532.us.3.critedge ] ; 3 uses
  %i.lx = add nuw nsw i64 %.1399884.us, 4         ; 2 uses
  %niter1612.next.3 = add i64 %niter1612, 4       ; 2 uses
  %niter1612.ncmp.3 = icmp eq i64 %niter1612.next.3, %unroll_iter1611
end_hunk_0
begin_hunk_1_@_Z9gmx_covariPPc:bb.a
  br i1 %or.cond3, label %.loopexit867, label %bb.al

bb.al:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge
  %i.mr = load i32, ptr %i.w, align 4, !tbaa !10
  %i.ms = icmp ne i32 %i.ii, %i.mr                ; 2 uses
  %i.mt = icmp slt i32 %i.ii, 1
  %.not455893 = select i1 %i.mt, i1 true, i1 %i.ms
  br i1 %.not455893, label %._crit_edge, label %.lr.ph895

.lr.ph895:                                        ; preds = %bb.al
  %i.mu = load ptr, ptr %i.x, align 8, !tbaa !131
  %i.mv = load ptr, ptr %i.y, align 8, !tbaa !131
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph895, %bb.am
  %.2400894 = phi i64 [ 0, %.lr.ph895 ], [ %i.nb, %bb.am ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.2400894
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !10
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.2400894
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !10
  %i.na = icmp ne i32 %i.mx, %i.mz                ; 2 uses
  %i.nb = add nuw nsw i64 %.2400894, 1            ; 2 uses
  %i.nc = icmp sge i64 %i.nb, %i.ij
  %.not455 = select i1 %i.nc, i1 true, i1 %i.na
  br i1 %.not455, label %._crit_edge, label %bb.am, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.am, %bb.al
  %.3383.in.lcssa892 = phi i1 [ %i.ms, %bb.al ], [ %i.na, %bb.am ]
  br i1 %.3383.in.lcssa892, label %.loopexit867, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.ne = call i64 @fwrite(ptr nonnull @.str.56, i64 152, i64 1, ptr %i.nd) #27 ; 0 uses
  %i.nf = load i32, ptr %i.w, align 4, !tbaa !10  ; 4 uses
  %i.ng = zext i32 %i.nf to i64                   ; 6 uses
  %i.nh = icmp sgt i32 %i.nf, 0
  br i1 %i.nh, label %iter.check1316, label %.loopexit867

iter.check1316:                                   ; preds = %bb.an
  %i.ni = load ptr, ptr %i.y, align 8, !tbaa !131 ; 3 uses
  %min.iters.check1299 = icmp ult i32 %i.nf, 4
  br i1 %min.iters.check1299, label %vec.epilog.scalar.ph1317.preheader, label %vector.main.loop.iter.check1300

vector.main.loop.iter.check1300:                  ; preds = %iter.check1316
  %min.iters.check1301 = icmp ult i32 %i.nf, 32
  br i1 %min.iters.check1301, label %vec.epilog.ph1320, label %vector.ph1302

vector.ph1302:                                    ; preds = %vector.main.loop.iter.check1300
  %i.nj = and i64 %i.ng, 28
  %n.vec1303 = and i64 %i.ng, 2147483616          ; 4 uses
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1312, %vector.body1304 ] ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index1305 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  %wide.load = load <8 x i32>, ptr %i.nk, align 4, !tbaa !10
  %wide.load1306 = load <8 x i32>, ptr %i.nl, align 4, !tbaa !10
  %wide.load1307 = load <8 x i32>, ptr %i.nm, align 4, !tbaa !10
  %wide.load1308 = load <8 x i32>, ptr %i.nn, align 4, !tbaa !10
  %i.no = sext <8 x i32> %wide.load to <8 x i64>
  %i.np = sext <8 x i32> %wide.load1306 to <8 x i64>
  %i.nq = sext <8 x i32> %wide.load1307 to <8 x i64>
  %i.nr = sext <8 x i32> %wide.load1308 to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %.0839, <8 x i64> %i.no
  %wide.gep1309 = getelementptr inbounds [4 x i8], ptr %.0839, <8 x i64> %i.np
  %wide.gep1310 = getelementptr inbounds [4 x i8], ptr %.0839, <8 x i64> %i.nq
  %wide.gep1311 = getelementptr inbounds [4 x i8], ptr %.0839, <8 x i64> %i.nr
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !146
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1309, <8 x i1> splat (i1 true)), !tbaa !146
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1310, <8 x i1> splat (i1 true)), !tbaa !146
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1311, <8 x i1> splat (i1 true)), !tbaa !146
  %index.next1312 = add nuw i64 %index1305, 32    ; 2 uses
  %i.ns = icmp eq i64 %index.next1312, %n.vec1303
  br i1 %i.ns, label %middle.block1313, label %vector.body1304, !llvm.loop !43

middle.block1313:                                 ; preds = %vector.body1304
  %cmp.n1314 = icmp eq i64 %n.vec1303, %i.ng
  br i1 %cmp.n1314, label %.loopexit867, label %vec.epilog.iter.check1318

vec.epilog.iter.check1318:                        ; preds = %middle.block1313
  %min.epilog.iters.check1319 = icmp eq i64 %i.nj, 0
  br i1 %min.epilog.iters.check1319, label %vec.epilog.scalar.ph1317.preheader, label %vec.epilog.ph1320, !prof !151

vec.epilog.ph1320:                                ; preds = %vector.main.loop.iter.check1300, %vec.epilog.iter.check1318
  %vec.epilog.resume.val1315 = phi i64 [ %n.vec1303, %vec.epilog.iter.check1318 ], [ 0, %vector.main.loop.iter.check1300 ]
  %n.vec1321 = and i64 %i.ng, 2147483644          ; 3 uses
  br label %vec.epilog.vector.body1322

vec.epilog.vector.body1322:                       ; preds = %vec.epilog.vector.body1322, %vec.epilog.ph1320
  %index1323 = phi i64 [ %vec.epilog.resume.val1315, %vec.epilog.ph1320 ], [ %index.next1326, %vec.epilog.vector.body1322 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index1323
  %wide.load1324 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !10
  %i.nu = sext <4 x i32> %wide.load1324 to <4 x i64>
  %wide.gep1325 = getelementptr inbounds [4 x i8], ptr %.0839, <4 x i64> %i.nu
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> splat (float 1.000000e+00), <4 x ptr> align 4 %wide.gep1325, <4 x i1> splat (i1 true)), !tbaa !146
  %index.next1326 = add nuw i64 %index1323, 4     ; 2 uses
  %i.nv = icmp eq i64 %index.next1326, %n.vec1321
  br i1 %i.nv, label %vec.epilog.middle.block1327, label %vec.epilog.vector.body1322, !llvm.loop !44

vec.epilog.middle.block1327:                      ; preds = %vec.epilog.vector.body1322
  %cmp.n1328 = icmp eq i64 %n.vec1321, %i.ng
  br i1 %cmp.n1328, label %.loopexit867, label %vec.epilog.scalar.ph1317.preheader

vec.epilog.scalar.ph1317.preheader:               ; preds = %iter.check1316, %vec.epilog.iter.check1318, %vec.epilog.middle.block1327
  %.3401898.ph = phi i64 [ 0, %iter.check1316 ], [ %n.vec1303, %vec.epilog.iter.check1318 ], [ %n.vec1321, %vec.epilog.middle.block1327 ]
  br label %vec.epilog.scalar.ph1317

vec.epilog.scalar.ph1317:                         ; preds = %vec.epilog.scalar.ph1317.preheader, %vec.epilog.scalar.ph1317
  %.3401898 = phi i64 [ %i.oa, %vec.epilog.scalar.ph1317 ], [ %.3401898.ph, %vec.epilog.scalar.ph1317.preheader ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.3401898
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !10
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.0839, i64 %i.ny
  store float 1.000000e+00, ptr %i.nz, align 4, !tbaa !146
  %i.oa = add nuw nsw i64 %.3401898, 1            ; 2 uses
  %exitcond1004.not = icmp eq i64 %i.oa, %i.ng
  br i1 %exitcond1004.not, label %.loopexit867, label %vec.epilog.scalar.ph1317, !llvm.loop !45

.loopexit867:                                     ; preds = %vec.epilog.scalar.ph1317, %middle.block1313, %vec.epilog.middle.block1327, %bb.an, %._crit_edge, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge
  %.4384 = phi i8 [ %.2382, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit532._crit_edge ], [ 1, %._crit_edge ], [ 0, %bb.an ], [ 0, %middle.block1313 ], [ 0, %vec.epilog.middle.block1327 ], [ 0, %vec.epilog.scalar.ph1317 ]
  %i.ob = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !127, !range !128, !noundef !129
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %.loopexit867
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !155
  %i.of = load i32, ptr %i.cp, align 8, !tbaa !139
  %i.og = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.od, i32 noundef %i.oe, i32 noundef %i.of)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.oh = load i32, ptr %i.f, align 4, !tbaa !155
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
  %i.om = load i32, ptr %i.cp, align 8, !tbaa !139
  %i.on = load ptr, ptr %i.h, align 8, !tbaa !157
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.og, i32 noundef %i.om, ptr noundef nonnull %i.i, ptr noundef %i.on)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay, %.loopexit867
  %.0377 = phi ptr [ %i.og, %bb.ay ], [ null, %.loopexit867 ] ; 3 uses
  %i.oo = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !127, !range !128, !noundef !129
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.oq = load i32, ptr %i.w, align 4, !tbaa !10
  %i.or = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.os = load i32, ptr %i.cp, align 8, !tbaa !139
  %i.ot = load ptr, ptr %i.h, align 8, !tbaa !157
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.oq, ptr noundef %i.or, i32 noundef %i.os, ptr noundef null, ptr noundef %i.ot, ptr noundef %.0839)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ou = load i32, ptr %i.l, align 4, !tbaa !10
  %i.ov = sext i32 %i.ou to i64
  %i.ow = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef 313, i64 noundef range(i64 -2147483648, 2147483648) %i.ov, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 21 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.bb
  %i.ox = load i32, ptr %i.l, align 4, !tbaa !10
  %i.oy = sext i32 %i.ox to i64
  %i.oz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef 314, i64 noundef range(i64 -2147483648, 2147483648) %i.oy, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit535 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit535:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.pa = load i32, ptr %i.l, align 4, !tbaa !10  ; 4 uses
  %i.pb = mul nsw i32 %i.pa, 3                    ; 24 uses
  %i.pc = sext i32 %i.pb to i64                   ; 51 uses
  %i.pd = mul nsw i64 %i.pc, %i.pc                ; 4 uses
  %i.pe = icmp samesign ugt i64 %i.pd, 2147483647
  br i1 %i.pe, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit535
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

bb.bi:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit535
  %i.ph = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.50, i32 noundef 321, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.pd, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit537 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 45 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit537:       ; preds = %bb.bi
  %i.pi = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.pj = call i64 @fwrite(ptr nonnull @.str.62, i64 38, i64 1, ptr %i.pi) #27 ; 0 uses
  %i.pk = load ptr, ptr %i.z, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit537
  %i.pl = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.pk, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
          to label %bb.bk unwind label %bb.bo     ; 7 uses

bb.bk:                                            ; preds = %bb.bj
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i538 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i538, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i539, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, ptr noundef nonnull %i.pn) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i539

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i539: ; preds = %bb.bl, %bb.bk
  %i.po = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i540: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i539
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !22
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit542

_ZNSt10filesystem7__cxx114pathD2Ev.exit542:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i539, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.pt = load i32, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %.not458 = icmp eq i32 %i.pl, %i.pt
  br i1 %.not458, label %._crit_edge.i.i543, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit542
  %i.pu = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.pv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pu, ptr noundef nonnull @.str.63, i32 noundef %i.pt, i32 noundef %i.pl) #28 ; 0 uses
  br label %._crit_edge.i.i543

bb.bn:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit537
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

._crit_edge.i.i543:                               ; preds = %bb.bm, %_ZNSt10filesystem7__cxx114pathD2Ev.exit542
  %i.py = load ptr, ptr %i.y, align 8, !tbaa !131 ; 2 uses
  %i.pz = load i32, ptr %i.w, align 4, !tbaa !10
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.qc, ptr %12, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.qc, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 7, ptr %i.qd, align 8, !tbaa !24
  %i.qe = getelementptr inbounds nuw i8, ptr %12, i64 23
  store i8 0, ptr %i.qe, align 1, !tbaa !22
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.py, ptr %i.qb, i32 noundef %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %._crit_edge.i.i543
  %i.qf = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.qc
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %bb.bq
  %i.qh = load i64, ptr %i.qc, align 8, !tbaa !22
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.qj = load ptr, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %i.qk = load i32, ptr %i.l, align 4, !tbaa !10
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.qj, i64 %i.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.qn, ptr %13, align 8, !tbaa !23
  store i64 8316305152262893153, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.qo, align 8, !tbaa !24
  %i.qp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.qp, align 8, !tbaa !22
  invoke fastcc void @_ZN3gmx12_GLOBAL__N_128throwErrorIfIndexOutOfBoundsENS_8ArrayRefIKiEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.qj, ptr %i.qm, i32 noundef %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549
  %i.qq = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.qn
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %bb.br
  %i.qs = load i64, ptr %i.qn, align 8, !tbaa !22
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  %.0422 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %i.qu, %bb.ck ] ; 2 uses
  %i.qu = add nuw nsw i32 %.0422, 1               ; 2 uses
  %i.qv = load i8, ptr @_ZZ9gmx_covariPPcE4bPBC, align 1, !tbaa !127, !range !128, !noundef !129
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.bt, label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  %i.qx = load i32, ptr %i.f, align 4, !tbaa !155
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

bb.by:                                            ; preds = %._crit_edge.i.i543
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qc
end_hunk_1
begin_hunk_2_@_Z9gmx_covariPPc:bb.a

bb.dc:                                            ; preds = %bb.cv, %bb.cu
  %i.xn = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !127, !range !128, !noundef !129
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.xp = load i32, ptr %i.w, align 4, !tbaa !10
  %i.xq = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.xr = load ptr, ptr %i.g, align 8, !tbaa !157
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.xp, ptr noundef %i.xq, i32 noundef %i.wl, ptr noundef null, ptr noundef %i.xr, ptr noundef %.0839)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.xs = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.xt = load ptr, ptr %i.g, align 8, !tbaa !157
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.wl, ptr noundef %.0839, ptr noundef %i.xs, ptr noundef %i.xt)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.xu = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.xv = trunc nuw i8 %i.xu to i1
  %i.xw = load i32, ptr %i.l, align 4, !tbaa !10  ; 8 uses
  %i.xx = sext i32 %i.xw to i64                   ; 11 uses
  %i.xy = icmp sgt i32 %i.xw, 0                   ; 2 uses
  br i1 %i.xv, label %.preheader857, label %.preheader859

.preheader859:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph909, label %._crit_edge917

.lr.ph909:                                        ; preds = %.preheader859
  %i.xz = load ptr, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.ya = load ptr, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.yb = icmp eq i32 %i.xw, 1
  br i1 %i.yb, label %.epil.preheader1625, label %.lr.ph909.new

.lr.ph909.new:                                    ; preds = %.lr.ph909
  %unroll_iter1630 = and i64 %i.xx, 2147483646
  br label %bb.dh

.preheader857:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph911, label %._crit_edge917

.lr.ph911:                                        ; preds = %.preheader857
  %i.yc = load ptr, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.yd = load ptr, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.ye = load ptr, ptr %i.h, align 8, !tbaa !157 ; 3 uses
  %i.yf = icmp eq i32 %i.xw, 1
  br i1 %i.yf, label %.epil.preheader1632, label %.lr.ph911.new

.lr.ph911.new:                                    ; preds = %.lr.ph911
  %unroll_iter1637 = and i64 %i.xx, 2147483646
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph911.new
  %.6404910 = phi i64 [ 0, %.lr.ph911.new ], [ %i.zl, %bb.dg ] ; 4 uses
  %niter1638 = phi i64 [ 0, %.lr.ph911.new ], [ %niter1638.next.1, %bb.dg ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404910
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !10
  %i.yi = sext i32 %i.yh to i64                   ; 2 uses
  %i.yj = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yi ; 2 uses
  %i.yl = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404910 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !146
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !146
  %i.yq = fsub float %i.yn, %i.yp
  %i.yr = load <2 x float>, ptr %i.yj, align 4, !tbaa !146
  %i.ys = load <2 x float>, ptr %i.yk, align 4, !tbaa !146
  %i.yt = fsub <2 x float> %i.yr, %i.ys
  store <2 x float> %i.yt, ptr %i.yl, align 4, !tbaa !146
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store float %i.yq, ptr %i.yu, align 4, !tbaa !146
  %i.yv = or disjoint i64 %.6404910, 1            ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !10
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yy ; 2 uses
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.yv ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !146
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !146
  %i.zg = fsub float %i.zd, %i.zf
  %i.zh = load <2 x float>, ptr %i.yz, align 4, !tbaa !146
  %i.zi = load <2 x float>, ptr %i.za, align 4, !tbaa !146
  %i.zj = fsub <2 x float> %i.zh, %i.zi
  store <2 x float> %i.zj, ptr %i.zb, align 4, !tbaa !146
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store float %i.zg, ptr %i.zk, align 4, !tbaa !146
  %i.zl = add nuw nsw i64 %.6404910, 2            ; 2 uses
  %niter1638.next.1 = add i64 %niter1638, 2       ; 2 uses
  %niter1638.ncmp.1 = icmp eq i64 %niter1638.next.1, %unroll_iter1637
  br i1 %niter1638.ncmp.1, label %.preheader856.preheader.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !49

bb.dh:                                            ; preds = %bb.dh, %.lr.ph909.new
  %.7405908 = phi i64 [ 0, %.lr.ph909.new ], [ %i.aar, %bb.dh ] ; 5 uses
  %niter1631 = phi i64 [ 0, %.lr.ph909.new ], [ %niter1631.next.1, %bb.dh ]
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405908
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !10
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.zo ; 2 uses
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405908 ; 2 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405908 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !146
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !146
  %i.zw = fsub float %i.zt, %i.zv
  %i.zx = load <2 x float>, ptr %i.zp, align 4, !tbaa !146
  %i.zy = load <2 x float>, ptr %i.zq, align 4, !tbaa !146
  %i.zz = fsub <2 x float> %i.zx, %i.zy
  store <2 x float> %i.zz, ptr %i.zr, align 4, !tbaa !146
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store float %i.zw, ptr %i.aaa, align 4, !tbaa !146
  %i.aab = or disjoint i64 %.7405908, 1           ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !10
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %i.aab ; 2 uses
  %i.aah = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aab ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !146
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !146
  %i.aam = fsub float %i.aaj, %i.aal
  %i.aan = load <2 x float>, ptr %i.aaf, align 4, !tbaa !146
  %i.aao = load <2 x float>, ptr %i.aag, align 4, !tbaa !146
  %i.aap = fsub <2 x float> %i.aan, %i.aao
  store <2 x float> %i.aap, ptr %i.aah, align 4, !tbaa !146
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  store float %i.aam, ptr %i.aaq, align 4, !tbaa !146
  %i.aar = add nuw nsw i64 %.7405908, 2           ; 2 uses
  %niter1631.next.1 = add i64 %niter1631, 2       ; 2 uses
  %niter1631.ncmp.1 = icmp eq i64 %niter1631.next.1, %unroll_iter1630
  br i1 %niter1631.ncmp.1, label %.preheader856.preheader.loopexit1588.unr-lcssa, label %bb.dh, !llvm.loop !50

.preheader856.preheader.loopexit.unr-lcssa:       ; preds = %bb.dg
  %i.aas = and i32 %i.xw, 1
  %lcmp.mod1635.not = icmp eq i32 %i.aas, 0
  br i1 %lcmp.mod1635.not, label %.preheader856.preheader, label %.epil.preheader1632

.epil.preheader1632:                              ; preds = %.preheader856.preheader.loopexit.unr-lcssa, %.lr.ph911
  %.6404910.epil.init = phi i64 [ 0, %.lr.ph911 ], [ %i.zl, %.preheader856.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1636 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1636)
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404910.epil.init
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !10
  %i.aav = sext i32 %i.aau to i64                 ; 2 uses
  %i.aaw = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.aav ; 2 uses
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404910.epil.init ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !146
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !146
  %i.abd = fsub float %i.aba, %i.abc
  %i.abe = load <2 x float>, ptr %i.aaw, align 4, !tbaa !146
  %i.abf = load <2 x float>, ptr %i.aax, align 4, !tbaa !146
  %i.abg = fsub <2 x float> %i.abe, %i.abf
  store <2 x float> %i.abg, ptr %i.aay, align 4, !tbaa !146
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store float %i.abd, ptr %i.abh, align 4, !tbaa !146
  br label %.preheader856.preheader

.preheader856.preheader.loopexit1588.unr-lcssa:   ; preds = %bb.dh
  %i.abi = and i32 %i.xw, 1
  %lcmp.mod1628.not = icmp eq i32 %i.abi, 0
  br i1 %lcmp.mod1628.not, label %.preheader856.preheader, label %.epil.preheader1625

.epil.preheader1625:                              ; preds = %.preheader856.preheader.loopexit1588.unr-lcssa, %.lr.ph909
  %.7405908.epil.init = phi i64 [ 0, %.lr.ph909 ], [ %i.aar, %.preheader856.preheader.loopexit1588.unr-lcssa ] ; 3 uses
  %lcmp.mod1629 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1629)
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405908.epil.init
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !10
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405908.epil.init ; 2 uses
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405908.epil.init ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !146
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !146
  %i.abt = fsub float %i.abq, %i.abs
  %i.abu = load <2 x float>, ptr %i.abm, align 4, !tbaa !146
  %i.abv = load <2 x float>, ptr %i.abn, align 4, !tbaa !146
  %i.abw = fsub <2 x float> %i.abu, %i.abv
  store <2 x float> %i.abw, ptr %i.abo, align 4, !tbaa !146
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  store float %i.abt, ptr %i.abx, align 4, !tbaa !146
  br label %.preheader856.preheader

.preheader856.preheader:                          ; preds = %.epil.preheader1625, %.preheader856.preheader.loopexit1588.unr-lcssa, %.epil.preheader1632, %.preheader856.preheader.loopexit.unr-lcssa
  br label %.preheader856

.preheader856:                                    ; preds = %.preheader856.preheader, %._crit_edge914.2
  %.0392916 = phi i64 [ %i.agi, %._crit_edge914.2 ], [ 0, %.preheader856.preheader ] ; 31 uses
  %i.aby = add nuw i64 %.0392916, 1
  %i.abz = mul i64 %i.ww, %.0392916               ; 2 uses
  %scevgep1350 = getelementptr i8, ptr %i.wy, i64 %i.abz
  %scevgep1351 = getelementptr i8, ptr %i.xa, i64 %i.abz
  %i.aca = add nuw i64 %.0392916, 1
  %smax1352 = call i64 @llvm.smax.i64(i64 %i.aca, i64 %i.xx) ; 2 uses
  %i.acb = xor i64 %.0392916, -1
  %i.acc = add i64 %smax1352, %i.acb
  %i.acd = mul i64 %i.acc, 12                     ; 2 uses
  %scevgep1353 = getelementptr i8, ptr %scevgep1351, i64 %i.acd
  %i.ace = mul i64 %.0392916, 12
  %i.acf = getelementptr i8, ptr %i.ow, i64 %i.ace
  %scevgep1354 = getelementptr i8, ptr %i.acf, i64 12
  %scevgep1355 = getelementptr i8, ptr %scevgep1354, i64 %i.acd ; 2 uses
  %i.acg = add nuw i64 %.0392916, 1
  %i.ach = mul i64 %i.ww, %.0392916               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.xb, i64 %i.ach
  %scevgep1330 = getelementptr i8, ptr %i.xd, i64 %i.ach
  %i.aci = add nuw i64 %.0392916, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.aci, i64 %i.xx)
  %i.acj = xor i64 %.0392916, -1
  %i.ack = add i64 %smax, %i.acj
  %i.acl = mul i64 %i.ack, 12                     ; 2 uses
  %scevgep1331 = getelementptr i8, ptr %scevgep1330, i64 %i.acl
  %i.acm = mul i64 %.0392916, 12
  %i.acn = getelementptr i8, ptr %i.ow, i64 %i.acm
  %scevgep1332 = getelementptr i8, ptr %i.acn, i64 12
  %scevgep1333 = getelementptr i8, ptr %scevgep1332, i64 %i.acl
  %i.aco = mul nuw nsw i64 %.0392916, 3           ; 3 uses
  %i.acp = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.0392916 ; 6 uses
  %i.acq = mul nsw i64 %i.aco, %i.pc
  %i.acr = load float, ptr %i.acp, align 4, !tbaa !146 ; 4 uses
  %i.acs = getelementptr [4 x i8], ptr %i.ph, i64 %i.acq ; 2 uses
  %i.act = sub i64 %smax1352, %.0392916           ; 3 uses
  %min.iters.check1389 = icmp ult i64 %i.act, 8
  br i1 %min.iters.check1389, label %.preheader855.preheader, label %vector.memcheck1380

vector.memcheck1380:                              ; preds = %.preheader856
  %i.acu = mul i64 %i.ww, %.0392916               ; 2 uses
  %i.acv = getelementptr i8, ptr %i.ph, i64 %i.acu
  %scevgep1382.a = getelementptr i8, ptr %i.acv, i64 12
  %i.acw = add nuw i64 %.0392916, 1
  %smax1383 = call i64 @llvm.smax.i64(i64 %i.acw, i64 %i.xx)
  %i.acx = xor i64 %.0392916, -1
  %i.acy = add i64 %smax1383, %i.acx
  %i.acz = mul i64 %i.acy, 12
  %scevgep1384 = getelementptr i8, ptr %scevgep1382.a, i64 %i.acz
  %scevgep1381 = getelementptr i8, ptr %i.ph, i64 %i.acu
  %bound01385 = icmp ult ptr %scevgep1381, %scevgep1355
  %bound11386 = icmp ult ptr %i.acp, %scevgep1384
  %found.conflict1387 = and i1 %bound01385, %bound11386
  br i1 %found.conflict1387, label %.preheader855.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %vector.memcheck1380
  %n.vec1391 = and i64 %i.act, -8                 ; 3 uses
  %i.ada = add i64 %.0392916, %n.vec1391
  %broadcast.splatinsert1392 = insertelement <8 x float> poison, float %i.acr, i64 0
  %i.adb = shufflevector <8 x float> %broadcast.splatinsert1392, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %vector.ph1390
  %index1395 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1405, %vector.body1394 ] ; 2 uses
  %i.adc = add nuw i64 %.0392916, %index1395      ; 2 uses
  %i.add = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.adc
  %i.ade = mul nuw nsw i64 %i.adc, 12
  %i.adf = getelementptr i8, ptr %i.acs, i64 %i.ade ; 2 uses
  %wide.vec1396 = load <24 x float>, ptr %i.add, align 4, !tbaa !146, !alias.scope !162
  %wide.vec1400 = load <24 x float>, ptr %i.adf, align 4, !tbaa !146, !alias.scope !163, !noalias !162
  %interleaved.vec1404 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1396, <24 x float> %i.adb, <24 x float> %wide.vec1400)
  store <24 x float> %interleaved.vec1404, ptr %i.adf, align 4, !tbaa !146, !alias.scope !163, !noalias !162
  %index.next1405 = add nuw i64 %index1395, 8     ; 2 uses
  %i.adg = icmp eq i64 %index.next1405, %n.vec1391
  br i1 %i.adg, label %middle.block1406, label %vector.body1394, !llvm.loop !54

middle.block1406:                                 ; preds = %vector.body1394
  %cmp.n1407 = icmp eq i64 %i.act, %n.vec1391
  br i1 %cmp.n1407, label %._crit_edge914, label %.preheader855.preheader

.preheader855.preheader:                          ; preds = %vector.memcheck1380, %.preheader856, %middle.block1406
  %.8406913.ph = phi i64 [ %.0392916, %vector.memcheck1380 ], [ %.0392916, %.preheader856 ], [ %i.ada, %middle.block1406 ]
  br label %.preheader855

.preheader855:                                    ; preds = %.preheader855.preheader, %.preheader855
  %.8406913 = phi i64 [ %i.adw, %.preheader855 ], [ %.8406913.ph, %.preheader855.preheader ] ; 3 uses
  %i.adh = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406913 ; 3 uses
  %.idx502 = mul nuw nsw i64 %.8406913, 12
  %i.adi = getelementptr i8, ptr %i.acs, i64 %.idx502 ; 4 uses
  %i.adj = load float, ptr %i.adh, align 4, !tbaa !146
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !146
  %i.adl = call float @llvm.fmuladd.f32(float %i.adj, float %i.acr, float %i.adk)
  store float %i.adl, ptr %i.adi, align 4, !tbaa !146
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !146
  %i.ado = getelementptr i8, ptr %i.adi, i64 4    ; 2 uses
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !146
  %i.adq = call float @llvm.fmuladd.f32(float %i.adn, float %i.acr, float %i.adp)
  store float %i.adq, ptr %i.ado, align 4, !tbaa !146
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !146
  %i.adt = getelementptr i8, ptr %i.adi, i64 8    ; 2 uses
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !146
  %i.adv = call float @llvm.fmuladd.f32(float %i.ads, float %i.acr, float %i.adu)
  store float %i.adv, ptr %i.adt, align 4, !tbaa !146
  %i.adw = add nuw nsw i64 %.8406913, 1           ; 2 uses
  %i.adx = icmp slt i64 %i.adw, %i.xx
  br i1 %i.adx, label %.preheader855, label %._crit_edge914, !llvm.loop !55

._crit_edge914:                                   ; preds = %.preheader855, %middle.block1406
  %i.ady = add nuw nsw i64 %i.aco, 1
  %i.adz = mul nsw i64 %i.ady, %i.pc
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !146 ; 4 uses
  %i.aec = getelementptr [4 x i8], ptr %i.ph, i64 %i.adz ; 2 uses
  %i.aed = call i64 @llvm.smax.i64(i64 %i.aby, i64 %i.xx)
  %i.aee = sub i64 %i.aed, %.0392916              ; 3 uses
  %min.iters.check1360 = icmp ult i64 %i.aee, 8
  br i1 %min.iters.check1360, label %.preheader855.1.preheader, label %vector.memcheck1349

vector.memcheck1349:                              ; preds = %._crit_edge914
  %bound01356 = icmp ult ptr %scevgep1350, %scevgep1355
  %bound11357 = icmp ult ptr %i.acp, %scevgep1353
  %found.conflict1358 = and i1 %bound01356, %bound11357
  br i1 %found.conflict1358, label %.preheader855.1.preheader, label %vector.ph1361

vector.ph1361:                                    ; preds = %vector.memcheck1349
  %n.vec1362 = and i64 %i.aee, -8                 ; 3 uses
  %i.aef = add i64 %.0392916, %n.vec1362
  %broadcast.splatinsert1363 = insertelement <8 x float> poison, float %i.aeb, i64 0
  %i.aeg = shufflevector <8 x float> %broadcast.splatinsert1363, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1361
  %index1366 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1376, %vector.body1365 ] ; 2 uses
  %i.aeh = add nuw i64 %.0392916, %index1366      ; 2 uses
  %i.aei = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aeh
  %i.aej = mul nuw nsw i64 %i.aeh, 12
  %i.aek = getelementptr i8, ptr %i.aec, i64 %i.aej ; 2 uses
  %wide.vec1367 = load <24 x float>, ptr %i.aei, align 4, !tbaa !146, !alias.scope !164
  %wide.vec1371 = load <24 x float>, ptr %i.aek, align 4, !tbaa !146, !alias.scope !165, !noalias !164
  %interleaved.vec1375 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1367, <24 x float> %i.aeg, <24 x float> %wide.vec1371)
  store <24 x float> %interleaved.vec1375, ptr %i.aek, align 4, !tbaa !146, !alias.scope !165, !noalias !164
  %index.next1376 = add nuw i64 %index1366, 8     ; 2 uses
  %i.ael = icmp eq i64 %index.next1376, %n.vec1362
  br i1 %i.ael, label %middle.block1377, label %vector.body1365, !llvm.loop !59

middle.block1377:                                 ; preds = %vector.body1365
  %cmp.n1378 = icmp eq i64 %i.aee, %n.vec1362
  br i1 %cmp.n1378, label %._crit_edge914.1, label %.preheader855.1.preheader

.preheader855.1.preheader:                        ; preds = %vector.memcheck1349, %._crit_edge914, %middle.block1377
  %.8406913.1.ph = phi i64 [ %.0392916, %vector.memcheck1349 ], [ %.0392916, %._crit_edge914 ], [ %i.aef, %middle.block1377 ]
  br label %.preheader855.1

.preheader855.1:                                  ; preds = %.preheader855.1.preheader, %.preheader855.1
  %.8406913.1 = phi i64 [ %i.afb, %.preheader855.1 ], [ %.8406913.1.ph, %.preheader855.1.preheader ] ; 3 uses
  %i.aem = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406913.1 ; 3 uses
  %.idx502.1 = mul nuw nsw i64 %.8406913.1, 12
  %i.aen = getelementptr i8, ptr %i.aec, i64 %.idx502.1 ; 4 uses
  %i.aeo = load float, ptr %i.aem, align 4, !tbaa !146
  %i.aep = load float, ptr %i.aen, align 4, !tbaa !146
  %i.aeq = call float @llvm.fmuladd.f32(float %i.aeo, float %i.aeb, float %i.aep)
  store float %i.aeq, ptr %i.aen, align 4, !tbaa !146
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 4
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !146
  %i.aet = getelementptr i8, ptr %i.aen, i64 4    ; 2 uses
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !146
  %i.aev = call float @llvm.fmuladd.f32(float %i.aes, float %i.aeb, float %i.aeu)
  store float %i.aev, ptr %i.aet, align 4, !tbaa !146
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !146
  %i.aey = getelementptr i8, ptr %i.aen, i64 8    ; 2 uses
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !146
  %i.afa = call float @llvm.fmuladd.f32(float %i.aex, float %i.aeb, float %i.aez)
  store float %i.afa, ptr %i.aey, align 4, !tbaa !146
  %i.afb = add nuw nsw i64 %.8406913.1, 1         ; 2 uses
  %i.afc = icmp slt i64 %i.afb, %i.xx
  br i1 %i.afc, label %.preheader855.1, label %._crit_edge914.1, !llvm.loop !60

._crit_edge914.1:                                 ; preds = %.preheader855.1, %middle.block1377
  %i.afd = add nuw nsw i64 %i.aco, 2
  %i.afe = mul nsw i64 %i.afd, %i.pc
  %i.aff = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !146 ; 4 uses
  %i.afh = getelementptr [4 x i8], ptr %i.ph, i64 %i.afe ; 2 uses
  %i.afi = call i64 @llvm.smax.i64(i64 %i.acg, i64 %i.xx)
  %i.afj = sub i64 %i.afi, %.0392916              ; 3 uses
  %min.iters.check1334 = icmp ult i64 %i.afj, 8
  br i1 %min.iters.check1334, label %.preheader855.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge914.1
  %bound0 = icmp ult ptr %scevgep, %scevgep1333
  %bound1 = icmp ult ptr %i.acp, %scevgep1331
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader855.2.preheader, label %vector.ph1335

vector.ph1335:                                    ; preds = %vector.memcheck
  %n.vec1336 = and i64 %i.afj, -8                 ; 3 uses
  %i.afk = add i64 %.0392916, %n.vec1336
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.afg, i64 0
  %i.afl = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1335
  %index1338 = phi i64 [ 0, %vector.ph1335 ], [ %index.next1345, %vector.body1337 ] ; 2 uses
  %i.afm = add nuw i64 %.0392916, %index1338      ; 2 uses
  %i.afn = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.afm
  %i.afo = mul nuw nsw i64 %i.afm, 12
  %i.afp = getelementptr i8, ptr %i.afh, i64 %i.afo ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.afn, align 4, !tbaa !146, !alias.scope !166
  %wide.vec1341 = load <24 x float>, ptr %i.afp, align 4, !tbaa !146, !alias.scope !167, !noalias !166
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec, <24 x float> %i.afl, <24 x float> %wide.vec1341)
  store <24 x float> %interleaved.vec, ptr %i.afp, align 4, !tbaa !146, !alias.scope !167, !noalias !166
  %index.next1345 = add nuw i64 %index1338, 8     ; 2 uses
  %i.afq = icmp eq i64 %index.next1345, %n.vec1336
  br i1 %i.afq, label %middle.block1346, label %vector.body1337, !llvm.loop !64

middle.block1346:                                 ; preds = %vector.body1337
  %cmp.n1347 = icmp eq i64 %i.afj, %n.vec1336
  br i1 %cmp.n1347, label %._crit_edge914.2, label %.preheader855.2.preheader

.preheader855.2.preheader:                        ; preds = %vector.memcheck, %._crit_edge914.1, %middle.block1346
  %.8406913.2.ph = phi i64 [ %.0392916, %vector.memcheck ], [ %.0392916, %._crit_edge914.1 ], [ %i.afk, %middle.block1346 ]
  br label %.preheader855.2

.preheader855.2:                                  ; preds = %.preheader855.2.preheader, %.preheader855.2
  %.8406913.2 = phi i64 [ %i.agg, %.preheader855.2 ], [ %.8406913.2.ph, %.preheader855.2.preheader ] ; 3 uses
  %i.afr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406913.2 ; 3 uses
  %.idx502.2 = mul nuw nsw i64 %.8406913.2, 12
  %i.afs = getelementptr i8, ptr %i.afh, i64 %.idx502.2 ; 4 uses
  %i.aft = load float, ptr %i.afr, align 4, !tbaa !146
  %i.afu = load float, ptr %i.afs, align 4, !tbaa !146
  %i.afv = call float @llvm.fmuladd.f32(float %i.aft, float %i.afg, float %i.afu)
  store float %i.afv, ptr %i.afs, align 4, !tbaa !146
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !146
  %i.afy = getelementptr i8, ptr %i.afs, i64 4    ; 2 uses
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !146
  %i.aga = call float @llvm.fmuladd.f32(float %i.afx, float %i.afg, float %i.afz)
  store float %i.aga, ptr %i.afy, align 4, !tbaa !146
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !146
  %i.agd = getelementptr i8, ptr %i.afs, i64 8    ; 2 uses
  %i.age = load float, ptr %i.agd, align 4, !tbaa !146
  %i.agf = call float @llvm.fmuladd.f32(float %i.agc, float %i.afg, float %i.age)
  store float %i.agf, ptr %i.agd, align 4, !tbaa !146
  %i.agg = add nuw nsw i64 %.8406913.2, 1         ; 2 uses
  %i.agh = icmp slt i64 %i.agg, %i.xx
  br i1 %i.agh, label %.preheader855.2, label %._crit_edge914.2, !llvm.loop !65

._crit_edge914.2:                                 ; preds = %.preheader855.2, %middle.block1346
  %i.agi = add nuw nsw i64 %.0392916, 1           ; 2 uses
  %exitcond1015.not = icmp eq i64 %i.agi, %i.xx
  br i1 %exitcond1015.not, label %._crit_edge917, label %.preheader856, !llvm.loop !66

._crit_edge917:                                   ; preds = %._crit_edge914.2, %.preheader857, %.preheader859
  %i.agj = load ptr, ptr %i.z, align 8, !tbaa !159
  %i.agk = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.agl = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.agm = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.agj, ptr noundef %i.agk, ptr noundef nonnull %i.k, ptr noundef %i.agl, ptr noundef nonnull %i.i)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.di:                                            ; preds = %._crit_edge917
  br i1 %i.agm, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.agn = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.ago = trunc nuw i8 %i.agn to i1
  %i.agp = icmp samesign ult i32 %.0421, %.0422
  %i.agq = select i1 %i.ago, i1 true, i1 %i.agp
  br i1 %i.agq, label %bb.cu, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %bb.di, %bb.dj
  %i.agr = load ptr, ptr %i.e, align 8, !tbaa !161
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.agr)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.ags = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.agt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ags, ptr noundef nonnull @.str.67, i32 noundef %i.xe) #28 ; 0 uses
  %i.agu = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.agv = trunc nuw i8 %i.agu to i1
  %.pre1054 = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  br i1 %i.agv, label %bb.dm, label %.loopexit854

bb.dm:                                            ; preds = %bb.dl
  %i.agw = sext i32 %.pre1054 to i64
  %i.agx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.agw, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.preheader: ; preds = %bb.dm
  %i.agy = load i32, ptr %i.l, align 4, !tbaa !10 ; 5 uses
  %i.agz = sext i32 %i.agy to i64                 ; 4 uses
  %i.aha = icmp sgt i32 %i.agy, 0
  br i1 %i.aha, label %.lr.ph919, label %.preheader851

.lr.ph919:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.preheader
  %i.ahb = load ptr, ptr %i.h, align 8, !tbaa !157 ; 5 uses
  %i.ahc = load ptr, ptr %i.x, align 8, !tbaa !131 ; 5 uses
  %xtraiter1639 = and i64 %i.agz, 3
  %i.ahd = icmp ult i32 %i.agy, 4
  br i1 %i.ahd, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader, label %.lr.ph919.new

.lr.ph919.new:                                    ; preds = %.lr.ph919
  %unroll_iter1643 = and i64 %i.agz, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575, %.lr.ph919.new
  %.9407918 = phi i64 [ 0, %.lr.ph919.new ], [ %i.ajd, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575 ] ; 6 uses
  %niter1644 = phi i64 [ 0, %.lr.ph919.new ], [ %niter1644.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575 ]
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.9407918
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !10
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [12 x i8], ptr %i.ahb, i64 %i.ahg ; 3 uses
  %i.ahi = getelementptr inbounds nuw [12 x i8], ptr %i.agx, i64 %.9407918 ; 3 uses
  %i.ahj = load float, ptr %i.ahh, align 4, !tbaa !146
  store float %i.ahj, ptr %i.ahi, align 4, !tbaa !146
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !146
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !146
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !146
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  store float %i.aho, ptr %i.ahp, align 4, !tbaa !146
  %i.ahq = or disjoint i64 %.9407918, 1           ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.ahq
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !10
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds [12 x i8], ptr %i.ahb, i64 %i.aht ; 3 uses
  %i.ahv = getelementptr inbounds nuw [12 x i8], ptr %i.agx, i64 %i.ahq ; 3 uses
  %i.ahw = load float, ptr %i.ahu, align 4, !tbaa !146
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !146
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !146
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  store float %i.ahy, ptr %i.ahz, align 4, !tbaa !146
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !146
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  store float %i.aib, ptr %i.aic, align 4, !tbaa !146
  %i.aid = or disjoint i64 %.9407918, 2           ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.aid
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !10
  %i.aig = sext i32 %i.aif to i64
  %i.aih = getelementptr inbounds [12 x i8], ptr %i.ahb, i64 %i.aig ; 3 uses
  %i.aii = getelementptr inbounds nuw [12 x i8], ptr %i.agx, i64 %i.aid ; 3 uses
  %i.aij = load float, ptr %i.aih, align 4, !tbaa !146
  store float %i.aij, ptr %i.aii, align 4, !tbaa !146
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 4
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !146
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  store float %i.ail, ptr %i.aim, align 4, !tbaa !146
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !146
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  store float %i.aio, ptr %i.aip, align 4, !tbaa !146
  %i.aiq = or disjoint i64 %.9407918, 3           ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !10
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [12 x i8], ptr %i.ahb, i64 %i.ait ; 3 uses
  %i.aiv = getelementptr inbounds nuw [12 x i8], ptr %i.agx, i64 %i.aiq ; 3 uses
  %i.aiw = load float, ptr %i.aiu, align 4, !tbaa !146
  store float %i.aiw, ptr %i.aiv, align 4, !tbaa !146
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiu, i64 4
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !146
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4
  store float %i.aiy, ptr %i.aiz, align 4, !tbaa !146
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !146
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  store float %i.ajb, ptr %i.ajc, align 4, !tbaa !146
  %i.ajd = add nuw nsw i64 %.9407918, 4           ; 2 uses
  %niter1644.next.3 = add i64 %niter1644, 4       ; 2 uses
  %niter1644.ncmp.3 = icmp eq i64 %niter1644.next.3, %unroll_iter1643
  br i1 %niter1644.ncmp.3, label %.preheader853.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575, !llvm.loop !68

.loopexit854:                                     ; preds = %bb.dl
  %.pre1056 = zext nneg i32 %.pre1054 to i64
  %i.aje = icmp sgt i32 %.pre1054, 0
  br i1 %i.aje, label %.preheader853.preheader, label %.preheader851

.preheader853.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575
  %i.ajf = and i32 %i.agy, 3
  %lcmp.mod1641.not = icmp eq i32 %i.ajf, 0
  br i1 %lcmp.mod1641.not, label %.preheader853.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader: ; preds = %.preheader853.preheader.loopexit.unr-lcssa, %.lr.ph919
  %.9407918.epil.init = phi i64 [ 0, %.lr.ph919 ], [ %i.ajd, %.preheader853.preheader.loopexit.unr-lcssa ]
  %i.ajg = and i32 %i.agy, 3
  %lcmp.mod1642 = icmp ne i32 %i.ajg, 0
  call void @llvm.assume(i1 %lcmp.mod1642)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader
  %.9407918.epil = phi i64 [ %.9407918.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader ], [ %i.ajt, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil ] ; 3 uses
  %epil.iter1640 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil.preheader ], [ %epil.iter1640.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil ]
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.9407918.epil
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !10
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds [12 x i8], ptr %i.ahb, i64 %i.ajj ; 3 uses
  %i.ajl = getelementptr inbounds nuw [12 x i8], ptr %i.agx, i64 %.9407918.epil ; 3 uses
  %i.ajm = load float, ptr %i.ajk, align 4, !tbaa !146
  store float %i.ajm, ptr %i.ajl, align 4, !tbaa !146
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !146
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !146
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !146
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store float %i.ajr, ptr %i.ajs, align 4, !tbaa !146
  %i.ajt = add nuw nsw i64 %.9407918.epil, 1
  %epil.iter1640.next = add i64 %epil.iter1640, 1 ; 2 uses
  %epil.iter1640.cmp.not = icmp eq i64 %epil.iter1640.next, %xtraiter1639
  br i1 %epil.iter1640.cmp.not, label %.preheader853.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil, !llvm.loop !69

.preheader853.preheader:                          ; preds = %.preheader853.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil, %.loopexit854
  %.01254 = phi ptr [ %i.oz, %.loopexit854 ], [ %i.agx, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil ], [ %i.agx, %.preheader853.preheader.loopexit.unr-lcssa ]
  %.pre-phi10571252 = phi i64 [ %.pre1056, %.loopexit854 ], [ %i.agz, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.epil ], [ %i.agz, %.preheader853.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1274 = uitofp nneg i32 %i.xe to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1274
  %i.aju = fptrunc double %.in to float           ; 12 uses
  %i.ajv = shl nsw i64 %.pre-phi10571252, 2
  %scevgep1414 = getelementptr i8, ptr %i.ih, i64 %i.ajv ; 3 uses
  %i.ajw = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajx = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 12
  %i.ajz = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.aka = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.akb = getelementptr i8, ptr %i.aka, i64 12
  %broadcast.splatinsert1501 = insertelement <8 x float> poison, float %i.aju, i64 0
  %broadcast.splat1502 = shufflevector <8 x float> %broadcast.splatinsert1501, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1465 = insertelement <8 x float> poison, float %i.aju, i64 0
  %broadcast.splat1466 = shufflevector <8 x float> %broadcast.splatinsert1465, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1427 = insertelement <8 x float> poison, float %i.aju, i64 0
  %broadcast.splat1428 = shufflevector <8 x float> %broadcast.splatinsert1427, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader853

.preheader853:                                    ; preds = %.preheader853.preheader, %._crit_edge923.2
  %.1393926 = phi i64 [ %i.aqm, %._crit_edge923.2 ], [ 0, %.preheader853.preheader ] ; 31 uses
  %i.akc = add nuw i64 %.1393926, 1
  %i.akd = mul i64 %i.ww, %.1393926               ; 2 uses
  %scevgep1448 = getelementptr i8, ptr %i.ajw, i64 %i.akd ; 2 uses
  %scevgep1449 = getelementptr i8, ptr %i.ajy, i64 %i.akd
  %i.ake = add nuw i64 %.1393926, 1
  %smax1450 = call i64 @llvm.smax.i64(i64 %.pre-phi10571252, i64 %i.ake) ; 2 uses
  %i.akf = xor i64 %.1393926, -1
  %i.akg = add i64 %smax1450, %i.akf              ; 2 uses
  %i.akh = mul i64 %i.akg, 12
  %scevgep1451 = getelementptr i8, ptr %scevgep1449, i64 %i.akh ; 2 uses
  %i.aki = shl i64 %.1393926, 2
  %i.akj = getelementptr i8, ptr %i.ih, i64 %i.aki
  %scevgep1452 = getelementptr i8, ptr %i.akj, i64 4
  %i.akk = shl i64 %i.akg, 2
  %scevgep1453 = getelementptr i8, ptr %scevgep1452, i64 %i.akk ; 2 uses
  %i.akl = add nuw i64 %.1393926, 1
  %i.akm = mul i64 %i.ww, %.1393926               ; 2 uses
  %scevgep1410 = getelementptr i8, ptr %i.ajz, i64 %i.akm ; 2 uses
  %scevgep1411 = getelementptr i8, ptr %i.akb, i64 %i.akm
  %i.akn = add nuw i64 %.1393926, 1
  %smax1412 = call i64 @llvm.smax.i64(i64 %.pre-phi10571252, i64 %i.akn)
  %i.ako = xor i64 %.1393926, -1
  %i.akp = add i64 %smax1412, %i.ako              ; 2 uses
  %i.akq = mul i64 %i.akp, 12
  %scevgep1413 = getelementptr i8, ptr %scevgep1411, i64 %i.akq ; 2 uses
  %i.akr = shl i64 %.1393926, 2
  %i.aks = getelementptr i8, ptr %i.ih, i64 %i.akr
  %scevgep1415 = getelementptr i8, ptr %i.aks, i64 4
  %i.akt = shl i64 %i.akp, 2
  %scevgep1416 = getelementptr i8, ptr %scevgep1415, i64 %i.akt
  %i.aku = mul nuw nsw i64 %.1393926, 3           ; 3 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393926 ; 15 uses
  %i.akw = mul nsw i64 %i.aku, %i.pc
  %i.akx = getelementptr [4 x i8], ptr %i.ph, i64 %i.akw ; 2 uses
  %i.aky = sub i64 %smax1450, %.1393926           ; 3 uses
  %min.iters.check1498 = icmp ult i64 %i.aky, 8
  br i1 %min.iters.check1498, label %scalar.ph1497.preheader, label %vector.memcheck1485

vector.memcheck1485:                              ; preds = %.preheader853
  %42 = mul i64 %i.ww, %.1393926                  ; 2 uses
  %i.akz = getelementptr i8, ptr %i.ph, i64 %42
  %scevgep1487 = getelementptr i8, ptr %i.akz, i64 12
  %i.ala = add nuw i64 %.1393926, 1
  %smax1488 = call i64 @llvm.smax.i64(i64 %.pre-phi10571252, i64 %i.ala)
  %i.alb = xor i64 %.1393926, -1
  %i.alc = add i64 %smax1488, %i.alb
  %i.ald = mul i64 %i.alc, 12
  %scevgep1489.a = getelementptr i8, ptr %scevgep1487, i64 %i.ald ; 2 uses
  %scevgep1486 = getelementptr i8, ptr %i.ph, i64 %42 ; 2 uses
  %bound01490 = icmp ult ptr %scevgep1486, %scevgep1414
  %bound11491 = icmp ult ptr %i.ih, %scevgep1489.a
  %found.conflict1492 = and i1 %bound01490, %bound11491
  %bound01493 = icmp ult ptr %scevgep1486, %scevgep1453
  %bound11494 = icmp ult ptr %i.akv, %scevgep1489.a
  %found.conflict1495 = and i1 %bound01493, %bound11494
  %conflict.rdx1496 = or i1 %found.conflict1492, %found.conflict1495
  br i1 %conflict.rdx1496, label %scalar.ph1497.preheader, label %vector.ph1499

vector.ph1499:                                    ; preds = %vector.memcheck1485
  %n.vec1500 = and i64 %i.aky, -8                 ; 3 uses
  %i.ale = add i64 %.1393926, %n.vec1500
  %i.alf = load float, ptr %i.akv, align 4, !tbaa !146, !alias.scope !168 ; 3 uses
  %broadcast.splatinsert1510 = insertelement <8 x float> poison, float %i.alf, i64 0
  %broadcast.splatinsert1512 = insertelement <8 x float> poison, float %i.alf, i64 0
  %broadcast.splatinsert1514 = insertelement <8 x float> poison, float %i.alf, i64 0
  %broadcast.splat1515 = shufflevector <8 x float> %broadcast.splatinsert1514, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alg = shufflevector <8 x float> %broadcast.splatinsert1510, <8 x float> %broadcast.splatinsert1512, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1499
  %index1504 = phi i64 [ 0, %vector.ph1499 ], [ %index.next1517, %vector.body1503 ] ; 2 uses
  %i.alh = add nuw i64 %.1393926, %index1504      ; 2 uses
  %i.ali = mul nuw nsw i64 %i.alh, 12
  %i.alj = getelementptr i8, ptr %i.akx, i64 %i.ali ; 2 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alh
  %wide.vec1505 = load <24 x float>, ptr %i.alj, align 4, !tbaa !146, !alias.scope !169, !noalias !170 ; 3 uses
  %strided.vec1506 = shufflevector <24 x float> %wide.vec1505, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1507 = shufflevector <24 x float> %wide.vec1505, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1508 = shufflevector <24 x float> %wide.vec1505, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.all = fmul <8 x float> %strided.vec1506, %broadcast.splat1502
  %wide.load1509 = load <8 x float>, ptr %i.alk, align 4, !tbaa !146, !alias.scope !171 ; 3 uses
  %i.alm = fmul <8 x float> %i.all, %wide.load1509
  %i.aln = fmul <8 x float> %strided.vec1507, %broadcast.splat1502
  %i.alo = fmul <8 x float> %i.aln, %wide.load1509
  %i.alp = fmul <8 x float> %strided.vec1508, %broadcast.splat1502
  %i.alq = fmul <8 x float> %i.alp, %wide.load1509
  %i.alr = fmul <8 x float> %i.alq, %broadcast.splat1515
  %i.als = shufflevector <8 x float> %i.alm, <8 x float> %i.alo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alt = fmul <16 x float> %i.als, %i.alg
  %i.alu = shufflevector <8 x float> %i.alr, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1516 = shufflevector <16 x float> %i.alt, <16 x float> %i.alu, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1516, ptr %i.alj, align 4, !tbaa !146, !alias.scope !169, !noalias !170
  %index.next1517 = add nuw i64 %index1504, 8     ; 2 uses
  %i.alv = icmp eq i64 %index.next1517, %n.vec1500
  br i1 %i.alv, label %middle.block1518, label %vector.body1503, !llvm.loop !74

middle.block1518:                                 ; preds = %vector.body1503
  %cmp.n1519 = icmp eq i64 %i.aky, %n.vec1500
  br i1 %cmp.n1519, label %._crit_edge923, label %scalar.ph1497.preheader

scalar.ph1497.preheader:                          ; preds = %vector.memcheck1485, %.preheader853, %middle.block1518
  %.10408921.ph = phi i64 [ %.1393926, %vector.memcheck1485 ], [ %.1393926, %.preheader853 ], [ %i.ale, %middle.block1518 ]
  br label %scalar.ph1497

.preheader851:                                    ; preds = %._crit_edge923.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.preheader, %.loopexit854
  %.01253 = phi ptr [ %i.agx, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit575.preheader ], [ %i.oz, %.loopexit854 ], [ %.01254, %._crit_edge923.2 ]
  %i.alw = icmp sgt i32 %i.pa, 0                  ; 8 uses
  br i1 %i.alw, label %.preheader850.preheader, label %._crit_edge932

.preheader850.preheader:                          ; preds = %.preheader851
  %xtraiter1645 = and i64 %i.pc, 3
  %i.alx = icmp ult i32 %i.pb, 4
  br i1 %i.alx, label %.preheader850.epil.preheader, label %.preheader850.preheader.new

.preheader850.preheader.new:                      ; preds = %.preheader850.preheader
  %unroll_iter1649 = and i64 %i.pc, 2147483644
  br label %.preheader850

scalar.ph1497:                                    ; preds = %scalar.ph1497.preheader, %scalar.ph1497
  %.10408921 = phi i64 [ %i.amu, %scalar.ph1497 ], [ %.10408921.ph, %scalar.ph1497.preheader ] ; 3 uses
  %.idx501 = mul nuw nsw i64 %.10408921, 12
  %i.aly = getelementptr i8, ptr %i.akx, i64 %.idx501 ; 4 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408921 ; 3 uses
  %i.ama = load float, ptr %i.aly, align 4, !tbaa !146
  %i.amb = fmul float %i.ama, %i.aju
  %i.amc = load float, ptr %i.alz, align 4, !tbaa !146
  %i.amd = fmul float %i.amb, %i.amc
  %i.ame = load float, ptr %i.akv, align 4, !tbaa !146
  %i.amf = fmul float %i.amd, %i.ame
  store float %i.amf, ptr %i.aly, align 4, !tbaa !146
  %i.amg = getelementptr i8, ptr %i.aly, i64 4    ; 2 uses
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !146
  %i.ami = fmul float %i.amh, %i.aju
  %i.amj = load float, ptr %i.alz, align 4, !tbaa !146
  %i.amk = fmul float %i.ami, %i.amj
  %i.aml = load float, ptr %i.akv, align 4, !tbaa !146
  %i.amm = fmul float %i.amk, %i.aml
  store float %i.amm, ptr %i.amg, align 4, !tbaa !146
  %i.amn = getelementptr i8, ptr %i.aly, i64 8    ; 2 uses
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !146
  %i.amp = fmul float %i.amo, %i.aju
  %i.amq = load float, ptr %i.alz, align 4, !tbaa !146
  %i.amr = fmul float %i.amp, %i.amq
  %i.ams = load float, ptr %i.akv, align 4, !tbaa !146
  %i.amt = fmul float %i.amr, %i.ams
  store float %i.amt, ptr %i.amn, align 4, !tbaa !146
  %i.amu = add nuw nsw i64 %.10408921, 1          ; 2 uses
  %i.amv = icmp slt i64 %i.amu, %.pre-phi10571252
  br i1 %i.amv, label %scalar.ph1497, label %._crit_edge923, !llvm.loop !75

._crit_edge923:                                   ; preds = %scalar.ph1497, %middle.block1518
  %i.amw = add nuw nsw i64 %i.aku, 1
  %i.amx = mul nsw i64 %i.amw, %i.pc
  %i.amy = getelementptr [4 x i8], ptr %i.ph, i64 %i.amx ; 2 uses
  %i.amz = call i64 @llvm.smax.i64(i64 %.pre-phi10571252, i64 %i.akc)
  %i.ana = sub i64 %i.amz, %.1393926              ; 3 uses
  %min.iters.check1462 = icmp ult i64 %i.ana, 8
  br i1 %min.iters.check1462, label %scalar.ph1461.preheader, label %vector.memcheck1447

vector.memcheck1447:                              ; preds = %._crit_edge923
  %bound01454 = icmp ult ptr %scevgep1448, %scevgep1414
  %bound11455 = icmp ult ptr %i.ih, %scevgep1451
  %found.conflict1456 = and i1 %bound01454, %bound11455
  %bound01457 = icmp ult ptr %scevgep1448, %scevgep1453
  %bound11458 = icmp ult ptr %i.akv, %scevgep1451
  %found.conflict1459 = and i1 %bound01457, %bound11458
  %conflict.rdx1460 = or i1 %found.conflict1456, %found.conflict1459
  br i1 %conflict.rdx1460, label %scalar.ph1461.preheader, label %vector.ph1463

vector.ph1463:                                    ; preds = %vector.memcheck1447
  %n.vec1464 = and i64 %i.ana, -8                 ; 3 uses
  %i.anb = add i64 %.1393926, %n.vec1464
  %i.anc = load float, ptr %i.akv, align 4, !tbaa !146, !alias.scope !172 ; 3 uses
  %broadcast.splatinsert1474 = insertelement <8 x float> poison, float %i.anc, i64 0
  %broadcast.splatinsert1476 = insertelement <8 x float> poison, float %i.anc, i64 0
  %broadcast.splatinsert1478 = insertelement <8 x float> poison, float %i.anc, i64 0
  %broadcast.splat1479 = shufflevector <8 x float> %broadcast.splatinsert1478, <8 x float> poison, <8 x i32> zeroinitializer
  %i.and = shufflevector <8 x float> %broadcast.splatinsert1474, <8 x float> %broadcast.splatinsert1476, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %vector.ph1463
  %index1468 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1481, %vector.body1467 ] ; 2 uses
  %i.ane = add nuw i64 %.1393926, %index1468      ; 2 uses
  %i.anf = mul nuw nsw i64 %i.ane, 12
  %i.ang = getelementptr i8, ptr %i.amy, i64 %i.anf ; 2 uses
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ane
  %wide.vec1469 = load <24 x float>, ptr %i.ang, align 4, !tbaa !146, !alias.scope !173, !noalias !174 ; 3 uses
  %strided.vec1470 = shufflevector <24 x float> %wide.vec1469, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1471 = shufflevector <24 x float> %wide.vec1469, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1472 = shufflevector <24 x float> %wide.vec1469, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ani = fmul <8 x float> %strided.vec1470, %broadcast.splat1466
  %wide.load1473 = load <8 x float>, ptr %i.anh, align 4, !tbaa !146, !alias.scope !175 ; 3 uses
  %i.anj = fmul <8 x float> %i.ani, %wide.load1473
  %i.ank = fmul <8 x float> %strided.vec1471, %broadcast.splat1466
  %i.anl = fmul <8 x float> %i.ank, %wide.load1473
  %i.anm = fmul <8 x float> %strided.vec1472, %broadcast.splat1466
  %i.ann = fmul <8 x float> %i.anm, %wide.load1473
  %i.ano = fmul <8 x float> %i.ann, %broadcast.splat1479
  %i.anp = shufflevector <8 x float> %i.anj, <8 x float> %i.anl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anq = fmul <16 x float> %i.anp, %i.and
  %i.anr = shufflevector <8 x float> %i.ano, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1480 = shufflevector <16 x float> %i.anq, <16 x float> %i.anr, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1480, ptr %i.ang, align 4, !tbaa !146, !alias.scope !173, !noalias !174
  %index.next1481 = add nuw i64 %index1468, 8     ; 2 uses
  %i.ans = icmp eq i64 %index.next1481, %n.vec1464
  br i1 %i.ans, label %middle.block1482, label %vector.body1467, !llvm.loop !80

middle.block1482:                                 ; preds = %vector.body1467
  %cmp.n1483 = icmp eq i64 %i.ana, %n.vec1464
  br i1 %cmp.n1483, label %._crit_edge923.1, label %scalar.ph1461.preheader

scalar.ph1461.preheader:                          ; preds = %vector.memcheck1447, %._crit_edge923, %middle.block1482
  %.10408921.1.ph = phi i64 [ %.1393926, %vector.memcheck1447 ], [ %.1393926, %._crit_edge923 ], [ %i.anb, %middle.block1482 ]
  br label %scalar.ph1461

scalar.ph1461:                                    ; preds = %scalar.ph1461.preheader, %scalar.ph1461
  %.10408921.1 = phi i64 [ %i.aop, %scalar.ph1461 ], [ %.10408921.1.ph, %scalar.ph1461.preheader ] ; 3 uses
  %.idx501.1 = mul nuw nsw i64 %.10408921.1, 12
  %i.ant = getelementptr i8, ptr %i.amy, i64 %.idx501.1 ; 4 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408921.1 ; 3 uses
  %i.anv = load float, ptr %i.ant, align 4, !tbaa !146
  %i.anw = fmul float %i.anv, %i.aju
  %i.anx = load float, ptr %i.anu, align 4, !tbaa !146
  %i.any = fmul float %i.anw, %i.anx
  %i.anz = load float, ptr %i.akv, align 4, !tbaa !146
  %i.aoa = fmul float %i.any, %i.anz
  store float %i.aoa, ptr %i.ant, align 4, !tbaa !146
  %i.aob = getelementptr i8, ptr %i.ant, i64 4    ; 2 uses
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !146
  %i.aod = fmul float %i.aoc, %i.aju
  %i.aoe = load float, ptr %i.anu, align 4, !tbaa !146
  %i.aof = fmul float %i.aod, %i.aoe
  %i.aog = load float, ptr %i.akv, align 4, !tbaa !146
  %i.aoh = fmul float %i.aof, %i.aog
  store float %i.aoh, ptr %i.aob, align 4, !tbaa !146
  %i.aoi = getelementptr i8, ptr %i.ant, i64 8    ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !146
  %i.aok = fmul float %i.aoj, %i.aju
  %i.aol = load float, ptr %i.anu, align 4, !tbaa !146
  %i.aom = fmul float %i.aok, %i.aol
  %i.aon = load float, ptr %i.akv, align 4, !tbaa !146
  %i.aoo = fmul float %i.aom, %i.aon
  store float %i.aoo, ptr %i.aoi, align 4, !tbaa !146
  %i.aop = add nuw nsw i64 %.10408921.1, 1        ; 2 uses
  %i.aoq = icmp slt i64 %i.aop, %.pre-phi10571252
  br i1 %i.aoq, label %scalar.ph1461, label %._crit_edge923.1, !llvm.loop !81

._crit_edge923.1:                                 ; preds = %scalar.ph1461, %middle.block1482
  %i.aor = add nuw nsw i64 %i.aku, 2
  %i.aos = mul nsw i64 %i.aor, %i.pc
  %i.aot = getelementptr [4 x i8], ptr %i.ph, i64 %i.aos ; 2 uses
  %i.aou = call i64 @llvm.smax.i64(i64 %.pre-phi10571252, i64 %i.akl)
  %i.aov = sub i64 %i.aou, %.1393926              ; 3 uses
end_hunk_2
