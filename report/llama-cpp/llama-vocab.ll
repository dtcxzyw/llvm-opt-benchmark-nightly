Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-vocab?download=true
inline.NumInlined: 5573
inline.NumDeleted: 1989
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK20llm_tokenizer_plamo26encodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.er = add nuw i64 %.071180, 1                 ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.br
  %or.cond237 = and i1 %i.eq, %i.es
  br i1 %or.cond237, label %bb.y, label %.thread._crit_edge, !llvm.loop !606

.thread._crit_edge:                               ; preds = %.loopexit172, %.thread, %.loopexit170.us, %.thread.us, %bb.v
  %.2 = phi i32 [ %.073204, %bb.v ], [ %i.dh, %.thread.us ], [ %i.do, %.loopexit170.us ], [ %i.el, %.loopexit172 ], [ %i.en, %.thread ] ; 2 uses
  %i.et = sext i32 %.2 to i64                     ; 2 uses
  %i.eu = icmp ugt i64 %i.br, %i.et
  br i1 %i.eu, label %.lr.ph201, label %.loopexit173

.lr.ph201:                                        ; preds = %.thread._crit_edge
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %indvars.iv.next
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph201
  %.070199 = phi i64 [ %i.et, %.lr.ph201 ], [ %.070199.be, %.backedge.backedge ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.070199
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !132 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !97 ; 4 uses
  %i.fb = icmp sgt i32 %i.fa, -20000000
  br i1 %i.fb, label %bb.ac, label %.thread157

bb.ac:                                            ; preds = %.backedge
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !97 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = add nsw i64 %indvars.iv.next, %i.fd     ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !36
  %i.fh = sext i32 %i.fa to i64
  %i.fi = sub nsw i64 %i.fg, %i.fh                ; 2 uses
  %i.fj = load i64, ptr %i.ev, align 8, !tbaa !36
  %i.fk = icmp slt i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.fi, ptr %i.ev, align 8, !tbaa !36
  %i.fl = load ptr, ptr %i.ew, align 8, !tbaa !132 ; 4 uses
  store i32 %i.fc, ptr %i.fl, align 4, !tbaa !97
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !97
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.fe
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !132
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !97
  %i.ft = add nsw i32 %i.fs, 1                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !97
  %cond = icmp eq i32 %i.fa, -10000000
  br i1 %cond, label %.thread155, label %.thread157

.thread155:                                       ; preds = %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = icmp ugt i32 %i.cs, 127
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp ugt i32 %i.cs, 2047
  %i.fz = zext i1 %i.fy to i32
  %i.ga = add nuw nsw i32 %i.fx, %i.fz
  %i.gb = icmp ugt i32 %i.cs, 65535
  %i.gc = zext i1 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.ga, %i.gc
  %i.ge = add nsw i32 %i.gd, %i.ft
  store i32 %i.ge, ptr %i.fv, align 4, !tbaa !97
  br label %.loopexit173

bb.ae:                                            ; preds = %bb.ac
  %.not = icmp ne i32 %i.fa, -10000000
  %i.gf = add nuw i64 %.070199, 1                 ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.br
  %or.cond239 = select i1 %.not, i1 %i.gg, i1 false
  br i1 %or.cond239, label %.backedge.backedge, label %.loopexit173

.thread157:                                       ; preds = %.backedge, %bb.ad
  %.old = add nuw i64 %.070199, 1                 ; 2 uses
  %.old238 = icmp ult i64 %.old, %i.br
  br i1 %.old238, label %.backedge.backedge, label %.loopexit173

.backedge.backedge:                               ; preds = %.thread157, %bb.ae
  %.070199.be = phi i64 [ %.old, %.thread157 ], [ %i.gf, %bb.ae ]
  br label %.backedge, !llvm.loop !607

.loopexit173:                                     ; preds = %bb.ae, %.thread157, %.thread._crit_edge, %.thread155
  %i.gh = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gh, label %bb.v, label %._crit_edge207, !llvm.loop !608

bb.af:                                            ; preds = %.lr.ph235, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.gi = phi ptr [ %.promoted212293, %.lr.ph235 ], [ %i.lc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 14 uses
  %i.gj = phi ptr [ %.promoted290, %.lr.ph235 ], [ %.promoted216295, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 21 uses
  %i.gk = phi ptr [ %.promoted290, %.lr.ph235 ], [ %.promoted289, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 14 uses
  %i.gl = phi ptr [ %i.aw, %.lr.ph235 ], [ %i.ld, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.069234 = phi i32 [ 0, %.lr.ph235 ], [ %i.lh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.gm = sext i32 %.069234 to i64                ; 3 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !132
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !97 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  br i1 %i.gr, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %.not.i = icmp eq ptr %i.gk, %i.gi
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.gq, ptr %i.gk, align 4, !tbaa !97
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  store ptr %i.gs, ptr %i.ci, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gt = ptrtoint ptr %i.gi to i64
  %i.gu = ptrtoint ptr %i.gj to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 6 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.269) #33
          to label %.noexc115 unwind label %.loopexit.split-lp166

.noexc115:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i114 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i114)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #37
          to label %.noexc116 unwind label %.loopexit165 ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  %i.hf = load i32, ptr %i.gp, align 4, !tbaa !97
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !97
  %i.hg = icmp sgt i64 %i.gv, 0
  br i1 %i.hg, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ak:                                            ; preds = %.noexc116
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gj, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ak, %.noexc116
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gv) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hd, ptr %0, align 8, !tbaa !132
  store ptr %i.hh, ptr %i.ci, align 8, !tbaa !136
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb ; 2 uses
  store ptr %i.hi, ptr %i.cc, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.thread364:                                       ; preds = %bb.p, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit165:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp166:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.am:                                            ; preds = %bb.af
  %i.hk = load ptr, ptr %3, align 8, !tbaa !239
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.gm
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !97 ; 6 uses
  %i.hn = icmp ugt i32 %i.hm, 127
  %i.ho = select i1 %i.hn, i32 2, i32 1
  %i.hp = icmp ugt i32 %i.hm, 2047
  %i.hq = zext i1 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.ho, %i.hq
  %i.hs = icmp ugt i32 %i.hm, 65535
  %i.ht = zext i1 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.hr, %i.ht
  %.fr240 = freeze i32 %i.hu                      ; 6 uses
  %i.hv = icmp eq i32 %.fr240, 1
  br i1 %i.hv, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.am
  %i.hw = lshr i32 3840, %.fr240
  %umax = call i32 @llvm.umax.i32(i32 %.fr240, i32 1)
  %i.hx = and i32 %i.hw, 255
  %i.hy = mul i32 %.fr240, 6
  %i.hz = add i32 %i.hy, -6
  %i.ia = lshr i32 %i.hm, %i.hz
  %i.ib = and i32 %i.ia, 63
  %i.ic = or i32 %i.hx, %i.ib
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.id ; 2 uses
  %.not.i117.peel = icmp eq ptr %i.gk, %i.gi
  br i1 %.not.i117.peel, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.split.preheader
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !97
  store i32 %i.ig, ptr %i.gk, align 4, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel

bb.ao:                                            ; preds = %.split.preheader
  %i.ih = ptrtoint ptr %i.gi to i64
  %i.ii = ptrtoint ptr %i.gj to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 6 uses
  %i.ik = icmp eq i64 %i.ij, 9223372036854775804
  br i1 %i.ik, label %.split222.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.peel

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.peel: ; preds = %bb.ao
  %i.il = ashr exact i64 %i.ij, 2                 ; 3 uses
  %.sroa.speculated.i.i.i119.peel = call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i119.peel, %i.il ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951)
  %i.ip = select i1 %i.in, i64 2305843009213693951, i64 %i.io ; 3 uses
  %.not.i.i.i120.peel = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i120.peel)
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #37
          to label %.noexc125.peel unwind label %.loopexit.split.loopexit.split-lp ; 4 uses

.noexc125.peel:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.peel
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ij ; 2 uses
  %i.it = load i32, ptr %i.if, align 4, !tbaa !97
  store i32 %i.it, ptr %i.is, align 4, !tbaa !97
  %i.iu = icmp sgt i64 %i.ij, 0
  br i1 %i.iu, label %bb.ap, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.peel

bb.ap:                                            ; preds = %.noexc125.peel
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %i.gj, i64 %i.ij, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.peel

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.peel: ; preds = %bb.ap, %.noexc125.peel
  %.not.i17.i.i122.peel = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i122.peel, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.ij) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel: ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.peel
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel

_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel:  ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel, %bb.an
  %i.iw = phi ptr [ %i.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel ], [ %i.gj, %bb.an ] ; 2 uses
  %i.ix = phi ptr [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel ], [ %i.gi, %bb.an ] ; 2 uses
  %.pn241.peel = phi ptr [ %i.is, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.peel ], [ %i.gk, %bb.an ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn241.peel, i64 4 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %umax, 1
  br i1 %exitcond.peel.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit, label %.split

.split.us:                                        ; preds = %bb.am
  %i.iz = and i32 %i.hm, 255
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ja ; 2 uses
  %.not.i117.us = icmp eq ptr %i.gk, %i.gi
  br i1 %.not.i117.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.split.us
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !97
  store i32 %i.jd, ptr %i.gk, align 4, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit

bb.as:                                            ; preds = %.split.us
  %i.je = ptrtoint ptr %i.gk to i64
  %i.jf = ptrtoint ptr %i.gj to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 6 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775804
  br i1 %i.jh, label %.split222.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.us: ; preds = %bb.as
  %i.ji = ashr exact i64 %i.jg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i119.us = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i119.us, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 2305843009213693951)
  %i.jm = select i1 %i.jk, i64 2305843009213693951, i64 %i.jl ; 3 uses
  %.not.i.i.i120.us = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i120.us)
  %i.jn = shl nuw nsw i64 %i.jm, 2
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #37
          to label %.noexc125.us unwind label %.loopexit.split.us ; 4 uses

.noexc125.us:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.us
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.jg ; 2 uses
  %i.jq = load i32, ptr %i.jc, align 4, !tbaa !97
  store i32 %i.jq, ptr %i.jp, align 4, !tbaa !97
  %i.jr = icmp sgt i64 %i.jg, 0
  br i1 %i.jr, label %bb.at, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.us

bb.at:                                            ; preds = %.noexc125.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jo, ptr align 4 %i.gj, i64 %i.jg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.us: ; preds = %bb.at, %.noexc125.us
  %.not.i17.i.i122.us = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i122.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.us
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.jg) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us: ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121.us
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jm
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126
  %.068220 = phi i32 [ %i.ky, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ], [ 1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ] ; 2 uses
  %i.jt = phi ptr [ %i.kx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ], [ %i.iy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ] ; 6 uses
  %i.ju = phi ptr [ %i.kw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ], [ %i.ix, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ] ; 4 uses
  %i.jv = phi ptr [ %i.kv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ], [ %i.iw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ] ; 7 uses
  %i.jw = xor i32 %.068220, -1
  %i.jx = add nsw i32 %.fr240, %i.jw
  %i.jy = mul nuw nsw i32 %i.jx, 6
  %i.jz = lshr i32 %i.hm, %i.jy
  %i.ka = and i32 %i.jz, 63
  %i.kb = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.kc = zext nneg i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 512 ; 2 uses
  %.not.i117 = icmp eq ptr %i.jt, %i.ju
  br i1 %.not.i117, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.split
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !97
  store i32 %i.kf, ptr %i.jt, align 4, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126

bb.aw:                                            ; preds = %.split
  %i.kg = ptrtoint ptr %i.jt to i64
  %i.kh = ptrtoint ptr %i.jv to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 6 uses
  %i.kj = icmp eq i64 %i.ki, 9223372036854775804
  br i1 %i.kj, label %.split222.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118

.split222.us:                                     ; preds = %bb.ao, %bb.as, %bb.aw
  %.us-phi = phi ptr [ %i.jv, %bb.aw ], [ %i.gj, %bb.as ], [ %i.gj, %bb.ao ] ; 2 uses
  %.us-phi223 = phi ptr [ %i.ju, %bb.aw ], [ %i.gi, %bb.as ], [ %i.gi, %bb.ao ] ; 2 uses
  %.us-phi225 = phi ptr [ %i.jt, %bb.aw ], [ %i.gk, %bb.as ], [ %i.gk, %bb.ao ]
  store ptr %.us-phi225, ptr %i.ci, align 8
  store ptr %.us-phi223, ptr %i.cc, align 8
  store ptr %.us-phi, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.269) #33
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %.split222.us
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118: ; preds = %bb.aw
  %i.kk = ashr exact i64 %i.ki, 2                 ; 3 uses
  %.sroa.speculated.i.i.i119 = call i64 @llvm.umax.i64(i64 %i.kk, i64 1)
  %i.kl = add nsw i64 %.sroa.speculated.i.i.i119, %i.kk ; 2 uses
  %i.km = icmp ult i64 %i.kl, %i.kk
  %i.kn = call i64 @llvm.umin.i64(i64 %i.kl, i64 2305843009213693951)
  %i.ko = select i1 %i.km, i64 2305843009213693951, i64 %i.kn ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.ko, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.kp = shl nuw nsw i64 %i.ko, 2
  %i.kq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #37
          to label %.noexc125 unwind label %.loopexit.split.loopexit ; 4 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 %i.ki ; 2 uses
  %i.ks = load i32, ptr %i.ke, align 4, !tbaa !97
  store i32 %i.ks, ptr %i.kr, align 4, !tbaa !97
  %i.kt = icmp sgt i64 %i.ki, 0
  br i1 %i.kt, label %bb.ax, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121

bb.ax:                                            ; preds = %.noexc125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kq, ptr align 4 %i.jv, i64 %i.ki, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121: ; preds = %bb.ax, %.noexc125
  %.not.i17.i.i122 = icmp eq ptr %i.jv, null
  br i1 %.not.i17.i.i122, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ki) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123: ; preds = %bb.ay, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i121
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ko
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126

_ZNSt6vectorIiSaIiEE9push_backERKi.exit126:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123, %bb.av
  %i.kv = phi ptr [ %i.kq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123 ], [ %i.jv, %bb.av ] ; 2 uses
  %i.kw = phi ptr [ %i.ku, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123 ], [ %i.ju, %bb.av ] ; 2 uses
  %.pn241 = phi ptr [ %i.kr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123 ], [ %i.jt, %bb.av ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.pn241, i64 4 ; 2 uses
  %i.ky = add nuw i32 %.068220, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %.fr240, %i.ky
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit, label %.split, !llvm.loop !609

.loopexit.split.loopexit:                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loopexit.split-lp:                ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i118.peel
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.loopexit, %.loopexit.split.loopexit.split-lp, %.loopexit.split.us
  %.us-phi226 = phi ptr [ %i.gj, %.loopexit.split.us ], [ %i.jv, %.loopexit.split.loopexit ], [ %i.gj, %.loopexit.split.loopexit.split-lp ] ; 2 uses
  %.us-phi227 = phi ptr [ %i.gi, %.loopexit.split.us ], [ %i.ju, %.loopexit.split.loopexit ], [ %i.gi, %.loopexit.split.loopexit.split-lp ] ; 2 uses
  %.us-phi229 = phi ptr [ %i.gk, %.loopexit.split.us ], [ %i.jt, %.loopexit.split.loopexit ], [ %i.gk, %.loopexit.split.loopexit.split-lp ]
  %.us-phi230 = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit281, %.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp282, %.loopexit.split.loopexit.split-lp ]
  store ptr %.us-phi229, ptr %i.ci, align 8
  store ptr %.us-phi227, ptr %i.cc, align 8
  store ptr %.us-phi226, ptr %0, align 8
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %.split222.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit: ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us
  %i.kz = phi ptr [ %i.jo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us ], [ %i.gj, %bb.ar ]
  %i.la = phi ptr [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us ], [ %i.gi, %bb.ar ]
  %.pn242 = phi ptr [ %i.jp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i123.us ], [ %i.gk, %bb.ar ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.pn242, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit
  %.us-phi231 = phi ptr [ %i.kz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit ], [ %i.iw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ], [ %i.kv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ] ; 2 uses
  %.us-phi232 = phi ptr [ %i.la, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit ], [ %i.ix, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ], [ %i.kw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ] ; 2 uses
  %.us-phi233 = phi ptr [ %i.lb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit.loopexit ], [ %i.iy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126.peel ], [ %i.kx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit126 ] ; 2 uses
  store ptr %.us-phi233, ptr %i.ci, align 8
  store ptr %.us-phi232, ptr %i.cc, align 8
  store ptr %.us-phi231, ptr %0, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ah
  %i.lc = phi ptr [ %.us-phi232, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit ], [ %i.hi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.gi, %bb.ah ]
  %.promoted216295 = phi ptr [ %.us-phi231, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit ], [ %i.hd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.gj, %bb.ah ]
  %.promoted289 = phi ptr [ %.us-phi233, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.loopexit ], [ %i.hh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.gs, %bb.ah ]
  %i.ld = load ptr, ptr %4, align 8, !tbaa !291   ; 3 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.gm
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !132
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !97
  %i.lh = add nsw i32 %i.lg, %.069234             ; 2 uses
  %i.li = icmp slt i32 %i.lh, %i.bh
  br i1 %i.li, label %bb.af, label %._crit_edge236.loopexit, !llvm.loop !610

._crit_edge236.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre296 = load ptr, ptr %i.ax, align 8, !tbaa !293
  br label %._crit_edge236

._crit_edge236:                                   ; preds = %._crit_edge236.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.lj = phi ptr [ %.pre296, %._crit_edge236.loopexit ], [ %i.ba, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.pr.i = phi ptr [ %i.ld, %._crit_edge236.loopexit ], [ %i.aw, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.lj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge236, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge236 ] ; 3 uses
  %i.lk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !133
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #35
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.az, %.lr.ph.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.lq, %i.lj
  br i1 %.not.i.i.i127, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge236, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.lr = load ptr, ptr %i.az, align 8, !tbaa !292
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %.pr.i to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.lu) #35
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.z) #35
  %.pre297 = load ptr, ptr %3, align 8, !tbaa !239
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.ba:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit165, %.loopexit.split-lp166
  %i.lv = phi ptr [ %.us-phi223, %.loopexit.split-lp ], [ %i.gi, %.loopexit.split-lp166 ], [ %i.gi, %.loopexit165 ], [ %.us-phi227, %.loopexit ]
  %i.lw = phi ptr [ %.us-phi, %.loopexit.split-lp ], [ %i.gj, %.loopexit.split-lp166 ], [ %i.gj, %.loopexit165 ], [ %.us-phi226, %.loopexit ] ; 3 uses
  %.pn90.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ], [ %lpad.loopexit167, %.loopexit165 ], [ %.us-phi230, %.loopexit ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i130, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #35
  br label %bb.bc

bb.bc:                                            ; preds = %.thread364, %bb.ba, %bb.bb
  %.pn90.pn367 = phi { ptr, i32 } [ %i.hj, %.thread364 ], [ %.pn90.pn, %bb.ba ], [ %.pn90.pn, %bb.bb ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread159
  %.pn93.pn162 = phi { ptr, i32 } [ %.pn, %.thread159 ], [ %.pn90.pn367, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.z) #35
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit133

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %.thread362
  %i.ma = phi ptr [ %.pre297, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ], [ %i.s, %.thread362 ] ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !240
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #35
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

_ZNSt6vectorIlSaIlEED2Ev.exit133:                 ; preds = %bb.r, %bb.bd
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn162, %bb.bd ], [ %i.cj, %bb.r ]
  %i.mg = load ptr, ptr %3, align 8, !tbaa !239   ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIjSaIjEED2Ev.exit136, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit133
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !240
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #35
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit136

_ZNSt6vectorIjSaIjEED2Ev.exit136:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit133, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn93.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !291    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #35
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !291
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS8_:bb.a
  %i.k = icmp eq i64 %.fr, 0                      ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.k, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us
  %.sroa.06.013.us.us = phi ptr [ %.sroa.06.0.us.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us ], [ %.sroa.06.011, %.lr.ph.split.us ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us.us, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us.us, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us.us: ; preds = %.lr.ph.split.us.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us.us, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us.us, %.lr.ph.split.us.split.us
  %.sroa.06.0.us.us = load ptr, ptr %.sroa.06.013.us.us, align 8, !tbaa !137 ; 2 uses
  %.not.us.us = icmp eq ptr %.sroa.06.0.us.us, null
  br i1 %.not.us.us, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.split.us.split.us, !llvm.loop !827

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us
  %.sroa.06.013.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us ], [ %.sroa.06.011, %.lr.ph.split.us ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us: ; preds = %.lr.ph.split.us.split
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40
  %i.x = icmp eq i64 %.fr, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %bcmp.i4.i.i.i.us = tail call i32 @bcmp(ptr %i.l, ptr %i.z, i64 %.fr)
  %i.aa = icmp eq i32 %bcmp.i4.i.i.i.us, 0
  br i1 %i.aa, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us, %.lr.ph.split.us.split
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.013.us, align 8, !tbaa !137 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.split.us.split, !llvm.loop !827

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.k, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21
  %.sroa.06.013.us19 = phi ptr [ %.sroa.06.0.us22, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21 ], [ %.sroa.06.011, %.lr.ph.split ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us19, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = icmp eq i64 %.fr34, %i.ac
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.us, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.us: ; preds = %.lr.ph.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us19, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %bcmp.i.i.i.i.us = tail call i32 @bcmp(ptr %i.g, ptr %i.af, i64 %.fr34)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.us, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us20, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.us
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.013.us19, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !40
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.us, %.lr.ph.split.split.us
  %.sroa.06.0.us22 = load ptr, ptr %.sroa.06.013.us19, align 8, !tbaa !137 ; 2 uses
  %.not.us23 = icmp eq ptr %.sroa.06.0.us22, null
  br i1 %.not.us23, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.split.split.us, !llvm.loop !827

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread
  %.sroa.06.013 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread ], [ %.sroa.06.011, %.lr.ph.split ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.am = icmp eq i64 %.fr34, %i.al
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %.lr.ph.split.split
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.ao, i64 %.fr34)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !40
  %i.as = icmp eq i64 %.fr, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %bcmp.i4.i.i.i = tail call i32 @bcmp(ptr %i.l, ptr %i.au, i64 %.fr)
  %i.av = icmp eq i32 %bcmp.i4.i.i.i, 0
  br i1 %i.av, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread: ; preds = %.lr.ph.split.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.013, align 8, !tbaa !137 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.split.split, !llvm.loop !827

bb.c:                                             ; preds = %bb.a
  %i.aw = load ptr, ptr %1, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !40
  %i.az = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.aw, i64 noundef %i.ay, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #36
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !40
  %i.bg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bd, i64 noundef %i.bf, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stEN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS9_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable

_ZNKSt8__detail15_Hash_code_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stEN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS9_.exit: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.i.i
  %i.bj = shl i64 %i.bg, 1
  %i.bk = xor i64 %i.bj, %i.az                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !246
  %i.bn = urem i64 %i.bk, %i.bm
  %i.bo = tail call noundef ptr @_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS8_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.bk) ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stEN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS9_.exit
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !137
  br label %_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit

_ZNKSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us20, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us.us, %bb.b, %bb.f, %_ZNKSt8__detail15_Hash_code_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stEN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS9_.exit
  %.sroa.06.1 = phi ptr [ null, %_ZNKSt8__detail15_Hash_code_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stEN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS9_.exit ], [ %i.bp, %bb.f ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us21 ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.us ], [ %.sroa.06.013.us, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us ], [ %.sroa.06.013.us.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us ], [ %.sroa.06.013.us19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.us20 ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread ], [ %.sroa.06.013, %_ZNKSt8__detail15_Hashtable_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ES1_IKS8_iENS_10_Select1stESt8equal_toIS8_EN11llama_vocab4impl9pair_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS9_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_llama_vocab.cpp() #29 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL15dna_kmer_markerB5cxx11, i64 16), ptr @_ZL15dna_kmer_markerB5cxx11, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZL15dna_kmer_markerB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZL15dna_kmer_markerB5cxx11, i64 8), align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15dna_kmer_markerB5cxx11, i64 19), align 1, !tbaa !39
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL15dna_kmer_markerB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { noreturn }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{!0, !100}
!1 = distinct !{!1, !100}
!2 = distinct !{!2, !100}
!3 = distinct !{!3, !100}
!4 = distinct !{!4, !100}
!5 = distinct !{!5, !100}
!6 = distinct !{!6, !100}
!7 = distinct !{!7, !100}
!8 = distinct !{!8, !100}
!9 = distinct !{!9, !100}
!10 = distinct !{!10, !100}
!11 = distinct !{!11, !100}
!12 = distinct !{!12, !100}
!13 = distinct !{!13, !100}
!14 = distinct !{!14, !100}
!15 = distinct !{!15, !100}
!16 = distinct !{ptr @_ZN10naive_trieD2Ev, null, null}
!17 = distinct !{null, null, ptr @_ZN10naive_trieD2Ev, null, null, null}
!18 = distinct !{null}
!19 = distinct !{!19, !100}
!20 = distinct !{!20, !100}
!21 = distinct !{!21, !100}
!22 = distinct !{!22, !100}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"long", !27, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !35, i64 8, !27, i64 16}
!38 = !{!37, !32, i64 0}
!39 = !{!27, !27, i64 0}
!40 = !{!37, !35, i64 8}
!41 = !{!"bool", !27, i64 0}
!42 = !{!"_ZTSSt14_Rb_tree_color", !27, i64 0}
!43 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !31, i64 0}
!44 = !{!"_ZTSSt18_Rb_tree_node_base", !42, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!45 = !{!"_ZTSSt15_Rb_tree_header", !44, i64 0, !35, i64 32}
!46 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!47 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !46, i64 0}
!48 = !{!"any p2 pointer", !31, i64 0}
!49 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!50 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!51 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !50, i64 0}
!52 = !{!"float", !27, i64 0}
!53 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !52, i64 0, !35, i64 8}
!54 = !{!"_ZTS16llama_vocab_type", !27, i64 0}
!55 = !{!"_ZTS20llama_vocab_pre_type", !27, i64 0}
!56 = !{!"_ZTSN11llama_vocab18normalizer_optionsE", !41, i64 0, !41, i64 1}
!57 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !49, i64 0, !35, i64 8, !51, i64 16, !35, i64 24, !53, i64 32, !50, i64 48}
!58 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !57, i64 0}
!59 = !{!"p1 _ZTSN11llama_vocab10token_dataE", !31, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN11llama_vocab10token_dataESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN11llama_vocab10token_dataESaIS1_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN11llama_vocab10token_dataESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN11llama_vocab10token_dataESaIS1_EE", !62, i64 0}
!64 = !{!"p1 int", !31, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIiSaIiEE", !67, i64 0}
!69 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !70, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !72, i64 0}
!74 = !{!"_ZTSSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !49, i64 0, !35, i64 8, !51, i64 16, !35, i64 24, !53, i64 32, !50, i64 48}
!75 = !{!"_ZTSSt13unordered_mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EiN11llama_vocab4impl9pair_hashESt8equal_toIS7_ESaIS0_IKS7_iEEE", !74, i64 0}
!76 = !{!"_ZTSSt4lessIiE"}
!77 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !76, i64 0}
!78 = !{!"_ZTSNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb1EEE", !77, i64 0, !45, i64 8}
!79 = !{!"_ZTSSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE", !78, i64 0}
!80 = !{!"_ZTSSt3setIiSt4lessIiESaIiEE", !79, i64 0}
!81 = !{!"p1 _ZTS13llm_tokenizer", !31, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP13llm_tokenizerLb0EE", !81, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP13llm_tokenizerSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP13llm_tokenizerSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI13llm_tokenizerSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI13llm_tokenizerSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI13llm_tokenizerSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIcSaIcEE", !90, i64 0}
!92 = !{!"p1 _ZTS11llama_vocab", !31, i64 0}
!93 = !{!"_ZTSN11llama_vocab4implE", !28, i64 0, !37, i64 8, !37, i64 40, !54, i64 72, !55, i64 76, !28, i64 80, !28, i64 84, !28, i64 88, !28, i64 92, !28, i64 96, !28, i64 100, !28, i64 104, !28, i64 108, !28, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !28, i64 128, !28, i64 132, !28, i64 136, !28, i64 140, !41, i64 144, !41, i64 145, !41, i64 146, !41, i64 147, !41, i64 148, !41, i64 149, !41, i64 150, !41, i64 151, !41, i64 152, !56, i64 153, !58, i64 160, !63, i64 216, !68, i64 240, !73, i64 264, !75, i64 288, !80, i64 344, !68, i64 392, !87, i64 416, !91, i64 424, !92, i64 448}
!94 = !{!93, !54, i64 72}
!95 = !{!93, !28, i64 84}
!96 = !{!93, !28, i64 88}
!97 = !{!28, !28, i64 0}
!98 = !{!60, !59, i64 8}
!99 = !{!60, !59, i64 0}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!93, !41, i64 147}
!102 = !{!88, !32, i64 8}
!103 = !{!88, !32, i64 0}
!104 = !{!93, !28, i64 100}
!105 = !{!93, !28, i64 104}
!106 = !{!93, !28, i64 108}
!107 = !{!93, !41, i64 144}
!108 = !{!93, !41, i64 151}
!109 = !{!93, !41, i64 149}
!110 = !{!93, !55, i64 76}
!111 = !{!93, !41, i64 148}
!112 = !{!93, !41, i64 145}
!113 = !{!93, !41, i64 146}
!114 = !{!41, !41, i64 0}
!115 = !{!57, !35, i64 24}
!116 = !{!93, !28, i64 80}
!117 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!118 = !{!52, !52, i64 0}
!119 = !{!"_ZTS16llama_token_attr", !27, i64 0}
!120 = !{!"_ZTSN11llama_vocab10token_dataE", !37, i64 0, !52, i64 32, !119, i64 36}
!121 = !{!120, !52, i64 32}
!122 = !{!120, !119, i64 36}
!123 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !37, i64 0, !28, i64 32}
!124 = !{!123, !28, i64 32}
!125 = !{!93, !92, i64 448}
!126 = !{}
!127 = !{i64 8}
!128 = !{!93, !28, i64 116}
!129 = !{!"vtable pointer", !26, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!64, !64, i64 0}
!132 = !{!65, !64, i64 0}
!133 = !{!65, !64, i64 16}
!134 = !{i64 4}
!135 = !{i8 0, i8 2}
!136 = !{!65, !64, i64 8}
!137 = !{!51, !50, i64 0}
!138 = !{!93, !28, i64 92}
!139 = !{!93, !28, i64 96}
!140 = !{!93, !28, i64 120}
!141 = !{!93, !28, i64 124}
!142 = !{!93, !28, i64 128}
!143 = !{!93, !28, i64 132}
!144 = !{!93, !28, i64 136}
!145 = !{!93, !28, i64 140}
!146 = !{!45, !43, i64 8}
!147 = !{!45, !43, i64 16}
!148 = !{!45, !43, i64 24}
!149 = !{!45, !35, i64 32}
!150 = !{!43, !43, i64 0}
!151 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!152 = !{!70, !69, i64 0}
end_hunk_1
