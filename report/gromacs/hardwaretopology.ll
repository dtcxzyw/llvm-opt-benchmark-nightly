Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hardwaretopology?download=true
inline.NumInlined: 1751
inline.NumDeleted: 847
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_121parseSysFsCpuTopologyEPNS_16HardwareTopology7MachineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8ArrayRefIKiEE:bb.a
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !127, !noalias !116
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eo = trunc nsw i64 %i.ed to i32              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21, !noalias !116
  %.not.i55.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i55.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.eo, ptr %i.cr, align 4, !tbaa !127, !noalias !116
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 4 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.eq = ptrtoint ptr %i.cq to i64
  %i.er = ptrtoint ptr %.sroa.0279.1 to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc56.i unwind label %.loopexit.split-lp119.i, !noalias !116

.noexc56.i:                                       ; preds = %bb.an
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %i.ey = select i1 %i.ew, i64 2305843009213693951, i64 %i.ex ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #26
          to label %.noexc57.i unwind label %.loopexit118.i, !noalias !116 ; 5 uses

.noexc57.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store i32 %i.eo, ptr %i.fb, align 4, !tbaa !127, !noalias !116
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %.noexc57.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr align 4 %.sroa.0279.1, i64 %i.es, i1 false), !noalias !116
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %.noexc57.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 4 uses
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0279.1, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.1, i64 noundef %i.es) #22, !noalias !116
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

.loopexit118.i:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit120.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

.loopexit.split-lp119.i:                          ; preds = %bb.an
  %lpad.loopexit.split-lp121.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

bb.aq:                                            ; preds = %bb.aa
  %i.ff = load ptr, ptr %i.dv, align 8, !tbaa !78, !noalias !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !116
  %i.fg = tail call ptr @__errno_location() #25   ; 12 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116 ; 2 uses
  store i32 0, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  %i.fi = call noundef i64 @__isoc23_strtol(ptr noundef %i.ff, ptr noundef nonnull %i.d, i32 noundef 10), !noalias !116 ; 4 uses
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !128, !noalias !116
  %i.fk = icmp eq ptr %i.fj, %i.ff
  br i1 %i.fk, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #24
          to label %bb.as unwind label %bb.at, !noalias !116

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %.critedge.i.i59.i, %bb.ar
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.au, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i

bb.au:                                            ; preds = %bb.at
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !116
  br label %.body.i65

bb.av:                                            ; preds = %bb.aq
  %i.fo = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 34
  %i.fq = add i64 %i.fi, -2147483648
  %i.fr = icmp ult i64 %i.fq, -4294967296
  %or.cond.i.i58.i = or i1 %i.fr, %i.fp
  br i1 %or.cond.i.i58.i, label %.critedge.i.i59.i, label %bb.ax

.critedge.i.i59.i:                                ; preds = %bb.av
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #24
          to label %bb.aw unwind label %bb.at, !noalias !116

bb.aw:                                            ; preds = %.critedge.i.i59.i
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fs = icmp eq i32 %i.fo, 0
  br i1 %i.fs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ft = trunc nsw i64 %i.fi to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !116
  %i.fu = load ptr, ptr %8, align 8, !tbaa !126, !noalias !116
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !78, !noalias !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !116
  %i.fx = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116 ; 2 uses
  store i32 0, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  %i.fy = call noundef i64 @__isoc23_strtol(ptr noundef %i.fw, ptr noundef nonnull %i.c, i32 noundef 10), !noalias !116 ; 3 uses
  %i.fz = load ptr, ptr %i.c, align 8, !tbaa !128, !noalias !116
  %i.ga = icmp eq ptr %i.fz, %i.fw
  br i1 %i.ga, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.12) #24
          to label %bb.bb unwind label %bb.bc, !noalias !116

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %.critedge.i.i65.i, %bb.ba
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bd, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.fx, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !116
  br label %.body.i65

bb.be:                                            ; preds = %bb.az
  %i.ge = load i32, ptr %i.fg, align 4, !tbaa !127, !noalias !116 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 34
  %i.gg = add i64 %i.fy, -2147483648
  %i.gh = icmp ult i64 %i.gg, -4294967296
  %or.cond.i.i64.i = or i1 %i.gh, %i.gf
  br i1 %or.cond.i.i64.i, label %.critedge.i.i65.i, label %bb.bg

.critedge.i.i65.i:                                ; preds = %bb.be
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.12) #24
          to label %bb.bf unwind label %bb.bc, !noalias !116

bb.bf:                                            ; preds = %.critedge.i.i65.i
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.gi = icmp eq i32 %i.ge, 0
  br i1 %i.gi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.fx, ptr %i.fg, align 4, !tbaa !127, !noalias !116
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !116
  %.not171.i = icmp sgt i64 %i.fi, %i.fy
  br i1 %.not171.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bi
  %i.gj = trunc nsw i64 %i.fy to i32
  %i.gk = icmp slt i64 %i.fi, 0
  br i1 %i.gk, label %.lr.ph.i.us, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.preheader.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.23.1 = phi ptr [ %.sroa.23.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.23.0, %.lr.ph.preheader.i ] ; 2 uses
  %i.gl = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.15.0, %.lr.ph.preheader.i ]
  %i.gm = phi ptr [ %.sroa.0279.7.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.sroa.0279.1, %.lr.ph.preheader.i ] ; 4 uses
  %i.gn = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cp, %.lr.ph.preheader.i ]
  %i.go = phi ptr [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cq, %.lr.ph.preheader.i ] ; 4 uses
  %i.gp = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cr, %.lr.ph.preheader.i ]
  %i.gq = phi ptr [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cs, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.0279.4826 = phi ptr [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ct, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.15.1825 = phi ptr [ %i.ho, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.cu, %.lr.ph.preheader.i ] ; 8 uses
  %storemerge172.i = phi i32 [ %i.hp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ft, %.lr.ph.preheader.i ] ; 5 uses
  %i.gr = icmp eq ptr %.sroa.15.1825, %.sroa.0279.4826
  br i1 %i.gr, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split
  %i.gs = ptrtoint ptr %.sroa.0279.4826 to i64
  %i.gt = ptrtoint ptr %.sroa.15.1825 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = getelementptr i8, ptr %.sroa.15.1825, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !127, !noalias !116
  %.not34.i = icmp slt i32 %i.gx, %storemerge172.i
  br i1 %.not34.i, label %bb.bk, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.bj, %.lr.ph.preheader.i
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0, %.lr.ph.preheader.i ], [ %.sroa.23.1, %bb.bj ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0, %.lr.ph.preheader.i ], [ %i.gl, %bb.bj ]
  %.sroa.0279.4.lcssa = phi ptr [ %.sroa.0279.1, %.lr.ph.preheader.i ], [ %i.gm, %bb.bj ] ; 9 uses
  %.lcssa755 = phi ptr [ %i.cp, %.lr.ph.preheader.i ], [ %i.gn, %bb.bj ]
  %.lcssa751 = phi ptr [ %i.cq, %.lr.ph.preheader.i ], [ %i.go, %bb.bj ] ; 2 uses
  %.lcssa747 = phi ptr [ %i.cr, %.lr.ph.preheader.i ], [ %i.gp, %bb.bj ] ; 3 uses
  %.lcssa743 = phi ptr [ %i.cs, %.lr.ph.preheader.i ], [ %i.gq, %bb.bj ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.lcssa747, %.sroa.0279.4.lcssa
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.lr.ph.i.us
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.split
  %.not.i70.i = icmp eq ptr %.sroa.0279.4826, %i.gq
  br i1 %.not.i70.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 %storemerge172.i, ptr %.sroa.0279.4826, align 4, !tbaa !127, !noalias !116
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.gy = ptrtoint ptr %i.gq to i64
  %i.gz = ptrtoint ptr %.sroa.15.1825 to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 6 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775804
  br i1 %i.hb, label %.split, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i

.split:                                           ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc76.i unwind label %.loopexit.split-lp.i, !noalias !116

.noexc76.i:                                       ; preds = %.split
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i: ; preds = %bb.bm
  %i.hc = ashr exact i64 %i.ha, 2                 ; 3 uses
  %.sroa.speculated.i.i.i72.i = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i.i72.i, %i.hc ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  %i.hf = call i64 @llvm.umin.i64(i64 %i.hd, i64 2305843009213693951)
  %i.hg = select i1 %i.he, i64 2305843009213693951, i64 %i.hf ; 3 uses
  %.not.i.i.i73.i = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %.not.i.i.i73.i)
  %i.hh = shl nuw nsw i64 %i.hg, 2
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #26
          to label %.noexc77.i unwind label %.loopexit.i.split, !noalias !116 ; 5 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.ha ; 2 uses
  store i32 %storemerge172.i, ptr %i.hj, align 4, !tbaa !127, !noalias !116
  %i.hk = icmp sgt i64 %i.ha, 0
  br i1 %i.hk, label %bb.bn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i

bb.bn:                                            ; preds = %.noexc77.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %.sroa.15.1825, i64 %i.ha, i1 false), !noalias !116
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i: ; preds = %bb.bn, %.noexc77.i
  %.not.i17.i.i75.i = icmp eq ptr %.sroa.15.1825, null
  br i1 %.not.i17.i.i75.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.15.1825, i64 noundef %i.ha) #22, !noalias !116
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i74.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hg ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bl
  %.sroa.23.4.a = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.1, %bb.bl ] ; 2 uses
  %.pn294 = phi ptr [ %i.hj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0279.4826, %bb.bl ]
  %.sroa.0279.7.a = phi ptr [ %i.hi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gm, %bb.bl ] ; 2 uses
  %i.hm = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.go, %bb.bl ] ; 2 uses
  %i.hn = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gq, %bb.bl ] ; 2 uses
  %i.ho = phi ptr [ %i.hi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1825, %bb.bl ] ; 2 uses
  %.sroa.15.4.a = getelementptr inbounds nuw i8, ptr %.pn294, i64 4 ; 8 uses
  %i.hp = add i32 %storemerge172.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge172.i, %i.gj
  br i1 %exitcond.not.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %.lr.ph.split, !llvm.loop !129

.loopexit.i.split:                                ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i71.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

.loopexit.split-lp.i:                             ; preds = %.split
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

bb.bp:                                            ; preds = %bb.aa
  %.not.i.i78.i = icmp eq ptr %i.cp, %.sroa.0279.1
  br i1 %.not.i.i78.i, label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i:    ; preds = %bb.bp
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i

_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i, %bb.bp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.lr.ph.i.us, %bb.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.al
  %.sroa.23.2 = phi ptr [ %.sroa.23.0, %bb.bp ], [ %.sroa.23.0, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.0, %bb.al ], [ %.sroa.23.0, %bb.bi ], [ %.sroa.23.1.lcssa, %.lr.ph.i.us ], [ %.sroa.23.1.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.23.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.0, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ep, %bb.al ], [ %.sroa.15.0, %bb.bi ], [ %.sroa.15.1.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.sroa.0279.5 = phi ptr [ %.sroa.0279.1, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0279.1, %bb.al ], [ %.sroa.0279.1, %bb.bi ], [ %.sroa.0279.4.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.0279.7.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %i.hq = phi ptr [ %i.cp, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ep, %bb.al ], [ %i.cp, %bb.bi ], [ %.lcssa755, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hr = phi ptr [ %i.cq, %bb.bp ], [ %i.cq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cq, %bb.al ], [ %i.cq, %bb.bi ], [ %.lcssa751, %.lr.ph.i.us ], [ %.lcssa751, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %i.hs = phi ptr [ %i.cp, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ep, %bb.al ], [ %i.cr, %bb.bi ], [ %.lcssa747, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.ht = phi ptr [ %i.cs, %bb.bp ], [ %i.cs, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cq, %bb.al ], [ %i.cs, %bb.bi ], [ %.lcssa743, %.lr.ph.i.us ], [ %.lcssa743, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hu = phi ptr [ %i.cp, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ep, %bb.al ], [ %i.ct, %bb.bi ], [ %.lcssa747, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.sroa.15.4.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hv = phi ptr [ %.sroa.0279.1, %bb.bp ], [ %.sroa.0279.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %i.fa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cu, %bb.al ], [ %i.cu, %bb.bi ], [ %.sroa.0279.4.lcssa, %.lr.ph.i.us ], [ %.sroa.0279.4.lcssa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.ho, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %.330.i = phi i1 [ true, %bb.bp ], [ true, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ %.027175.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.027175.i, %bb.al ], [ %.027175.i, %bb.bi ], [ true, %.lr.ph.i.us ], [ true, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.027175.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 2 uses
  %.1.i = phi i1 [ false, %bb.bp ], [ false, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79.i ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ true, %bb.al ], [ true, %bb.bi ], [ false, %.lr.ph.i.us ], [ false, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ true, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hw = load ptr, ptr %9, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.by
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i
  %i.hy = load i64, ptr %i.by, align 8, !tbaa !79, !noalias !116
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #22, !noalias !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !116
  %i.ia = load ptr, ptr %8, align 8, !tbaa !126, !noalias !116 ; 3 uses
  %i.ib = load ptr, ptr %i.ca, align 8, !tbaa !120, !noalias !116 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ia, %i.ib
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ih, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.ic = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.if = load i64, ptr %i.id, align 8, !tbaa !79, !noalias !116
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #22, !noalias !116
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i81.i = icmp eq ptr %i.ih, %i.ib
  br i1 %.not.i.i.i81.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !126, !noalias !116
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ii = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ij = load ptr, ptr %i.cb, align 8, !tbaa !123, !noalias !116
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.im) #22, !noalias !116
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.bq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !116
  store ptr %i.cc, ptr %7, align 8, !tbaa !92, !noalias !116
  %i.in = load i64, ptr %i.ce, align 8, !noalias !116
  %i.io = getelementptr inbounds i8, ptr %7, i64 %i.in
  store ptr %i.cd, ptr %i.io, align 8, !tbaa !92, !noalias !116
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cf, align 8, !tbaa !92, !noalias !116
  %i.ip = load ptr, ptr %i.cg, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ch
  br i1 %i.iq, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ir = load i64, ptr %i.ch, align 8, !tbaa !79, !noalias !116
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #22, !noalias !116
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cf, align 8, !tbaa !92, !noalias !116
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #21, !noalias !116
  store ptr %i.cj, ptr %7, align 8, !tbaa !92, !noalias !116
  %i.it = load i64, ptr %i.cl, align 8, !noalias !116
  %i.iu = getelementptr inbounds i8, ptr %7, i64 %i.it
  store ptr %i.ck, ptr %i.iu, align 8, !tbaa !92, !noalias !116
  store i64 0, ptr %i.cm, align 8, !tbaa !132, !noalias !116
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cn) #21, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !116
  br i1 %.1.i, label %bb.p, label %._crit_edge.loopexit.i

.body.i65:                                        ; preds = %.loopexit.split-lp.i, %.loopexit.i.split, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i, %.loopexit.split-lp119.i, %.loopexit118.i, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %bb.z
  %.sroa.0279.3 = phi ptr [ %.sroa.0279.1, %bb.z ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %.sroa.0279.1, %.loopexit.split-lp119.i ], [ %.sroa.0279.1, %.loopexit118.i ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %.sroa.0279.1, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %i.gm, %.loopexit.split-lp.i ], [ %i.gm, %.loopexit.i.split ]
  %i.iv = phi ptr [ %i.cq, %bb.z ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %i.cq, %.loopexit.split-lp119.i ], [ %i.cq, %.loopexit118.i ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %i.cq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %i.go, %.loopexit.split-lp.i ], [ %i.go, %.loopexit.i.split ]
  %.pn37.i = phi { ptr, i32 } [ %i.du, %bb.z ], [ %i.eg, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %lpad.loopexit.split-lp121.i, %.loopexit.split-lp119.i ], [ %lpad.loopexit120.i, %.loopexit118.i ], [ %i.fl, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i60.i ], [ %i.gb, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i66.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ]
  %i.iw = load ptr, ptr %9, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.by
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %.body.i65
  %i.iy = load i64, ptr %i.by, align 8, !tbaa !79, !noalias !116
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #22, !noalias !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %.body.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !116
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !116
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %7) #21, !noalias !116
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %bb.y
  %.sroa.0279.2 = phi ptr [ %.sroa.0279.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %.sroa.0279.1, %bb.y ]
  %i.ja = phi ptr [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %i.cq, %bb.y ]
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn37.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !116
  %i.jb = ptrtoint ptr %i.ja to i64
  br label %bb.bt

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
  %i.jf = load ptr, ptr %6, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.at
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %._crit_edge.i
  %i.jh = load i64, ptr %i.at, align 8, !tbaa !79, !noalias !116
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #22, !noalias !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !116
  %i.jj = load ptr, ptr %5, align 8, !tbaa !126, !noalias !116 ; 3 uses
  %i.jk = load ptr, ptr %i.av, align 8, !tbaa !120, !noalias !116 ; 2 uses
  %.not4.i.i.i88.i = icmp eq ptr %i.jj, %i.jk
  br i1 %.not4.i.i.i88.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i, label %.lr.ph.i.i.i89.i

.lr.ph.i.i.i89.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i
  %.05.i.i.i90.i = phi ptr [ %i.jq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ] ; 3 uses
  %i.jl = load ptr, ptr %.05.i.i.i90.i, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i90.i, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i: ; preds = %.lr.ph.i.i.i89.i
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !79, !noalias !116
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #22, !noalias !116
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i: ; preds = %.lr.ph.i.i.i89.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i90.i, i64 32 ; 2 uses
  %.not.i.i.i93.i = icmp eq ptr %i.jq, %i.jk
  br i1 %.not.i.i.i93.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i, label %.lr.ph.i.i.i89.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i92.i
  %.pr.i95.i = load ptr, ptr %5, align 8, !tbaa !126, !noalias !116
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  %i.jr = phi ptr [ %.pr.i95.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i94.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ] ; 3 uses
  %.not.i.i1.i97.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i1.i97.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i
  %i.js = load ptr, ptr %i.aw, align 8, !tbaa !123, !noalias !116
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #22, !noalias !116
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i: ; preds = %bb.bs, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !116
  %i.jw = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !116 ; 2 uses
  store ptr %i.jw, ptr %4, align 8, !tbaa !92, !noalias !116
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !116
  %i.jy = getelementptr i8, ptr %i.jw, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !116
  %i.ka = getelementptr inbounds i8, ptr %4, i64 %i.jz
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !92, !noalias !116
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kb, align 8, !tbaa !92, !noalias !116
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !79, !noalias !116
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #22, !noalias !116
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kb, align 8, !tbaa !92, !noalias !116
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ki) #21, !noalias !116
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !116 ; 2 uses
  store ptr %i.kj, ptr %4, align 8, !tbaa !92, !noalias !116
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !116
  %i.kl = getelementptr i8, ptr %i.kj, i64 -24
  %i.km = load i64, ptr %i.kl, align 8, !noalias !116
  %i.kn = getelementptr inbounds i8, ptr %4, i64 %i.km
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !92, !noalias !116
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ko, align 8, !tbaa !132, !noalias !116
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kp) #21, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !116
  %.not.i.i.i107.i = icmp eq ptr %.sroa.0279.6, null ; 3 uses
  %or.cond = select i1 %spec.select.i, i1 true, i1 %.not.i.i.i107.i
  br i1 %or.cond, label %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.bv

bb.bt:                                            ; preds = %bb.br, %bb.n
  %.sroa.0279.0 = phi ptr [ null, %bb.n ], [ %.sroa.0279.2, %bb.br ] ; 3 uses
  %i.kq = phi i64 [ 0, %bb.n ], [ %i.jb, %bb.br ]
  %.pn40.i = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %.pn37.pn.i, %bb.br ] ; 2 uses
  %i.kr = load ptr, ptr %6, align 8, !tbaa !78, !noalias !116 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.at
  br i1 %i.ks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %bb.bt
  %i.kt = load i64, ptr %i.at, align 8, !tbaa !79, !noalias !116
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #22, !noalias !116
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !116
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !116
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #21, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !116
  %.not.i.i.i106.i = icmp eq ptr %.sroa.0279.0, null
  br i1 %.not.i.i.i106.i, label %.body68, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i
  %i.kv = ptrtoint ptr %.sroa.0279.0 to i64
  %i.kw = sub i64 %i.kq, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0, i64 noundef %i.kw) #22, !noalias !116
  br label %.body68

bb.bv:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i
  %i.kx = ptrtoint ptr %.sroa.0279.6 to i64
  %i.ky = sub i64 %i.je, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.6, i64 noundef %i.ky) #22, !noalias !116
  br label %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bv, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102.i
  %i.kz = load i64, ptr %i.k, align 8, !tbaa !81
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.bw, label %.preheader

.preheader:                                       ; preds = %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not873 = icmp eq ptr %.sroa.0279.6, %.sroa.15.3
  br i1 %.not873, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph879

.lr.ph879:                                        ; preds = %.preheader
  %i.lb = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.lc = ptrtoint ptr %2 to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 3 uses
  %i.le = ashr i64 %i.ld, 4                       ; 2 uses
  %i.lf = icmp sgt i64 %i.le, 0
  %i.lg = and i64 %i.ld, -16
  %scevgep.i.i.i = getelementptr i8, ptr %2, i64 %i.lg ; 2 uses
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.lb, %.pre59.i.i.i
  br label %bb.ck

bb.bw:                                            ; preds = %_ZN3gmx12_GLOBAL__N_114parseCpuStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.lh = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %13) #21 ; 0 uses
  %.not296883 = icmp eq ptr %.sroa.0279.6, %.sroa.15.3
  br i1 %.not296883, label %._crit_edge890, label %.lr.ph889

._crit_edge890:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.bw
  %.sroa.0267.0.lcssa = phi ptr [ null, %bb.bw ], [ %.sroa.0267.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.bw ], [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.bw ], [ %.sroa.18.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.li = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %13) #21 ; 0 uses
end_hunk_0
