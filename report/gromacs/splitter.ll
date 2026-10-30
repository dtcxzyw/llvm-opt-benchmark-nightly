Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splitter?download=true
inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -8 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !27 ; 2 uses
  %i.ky = icmp eq i32 %i.kx, %.sroa.6138.0.extract.trunc
  %i.kz = load i32, ptr %.0.i.i29.i, align 4
  %i.la = icmp sgt i32 %i.kz, %.sroa.0135.0.extract.trunc
  %i.lb = icmp sgt i32 %i.kx, %.sroa.6138.0.extract.trunc
  %.0.i = select i1 %i.ky, i1 %i.la, i1 %i.lb
  br i1 %.0.i, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i30.i, !llvm.loop !42

_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %.lr.ph.i.i26.i, %bb.bw, %bb.bt, %bb.bu, %bb.bv
  %.09.lcssa.i.i23.i.sink = phi ptr [ %.sroa.0104.0.lcssa, %bb.bt ], [ %.sroa.0104.0.lcssa, %bb.bv ], [ %.sroa.0104.0.lcssa, %bb.bu ], [ %.020.i20.i, %bb.bw ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ]
  store i64 %i.ke, ptr %.09.lcssa.i.i23.i.sink, align 4, !tbaa !12
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.gt
  br i1 %.not.i25.i, label %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !43

_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit:     ; preds = %_ZSt13move_backwardIP5t_sidS1_ET0_T_S3_S2_.exit.i30.i, %.lr.ph.i.i84.prol.loopexit, %_ZSt25__unguarded_linear_insertIP5t_sidN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %i.lc = load ptr, ptr @debug, align 8, !tbaa !60 ; 2 uses
  %.not38 = icmp eq ptr %i.lc, null
  br i1 %.not38, label %._crit_edge291, label %.lr.ph287.preheader

_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread469: ; preds = %bb.bj
  %i.ld = load ptr, ptr @debug, align 8, !tbaa !60 ; 2 uses
  %.not38470 = icmp eq ptr %i.ld, null
  br i1 %.not38470, label %._crit_edge291, label %.thread471

.thread471:                                       ; preds = %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread469
  %fwrite472 = call i64 @fwrite(ptr nonnull @.str.1, i64 19, i64 1, ptr nonnull %i.ld) ; 0 uses
  br label %._crit_edge291

_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread: ; preds = %bb.br
  %i.le = load ptr, ptr @debug, align 8, !tbaa !60 ; 2 uses
  %.not38467 = icmp eq ptr %i.le, null
  br i1 %.not38467, label %._crit_edge291, label %.lr.ph287.preheader

.lr.ph287.preheader:                              ; preds = %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread
  %.sink = phi ptr [ %i.le, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread ], [ %i.lc, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit ]
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 19, i64 1, ptr nonnull %.sink) ; 0 uses
  %wide.trip.count406 = zext nneg i32 %2 to i64
  br label %.lr.ph287

.lr.ph287:                                        ; preds = %.lr.ph287.preheader, %.lr.ph287
  %indvars.iv403 = phi i64 [ 0, %.lr.ph287.preheader ], [ %indvars.iv.next404, %.lr.ph287 ] ; 3 uses
  %i.lf = load ptr, ptr @debug, align 8, !tbaa !60
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0104.0.lcssa, i64 %indvars.iv403 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !81
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !27
  %i.lk = trunc nuw nsw i64 %indvars.iv403 to i32
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lf, ptr noundef nonnull @.str.2, i32 noundef %i.lk, i32 noundef %i.lh, i32 noundef %i.lj) #22 ; 0 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge291, label %.lr.ph287, !llvm.loop !45

._crit_edge291:                                   ; preds = %.lr.ph287, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread, %_ZSt4sortIP5t_sidPFbRKS0_S3_EEvT_S6_T0_.exit.thread469, %.thread471
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.lm = sext i32 %.046.lcssa.i to i64           ; 2 uses
  %i.ln = mul nuw nsw i64 %i.lm, 12
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #20
          to label %.lr.ph.i56 unwind label %bb.bx ; 3 uses

.lr.ph.i56:                                       ; preds = %._crit_edge291
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lm
  %i.lq = add nuw nsw i32 %2, 1                   ; 2 uses
  br label %bb.by

.preheader186.i:                                  ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i
  br i1 %.not142, label %._crit_edge.i57, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.preheader186.i
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.cd

bb.bx:                                            ; preds = %._crit_edge.i57, %._crit_edge291
  %.sroa.39.1.i = phi ptr [ null, %._crit_edge291 ], [ %.sroa.39.4.i, %._crit_edge.i57 ]
  %.sroa.0118.1.i = phi ptr [ null, %._crit_edge291 ], [ %.sroa.0118.4.i, %._crit_edge.i57 ]
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.by:                                            ; preds = %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i, %.lr.ph.i56
  %.059223.i = phi i32 [ 0, %.lr.ph.i56 ], [ %i.mi, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 3 uses
  %.sroa.0118.0222.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.0118.4.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 5 uses
  %.sroa.31.0221.i = phi ptr [ %i.lo, %.lr.ph.i56 ], [ %.sroa.31.2.i, %_ZNSt6vectorI11t_merge_sidSaIS0_EE9push_backEOS0_.exit.i ] ; 7 uses
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
          to label %.noexc85.i75 unwind label %.loopexit.split-lp188.i.loopexit.split-lp.loopexit.split-lp

.noexc85.i75:                                     ; preds = %bb.cb
  unreachable

_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ca
  %i.ly = sdiv exact i64 %i.lw, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ly, i64 1)
  %i.lz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ly ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %i.mb = call i64 @llvm.umin.i64(i64 %i.lz, i64 768614336404564650)
  %i.mc = select i1 %i.ma, i64 768614336404564650, i64 %i.mb ; 3 uses
  %.not.i.i.i.i.i73 = icmp ne i64 %i.mc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i73)
  %i.md = mul nuw nsw i64 %i.mc, 12
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #20
          to label %.noexc86.i unwind label %.loopexit.split-lp188.i.loopexit.split-lp.loopexit.split-lp ; 4 uses

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

.loopexit.split-lp188.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI11t_merge_sidSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i55

bb.cd:                                            ; preds = %bb.cl, %.lr.ph227.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph227.i ], [ %indvars.iv.next.i, %bb.cl ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0104.0.lcssa, i64 %indvars.iv.i ; 3 uses
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
  %.not.i.i.i.i68 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i68, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i69, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull %i.mm) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i69

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i69: ; preds = %bb.cg, %bb.cf
  %i.mn = load ptr, ptr %5, align 8, !tbaa !24, !noalias !82 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ls
  br i1 %i.mo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i69
  %i.mp = load i64, ptr %i.ls, align 8, !tbaa !25, !noalias !82
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i71

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i71:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  %i.mr = icmp sgt i32 %i.ml, -1
  br i1 %i.mr, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i71
  %i.ms = zext nneg i32 %i.ml to i64
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ms ; 3 uses
  %i.mu = load i32, ptr %i.mj, align 4, !tbaa !12, !noalias !82
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !12
  %i.mw = call i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mv)
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !12
  %i.mz = load i32, ptr %i.mj, align 4, !tbaa !12, !noalias !82
  %12 = call i32 @llvm.smax.i32(i32 %i.my, i32 %i.mz)
  store i32 %12, ptr %i.mx, align 4, !tbaa !35
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn80.i = phi { ptr, i32 } [ %i.nb, %bb.cj ], [ %i.na, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !82
  br label %.body.i55

bb.cl:                                            ; preds = %bb.ch, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond282.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond282.not.i, label %._crit_edge.i57, label %bb.cd, !llvm.loop !49

._crit_edge.i57:                                  ; preds = %bb.cl, %.preheader186.i
  %i.nc = ptrtoint ptr %.sroa.31.2.i to i64
  %i.nd = ptrtoint ptr %.sroa.0118.4.i to i64     ; 2 uses
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = sdiv exact i64 %i.ne, 12
  invoke void @qsort(ptr noundef %.sroa.0118.4.i, i64 noundef %i.nf, i64 noundef 12, ptr noundef nonnull @_ZL7ms_compPKvS0_)
          to label %.preheader184.i.preheader unwind label %bb.bx

.preheader184.i.preheader:                        ; preds = %._crit_edge.i57
  %i.ng = add i32 %.046.lcssa.i, -2
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %.preheader184.i.preheader, %._crit_edge232.i
  %.058234.i = phi i32 [ %spec.select.pre-phi.i, %._crit_edge232.i ], [ 0, %.preheader184.i.preheader ] ; 7 uses
  %storemerge79228.i = add nsw i32 %.058234.i, 1  ; 2 uses
  %i.nh = icmp slt i32 %storemerge79228.i, %.046.lcssa.i
  br i1 %i.nh, label %.lr.ph231.preheader.i, label %._crit_edge232.i

.lr.ph231.preheader.i:                            ; preds = %.preheader184.i
  %i.ni = sext i32 %.058234.i to i64              ; 2 uses
  %i.nj = add nsw i64 %i.ni, 1                    ; 3 uses
  %i.nk = sub i32 %.058234.i, %.046.lcssa.i
  %i.nl = and i32 %i.nk, 1
  %lcmp.mod821.not.not = icmp eq i32 %i.nl, 0
  br i1 %lcmp.mod821.not.not, label %.lr.ph231.i.prol, label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol:                                 ; preds = %.lr.ph231.preheader.i
  %i.nm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.nj ; 3 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !34 ; 2 uses
  %i.no = sext i32 %.058234.i to i64
  %i.np = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.no ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !35 ; 2 uses
  %.not77.i.prol = icmp sgt i32 %i.nn, %i.nr
  %i.ns = trunc nsw i64 %i.nj to i32
  br i1 %.not77.i.prol, label %.lr.ph231.i.prol.loopexit.unr-lcssa, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.prol
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !12
  %i.nv = call i32 @llvm.smax.i32(i32 %i.nr, i32 %i.nu)
  store i32 %i.nv, ptr %i.nq, align 4, !tbaa !35
  %i.nw = load i32, ptr %i.np, align 4, !tbaa !12
  %i.nx = call i32 @llvm.smin.i32(i32 %i.nn, i32 %i.nw)
  store i32 %i.nx, ptr %i.np, align 4, !tbaa !34
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i32 -1, ptr %i.ny, align 4, !tbaa !83
  br label %.lr.ph231.i.prol.loopexit.unr-lcssa

.lr.ph231.i.prol.loopexit.unr-lcssa:              ; preds = %bb.cm, %.lr.ph231.i.prol
  %.2.i66.prol = phi i32 [ %.058234.i, %bb.cm ], [ %i.ns, %.lr.ph231.i.prol ] ; 2 uses
  %indvars.iv.next284.i.prol = add nsw i64 %i.ni, 2
  br label %.lr.ph231.i.prol.loopexit

.lr.ph231.i.prol.loopexit:                        ; preds = %.lr.ph231.i.prol.loopexit.unr-lcssa, %.lr.ph231.preheader.i
  %.2.i66.lcssa.unr = phi i32 [ poison, %.lr.ph231.preheader.i ], [ %.2.i66.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %indvars.iv283.i.unr = phi i64 [ %i.nj, %.lr.ph231.preheader.i ], [ %indvars.iv.next284.i.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %.1229.i.unr = phi i32 [ %.058234.i, %.lr.ph231.preheader.i ], [ %.2.i66.prol, %.lr.ph231.i.prol.loopexit.unr-lcssa ]
  %i.nz = icmp eq i32 %i.ng, %.058234.i
  br i1 %i.nz, label %._crit_edge232.loopexit.i, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp
  %indvars.iv283.i = phi i64 [ %indvars.iv.next284.i.1, %bb.cp ], [ %indvars.iv283.i.unr, %.lr.ph231.i.prol.loopexit ] ; 4 uses
  %.1229.i = phi i32 [ %.2.i66.1, %bb.cp ], [ %.1229.i.unr, %.lr.ph231.i.prol.loopexit ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv283.i ; 3 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !34 ; 2 uses
  %i.oc = sext i32 %.1229.i to i64
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.oc ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !35 ; 2 uses
  %.not77.i = icmp sgt i32 %i.ob, %i.of
  %i.og = trunc nsw i64 %indvars.iv283.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph231.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !12
  %i.oj = call i32 @llvm.smax.i32(i32 %i.of, i32 %i.oi)
  store i32 %i.oj, ptr %i.oe, align 4, !tbaa !35
  %i.ok = load i32, ptr %i.od, align 4, !tbaa !12
  %i.ol = call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.ok)
  store i32 %i.ol, ptr %i.od, align 4, !tbaa !34
  %i.om = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i32 -1, ptr %i.om, align 4, !tbaa !83
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cn, %.lr.ph231.i
  %.2.i66 = phi i32 [ %.1229.i, %bb.cn ], [ %i.og, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next284.i = add nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next284.i ; 3 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !34 ; 2 uses
  %i.op = sext i32 %.2.i66 to i64
  %i.oq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.op ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.oo, %i.os
  %i.ot = trunc nsw i64 %indvars.iv.next284.i to i32
  br i1 %.not77.i.1, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph231.i.1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !12
  %i.ow = call i32 @llvm.smax.i32(i32 %i.os, i32 %i.ov)
  store i32 %i.ow, ptr %i.or, align 4, !tbaa !35
  %i.ox = load i32, ptr %i.oq, align 4, !tbaa !12
  %i.oy = call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.ox)
  store i32 %i.oy, ptr %i.oq, align 4, !tbaa !34
  %i.oz = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store i32 -1, ptr %i.oz, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph231.i.1
  %.2.i66.1 = phi i32 [ %.2.i66, %bb.co ], [ %i.ot, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next284.i.1 = add nsw i64 %indvars.iv283.i, 2 ; 2 uses
  %lftr.wideiv.i67.1 = trunc i64 %indvars.iv.next284.i.1 to i32
  %exitcond286.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i67.1
  br i1 %exitcond286.not.i.1, label %._crit_edge232.loopexit.i, label %.lr.ph231.i, !llvm.loop !50

._crit_edge232.loopexit.i:                        ; preds = %bb.cp, %.lr.ph231.i.prol.loopexit
  %.2.i66.lcssa = phi i32 [ %.2.i66.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i66.1, %bb.cp ]
  %.pre326.i = add nsw i32 %.2.i66.lcssa, 1
  br label %._crit_edge232.i

._crit_edge232.i:                                 ; preds = %._crit_edge232.loopexit.i, %.preheader184.i
  %spec.select.pre-phi.i = phi i32 [ %.pre326.i, %._crit_edge232.loopexit.i ], [ %storemerge79228.i, %.preheader184.i ] ; 2 uses
  %i.pa = icmp slt i32 %spec.select.pre-phi.i, %.046.lcssa.i
  br i1 %i.pa, label %.preheader184.i, label %.preheader182.i, !llvm.loop !51

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
  %.neg146 = add i32 %.067244.i, -2
  %i.pk = sext i32 %.067244.i to i64
  br label %bb.cq

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not142, label %._crit_edge249.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count315.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph248.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check690 = icmp ult i32 %2, 32
  br i1 %min.iters.check690, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pl = and i64 %wide.trip.count315.i, 28
  %n.vec = and i64 %wide.trip.count315.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
end_hunk_0
