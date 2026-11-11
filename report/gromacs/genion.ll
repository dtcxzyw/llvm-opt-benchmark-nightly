Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genion?download=true
inline.NumInlined: 841
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z10gmx_genioniPPc:bb.a
  %i.mi = getelementptr i8, ptr %i.mh, i64 -4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !12
  %i.mk = add nsw i32 %i.mj, 1
  %i.ml = add i32 %i.mf, 1
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.053256
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !12
  %i.mo = add nsw i32 %i.mn, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 617, ptr noundef nonnull @.str.47, ptr noundef %i.me, i32 noundef %i.mf, i32 noundef %i.mk, i32 noundef %i.ml, i32 noundef %i.mo) #23
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn100 = phi { ptr, i32 } [ %i.mq, %bb.bf ], [ %i.mp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dz

bb.bh:                                            ; preds = %.lr.ph257
  %i.mr = add nuw nsw i64 %.053256, 1             ; 2 uses
  %exitcond287.not = icmp eq i64 %i.mr, %i.lt
  br i1 %exitcond287.not, label %.lr.ph261, label %.lr.ph257, !llvm.loop !85

bb.bi:                                            ; preds = %.lr.ph261, %bb.bj
  %indvars.iv288 = phi i64 [ 1, %.lr.ph261 ], [ %indvars.iv.next289, %bb.bj ] ; 3 uses
  %i.ms = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv288 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !12
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [36 x i8], ptr %i.lw, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !56
  %i.my = getelementptr i8, ptr %i.ms, i64 -4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !12
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [36 x i8], ptr %i.lw, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !56
  %i.ne = icmp eq i32 %i.mx, %i.nd
  br i1 %i.ne, label %bb.bj, label %.critedge.loopexit

bb.bj:                                            ; preds = %bb.bi
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %i.lt
  br i1 %exitcond291.not, label %.critedge.loopexit, label %bb.bi, !llvm.loop !86

bb.bk:                                            ; preds = %bb.cc, %bb.ce, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %bb.cb, %bb.ca, %bb.by
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.critedge.loopexit:                               ; preds = %bb.bj, %bb.bi
  %.lcssa226.ph = phi i64 [ %indvars.iv288, %bb.bi ], [ %i.lt, %bb.bj ] ; 2 uses
  %.052.lcssa.ph = trunc i64 %.lcssa226.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit, %.critedge.loopexit
  %.052.lcssa = phi i32 [ 1, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit ], [ %.052.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %.lcssa226 = phi i64 [ 1, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit ], [ %.lcssa226.ph, %.critedge.loopexit ] ; 2 uses
  %i.ng = urem i64 %i.lt, %.lcssa226
  %i.nh = udiv i64 %i.lt, %.lcssa226              ; 2 uses
  %.not89 = icmp eq i64 %i.ng, 0
  br i1 %.not89, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(69) @.str.39, i8 noundef zeroext 2)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ni = load ptr, ptr %i.ln, align 8, !tbaa !54
  %i.nj = load ptr, ptr %10, align 8, !tbaa !55
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = ashr exact i64 %i.nm, 2
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 635, ptr noundef nonnull @.str.48, i64 noundef %i.nn, i32 noundef %.052.lcssa) #23
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn97 = phi { ptr, i32 } [ %i.np, %bb.bp ], [ %i.no, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dz

bb.br:                                            ; preds = %.critedge
  %i.nq = trunc i64 %i.nh to i32                  ; 4 uses
  %i.nr = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ns = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nr, ptr noundef nonnull @.str.49, i32 noundef %.052.lcssa, i32 noundef %i.nq) #27 ; 0 uses
  %i.nt = load i32, ptr %i.d, align 4, !tbaa !12
  %i.nu = load i32, ptr %i.e, align 4, !tbaa !12
  %i.nv = add nsw i32 %i.nu, %i.nt
  %i.nw = icmp sgt i32 %i.nv, %i.nq
  br i1 %i.nw, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(69) @.str.39, i8 noundef zeroext 2)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 644, ptr noundef nonnull @.str.50) #23
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %bb.bs
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn95 = phi { ptr, i32 } [ %i.ny, %bb.bw ], [ %i.nx, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.dz

bb.by:                                            ; preds = %bb.br
  %i.nz = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.37, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.bz unwind label %bb.bk

bb.bz:                                            ; preds = %bb.by
  br i1 %i.nz, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.oa = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.37, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.cb unwind label %bb.bk

bb.cb:                                            ; preds = %bb.ca
  %i.ob = load i32, ptr %i.d, align 4, !tbaa !12
  %i.oc = load i32, ptr %i.e, align 4, !tbaa !12
  %i.od = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.oe = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.of = load ptr, ptr %i.w, align 8, !tbaa !15
  invoke fastcc void @_ZL12update_topolPKciiS0_S0_Pc(ptr noundef %i.oa, i32 noundef %i.ob, i32 noundef %i.oc, ptr noundef %i.od, ptr noundef %i.oe, ptr noundef %i.of)
          to label %bb.cc unwind label %bb.bk

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %sext = shl i64 %i.nh, 32                       ; 3 uses
  %i.og = ashr exact i64 %sext, 32                ; 4 uses
  %i.oh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.39, i32 noundef 652, i64 noundef range(i64 -2147483648, 2147483648) %i.og, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %bb.bk ; 4 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %bb.cc
  %i.oi = load i32, ptr %i.p, align 4, !tbaa !119
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %5, i32 noundef %i.oi, ptr noundef nonnull %i.o)
          to label %bb.cd unwind label %bb.bk

bb.cd:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.oj = load i32, ptr %i.l, align 4, !tbaa !12  ; 2 uses
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ol = invoke noundef i64 @_ZN3gmx14makeRandomSeedEv()
          to label %bb.cf unwind label %bb.bk

bb.cf:                                            ; preds = %bb.ce
  %i.om = trunc i64 %i.ol to i32                  ; 2 uses
  store i32 %i.om, ptr %i.l, align 4, !tbaa !12
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.on = phi i32 [ %i.om, %bb.cf ], [ %i.oj, %bb.cd ]
  %i.oo = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.op = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oo, ptr noundef nonnull @.str.52, i32 noundef %i.on) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.oq = load i32, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.or = load ptr, ptr %i.ln, align 8, !tbaa !54 ; 3 uses
  %i.os = load ptr, ptr %10, align 8, !tbaa !55   ; 4 uses
  %i.ot = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ou = ptrtoint ptr %i.os to i64               ; 2 uses
  %i.ov = sub i64 %i.ot, %i.ou                    ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.or, %i.os
  br i1 %.not.i.i.i.i, label %.noexc133, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ow = icmp ugt i64 %i.ov, 9223372036854775804
  br i1 %i.ow, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.ch
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc132 unwind label %bb.dm

.noexc132:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ch
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ov) #28
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge unwind label %bb.dm

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre292 = load ptr, ptr %10, align 8, !tbaa !50 ; 2 uses
  %.pre293 = load ptr, ptr %i.ln, align 8, !tbaa !50
  %.pre294 = ptrtoint ptr %.pre293 to i64
  %.pre295 = ptrtoint ptr %.pre292 to i64
  br label %.noexc133

.noexc133:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge, %bb.cg
  %.pre-phi296 = phi i64 [ %.pre295, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge ], [ %i.ou, %bb.cg ]
  %.pre-phi = phi i64 [ %.pre294, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge ], [ %i.ot, %bb.cg ]
  %i.oy = phi ptr [ %.pre292, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge ], [ %i.os, %bb.cg ] ; 2 uses
  %i.oz = phi ptr [ %i.ox, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc133_crit_edge ], [ null, %bb.cg ] ; 10 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ov ; 3 uses
  %i.pb = sub i64 %.pre-phi, %.pre-phi296         ; 6 uses
  %i.pc = icmp sgt i64 %i.pb, 4
  br i1 %i.pc, label %bb.ci, label %bb.cj, !prof !58

bb.ci:                                            ; preds = %.noexc133
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.oz, ptr align 4 %i.oy, i64 %i.pb, i1 false)
  br label %bb.cl

bb.cj:                                            ; preds = %.noexc133
  %i.pd = icmp eq i64 %i.pb, 4
  br i1 %i.pd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.pe = load i32, ptr %i.oy, align 4, !tbaa !12
  store i32 %i.pe, ptr %i.oz, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %.not.i.i.i134 = icmp eq i64 %i.pb, %i.ov
  br i1 %.not.i.i.i134, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pf = getelementptr inbounds i8, ptr %i.oz, i64 %i.pb
  store i32 -1, ptr %i.pf, align 4, !tbaa !12, !noalias !120
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.cn:                                            ; preds = %bb.cl
  %i.pg = icmp eq i64 %i.ov, 9223372036854775804
  br i1 %i.pg, label %bb.co, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc138 unwind label %bb.dn

.noexc138:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cn
  %i.ph = lshr exact i64 %i.ov, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ph, i64 1)
  %i.pi = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ph
  %i.pj = call i64 @llvm.umin.i64(i64 %i.pi, i64 2305843009213693951) ; 2 uses
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %i.pl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pk) #28
          to label %.noexc139 unwind label %bb.dn ; 4 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pm = getelementptr inbounds i8, ptr %i.pl, i64 %i.ov
  store i32 -1, ptr %i.pm, align 4, !tbaa !12, !noalias !120
  %.not408 = icmp eq ptr %i.or, %i.os
  br i1 %.not408, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pl, ptr align 4 %i.oz, i64 %i.ov, i1 false), !noalias !120
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.cp, %.noexc139
  %.not.i17.i.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.ov) #25, !noalias !120
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.cq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pj
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.cm
  %.sroa.19.1 = phi ptr [ %i.pn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.pa, %bb.cm ] ; 5 uses
  %.sroa.0194.1 = phi ptr [ %i.pl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.oz, %bb.cm ] ; 7 uses
  %i.po = getelementptr inbounds i8, ptr %.sroa.0194.1, i64 %i.pb ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.pp, %.sroa.19.1
  br i1 %.not.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  store i32 %i.oq, ptr %i.pp, align 4, !tbaa !12, !noalias !120
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.pr = ptrtoint ptr %.sroa.19.1 to i64
  %i.ps = ptrtoint ptr %.sroa.0194.1 to i64
  %i.pt = sub i64 %i.pr, %i.ps                    ; 6 uses
  %i.pu = icmp eq i64 %i.pt, 9223372036854775804
  br i1 %i.pu, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc140 unwind label %bb.dn

.noexc140:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.pv = ashr exact i64 %i.pt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pv, i64 1)
  %i.pw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pv ; 2 uses
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = call i64 @llvm.umin.i64(i64 %i.pw, i64 2305843009213693951)
  %i.pz = select i1 %i.px, i64 2305843009213693951, i64 %i.py ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.qa = shl nuw nsw i64 %i.pz, 2
  %i.qb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #28
          to label %.noexc141 unwind label %bb.dn ; 4 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 %i.pt ; 2 uses
  store i32 %i.oq, ptr %i.qc, align 4, !tbaa !12, !noalias !120
  %i.qd = icmp sgt i64 %i.pt, 0
  br i1 %i.qd, label %bb.cu, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.cu:                                            ; preds = %.noexc141
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qb, ptr nonnull align 4 %.sroa.0194.1, i64 %i.pt, i1 false), !noalias !120
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cu, %.noexc141
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.1, i64 noundef %i.pt) #25, !noalias !120
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.pz
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.cr
  %.sroa.19.2 = phi ptr [ %i.qf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.19.1, %bb.cr ] ; 5 uses
  %.sroa.10.0 = phi ptr [ %i.qe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.pq, %bb.cr ] ; 5 uses
  %.sroa.0194.2 = phi ptr [ %i.qb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0194.1, %bb.cr ] ; 13 uses
  %.not.i.i10.i = icmp eq ptr %.sroa.0194.2, %.sroa.10.0
  br i1 %.not.i.i10.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.qg = ptrtoint ptr %.sroa.10.0 to i64
  %i.qh = ptrtoint ptr %.sroa.0194.2 to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = ashr exact i64 %i.qi, 2
  %i.qk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qj, i1 true)
  %i.ql = shl nuw nsw i64 %i.qk, 1
  %i.qm = xor i64 %i.ql, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.0194.2, ptr nonnull %.sroa.10.0, i64 noundef %i.qm)
          to label %.noexc142 unwind label %bb.dn

.noexc142:                                        ; preds = %bb.cv
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %.sroa.0194.2, ptr nonnull %.sroa.10.0)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i unwind label %bb.dn

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i: ; preds = %.noexc142, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !120
  %i.qn = getelementptr inbounds i8, ptr %.sroa.10.0, i64 -4 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.0194.2, %i.qn
  br i1 %.not24.i, label %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, %.lr.ph.i135
  %i.qq = phi ptr [ null, %.lr.ph.i135 ], [ %i.tj, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 6 uses
  %i.qr = phi ptr [ null, %.lr.ph.i135 ], [ %i.tk, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 6 uses
  %i.qs = phi ptr [ null, %.lr.ph.i135 ], [ %i.tl, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 12 uses
  %i.qt = phi ptr [ null, %.lr.ph.i135 ], [ %i.tm, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 3 uses
  %.sroa.017.025.i = phi ptr [ %.sroa.0194.2, %.lr.ph.i135 ], [ %i.qw, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 2 uses
  %i.qu = load i32, ptr %.sroa.017.025.i, align 4, !tbaa !12
  %i.qv = add nsw i32 %i.qu, 1                    ; 6 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 4 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !12
  %i.qy = sub nsw i32 %i.qx, %i.qv                ; 2 uses
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %bb.cx, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.ra = ptrtoint ptr %i.qt to i64
  %i.rb = ptrtoint ptr %i.qs to i64               ; 4 uses
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 2                 ; 3 uses
  %i.re = zext nneg i32 %i.qy to i64              ; 9 uses
  %i.rf = add nsw i64 %i.rd, %i.re                ; 3 uses
  %i.rg = icmp ugt i64 %i.rf, %i.rd
  br i1 %i.rg, label %bb.cy, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.rh = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.ri = sub i64 %i.rh, %i.rb                    ; 4 uses
  %i.rj = ashr exact i64 %i.ri, 2                 ; 4 uses
  %i.rk = ptrtoint ptr %i.qq to i64               ; 3 uses
  %i.rl = sub i64 %i.rk, %i.rh
  %i.rm = ashr exact i64 %i.rl, 2                 ; 2 uses
  %i.rn = icmp ult i64 %i.rj, 2305843009213693952
  call void @llvm.assume(i1 %i.rn)
  %i.ro = xor i64 %i.rj, 2305843009213693951      ; 2 uses
  %i.rp = icmp ule i64 %i.rm, %i.ro
  call void @llvm.assume(i1 %i.rp)
  %.not28.i = icmp ult i64 %i.rm, %i.re
  br i1 %.not28.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.qr, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERN3gmx16ThreeFry2x64FastILj64EEEEvT_SB_OT0_:bb.a
  %i.h = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.i = lshr i64 %i.h, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %.sroa.017.048, align 4, !tbaa !12
  %i.l = load i32, ptr %i.j, align 4, !tbaa !12
  store i32 %i.l, ptr %.sroa.017.048, align 4, !tbaa !12
  store i32 %i.k, ptr %i.j, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit, %bb.c
  %.sroa.024.0 = phi ptr [ %i.g, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit ], [ %.sroa.017.048, %bb.c ] ; 2 uses
  %.not46 = icmp eq ptr %.sroa.024.0, %1
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit
  %.sroa.024.147 = phi ptr [ %i.an, %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit ], [ %.sroa.024.0, %bb.d ] ; 5 uses
  %i.m = ptrtoint ptr %.sroa.024.147 to i64
  %i.n = sub i64 %i.m, %i.c
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = add nsw i64 %i.o, 1
  %i.q = add nsw i64 %i.o, 2                      ; 3 uses
  %i.r = mul i64 %i.q, %i.p                       ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i64 %i.r, -1
  %i.t = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.u = zext i64 %i.t to i128
  %i.v = zext i64 %i.r to i128                    ; 2 uses
  %i.w = mul nuw i128 %i.u, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %.not21.i.i.i = icmp ult i64 %i.s, %i.x
  %extract15.i.i.i.i = lshr i128 %i.w, 64
  %extract.t16.i.i.i.i = trunc nuw i128 %extract15.i.i.i.i to i64 ; 2 uses
  br i1 %.not21.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sub i64 0, %i.r
  %i.z = urem i64 %i.y, %i.r                      ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.x
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ab = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %i.v                ; 2 uses
  %i.ae = trunc i128 %i.ad to i64
  %i.af = icmp ugt i64 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i, !llvm.loop !134

..loopexit_crit_edge.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %extract19.le.i.i.i.i = lshr i128 %i.ad, 64
  %extract.t20.le.i.i.i.i = trunc nuw i128 %extract19.le.i.i.i.i to i64
  br label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ag = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  br label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit: ; preds = %bb.e, %bb.f, %..loopexit_crit_edge.i.i.i.i, %bb.g
  %.0.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %extract.t16.i.i.i.i, %bb.e ], [ %extract.t20.le.i.i.i.i, %..loopexit_crit_edge.i.i.i.i ], [ %extract.t16.i.i.i.i, %bb.f ] ; 2 uses
  %i.ah = udiv i64 %.0.i.i.i, %i.q
  %i.ai = urem i64 %.0.i.i.i, %i.q
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.al = load i32, ptr %.sroa.024.147, align 4, !tbaa !12
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !12
  store i32 %i.am, ptr %.sroa.024.147, align 4, !tbaa !12
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !12
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !12
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !12
  %.not = icmp eq ptr %i.an, %1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !135

.lr.ph51:                                         ; preds = %.preheader, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit
  %.sroa.017.050 = phi ptr [ %.sroa.017.0, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit ], [ %.sroa.017.048, %.preheader ] ; 4 uses
  %i.ar = ptrtoint ptr %.sroa.017.050 to i64
  %i.as = sub i64 %i.ar, %i.c                     ; 2 uses
  %i.at = ashr exact i64 %i.as, 2                 ; 3 uses
  %.not.i = icmp eq i64 %i.as, -4
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph51
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.aw = zext i64 %i.av to i128
  %i.ax = zext i64 %i.au to i128                  ; 2 uses
  %i.ay = mul nuw i128 %i.aw, %i.ax               ; 2 uses
  %i.az = trunc i128 %i.ay to i64                 ; 2 uses
  %.not21.i = icmp ult i64 %i.at, %i.az
  %extract15.i.i = lshr i128 %i.ay, 64
  %extract.t16.i.i = trunc nuw i128 %extract15.i.i to i64 ; 2 uses
  br i1 %.not21.i, label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = xor i64 %i.at, -1
  %i.bb = urem i64 %i.ba, %i.au                   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.az
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.bd = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw i128 %i.be, %i.ax               ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !134

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.i.i
  %extract19.le.i.i = lshr i128 %i.bf, 64
  %extract.t20.le.i.i = trunc nuw i128 %extract19.le.i.i to i64
  br label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

bb.j:                                             ; preds = %.lr.ph51
  %i.bi = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  br label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit: ; preds = %bb.h, %bb.i, %..loopexit_crit_edge.i.i, %bb.j
  %.0.i = phi i64 [ %i.bi, %bb.j ], [ %extract.t16.i.i, %bb.h ], [ %extract.t20.le.i.i, %..loopexit_crit_edge.i.i ], [ %extract.t16.i.i, %bb.i ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.i ; 2 uses
  %i.bk = load i32, ptr %.sroa.017.050, align 4, !tbaa !12
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !12
  store i32 %i.bl, ptr %.sroa.017.050, align 4, !tbaa !12
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !12
  %.sroa.017.0 = getelementptr inbounds nuw i8, ptr %.sroa.017.050, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.017.0, %1
  br i1 %.not43, label %.loopexit, label %.lr.ph51, !llvm.loop !136

.loopexit:                                        ; preds = %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit, %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10insert_ioniPSt6vectorIiSaIiEEPiN3gmx8ArrayRefIKiEEPA3_fP5t_pbciiPKcP7t_atomsfS2_(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef range(i32 -1, 2) %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef nonnull readonly captures(none) %9, float noundef %10, ptr nofree noundef nonnull captures(none) %11) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 10 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = sext i32 %0 to i64                       ; 6 uses
  %i.g = icmp slt i32 %0, 0
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #23, !noalias !145
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0             ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit, label %.noexc11.i

.noexc11.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28, !noalias !145 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  store i32 0, ptr %i.i, align 4, !tbaa !12, !noalias !145
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 3 uses
  %i.l = add nsw i64 %i.f, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc11.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !12, !noalias !145
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc11.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.n, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.k, %.noexc11.i ]
  %i.o = mul nsw i32 %i.e, %0
  %i.p = sext i32 %i.o to i64
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.p
  %i.q = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %invariant.gep.i, i64 %i.q, i1 false), !tbaa !12, !noalias !145
  br label %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit

_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.18.4 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.j, %.lr.ph.i ] ; 4 uses
  %.sroa.14.2 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %.lr.ph.i ] ; 4 uses
  %.sroa.069.4 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.i, %.lr.ph.i ] ; 5 uses
  %i.r = fcmp ogt float %10, 0.000000e+00
  br i1 %i.r, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.t = fmul float %10, %10                      ; 2 uses
  %i.u = load ptr, ptr %11, align 8, !tbaa !55    ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %.not47.i93 = icmp eq ptr %i.u, %i.v
  br i1 %.not47.i93, label %.critedge, label %.lr.ph46.i.lr.ph

.lr.ph46.i.lr.ph:                                 ; preds = %.preheader
  %13 = ptrtoint ptr %.sroa.069.4 to i64          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = shl nuw nsw i64 %i.f, 2
  %i.z = add nsw i64 %i.f, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %.idx.i.i.i.i.i.i.i.i33 = shl nuw nsw i64 %i.z, 2 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph46.i.us, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %.lr.ph46.i.lr.ph
  %wide.trip.count.i36 = zext nneg i32 %0 to i64
  %i.ab = shl nuw nsw i64 %wide.trip.count.i36, 2
  br label %.lr.ph46.i

.lr.ph46.i.us:                                    ; preds = %.lr.ph46.i.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit.us
  %i.ac = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %i.v, %.lr.ph46.i.lr.ph ]
  %i.ad = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %i.u, %.lr.ph46.i.lr.ph ]
  %i.ae = phi i64 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %13, %.lr.ph46.i.lr.ph ]
  %.sroa.069.096.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.4, %.lr.ph46.i.lr.ph ] ; 9 uses
  %.sroa.14.095.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.14.2, %.lr.ph46.i.lr.ph ] ; 4 uses
  %.sroa.18.094.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.18.4, %.lr.ph46.i.lr.ph ] ; 5 uses
  %.not43.i.us = icmp eq ptr %.sroa.069.096.us, %.sroa.14.095.us
  br i1 %.not43.i.us, label %.critedge, label %.lr.ph.i28.us

.lr.ph.i28.us:                                    ; preds = %.lr.ph46.i.us, %..critedge_crit_edge.i.us
  %.sroa.036.045.i.us = phi ptr [ %i.at, %..critedge_crit_edge.i.us ], [ %i.ad, %.lr.ph46.i.us ] ; 2 uses
  %i.af = load i32, ptr %.sroa.036.045.i.us, align 4, !tbaa !12
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ag
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i28.us
  %.sroa.0.044.i.us = phi ptr [ %.sroa.069.096.us, %.lr.ph.i28.us ], [ %i.as, %bb.c ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.044.i.us, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %4, i64 %i.aj
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ah, ptr noundef %i.ak, ptr noundef nonnull %i.a)
          to label %.noexc.us unwind label %.loopexit.split.us

.noexc.us:                                        ; preds = %bb.b
  %i.al = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.am = load float, ptr %i.w, align 4, !tbaa !17 ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.an)
  %i.ap = load float, ptr %i.x, align 4, !tbaa !17 ; 2 uses
  %i.aq = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = fcmp uge float %i.aq, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.ar, label %bb.c, label %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us

bb.c:                                             ; preds = %.noexc.us
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i.us, i64 4 ; 2 uses
  %.not.i.us = icmp eq ptr %i.as, %.sroa.14.095.us
  br i1 %.not.i.us, label %..critedge_crit_edge.i.us, label %bb.b

..critedge_crit_edge.i.us:                        ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.036.045.i.us, i64 4 ; 2 uses
  %.not48.i.us = icmp eq ptr %i.at, %i.ac
  br i1 %.not48.i.us, label %.critedge, label %.lr.ph.i28.us

_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us: ; preds = %.noexc.us
  %i.au = load ptr, ptr %1, align 8, !tbaa !50
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %.critedge, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us: ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.i.i.i46.us = icmp eq ptr %.sroa.069.096.us, null
  br i1 %.not.i.i.i.i.i46.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us
  %i.ay = ptrtoint ptr %.sroa.18.094.us to i64
  %i.az = sub i64 %i.ay, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.096.us, i64 noundef %i.az) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.us

_ZNSt6vectorIiSaIiEED2Ev.exit.us:                 ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us
  %i.ba = load ptr, ptr %11, align 8, !tbaa !55   ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !54  ; 2 uses
  %.not47.i.us = icmp eq ptr %i.ba, %i.bb
  br i1 %.not47.i.us, label %.critedge, label %.lr.ph46.i.us, !llvm.loop !139

.loopexit.split.us:                               ; preds = %bb.b
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bc = phi ptr [ %i.ci, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.v, %.lr.ph46.i.preheader ]
  %i.bd = phi ptr [ %i.ch, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.u, %.lr.ph46.i.preheader ]
  %14 = phi i64 [ %15, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %13, %.lr.ph46.i.preheader ]
  %.sroa.069.096.a = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.069.4, %.lr.ph46.i.preheader ] ; 9 uses
  %.sroa.14.095 = phi ptr [ %.0.i.i.i.i.i.ph.i35, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.14.2, %.lr.ph46.i.preheader ] ; 4 uses
  %.sroa.18.094 = phi ptr [ %i.ca, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.18.4, %.lr.ph46.i.preheader ] ; 5 uses
  %.not43.i = icmp eq ptr %.sroa.069.096.a, %.sroa.14.095
  br i1 %.not43.i, label %.critedge, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph46.i, %..critedge_crit_edge.i
  %.sroa.036.045.i = phi ptr [ %i.bs, %..critedge_crit_edge.i ], [ %i.bd, %.lr.ph46.i ] ; 2 uses
  %i.be = load i32, ptr %.sroa.036.045.i, align 4, !tbaa !12
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bf
  br label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %.sroa.14.095
  br i1 %.not.i, label %..critedge_crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i28
  %.sroa.0.044.i = phi ptr [ %.sroa.069.096.a, %.lr.ph.i28 ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bi = load i32, ptr %.sroa.0.044.i, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bj
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.bg, ptr noundef %i.bk, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.bl = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.bm = load float, ptr %i.w, align 4, !tbaa !17 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bn)
  %i.bp = load float, ptr %i.x, align 4, !tbaa !17 ; 2 uses
  %i.bq = call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bo)
  %i.br = fcmp uge float %i.bq, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.br, label %bb.e, label %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit

..critedge_crit_edge.i:                           ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.036.045.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %i.bs, %i.bc
  br i1 %.not48.i, label %.critedge, label %.lr.ph.i28

_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit: ; preds = %.noexc
  %i.bt = load ptr, ptr %1, align 8, !tbaa !50
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !50  ; 3 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %.critedge, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29: ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !54
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28
          to label %.noexc44 unwind label %.loopexit.split-lp ; 7 uses

.noexc44:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.f ; 2 uses
  store i32 0, ptr %i.bz, align 4, !tbaa !12, !noalias !146
  %i.cb = getelementptr i8, ptr %i.bz, i64 4      ; 3 uses
  br i1 %i.aa, label %.lr.ph.i34, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32: ; preds = %.noexc44
  call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i33, i1 false), !tbaa !12, !noalias !146
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i.i.i.i33
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32, %.noexc44
  %.0.i.i.i.i.i.ph.i35 = phi ptr [ %i.cc, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32 ], [ %i.cb, %.noexc44 ] ; 2 uses
  %i.cd = mul nsw i32 %i.by, %0
  %i.ce = sext i32 %i.cd to i64
  %invariant.gep.i37 = getelementptr [4 x i8], ptr %3, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %invariant.gep.i37, i64 %i.ab, i1 false), !tbaa !12, !noalias !146
  %.not.i.i.i.i.i46 = icmp eq ptr %.sroa.069.096.a, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i34
  %i.cf = ptrtoint ptr %.sroa.18.094 to i64
  %i.cg = sub i64 %i.cf, %14
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.096.a, i64 noundef %i.cg) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %.lr.ph.i34
  %15 = ptrtoint ptr %i.bz to i64
  %i.ch = load ptr, ptr %11, align 8, !tbaa !55   ; 2 uses
  %i.ci = load ptr, ptr %i.s, align 8, !tbaa !54  ; 2 uses
  %.not47.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not47.i, label %.critedge, label %.lr.ph46.i, !llvm.loop !139

.loopexit.thread:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge:                                        ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph46.i, %..critedge_crit_edge.i, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us, %_ZNSt6vectorIiSaIiEED2Ev.exit.us, %.lr.ph46.i.us, %..critedge_crit_edge.i.us, %.preheader, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit
  %.sroa.18.2 = phi ptr [ %.sroa.18.094.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.18.4, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.18.094, %..critedge_crit_edge.i ], [ %.sroa.18.4, %.preheader ], [ %.sroa.18.094.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.18.094.us, %.lr.ph46.i.us ], [ %.sroa.18.094, %.lr.ph46.i ], [ %.sroa.18.094, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %i.ca, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.095.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.14.2, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.14.095, %..critedge_crit_edge.i ], [ %.sroa.14.2, %.preheader ], [ %.sroa.14.095.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.096.us, %.lr.ph46.i.us ], [ %.sroa.069.096.a, %.lr.ph46.i ], [ %.sroa.14.095, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %.0.i.i.i.i.i.ph.i35, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.sroa.069.2 = phi ptr [ %.sroa.069.096.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.069.4, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.069.096.a, %..critedge_crit_edge.i ], [ %.sroa.069.4, %.preheader ], [ %.sroa.069.096.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.096.us, %.lr.ph46.i.us ], [ %.sroa.069.096.a, %.lr.ph46.i ], [ %.sroa.069.096.a, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %i.bz, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 10 uses
  %.sroa.14.122 = ptrtoaddr ptr %.sroa.14.1 to i64
  %.sroa.069.223 = ptrtoaddr ptr %.sroa.069.2 to i64
  %i.cj = load ptr, ptr %1, align 8, !tbaa !50
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(69) @.str.39, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 167, ptr noundef nonnull @.str.80) #23
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.l ], [ %i.cm, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  %i.cr = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.81, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef %8) #27 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !54 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !59
  %.not.i47 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %11, align 8, !tbaa !55   ; 4 uses
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775804
  br i1 %i.dd, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc49 unwind label %.loopexit.thread

.noexc49:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.de = ashr exact i64 %i.dc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %i.di = select i1 %i.dg, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i48)
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #28
          to label %.noexc50 unwind label %.loopexit.thread ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  %i.dm = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !12
  %i.dn = icmp sgt i64 %i.dc, 0
  br i1 %i.dn, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %.noexc50
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dp = load ptr, ptr %i.cv, align 8, !tbaa !59
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dr) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dk, ptr %11, align 8, !tbaa !55
  store ptr %i.do, ptr %i.ct, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.ds, ptr %i.cv, align 8, !tbaa !59
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.o
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dw
  store i32 %6, ptr %i.dx, align 4, !tbaa !12
  %i.dy = sitofp i32 %7 to float
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38 ; 7 uses
  %i.eb = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [36 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.dy, ptr %i.ee, align 4, !tbaa !42
  %.sroa.056.0119 = getelementptr inbounds nuw i8, ptr %.sroa.069.2, i64 4 ; 6 uses
  %.not120 = icmp eq ptr %.sroa.056.0119, %.sroa.14.1
  br i1 %.not120, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ef = add i64 %.sroa.14.122, -8
  %i.eg = sub i64 %i.ef, %.sroa.069.223           ; 3 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.eg, 28
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.eg, 124
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i64 %i.ei, 24
  %n.vec = and i64 %i.ei, 9223372036854775776     ; 4 uses
  %i.ek = shl i64 %n.vec, 2
  %i.el = getelementptr i8, ptr %.sroa.056.0119, i64 %i.ek
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.em = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.056.0119, i64 %i.em ; 4 uses
  %i.en = getelementptr i8, ptr %next.gep, i64 32
  %i.eo = getelementptr i8, ptr %next.gep, i64 64
  %i.ep = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !12
  %wide.load25 = load <8 x i32>, ptr %i.en, align 4, !tbaa !12
  %wide.load26 = load <8 x i32>, ptr %i.eo, align 4, !tbaa !12
  %wide.load27 = load <8 x i32>, ptr %i.ep, align 4, !tbaa !12
  %i.eq = sext <8 x i32> %wide.load to <8 x i64>
  %i.er = sext <8 x i32> %wide.load25 to <8 x i64>
  %i.es = sext <8 x i32> %wide.load26 to <8 x i64>
  %i.et = sext <8 x i32> %wide.load27 to <8 x i64>
  %wide.gep = getelementptr inbounds [36 x i8], ptr %i.ea, <8 x i64> %i.eq
  %wide.gep28 = getelementptr inbounds [36 x i8], ptr %i.ea, <8 x i64> %i.er
  %wide.gep29 = getelementptr inbounds [36 x i8], ptr %i.ea, <8 x i64> %i.es
  %wide.gep30 = getelementptr inbounds [36 x i8], ptr %i.ea, <8 x i64> %i.et
  %wide.gep31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep32 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep28, i64 4
  %wide.gep33 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep29, i64 4
  %wide.gep34 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep30, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep31, <8 x i1> splat (i1 true)), !tbaa !42
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep32, <8 x i1> splat (i1 true)), !tbaa !42
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep33, <8 x i1> splat (i1 true)), !tbaa !42
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep34, <8 x i1> splat (i1 true)), !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.ei, 9223372036854775800   ; 3 uses
  %i.ev = shl i64 %n.vec35, 2
  %i.ew = getelementptr i8, ptr %.sroa.056.0119, i64 %i.ev
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.ex = shl i64 %index36, 2
  %next.gep37 = getelementptr i8, ptr %.sroa.056.0119, i64 %i.ex
  %wide.load38 = load <8 x i32>, ptr %next.gep37, align 4, !tbaa !12
  %i.ey = sext <8 x i32> %wide.load38 to <8 x i64>
  %wide.gep39 = getelementptr inbounds [36 x i8], ptr %i.ea, <8 x i64> %i.ey
  %wide.gep40 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep39, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep40, <8 x i1> splat (i1 true)), !tbaa !42
  %index.next41 = add nuw i64 %index36, 8         ; 2 uses
  %i.ez = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.ei, %n.vec35
  br i1 %cmp.n42, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.056.0121.ph = phi ptr [ %.sroa.056.0119, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ]
  br label %.lr.ph

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.du, ptr %i.b, align 8, !tbaa !54
  %i.fa = ptrtoint ptr %.sroa.18.2 to i64
  %i.fb = ptrtoint ptr %.sroa.069.2 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.2, i64 noundef %i.fc) #25
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.056.0121 = phi ptr [ %.sroa.056.0, %.lr.ph ], [ %.sroa.056.0121.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fd = load i32, ptr %.sroa.056.0121, align 4, !tbaa !12
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [36 x i8], ptr %i.ea, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !42
  %.sroa.056.0 = getelementptr inbounds nuw i8, ptr %.sroa.056.0121, i64 4 ; 2 uses
  %.not = icmp eq ptr %.sroa.056.0, %.sroa.14.1
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %.lr.ph, !llvm.loop !144

.loopexit:                                        ; preds = %.loopexit.split.us, %bb.m, %.loopexit.split-lp
  %.sroa.18.3 = phi ptr [ %.sroa.18.2, %bb.m ], [ %.sroa.18.094, %.loopexit.split-lp ], [ %.sroa.18.094.us, %.loopexit.split.us ]
  %.sroa.069.3 = phi ptr [ %.sroa.069.2, %bb.m ], [ %.sroa.069.096.a, %.loopexit.split-lp ], [ %.sroa.069.096.us, %.loopexit.split.us ] ; 2 uses
  %.pn26 = phi { ptr, i32 } [ %.pn, %bb.m ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ] ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.sroa.069.3, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.t

bb.t:                                             ; preds = %.loopexit.thread, %.loopexit
  %.pn26167 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.thread ], [ %.pn26, %.loopexit ]
  %.sroa.069.3166 = phi ptr [ %.sroa.069.2, %.loopexit.thread ], [ %.sroa.069.3, %.loopexit ] ; 2 uses
  %.sroa.18.3165 = phi ptr [ %.sroa.18.2, %.loopexit.thread ], [ %.sroa.18.3, %.loopexit ]
  %i.fh = ptrtoint ptr %.sroa.18.3165 to i64
  %i.fi = ptrtoint ptr %.sroa.069.3166 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.3166, i64 noundef %i.fj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %.loopexit, %bb.t
  %.pn26168 = phi { ptr, i32 } [ %.pn26, %.loopexit ], [ %.pn26167, %bb.t ]
  resume { ptr, i32 } %.pn26168
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9sort_ionsiiPKiN3gmx8ArrayRefIS_EEP7t_atomsPA3_fPPcS9_S9_S9_(i32 noundef %0, i32 noundef range(i32 1, 0) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef captures(none) %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !37
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.39, i32 noundef 223, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 12) ; 13 uses
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph137, label %._crit_edge

.lr.ph137:                                        ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph137.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph137
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph137.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i32 %1, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi17, %vector.body ]
  %vec.phi4 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi18, %vector.body ]
  %vec.phi5 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi19, %vector.body ]
  %vec.phi6 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi20, %vector.body ]
  %vec.phi7 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi8 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi14, %vector.body ]
  %vec.phi9 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi15, %vector.body ]
  %vec.phi10 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi16, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %wide.load = load <8 x i32>, ptr %i.g, align 4, !tbaa !12 ; 2 uses
  %wide.load11 = load <8 x i32>, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  %wide.load12 = load <8 x i32>, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %wide.load13 = load <8 x i32>, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.k = icmp sgt <8 x i32> %wide.load, zeroinitializer
  %i.l = icmp sgt <8 x i32> %wide.load11, zeroinitializer
  %i.m = icmp sgt <8 x i32> %wide.load12, zeroinitializer
  %i.n = icmp sgt <8 x i32> %wide.load13, zeroinitializer
  %i.o = zext <8 x i1> %i.k to <8 x i32>
  %predphi = add <8 x i32> %vec.phi7, %i.o        ; 2 uses
  %i.p = zext <8 x i1> %i.l to <8 x i32>
  %predphi14 = add <8 x i32> %vec.phi8, %i.p      ; 2 uses
  %i.q = zext <8 x i1> %i.m to <8 x i32>
  %predphi15 = add <8 x i32> %vec.phi9, %i.q      ; 2 uses
  %i.r = zext <8 x i1> %i.n to <8 x i32>
  %predphi16 = add <8 x i32> %vec.phi10, %i.r     ; 2 uses
  %i.s = lshr <8 x i32> %wide.load, splat (i32 31)
  %predphi17 = add <8 x i32> %vec.phi, %i.s       ; 2 uses
  %i.t = lshr <8 x i32> %wide.load11, splat (i32 31)
  %predphi18 = add <8 x i32> %vec.phi4, %i.t      ; 2 uses
  %i.u = lshr <8 x i32> %wide.load12, splat (i32 31)
  %predphi19 = add <8 x i32> %vec.phi5, %i.u      ; 2 uses
  %i.v = lshr <8 x i32> %wide.load13, splat (i32 31)
  %predphi20 = add <8 x i32> %vec.phi6, %i.v      ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %predphi18, %predphi17
  %bin.rdx21 = add <8 x i32> %predphi19, %bin.rdx
  %bin.rdx22 = add <8 x i32> %predphi20, %bin.rdx21
  %i.x = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx22) ; 3 uses
  %bin.rdx23 = add <8 x i32> %predphi14, %predphi
  %bin.rdx24 = add <8 x i32> %predphi15, %bin.rdx23
  %bin.rdx25 = add <8 x i32> %predphi16, %bin.rdx24
  %i.y = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx25) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph137.split.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.x, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx26 = phi i32 [ %i.y, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.z = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.aa = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx26, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi29 = phi <8 x i32> [ %i.z, %vec.epilog.ph ], [ %predphi33, %vec.epilog.vector.body ]
  %vec.phi30 = phi <8 x i32> [ %i.aa, %vec.epilog.ph ], [ %predphi32, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index28
  %wide.load31 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !12 ; 2 uses
  %i.ac = icmp sgt <8 x i32> %wide.load31, zeroinitializer
  %i.ad = zext <8 x i1> %i.ac to <8 x i32>
  %predphi32 = add <8 x i32> %vec.phi30, %i.ad    ; 2 uses
  %i.ae = lshr <8 x i32> %wide.load31, splat (i32 31)
  %predphi33 = add <8 x i32> %vec.phi29, %i.ae    ; 2 uses
  %index.next34 = add nuw i64 %index28, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ag = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi33) ; 2 uses
  %i.ah = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi32) ; 2 uses
  %cmp.n35 = icmp eq i64 %n.vec27, %wide.trip.count
  br i1 %cmp.n35, label %._crit_edge, label %.lr.ph137.split.preheader

.lr.ph137.split.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ]
  %.0103136.ph = phi i32 [ 0, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.0105135.ph = phi i32 [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph137.split

.lr.ph137.split.us.preheader:                     ; preds = %.lr.ph137
  %i.ai = load i32, ptr %3, align 4, !tbaa !12
  %i.aj = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count171 = zext nneg i32 %1 to i64
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.ak = icmp ult i32 %0, 4
  %unroll_iter = and i64 %i.aj, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph137.split.us

.lr.ph137.split.us:                               ; preds = %.lr.ph137.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv168 = phi i64 [ 0, %.lr.ph137.split.us.preheader ], [ %indvars.iv.next169, %..loopexit_crit_edge.us ] ; 3 uses
  %.0103136.us = phi i32 [ 0, %.lr.ph137.split.us.preheader ], [ %.1104.us, %..loopexit_crit_edge.us ] ; 3 uses
  %.0105135.us = phi i32 [ 0, %.lr.ph137.split.us.preheader ], [ %.1106.us, %..loopexit_crit_edge.us ] ; 3 uses
  %.0108134.us = phi i32 [ %i.ai, %.lr.ph137.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv168
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.preheader.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph137.split.us
  %i.ao = icmp sgt i32 %i.am, 0
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = add nsw i32 %.0103136.us, 1
  br label %..loopexit_crit_edge.us

bb.d:                                             ; preds = %bb.b
  %i.aq = add nsw i32 %.0105135.us, 1
  br label %..loopexit_crit_edge.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.3, %.preheader.us.new ], [ %i.dc, %.preheader.us ] ; 5 uses
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv159
  %i.ar = load i32, ptr %gep, align 4, !tbaa !12
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %5, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds [12 x i8], ptr %i.c, i64 %indvars.iv161 ; 3 uses
  %i.av = load float, ptr %i.at, align 4, !tbaa !17
  store float %i.av, ptr %i.au, align 4, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.ax, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float %i.ba, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv159
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bd = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [12 x i8], ptr %5, i64 %i.be ; 3 uses
  %i.bg = getelementptr [12 x i8], ptr %i.c, i64 %indvars.iv161 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 12
  %i.bi = load float, ptr %i.bf, align 4, !tbaa !17
end_hunk_1
