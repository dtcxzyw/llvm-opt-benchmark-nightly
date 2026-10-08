Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splitter?download=true
inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %i.lk = trunc nuw nsw i64 %indvars.iv388 to i32
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.2, i32 noundef %i.lk, i32 noundef %i.lh, i32 noundef %i.lj) #22 ; 0 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count392
  br i1 %exitcond393.not, label %._crit_edge278, label %.lr.ph274, !llvm.loop !45

._crit_edge278:                                   ; preds = %.lr.ph274, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread456, %.thread458
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.lm = sext i32 %.046.lcssa.i to i64           ; 2 uses
  %i.ln = mul nuw nsw i64 %i.lm, 12
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #20
          to label %.lr.ph.i56 unwind label %bb.bx ; 3 uses

.lr.ph.i56:                                       ; preds = %._crit_edge278
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lm
  %i.lq = add nuw nsw i32 %2, 1                   ; 2 uses
  br label %bb.by

.preheader186.i:                                  ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i
  br i1 %.not144, label %._crit_edge.i57, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.preheader186.i
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.cd

bb.bx:                                            ; preds = %._crit_edge.i57, %._crit_edge278
  %.sroa.39.1.i = phi ptr [ null, %._crit_edge278 ], [ %.sroa.39.4.i, %._crit_edge.i57 ]
  %.sroa.0118.1.i = phi ptr [ null, %._crit_edge278 ], [ %.sroa.0118.4.i, %._crit_edge.i57 ]
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.by:                                            ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i, %.lr.ph.i56
  %.059223.i = phi i32 [ 0, %.lr.ph.i56 ], [ %i.mi, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 3 uses
  %.sroa.0118.0222.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.0118.4.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 6 uses
  %.sroa.31.0221.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.31.2.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 8 uses
  %.sroa.39.0220.i = phi ptr [ %i.lp, %.lr.ph.i56 ], [ %.sroa.39.4.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.31.0221.i, %.sroa.39.0220.i
  br i1 %.not.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.lq, ptr %.sroa.31.0221.i, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.31.0221.i, i64 4
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.31.0221.i, i64 8
  store i32 %.059223.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !12
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lu = ptrtoint ptr %.sroa.31.0221.i to i64
  %i.lv = ptrtoint ptr %.sroa.0118.0222.i to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 6 uses
  %i.lx = icmp eq i64 %i.lw, 9223372036854775800
  br i1 %i.lx, label %bb.cb, label %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc85.i77 unwind label %.loopexit.split-lp188.i

.noexc85.i77:                                     ; preds = %bb.cb
  unreachable

_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ca
  %i.ly = sdiv exact i64 %i.lw, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ly, i64 1)
  %i.lz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ly ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %i.mb = call i64 @llvm.umin.i64(i64 %i.lz, i64 768614336404564650)
  %i.mc = select i1 %i.ma, i64 768614336404564650, i64 %i.mb ; 3 uses
  %.not.i.i.i.i.i75 = icmp ne i64 %i.mc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i75)
  %i.md = mul nuw nsw i64 %i.mc, 12
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #20
          to label %.noexc86.i unwind label %.loopexit187.i ; 4 uses

.noexc86.i:                                       ; preds = %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.lw ; 4 uses
  store i32 %i.lq, ptr %i.mf, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 -1, ptr %.sroa.6.0..sroa_idx114.i, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.059223.i, ptr %.sroa.7.0..sroa_idx116.i, align 4, !tbaa !12
  %i.mg = icmp sgt i64 %i.lw, 0
  br i1 %i.mg, label %bb.cc, label %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

bb.cc:                                            ; preds = %.noexc86.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.me, ptr align 4 %.sroa.0118.0222.i, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.cc, %.noexc86.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0222.i, i64 noundef %i.lw) #21
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mc
  br label %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i

_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.bz
  %.sroa.39.4.i = phi ptr [ %i.mh, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.39.0220.i, %bb.bz ] ; 7 uses
  %.pn176.i = phi ptr [ %i.mf, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.31.0221.i, %bb.bz ]
  %.sroa.0118.4.i = phi ptr [ %i.me, %_ZNSt6vectorI11t_merge_sidSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.0118.0222.i, %bb.bz ] ; 19 uses
  %.sroa.31.2.i = getelementptr inbounds nuw i8, ptr %.pn176.i, i64 12 ; 2 uses
  %i.mi = add nuw nsw i32 %.059223.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.mi, %.046.lcssa.i
  br i1 %exitcond.not.i, label %.preheader186.i, label %bb.by, !llvm.loop !48

.loopexit187.i:                                   ; preds = %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit189.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

.loopexit.split-lp188.i:                          ; preds = %bb.cb
  %lpad.loopexit.split-lp.i76 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.cd:                                            ; preds = %bb.cl, %.lr.ph227.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph227.i ], [ %indvars.iv.next.i, %bb.cl ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %indvars.iv.i ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !27, !noalias !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !82
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.ml, i32 noundef -1, i32 noundef range(i32 1, 0) %.046.lcssa.i, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 265)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !19, !noalias !82 ; 2 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i70, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i71, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull %i.mm) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i71

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i71: ; preds = %bb.cg, %bb.cf
  %i.mn = load ptr, ptr %5, align 8, !tbaa !24, !noalias !82 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ls
  br i1 %i.mo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i71
  %i.mp = load i64, ptr %i.ls, align 8, !tbaa !25, !noalias !82
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i73

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i73:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  %i.mr = icmp sgt i32 %i.ml, -1
  br i1 %i.mr, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i73
  %i.ms = zext nneg i32 %i.ml to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ms ; 3 uses
  %i.mu = load i32, ptr %i.mj, align 4, !tbaa !12, !noalias !82
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !12
  %i.mw = call i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mv)
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !12
  %i.mz = load i32, ptr %i.mj, align 4, !tbaa !12, !noalias !82
  %i.na = call i32 @llvm.smax.i32(i32 %i.my, i32 %i.mz)
  store i32 %i.na, ptr %i.mx, align 4, !tbaa !35
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn80.i = phi { ptr, i32 } [ %i.nc, %bb.cj ], [ %i.nb, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  br label %.body.i55

bb.cl:                                            ; preds = %bb.ch, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i73
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond282.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond282.not.i, label %._crit_edge.i57, label %bb.cd, !llvm.loop !49

._crit_edge.i57:                                  ; preds = %bb.cl, %.preheader186.i
  %i.nd = ptrtoint ptr %.sroa.31.2.i to i64
  %i.ne = ptrtoint ptr %.sroa.0118.4.i to i64     ; 2 uses
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = sdiv exact i64 %i.nf, 12
  invoke void @qsort(ptr noundef %.sroa.0118.4.i, i64 noundef %i.ng, i64 noundef 12, ptr noundef nonnull @_ZL7ms_compPKvS0_)
          to label %.preheader184.i.preheader unwind label %bb.bx

.preheader184.i.preheader:                        ; preds = %._crit_edge.i57
  %i.nh = add i32 %.046.lcssa.i, -2
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %.preheader184.i.preheader, %._crit_edge232.loopexit.i
  %.058234.i = phi i32 [ %.pre326.i, %._crit_edge232.loopexit.i ], [ 0, %.preheader184.i.preheader ] ; 7 uses
  %storemerge79228.i = add nsw i32 %.058234.i, 1
  %i.ni = icmp slt i32 %storemerge79228.i, %.046.lcssa.i
  br i1 %i.ni, label %.lr.ph231.preheader.i, label %._crit_edge232.i

.lr.ph231.preheader.i:                            ; preds = %.preheader184.i
  %i.nj = sext i32 %.058234.i to i64              ; 2 uses
  %i.nk = add nsw i64 %i.nj, 1                    ; 3 uses
  %i.nl = sub i32 %.058234.i, %.046.lcssa.i
  %i.nm = and i32 %i.nl, 1
  %lcmp.mod791.not.not = icmp eq i32 %i.nm, 0
  br i1 %lcmp.mod791.not.not, label %.lr.ph231.i.prol, label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol:                                 ; preds = %.lr.ph231.preheader.i
  %i.nn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nk ; 3 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !34 ; 2 uses
  %i.np = sext i32 %.058234.i to i64
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.np ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !35 ; 2 uses
  %.not77.i.prol = icmp sgt i32 %i.no, %i.ns
  %i.nt = trunc nsw i64 %i.nk to i32
  br i1 %.not77.i.prol, label %.lr.ph231.i.prol.loopexit.unr-lcssa, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.prol
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !12
  %i.nw = call i32 @llvm.smax.i32(i32 %i.ns, i32 %i.nv)
  store i32 %i.nw, ptr %i.nr, align 4, !tbaa !35
  %i.nx = load i32, ptr %i.nq, align 4, !tbaa !12
  %i.ny = call i32 @llvm.smin.i32(i32 %i.no, i32 %i.nx)
  store i32 %i.ny, ptr %i.nq, align 4, !tbaa !34
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i32 -1, ptr %i.nz, align 4, !tbaa !83
  br label %.lr.ph231.i.prol.loopexit.unr-lcssa

.lr.ph231.i.prol.loopexit.unr-lcssa:              ; preds = %bb.cm, %.lr.ph231.i.prol
  %.2.i68.prol = phi i32 [ %.058234.i, %bb.cm ], [ %i.nt, %.lr.ph231.i.prol ] ; 2 uses
  %indvars.iv.next284.i.prol = add nsw i64 %i.nj, 2
  br label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol.loopexit:                        ; preds = %.lr.ph231.i.prol.loopexit.unr-lcssa, %.lr.ph231.preheader.i
  %.2.i68.lcssa.unr = phi i32 [ poison, %.lr.ph231.preheader.i ], [ %.2.i68.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %indvars.iv283.i.unr = phi i64 [ %i.nk, %.lr.ph231.preheader.i ], [ %indvars.iv.next284.i.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %.1229.i.unr = phi i32 [ %.058234.i, %.lr.ph231.preheader.i ], [ %.2.i68.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %i.oa = icmp eq i32 %i.nh, %.058234.i
  br i1 %i.oa, label %._crit_edge232.loopexit.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp
  %indvars.iv283.i = phi i64 [ %indvars.iv.next284.i.1, %bb.cp ], [ %indvars.iv283.i.unr, %.lr.ph231.i.prol.loopexit ] ; 4 uses
  %.1229.i = phi i32 [ %.2.i68.1, %bb.cp ], [ %.1229.i.unr, %.lr.ph231.i.prol.loopexit ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv283.i ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34 ; 2 uses
  %i.od = sext i32 %.1229.i to i64
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !35 ; 2 uses
  %.not77.i = icmp sgt i32 %i.oc, %i.og
  %i.oh = trunc nsw i64 %indvars.iv283.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph231.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !12
  %i.ok = call i32 @llvm.smax.i32(i32 %i.og, i32 %i.oj)
  store i32 %i.ok, ptr %i.of, align 4, !tbaa !35
  %i.ol = load i32, ptr %i.oe, align 4, !tbaa !12
  %i.om = call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.ol)
  store i32 %i.om, ptr %i.oe, align 4, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 -1, ptr %i.on, align 4, !tbaa !83
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cn, %.lr.ph231.i
  %.2.i68 = phi i32 [ %.1229.i, %bb.cn ], [ %i.oh, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next284.i = add nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next284.i ; 3 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !34 ; 2 uses
  %i.oq = sext i32 %.2.i68 to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.oq ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.op, %i.ot
  %i.ou = trunc nsw i64 %indvars.iv.next284.i to i32
  br i1 %.not77.i.1, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph231.i.1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !12
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ow)
  store i32 %i.ox, ptr %i.os, align 4, !tbaa !35
  %i.oy = load i32, ptr %i.or, align 4, !tbaa !12
  %i.oz = call i32 @llvm.smin.i32(i32 %i.op, i32 %i.oy)
  store i32 %i.oz, ptr %i.or, align 4, !tbaa !34
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 -1, ptr %i.pa, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph231.i.1
  %.2.i68.1 = phi i32 [ %.2.i68, %bb.co ], [ %i.ou, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next284.i.1 = add nsw i64 %indvars.iv283.i, 2 ; 2 uses
  %lftr.wideiv.i69.1 = trunc i64 %indvars.iv.next284.i.1 to i32
  %exitcond286.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i69.1
  br i1 %exitcond286.not.i.1, label %._crit_edge232.loopexit.i, label %.lr.ph231.i, !llvm.loop !50

._crit_edge232.loopexit.i:                        ; preds = %bb.cp, %.lr.ph231.i.prol.loopexit
  %.2.i68.lcssa = phi i32 [ %.2.i68.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i68.1, %bb.cp ]
  %.pre326.i = add nsw i32 %.2.i68.lcssa, 1       ; 2 uses
  %12 = icmp slt i32 %.pre326.i, %.046.lcssa.i
  br i1 %12, label %.preheader184.i, label %._crit_edge232.i, !llvm.loop !51

._crit_edge232.i:                                 ; preds = %._crit_edge232.loopexit.i, %.preheader184.i
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv304.i = phi i32 [ %indvars.iv.next305.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv290.i = phi i32 [ %indvars.iv.next291.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.067244.i = phi i32 [ %.168.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.pb = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.pb ; 2 uses
  %scevgep287.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pe = add nsw i32 %.067244.i, -1
  %i.pf = sext i32 %i.pe to i64
  %i.pg = icmp slt i64 %indvar.i, %i.pf
  br i1 %i.pg, label %.lr.ph240.i, label %.preheader182..critedge_crit_edge.i

.preheader182..critedge_crit_edge.i:              ; preds = %.preheader182.i
  %.pre327.i = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph240.i:                                      ; preds = %.preheader182.i
  %i.ph = trunc i64 %indvar.i to i32
  %i.pi = add nuw nsw i64 %indvar.i, 1            ; 3 uses
  %i.pj = add i32 %.067244.i, %indvars.iv304.i
  %wide.trip.count306.i = zext i32 %i.pj to i64
  %.pre325.i = load i32, ptr %i.pd, align 4, !tbaa !83
  %.neg148 = add i32 %.067244.i, -2
  %i.pk = sext i32 %.067244.i to i64
  br label %bb.cq

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not144, label %._crit_edge249.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count315.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph248.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check675 = icmp ult i32 %2, 32
  br i1 %min.iters.check675, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pl = and i64 %wide.trip.count315.i, 28
  %n.vec = and i64 %wide.trip.count315.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %index
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %index
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %index
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 128
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %index
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 192
  %interleaved.vec = shufflevector <8 x i32> %vec.ind, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.pm, align 4, !tbaa !12, !noalias !82
  %interleaved.vec676 = shufflevector <8 x i32> %step.add, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec676, ptr %i.po, align 4, !tbaa !12, !noalias !82
  %interleaved.vec677 = shufflevector <8 x i32> %step.add.2, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec677, ptr %i.pq, align 4, !tbaa !12, !noalias !82
  %interleaved.vec678 = shufflevector <8 x i32> %step.add.3, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec678, ptr %i.ps, align 4, !tbaa !12, !noalias !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.pt = icmp eq i64 %index.next, %n.vec
  br i1 %i.pt, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count315.i
  br i1 %cmp.n, label %._crit_edge249.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph248.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec679 = and i64 %wide.trip.count315.i, 2147483644 ; 3 uses
  %i.pu = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index680 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next683, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind681 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next684, %vec.epilog.vector.body ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %index680
  %interleaved.vec682 = shufflevector <4 x i32> %vec.ind681, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec682, ptr %i.pv, align 4, !tbaa !12, !noalias !82
  %index.next683 = add nuw i64 %index680, 4       ; 2 uses
  %vec.ind.next684 = add <4 x i32> %vec.ind681, splat (i32 4)
  %i.pw = icmp eq i64 %index.next683, %n.vec679
  br i1 %i.pw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n685 = icmp eq i64 %n.vec679, %wide.trip.count315.i
  br i1 %cmp.n685, label %._crit_edge249.i, label %.lr.ph248.i.preheader

.lr.ph248.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv312.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec679, %vec.epilog.middle.block ]
  br label %.lr.ph248.i

.loopexit181.i:                                   ; preds = %.lr.ph238.preheader.i, %.preheader180.i
  %i.px = phi i32 [ %.pre.i67, %.lr.ph238.preheader.i ], [ -1, %.preheader180.i ]
  %indvars.iv.next300.i = add nuw nsw i64 %indvars.iv299.i, 1 ; 2 uses
  %exitcond307.not.i = icmp eq i64 %indvars.iv.next300.i, %wide.trip.count306.i
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, -1
  br i1 %exitcond307.not.i, label %.critedge.i, label %bb.cq, !llvm.loop !54

bb.cq:                                            ; preds = %.loopexit181.i, %.lr.ph240.i
  %indvars.iv402 = phi i64 [ %indvars.iv.next403, %.loopexit181.i ], [ %i.pk, %.lr.ph240.i ] ; 3 uses
  %i.py = phi i32 [ %i.px, %.loopexit181.i ], [ %.pre325.i, %.lr.ph240.i ]
  %indvars.iv299.i = phi i64 [ %indvars.iv.next300.i, %.loopexit181.i ], [ 0, %.lr.ph240.i ] ; 2 uses
  %i.pz = trunc i64 %indvars.iv299.i to i32
  %i.qa = add i32 %i.ph, %i.pz
  %i.qb = sub i32 %.neg148, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = mul nuw nsw i64 %i.qc, 12
  %i.qe = add nuw nsw i64 %i.qd, 12
  %i.qf = icmp eq i32 %i.py, -1
  br i1 %i.qf, label %.preheader180.i, label %.critedge.i.loopexit.split.loop.exit569

.preheader180.i:                                  ; preds = %bb.cq
  %i.qg = icmp slt i64 %i.pi, %indvars.iv402
  br i1 %i.qg, label %.lr.ph238.preheader.i, label %.loopexit181.i

.lr.ph238.preheader.i:                            ; preds = %.preheader180.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep287.i, i64 %i.qe, i1 false)
  %.pre.i67 = load i32, ptr %i.pd, align 4, !tbaa !83
  br label %.loopexit181.i

.critedge.i.loopexit.split.loop.exit569:          ; preds = %bb.cq
  %i.qh = trunc nsw i64 %indvars.iv402 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit181.i, %.critedge.i.loopexit.split.loop.exit569, %.preheader182..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre327.i, %.preheader182..critedge_crit_edge.i ], [ %i.pi, %.critedge.i.loopexit.split.loop.exit569 ], [ %i.pi, %.loopexit181.i ] ; 2 uses
  %.168.lcssa.i = phi i32 [ %.067244.i, %.preheader182..critedge_crit_edge.i ], [ %i.qh, %.critedge.i.loopexit.split.loop.exit569 ], [ %indvars.iv290.i, %.loopexit181.i ] ; 4 uses
  %i.qi = sext i32 %.168.lcssa.i to i64
  %i.qj = icmp slt i64 %indvar.next.pre-phi.i, %i.qi
  %indvars.iv.next291.i = add nuw i32 %indvars.iv290.i, 1
  %indvars.iv.next305.i = add nsw i32 %indvars.iv304.i, -1
  br i1 %i.qj, label %.preheader182.i, label %.preheader.i, !llvm.loop !55

._crit_edge249.i:                                 ; preds = %.lr.ph248.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.ct unwind label %bb.cr     ; 3 uses

bb.cr:                                            ; preds = %._crit_edge249.i
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !82 ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i4.i.i.i, label %.body.i55, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !31, !alias.scope !82
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #21
  br label %.body.i55

.lr.ph248.i:                                      ; preds = %.lr.ph248.i.preheader, %.lr.ph248.i
  %indvars.iv312.i = phi i64 [ %indvars.iv.next313.i, %.lr.ph248.i ], [ %indvars.iv312.i.ph, %.lr.ph248.i.preheader ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0106.0.lcssa, i64 %indvars.iv312.i ; 2 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv312.i to i32
  store i32 %i.qt, ptr %i.qs, align 4, !tbaa !81, !noalias !82
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 -1, ptr %i.qu, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next313.i = add nuw nsw i64 %indvars.iv312.i, 1 ; 2 uses
  %exitcond316.not.i = icmp eq i64 %indvars.iv.next313.i, %wide.trip.count315.i
  br i1 %exitcond316.not.i, label %._crit_edge249.i, label %.lr.ph248.i, !llvm.loop !56

bb.ct:                                            ; preds = %._crit_edge249.i
  store ptr %i.qk, ptr %0, align 8, !tbaa !17, !alias.scope !82
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !31, !alias.scope !82
  store i32 0, ptr %i.qk, align 4, !tbaa !12
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qv, ptr %i.qx, align 8, !tbaa !16, !alias.scope !82
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qz = icmp sgt i32 %.168.lcssa.i, 0
  br i1 %i.qz, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.ct
  %wide.trip.count323.i = zext nneg i32 %.168.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

end_hunk_0
