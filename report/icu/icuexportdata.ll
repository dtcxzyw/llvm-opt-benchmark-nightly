Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z20dumpScriptExtensionsP8_IO_FILE:bb.a

.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.w, %bb.n
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp118

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.bg = phi ptr [ null, %.lr.ph.preheader ], [ %i.cf, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.bh = phi ptr [ null, %.lr.ph.preheader ], [ %i.cg, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.bi = phi ptr [ null, %.lr.ph.preheader ], [ %i.ch, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !133
  %i.bl = trunc i32 %i.bk to i16                  ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i96, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  store i16 %i.bl, ptr %i.bi, align 2, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  store ptr %i.bm, ptr %i.ah, align 8, !tbaa !49
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.bn = ptrtoint ptr %i.bh to i64
  %i.bo = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775806
  br i1 %i.bq, label %bb.ae, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.br = ashr exact i64 %i.bp, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 4611686018427387903)
  %i.bv = select i1 %i.bt, i64 4611686018427387903, i64 %i.bu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 1
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store i16 %i.bl, ptr %i.by, align 2, !tbaa !47
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.af, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bx, ptr align 2 %i.bg, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %.noexc98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.cb = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cd) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bx, ptr %7, align 8, !tbaa !51
  store ptr %i.ca, ptr %i.ah, align 8, !tbaa !49
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bv ; 2 uses
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !50
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ac
  %i.cf = phi ptr [ %i.bx, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bg, %bb.ac ]
  %i.cg = phi ptr [ %i.ce, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bh, %bb.ac ]
  %i.ch = phi ptr [ %i.ca, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bm, %bb.ac ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit: ; preds = %bb.z, %._crit_edge, %.noexc94
  %or.cond = icmp ugt i32 %i.av, 1
  br i1 %or.cond, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.ci = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cj = trunc i32 %i.av to i16
  store i16 %i.cj, ptr %i.d, align 2, !tbaa !47
  %i.ck = invoke ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ci, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
          to label %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit unwind label %bb.ai ; 0 uses

_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.cm = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 8 uses
  %i.cn = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %.not73131.not = icmp eq ptr %i.cm, %i.cn
  br i1 %.not73131.not, label %.critedge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.aj
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 2 uses
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.ct = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph134, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116
  %.047132 = phi i64 [ 0, %.lr.ph134 ], [ %i.df, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.047132 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !49 ; 2 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !51 ; 3 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp eq i64 %i.dd, %i.cw
  br i1 %i.de, label %bb.al, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

bb.al:                                            ; preds = %bb.ak
  %.not.not.i.i.i.i.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.al
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.da, ptr %i.ct, i64 %i.cw)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116: ; preds = %bb.ak, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit
  %i.df = add nuw i64 %.047132, 1                 ; 2 uses
  %exitcond147.not = icmp eq i64 %i.df, %i.cr
  br i1 %exitcond147.not, label %.critedge, label %bb.ak, !llvm.loop !123

.critedge:                                        ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116, %bb.aj
  %.047.lcssa = phi i64 [ 0, %bb.aj ], [ %i.cr, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread116 ]
  %i.dg = load ptr, ptr %i.ak, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.cm, %i.dg
  br i1 %.not.i, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.di = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i.i.i, label %.noexc101, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = icmp ugt i64 %i.dl, 9223372036854775806
  br i1 %i.dm, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, !prof !57

.noexc.i.i.i:                                     ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #28
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %bb.am
  %i.do = phi ptr [ null, %bb.am ], [ %i.dn, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.do, ptr %i.cm, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !49
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !50
  %i.ds = load ptr, ptr %7, align 8, !tbaa !45    ; 4 uses
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, 2
  br i1 %i.dx, label %bb.ao, label %bb.ap, !prof !58

bb.ao:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.do, ptr align 2 %i.ds, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.ap:                                            ; preds = %.noexc101
  %i.dy = icmp eq i64 %i.dw, 2
  br i1 %i.dy, label %bb.aq, label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.dz = load i16, ptr %i.ds, align 2, !tbaa !47
  store i16 %i.dz, ptr %i.do, align 2, !tbaa !47
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

_ZNSt6vectorItSaItEEC2ERKS1_.exit.i:              ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %i.dw
  store ptr %i.ea, ptr %i.dp, align 8, !tbaa !49
  %i.eb = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.ec, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

bb.ar:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ar
  %.pre150 = load ptr, ptr %7, align 8, !tbaa !51
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i
  %9 = phi ptr [ %.pre150, %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.ds, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i ] ; 2 uses
  %.pre-phi = ptrtoint ptr %9 to i64
  %i.ed = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %.pre-phi
  %i.eg = lshr exact i64 %i.ef, 1
  %i.eh = trunc i64 %i.eg to i32
  invoke void @usrc_writeArray(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %9, i32 noundef 16, i32 noundef %i.eh, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
          to label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread: ; preds = %bb.al, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit
  %.047129 = phi i64 [ %.047.lcssa, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit ], [ %.047132, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit ], [ %.047132, %bb.al ]
  %switch.selectcmp = icmp eq i32 %i.av, 1
  %switch.selectcmp90 = icmp eq i32 %i.av, 0
  %DATAEXPORT_SCRIPT_X_WITH_COMMON.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_COMMON, align 2
  %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_INHERITED, align 2
  %DATAEXPORT_SCRIPT_X_WITH_OTHER.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_OTHER, align 2
  %switch.select.val = select i1 %switch.selectcmp, i16 %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val, i16 %DATAEXPORT_SCRIPT_X_WITH_OTHER.val
  %.0 = select i1 %switch.selectcmp90, i16 %DATAEXPORT_SCRIPT_X_WITH_COMMON.val, i16 %switch.select.val
  %i.ei = zext i16 %.0 to i64
  %i.ej = or i64 %.047129, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  invoke void @umutablecptrie_set_78(ptr noundef %i.el, i32 noundef %i.au, i32 noundef %i.ek, ptr noundef nonnull %i.e)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 413, ptr noundef %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.er = load i32, ptr %i.u, align 8, !tbaa !130 ; 2 uses
  %i.es = load i32, ptr %i.v, align 4, !tbaa !131
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.eu = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.u, align 8, !tbaa !130
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.aw:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ev = load i32, ptr %i.s, align 8, !tbaa !128 ; 2 uses
  %i.ew = load i32, ptr %i.t, align 4, !tbaa !129
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.ey = load ptr, ptr %6, align 8, !tbaa !127
  %i.ez = invoke i32 @uset_getItem_78(ptr noundef %i.ey, i32 noundef %i.ev, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %.noexc103 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.ax
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !43
  %i.fb = icmp slt i32 %i.fa, 1
  %i.fc = icmp eq i32 %i.ez, 0
  %or.cond.i = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc103
  %i.fd = load i32, ptr %i.s, align 8, !tbaa !128
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.s, align 8, !tbaa !128
  %.pre151.pre = load i32, ptr %i.u, align 8
  br label %bb.ba

bb.az:                                            ; preds = %.noexc103
  store i32 -1, ptr %i.v, align 4, !tbaa !131
  store i32 -1, ptr %i.u, align 8, !tbaa !130
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pre151 = phi i32 [ -1, %bb.az ], [ %.pre151.pre, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.bb:                                            ; preds = %bb.aw
  store i32 -1, ptr %i.v, align 4, !tbaa !131
  store i32 -1, ptr %i.u, align 8, !tbaa !130
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

_ZN6icu_786header21USetCodePointIteratorppEv.exit: ; preds = %bb.av, %bb.ba, %bb.bb
  %i.ff = phi i32 [ %i.eu, %bb.av ], [ %.pre151, %bb.ba ], [ -1, %bb.bb ] ; 2 uses
  %i.fg = load ptr, ptr %6, align 8, !tbaa !127
  %i.fh = icmp ne ptr %i.fg, %5
  %i.fi = icmp ne i32 %i.ff, -1
  %.not3.i = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %.not3.i, label %bb.w, label %._crit_edge138

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ar, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %.noexc94, %bb.aa, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit, %bb.as, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, %bb.ae, %.noexc.i.i.i
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn76 = phi { ptr, i32 } [ %i.cl, %bb.ai ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorItSaItEED2Ev.exit105, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.fk = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit105

_ZNSt6vectorItSaItEED2Ev.exit105:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit105, %bb.ab
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorItSaItEED2Ev.exit105 ], [ %i.bf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.loopexit.split-lp118

.loopexit.split-lp118:                            ; preds = %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bd
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bd ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bq

bb.be:                                            ; preds = %._crit_edge138
  store ptr %i.an, ptr %8, align 8, !tbaa !37
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 423, ptr noundef %i.g)
          to label %bb.bf unwind label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %fwrite71 = call i64 @fwrite(ptr nonnull @.str.35, i64 36, i64 1, ptr %0) ; 0 uses
  invoke void @usrc_writeUCPTrie(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.an, i32 noundef 1)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %.not.i106 = icmp eq ptr %i.an, null
  br i1 %.not.i106, label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @ucptrie_close_78(ptr noundef nonnull %i.an)
          to label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fq = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fq, %i.fs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %i.fq, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit ] ; 3 uses
  %i.ft = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #26
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.fz, %i.fs
  br i1 %.not.i.i.i107, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit
  %i.ga = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fq, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.bk
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %i.bc = load i16, ptr %i.n, align 2, !tbaa !47
  store i16 %i.bc, ptr %i.o, align 2, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !47 ; 2 uses
  %i.bg = icmp ult i16 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.i.i
  store i16 %i.bf, ptr %i.bh, align 2, !tbaa !47
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !5

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i16 %i.an, ptr %i.bj, align 2, !tbaa !47
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !203

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.j, ptr %i.f, align 2, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %i.e, align 8, !tbaa !49
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -2 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !47
  store i16 %i.n, ptr %i.f, align 2, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.o, ptr %i.e, align 8, !tbaa !49
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 1                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !58

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.u, ptr align 2 %i.l, i64 %i.q, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.q, 2
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i16, ptr %i.l, align 2, !tbaa !47
  store i16 %i.w, ptr %i.m, align 2, !tbaa !47
  br label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ]
  %i.x = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.x, ptr %i.l, align 2, !tbaa !47
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 1                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i, %i.ac    ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 4611686018427387903)
  %i.ag = select i1 %i.ae, i64 4611686018427387903, i64 %i.af ; 3 uses
  %.not.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !47
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ai, ptr align 2 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.am, ptr align 2 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !51
  store ptr %i.as, ptr %i.e, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit ], [ %i.ai, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !51     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775806
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !45
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !45
  %.pre45 = ptrtoint ptr %.pre43 to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi = phi i64 [ %.pre45, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.pre-phi46 = ptrtoint ptr %i.z to i64
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !50
  %i.ae = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 2
  br i1 %i.af, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aa, ptr align 2 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 2
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !47
  store i16 %i.ah, ptr %i.aa, align 2, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !49
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !212
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !211
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50, !alias.scope !212
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !50, !alias.scope !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !212
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %i.ap, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !45, !alias.scope !214
  store <2 x ptr> %i.aq, ptr %.012.i.i.i29, align 8, !tbaa !45, !alias.scope !213
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50, !alias.scope !214
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !50, !alias.scope !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !214
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !207

_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ap, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #26
  br label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !56
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { cold }
attributes #32 = { cold nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !29}
!2 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{!5, !29}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
end_hunk_1
