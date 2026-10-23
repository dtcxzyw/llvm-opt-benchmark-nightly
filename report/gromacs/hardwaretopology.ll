Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hardwaretopology?download=true
inline.NumInlined: 1751
inline.NumDeleted: 847
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_121parseSysFsCpuTopologyEPNS_16HardwareTopology7MachineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEE:bb.a
          to label %bb.ag unwind label %bb.ad, !noalias !218

bb.ag:                                            ; preds = %.critedge.i.i.i
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.em = icmp eq i32 %i.ei, 0
  br i1 %i.em, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !113, !noalias !218
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.en = trunc nsw i64 %i.ec to i32              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21, !noalias !218
  %.not.i55.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i55.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.en, ptr %i.cr, align 4, !tbaa !113, !noalias !218
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 4 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ep = ptrtoint ptr %i.cq to i64
  %i.eq = ptrtoint ptr %.sroa.0279.1 to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 6 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775804
  br i1 %i.es, label %bb.am, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !218

.noexc56.i:                                       ; preds = %bb.am
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.et = ashr exact i64 %i.er, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 2305843009213693951)
  %i.ex = select i1 %i.ev, i64 2305843009213693951, i64 %i.ew ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.ey = shl nuw nsw i64 %i.ex, 2
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #26
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp, !noalias !218 ; 5 uses

.noexc57.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.er ; 2 uses
  store i32 %i.en, ptr %i.fa, align 4, !tbaa !113, !noalias !218
  %i.fb = icmp sgt i64 %i.er, 0
  br i1 %i.fb, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc57.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ez, ptr align 4 %.sroa.0279.1, i64 %i.er, i1 false), !noalias !218
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc57.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 4 uses
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0279.1, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.1, i64 noundef %i.er) #22, !noalias !218
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ex ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

bb.ap:                                            ; preds = %bb.z
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !74, !noalias !218 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !218
  %i.ff = tail call ptr @__errno_location() #25   ; 12 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  %i.fh = call noundef i64 @__isoc23_strtol(ptr noundef %i.fe, ptr noundef nonnull %i.d, i32 noundef 10), !noalias !218 ; 4 uses
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !219, !noalias !218
  %i.fj = icmp eq ptr %i.fi, %i.fe
  br i1 %i.fj, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #24
          to label %bb.ar unwind label %bb.as, !noalias !218

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %.critedge.i.i59.i, %bb.aq
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.at, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !218
  br label %.body.i65

bb.au:                                            ; preds = %bb.ap
  %i.fn = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 34
  %i.fp = add i64 %i.fh, -2147483648
  %i.fq = icmp ult i64 %i.fp, -4294967296
  %or.cond.i.i58.i = or i1 %i.fq, %i.fo
  br i1 %or.cond.i.i58.i, label %.critedge.i.i59.i, label %bb.aw

.critedge.i.i59.i:                                ; preds = %bb.au
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #24
          to label %bb.av unwind label %bb.as, !noalias !218

bb.av:                                            ; preds = %.critedge.i.i59.i
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fr = icmp eq i32 %i.fn, 0
  br i1 %i.fr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fs = trunc nsw i64 %i.fh to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !218
  %i.ft = load ptr, ptr %8, align 8, !tbaa !112, !noalias !218
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !74, !noalias !218 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !218
  %i.fw = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  %i.fx = call noundef i64 @__isoc23_strtol(ptr noundef %i.fv, ptr noundef nonnull %i.c, i32 noundef 10), !noalias !218 ; 3 uses
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !219, !noalias !218
  %i.fz = icmp eq ptr %i.fy, %i.fv
  br i1 %i.fz, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #24
          to label %bb.ba unwind label %bb.bb, !noalias !218

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.critedge.i.i65.i, %bb.az
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.bc, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.fw, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !218
  br label %.body.i65

bb.bd:                                            ; preds = %bb.ay
  %i.gd = load i32, ptr %i.ff, align 4, !tbaa !113, !noalias !218 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 34
  %i.gf = add i64 %i.fx, -2147483648
  %i.gg = icmp ult i64 %i.gf, -4294967296
  %or.cond.i.i64.i = or i1 %i.gg, %i.ge
  br i1 %or.cond.i.i64.i, label %.critedge.i.i65.i, label %bb.bf

.critedge.i.i65.i:                                ; preds = %bb.bd
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #24
          to label %bb.be unwind label %bb.bb, !noalias !218

bb.be:                                            ; preds = %.critedge.i.i65.i
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.gh = icmp eq i32 %i.gd, 0
  br i1 %i.gh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.fw, ptr %i.ff, align 4, !tbaa !113, !noalias !218
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !218
  %.not171.i = icmp sgt i64 %i.fh, %i.fx
  br i1 %.not171.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bh
  %i.gi = trunc nsw i64 %i.fx to i32
  %i.gj = icmp slt i64 %i.fh, 0
  br i1 %i.gj, label %.lr.ph.i.us, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.preheader.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.23.1 = phi ptr [ %.sroa.23.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.23.0, %.lr.ph.preheader.i ] ; 2 uses
  %i.gk = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.15.0, %.lr.ph.preheader.i ]
  %i.gl = phi ptr [ %.sroa.0279.7.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.0279.1, %.lr.ph.preheader.i ] ; 4 uses
  %i.gm = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cp, %.lr.ph.preheader.i ]
  %i.gn = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cq, %.lr.ph.preheader.i ] ; 4 uses
  %i.go = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cr, %.lr.ph.preheader.i ]
  %i.gp = phi ptr [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cs, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.0279.4830 = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ct, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.15.1829 = phi ptr [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cu, %.lr.ph.preheader.i ] ; 8 uses
  %storemerge172.i = phi i32 [ %i.ho, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fs, %.lr.ph.preheader.i ] ; 5 uses
  %i.gq = icmp eq ptr %.sroa.15.1829, %.sroa.0279.4830
  br i1 %i.gq, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split
  %i.gr = ptrtoint ptr %.sroa.0279.4830 to i64
  %i.gs = ptrtoint ptr %.sroa.15.1829 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = getelementptr i8, ptr %.sroa.15.1829, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !113, !noalias !218
  %.not34.i = icmp slt i32 %i.gw, %storemerge172.i
  br i1 %.not34.i, label %bb.bj, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.bi, %.lr.ph.preheader.i
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0, %.lr.ph.preheader.i ], [ %.sroa.23.1, %bb.bi ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0, %.lr.ph.preheader.i ], [ %i.gk, %bb.bi ]
  %.sroa.0279.4.lcssa = phi ptr [ %.sroa.0279.1, %.lr.ph.preheader.i ], [ %i.gl, %bb.bi ] ; 9 uses
  %.lcssa758 = phi ptr [ %i.cp, %.lr.ph.preheader.i ], [ %i.gm, %bb.bi ]
  %.lcssa754 = phi ptr [ %i.cq, %.lr.ph.preheader.i ], [ %i.gn, %bb.bi ] ; 2 uses
  %.lcssa750 = phi ptr [ %i.cr, %.lr.ph.preheader.i ], [ %i.go, %bb.bi ] ; 3 uses
  %.lcssa746 = phi ptr [ %i.cs, %.lr.ph.preheader.i ], [ %i.gp, %bb.bi ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.lcssa750, %.sroa.0279.4.lcssa
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.lr.ph.i.us
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.split
  %.not.i70.i = icmp eq ptr %.sroa.0279.4830, %i.gp
  br i1 %.not.i70.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 %storemerge172.i, ptr %.sroa.0279.4830, align 4, !tbaa !113, !noalias !218
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.gx = ptrtoint ptr %i.gp to i64
  %i.gy = ptrtoint ptr %.sroa.15.1829 to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 6 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775804
  br i1 %i.ha, label %.split, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i

.split:                                           ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !218

.noexc76.i:                                       ; preds = %.split
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i: ; preds = %bb.bl
  %i.hb = ashr exact i64 %i.gz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i72.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i72.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 2305843009213693951)
  %i.hf = select i1 %i.hd, i64 2305843009213693951, i64 %i.he ; 3 uses
  %.not.i.i.i73.i = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i73.i)
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #26
          to label %.noexc77.i unwind label %.loopexit.i.split, !noalias !218 ; 5 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %i.gz ; 2 uses
  store i32 %storemerge172.i, ptr %i.hi, align 4, !tbaa !113, !noalias !218
  %i.hj = icmp sgt i64 %i.gz, 0
  br i1 %i.hj, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i

bb.bm:                                            ; preds = %.noexc77.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hh, ptr align 4 %.sroa.15.1829, i64 %i.gz, i1 false), !noalias !218
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i: ; preds = %bb.bm, %.noexc77.i
  %.not.i17.i.i75.i = icmp eq ptr %.sroa.15.1829, null
  br i1 %.not.i17.i.i75.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.15.1829, i64 noundef %i.gz) #22, !noalias !218
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hf ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bk
  %.sroa.23.4.a = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.1, %bb.bk ] ; 2 uses
  %.pn294 = phi ptr [ %i.hi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0279.4830, %bb.bk ]
  %.sroa.0279.7.a = phi ptr [ %i.hh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gl, %bb.bk ] ; 2 uses
  %i.hl = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gn, %bb.bk ] ; 2 uses
  %i.hm = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gp, %bb.bk ] ; 2 uses
  %i.hn = phi ptr [ %i.hh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1829, %bb.bk ] ; 2 uses
  %.sroa.15.4.a = getelementptr inbounds nuw i8, ptr %.pn294, i64 4 ; 8 uses
  %i.ho = add i32 %storemerge172.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge172.i, %i.gi
  br i1 %exitcond.not.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %.lr.ph.split, !llvm.loop !195

.loopexit.i.split:                                ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit54.i, %.noexc.i.i50.i, %bb.x, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp1843 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split, %bb.am
  %.sroa.0279.8 = phi ptr [ %.sroa.0279.1, %bb.am ], [ %i.gl, %.split ]
  %i.hp = phi ptr [ %i.cq, %bb.am ], [ %i.gn, %.split ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

bb.bo:                                            ; preds = %bb.z
  %.not.i.i78.i = icmp eq ptr %i.cp, %.sroa.0279.1
  br i1 %.not.i.i78.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i:    ; preds = %bb.bo
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i, %bb.bo, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.lr.ph.i.us, %bb.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ak
  %.sroa.23.2 = phi ptr [ %.sroa.23.0, %bb.bo ], [ %.sroa.23.0, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.0, %bb.ak ], [ %.sroa.23.0, %bb.bh ], [ %.sroa.23.1.lcssa, %.lr.ph.i.us ], [ %.sroa.23.1.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.23.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.0, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.eo, %bb.ak ], [ %.sroa.15.0, %bb.bh ], [ %.sroa.15.1.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.sroa.0279.5 = phi ptr [ %.sroa.0279.1, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.ez, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0279.1, %bb.ak ], [ %.sroa.0279.1, %bb.bh ], [ %.sroa.0279.4.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.0279.7.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %i.hq = phi ptr [ %i.cp, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.eo, %bb.ak ], [ %i.cp, %bb.bh ], [ %.lcssa758, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hr = phi ptr [ %i.cq, %bb.bo ], [ %i.cq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cq, %bb.ak ], [ %i.cq, %bb.bh ], [ %.lcssa754, %.lr.ph.i.us ], [ %.lcssa754, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %i.hs = phi ptr [ %i.cp, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.eo, %bb.ak ], [ %i.cr, %bb.bh ], [ %.lcssa750, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.ht = phi ptr [ %i.cs, %bb.bo ], [ %i.cs, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cq, %bb.ak ], [ %i.cs, %bb.bh ], [ %.lcssa746, %.lr.ph.i.us ], [ %.lcssa746, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hu = phi ptr [ %i.cp, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.eo, %bb.ak ], [ %i.ct, %bb.bh ], [ %.lcssa750, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hv = phi ptr [ %.sroa.0279.1, %bb.bo ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.ez, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cu, %bb.ak ], [ %i.cu, %bb.bh ], [ %.sroa.0279.4.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %.330.i = phi i1 [ true, %bb.bo ], [ true, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %.027175.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.027175.i, %bb.ak ], [ %.027175.i, %bb.bh ], [ true, %.lr.ph.i.us ], [ true, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.027175.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.1.i = phi i1 [ false, %bb.bo ], [ false, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ true, %bb.ak ], [ true, %bb.bh ], [ false, %.lr.ph.i.us ], [ false, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ true, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hw = load ptr, ptr %9, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.by
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i
  %i.hy = load i64, ptr %i.by, align 8, !tbaa !75, !noalias !218
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #22, !noalias !218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !218
  %i.ia = load ptr, ptr %8, align 8, !tbaa !112, !noalias !218 ; 3 uses
  %i.ib = load ptr, ptr %i.ca, align 8, !tbaa !108, !noalias !218 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ia, %i.ib
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ih, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.ic = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.if = load i64, ptr %i.id, align 8, !tbaa !75, !noalias !218
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #22, !noalias !218
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i81.i = icmp eq ptr %i.ih, %i.ib
  br i1 %.not.i.i.i81.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !112, !noalias !218
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ii = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ij = load ptr, ptr %i.cb, align 8, !tbaa !109, !noalias !218
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.im) #22, !noalias !218
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.bp, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !218
  store ptr %i.cc, ptr %7, align 8, !tbaa !83, !noalias !218
  %i.in = load i64, ptr %i.ce, align 8, !noalias !218
  %i.io = getelementptr inbounds i8, ptr %7, i64 %i.in
  store ptr %i.cd, ptr %i.io, align 8, !tbaa !83, !noalias !218
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cf, align 8, !tbaa !83, !noalias !218
  %i.ip = load ptr, ptr %i.cg, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ch
  br i1 %i.iq, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ir = load i64, ptr %i.ch, align 8, !tbaa !75, !noalias !218
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #22, !noalias !218
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cf, align 8, !tbaa !83, !noalias !218
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #21, !noalias !218
  store ptr %i.cj, ptr %7, align 8, !tbaa !83, !noalias !218
  %i.it = load i64, ptr %i.cl, align 8, !noalias !218
  %i.iu = getelementptr inbounds i8, ptr %7, i64 %i.it
  store ptr %i.ck, ptr %i.iu, align 8, !tbaa !83, !noalias !218
  store i64 0, ptr %i.cm, align 8, !tbaa !116, !noalias !218
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cn) #21, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !218
  br i1 %.1.i, label %bb.p, label %._crit_edge.loopexit.i

.body.i65:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.i.split, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %.sroa.0279.3 = phi ptr [ %i.gl, %.loopexit.i.split ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %.sroa.0279.8, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %.sroa.0279.1, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp ]
  %i.iv = phi ptr [ %i.gn, %.loopexit.i.split ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %i.hp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %i.cq, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp ]
  %.pn37.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i.split ], [ %i.ef, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %i.ga, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %i.fk, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %lpad.loopexit.split-lp1843, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp ]
  %i.iw = load ptr, ptr %9, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.by
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %.body.i65
  %i.iy = load i64, ptr %i.by, align 8, !tbaa !75, !noalias !218
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #22, !noalias !218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %.body.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !218
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !218
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %7) #21, !noalias !218
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %bb.y
  %.sroa.0279.2 = phi ptr [ %.sroa.0279.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %.sroa.0279.1, %bb.y ]
  %i.ja = phi ptr [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %i.cq, %bb.y ]
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn37.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !218
  %i.jb = ptrtoint ptr %i.ja to i64
  br label %bb.bs

._crit_edge.loopexit.i:                           ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %bb.p
  %spec.select.ph.i = phi i1 [ %.330.i, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ true, %bb.p ]
  %i.jc = ptrtoint ptr %i.hr to i64
  %i.jd = ptrtoint ptr %.sroa.23.2 to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.o
  %.sroa.23.3 = phi i64 [ 0, %bb.o ], [ %i.jd, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.15.3 = phi ptr [ null, %bb.o ], [ %.sroa.15.2, %._crit_edge.loopexit.i ] ; 4 uses
  %.sroa.0279.6 = phi ptr [ null, %bb.o ], [ %.sroa.0279.5, %._crit_edge.loopexit.i ] ; 11 uses
  %i.je = phi i64 [ 0, %bb.o ], [ %i.jc, %._crit_edge.loopexit.i ]
  %spec.select.i = phi i1 [ true, %bb.o ], [ %spec.select.ph.i, %._crit_edge.loopexit.i ]
  %i.jf = load ptr, ptr %6, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.at
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %._crit_edge.i
  %i.jh = load i64, ptr %i.at, align 8, !tbaa !75, !noalias !218
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #22, !noalias !218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !218
  %i.jj = load ptr, ptr %5, align 8, !tbaa !112, !noalias !218 ; 3 uses
  %i.jk = load ptr, ptr %i.av, align 8, !tbaa !108, !noalias !218 ; 2 uses
  %.not4.i.i.i88.i = icmp eq ptr %i.jj, %i.jk
  br i1 %.not4.i.i.i88.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i, label %.lr.ph.i.i.i89.i

.lr.ph.i.i.i89.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i
  %.05.i.i.i90.i = phi ptr [ %i.jq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ] ; 3 uses
  %i.jl = load ptr, ptr %.05.i.i.i90.i, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i90.i, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i: ; preds = %.lr.ph.i.i.i89.i
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !75, !noalias !218
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #22, !noalias !218
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i: ; preds = %.lr.ph.i.i.i89.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i90.i, i64 32 ; 2 uses
  %.not.i.i.i93.i = icmp eq ptr %i.jq, %i.jk
  br i1 %.not.i.i.i93.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i, label %.lr.ph.i.i.i89.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i
  %.pr.i95.i = load ptr, ptr %5, align 8, !tbaa !112, !noalias !218
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  %i.jr = phi ptr [ %.pr.i95.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ] ; 3 uses
  %.not.i.i1.i97.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i1.i97.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i
  %i.js = load ptr, ptr %i.aw, align 8, !tbaa !109, !noalias !218
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #22, !noalias !218
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i: ; preds = %bb.br, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !218
  %i.jw = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !218 ; 2 uses
  store ptr %i.jw, ptr %4, align 8, !tbaa !83, !noalias !218
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !218
  %i.jy = getelementptr i8, ptr %i.jw, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !218
  %i.ka = getelementptr inbounds i8, ptr %4, i64 %i.jz
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !83, !noalias !218
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kb, align 8, !tbaa !83, !noalias !218
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !75, !noalias !218
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #22, !noalias !218
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kb, align 8, !tbaa !83, !noalias !218
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ki) #21, !noalias !218
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !218 ; 2 uses
  store ptr %i.kj, ptr %4, align 8, !tbaa !83, !noalias !218
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !218
  %i.kl = getelementptr i8, ptr %i.kj, i64 -24
  %i.km = load i64, ptr %i.kl, align 8, !noalias !218
  %i.kn = getelementptr inbounds i8, ptr %4, i64 %i.km
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !83, !noalias !218
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ko, align 8, !tbaa !116, !noalias !218
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kp) #21, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !218
  %.not.i.i.i107.i = icmp eq ptr %.sroa.0279.6, null ; 3 uses
  %or.cond = select i1 %spec.select.i, i1 true, i1 %.not.i.i.i107.i
  br i1 %or.cond, label %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.bu

bb.bs:                                            ; preds = %bb.bq, %bb.n
  %.sroa.0279.0 = phi ptr [ null, %bb.n ], [ %.sroa.0279.2, %bb.bq ] ; 3 uses
  %i.kq = phi i64 [ 0, %bb.n ], [ %i.jb, %bb.bq ]
  %.pn40.i = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %.pn37.pn.i, %bb.bq ] ; 2 uses
  %i.kr = load ptr, ptr %6, align 8, !tbaa !74, !noalias !218 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.at
  br i1 %i.ks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %bb.bs
  %i.kt = load i64, ptr %i.at, align 8, !tbaa !75, !noalias !218
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #22, !noalias !218
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !218
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !218
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #21, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !218
  %.not.i.i.i106.i = icmp eq ptr %.sroa.0279.0, null
  br i1 %.not.i.i.i106.i, label %.body68, label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i
  %i.kv = ptrtoint ptr %.sroa.0279.0 to i64
  %i.kw = sub i64 %i.kq, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0, i64 noundef %i.kw) #22, !noalias !218
  br label %.body68

bb.bu:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i
  %i.kx = ptrtoint ptr %.sroa.0279.6 to i64
  %i.ky = sub i64 %i.je, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.6, i64 noundef %i.ky) #22, !noalias !218
  br label %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bu, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i
  %i.kz = load i64, ptr %i.k, align 8, !tbaa !77
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.bv, label %.preheader

.preheader:                                       ; preds = %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not877 = icmp eq ptr %.sroa.0279.6, %.sroa.15.3
  br i1 %.not877, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph883

.lr.ph883:                                        ; preds = %.preheader
  %i.lb = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.lc = ptrtoint ptr %2 to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 3 uses
  %i.le = ashr i64 %i.ld, 4                       ; 2 uses
  %i.lf = icmp sgt i64 %i.le, 0
  %i.lg = and i64 %i.ld, -16
  %scevgep.i.i.i = getelementptr i8, ptr %2, i64 %i.lg ; 2 uses
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.lb, %.pre59.i.i.i
  br label %bb.ci

bb.bv:                                            ; preds = %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.lh = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %13) #21 ; 0 uses
  %.not296887 = icmp eq ptr %.sroa.0279.6, %.sroa.15.3
  br i1 %.not296887, label %._crit_edge894, label %.lr.ph893

._crit_edge894:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.bv
  %.sroa.0267.0.lcssa = phi ptr [ null, %bb.bv ], [ %.sroa.0267.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.bv ], [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.bv ], [ %.sroa.18.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.li = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %13) #21 ; 0 uses
end_hunk_0
