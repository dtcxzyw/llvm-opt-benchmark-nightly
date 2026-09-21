Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN7xgboost4tree22MultiTargetHistBuilder8InitRootEPNS_7DMatrixENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEEPNS_7RegTreeE:._crit_edge.i.i
bb.x:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn51 = phi { ptr, i32 } [ %i.eg, %bb.x ], [ %i.ef, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.cm

bb.z:                                             ; preds = %bb.q
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.aa:                                            ; preds = %bb.r
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EED2Ev.exit144

.lr.ph:                                           ; preds = %.loopexit181, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit181 ] ; 2 uses
  %.047194 = phi float [ %i.en, %.lr.ph ], [ 0.000000e+00, %.loopexit181 ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !544
  %i.em = fptrunc double %i.el to float
  %i.en = fadd float %.047194, %i.em              ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.eo = and i64 %indvars.iv.next, 4294967295
  %i.ep = icmp ugt i64 %i.l, %i.eo
  br i1 %i.ep, label %.lr.ph, label %._crit_edge, !llvm.loop !1529

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit181
  %.047.lcssa = phi float [ 0.000000e+00, %.loopexit181 ], [ %i.en, %.lr.ph ]
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.cn, ptr %i.er, align 8, !tbaa !545
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.cj, ptr %i.es, align 8, !tbaa !546
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.cj, ptr %i.et, align 8, !tbaa !548
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 %.sink.i.i.i.i96, ptr %i.eu, align 8, !tbaa !549
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 -65536, ptr %i.ev, align 8
  store i64 1, ptr %16, align 8, !tbaa !91
  store i64 %i.cr, ptr %i.eq, align 8, !tbaa !91
  invoke void @_ZN7xgboost7RegTree7SetRootENS_6linalg10TensorViewIKfLi1EEEf(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.476") align 8 %16, float noundef %.047.lcssa)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ew, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ex, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ey = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #38
          to label %.noexc147 unwind label %bb.ah ; 6 uses

.noexc147:                                        ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ey, ptr %17, align 8, !tbaa !379
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 104 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !357
  %i.fc = load i64, ptr %18, align 8
  store i64 %i.fc, ptr %i.ey, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  invoke void @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, ptr noundef nonnull align 8 dereferenceable(96) %i.ez)
          to label %_ZSt10_ConstructIN7xgboost4tree16MultiExpandEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.ac

_ZSt10_ConstructIN7xgboost4tree16MultiExpandEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc147
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.fe, align 8, !tbaa !356
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i, label %bb.aj

bb.ac:                                            ; preds = %.noexc147
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  %i.fj = call ptr @__cxa_begin_catch(ptr %i.fi) #11 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryEEvT_S4_(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ey)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_rethrow() #37
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body148 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #40
  unreachable

bb.ag:                                            ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ab
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body148

.body148:                                         ; preds = %bb.ae, %bb.ah
  %eh.lpad-body149 = phi { ptr, i32 } [ %i.fn, %bb.ah ], [ %i.fk, %bb.ae ]
  %i.fo = load ptr, ptr %17, align 8, !tbaa !379  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i, label %.body101, label %bb.ai

bb.ai:                                            ; preds = %.body148
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !357
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #39
  br label %.body101

bb.aj:                                            ; preds = %_ZSt10_ConstructIN7xgboost4tree16MultiExpandEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !302
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fg to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fy) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i: ; preds = %bb.aj, %_ZSt10_ConstructIN7xgboost4tree16MultiExpandEntryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !302
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i3.i.i, label %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !347
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #39
  br label %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit

_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit:      ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br i1 %.not, label %._crit_edge201, label %.lr.ph200

._crit_edge201.loopexit:                          ; preds = %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit
  %i.gn = ptrtoint ptr %.sroa.9.1 to i64
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit
  %.sroa.0153.0.lcssa = phi ptr [ null, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ], [ %.sroa.0153.2, %._crit_edge201.loopexit ] ; 9 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ], [ %i.gn, %._crit_edge201.loopexit ]
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ], [ %.sroa.13.2, %._crit_edge201.loopexit ] ; 5 uses
  %i.go = load ptr, ptr %2, align 8, !tbaa !131
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.as unwind label %bb.az

bb.am:                                            ; preds = %._crit_edge
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EED2Ev.exit144

.body101:                                         ; preds = %.body148, %bb.ai
  call void @_ZN7xgboost4tree16MultiExpandEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EED2Ev.exit144

.lr.ph200:                                        ; preds = %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit
  %i.gs = phi i64 [ %indvars.iv.next214, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit ], [ 0, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ] ; 2 uses
  %.sroa.13.0197 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit ], [ null, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ] ; 5 uses
  %.sroa.9.0196 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit ], [ null, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ] ; 3 uses
  %.sroa.0153.0195 = phi ptr [ %.sroa.0153.2, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit ], [ null, %_ZN7xgboost4tree16MultiExpandEntryD2Ev.exit ] ; 7 uses
  %i.gt = load ptr, ptr %i.bl, align 8, !tbaa !266
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !269
  %i.gv = getelementptr inbounds nuw [456 x i8], ptr %i.gu, i64 %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9.0196, %.sroa.13.0197
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph200
  store ptr %i.gw, ptr %.sroa.9.0196, align 8, !tbaa !551
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit

bb.ao:                                            ; preds = %.lr.ph200
  %i.gx = ptrtoint ptr %.sroa.13.0197 to i64
  %i.gy = ptrtoint ptr %.sroa.0153.0195 to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 6 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.ap, label %_ZNKSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.hb = ashr exact i64 %i.gz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1152921504606846975)
  %i.hf = select i1 %i.hd, i64 1152921504606846975, i64 %i.he ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #38
          to label %.noexc104 unwind label %.loopexit ; 4 uses

.noexc104:                                        ; preds = %_ZNKSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %i.gz ; 2 uses
  store ptr %i.gw, ptr %i.hi, align 8, !tbaa !551
  %i.hj = icmp sgt i64 %i.gz, 0
  br i1 %i.hj, label %bb.aq, label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.aq:                                            ; preds = %.noexc104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hh, ptr align 8 %.sroa.0153.0195, i64 %i.gz, i1 false)
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.aq, %.noexc104
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0153.0195, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0195, i64 noundef %i.gz) #39
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ar, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hf
  br label %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.an
  %.sroa.0153.2 = phi ptr [ %i.hh, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0153.0195, %bb.an ] ; 2 uses
  %.pn180 = phi ptr [ %i.hi, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.9.0196, %bb.an ]
  %.sroa.13.2 = phi ptr [ %i.hk, %_ZNSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.13.0197, %bb.an ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn180, i64 8 ; 2 uses
  %indvars.iv.next214 = add nuw i64 %i.gs, 1      ; 2 uses
  %i.hl = icmp ugt i64 %i.l, %indvars.iv.next214
  br i1 %i.hl, label %.lr.ph200, label %._crit_edge201.loopexit, !llvm.loop !1530

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN7xgboost4tree21BoundedHistCollectionESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.as:                                            ; preds = %._crit_edge201
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 184
  %i.hn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !553
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !554 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.hv = load ptr, ptr %i.bn, align 8, !tbaa !428 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !78, !noalias !1550
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 136
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !79, !noalias !1550
  store i32 %i.hx, ptr %20, align 8, !tbaa !83, !alias.scope !1550
  %i.ia = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ia, i8 0, i64 18, i1 false), !alias.scope !1550
  store double %i.hz, ptr %i.ib, align 8, !tbaa !84, !alias.scope !1550
  %i.ic = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i8 1, ptr %i.ic, align 8, !tbaa !85, !alias.scope !1550
  %i.id = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 3, ptr %i.id, align 4, !tbaa !86, !alias.scope !1550
  %i.ie = load ptr, ptr %2, align 8, !tbaa !131, !noalias !1551
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 104
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !1551
  invoke void %i.ig(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %20)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit unwind label %bb.ba, !inline_history !13

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.ih = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !159, !noalias !1552 ; 2 uses
  %i.ik = load <2 x ptr>, ptr %19, align 16, !tbaa !138, !noalias !1552
  store <2 x ptr> %i.ik, ptr %21, align 16, !tbaa !138, !alias.scope !1552
  %.not.i.i.i.i.i109 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i109, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit, label %bb.au

bb.au:                                            ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 3 uses
  %i.im = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114, !noalias !1552
  %.not.i.i.i.i.i.i = icmp eq i8 %i.im, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.in = load i32, ptr %i.il, align 4, !tbaa !109, !noalias !1552
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.il, align 4, !tbaa !109, !noalias !1552
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

bb.aw:                                            ; preds = %bb.au
  %i.ip = atomicrmw volatile add ptr %i.il, i32 1 acq_rel, align 4, !noalias !1552 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit, %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !alias.scope !1553
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #11
  br label %.body110

_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit
  %i.ir = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit
  br i1 %i.ir, label %bb.bf, label %bb.bc

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.as, %._crit_edge201
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ba:                                            ; preds = %bb.at
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %bb.cj

bb.bb:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE3endEv.exit
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bc:                                            ; preds = %bb.ay
  %i.iv = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK7xgboost13BatchIteratorINS_16GHistIndexMatrixEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iw = load ptr, ptr %i.by, align 8, !tbaa !273
  %i.ix = ptrtoint ptr %.sroa.0153.0.lcssa to i64
  %i.iy = sub i64 %.sroa.9.0.lcssa, %i.ix
  %i.iz = ashr exact i64 %i.iy, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 152
  invoke void @_ZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EE(ptr noundef nonnull align 8 dereferenceable(240) %i.iw, i64 %i.iz, ptr %.sroa.0153.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 %i.ht, ptr %i.hq, ptr noundef nonnull %17)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bf:                                            ; preds = %bb.bd, %bb.ay
  %i.jc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !159 ; 8 uses
  %.not.i.i.i113 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i113, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 4 uses
  %i.jf = load atomic i64, ptr %i.je acquire, align 8 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 4294967297
  %i.jh = trunc i64 %i.jf to i32                  ; 2 uses
  br i1 %i.jg, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.je, align 8, !tbaa !155
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 0, ptr %i.ji, align 4, !tbaa !156
  %i.jj = load ptr, ptr %i.jd, align 8, !tbaa !131
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #11, !inline_history !14
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !131
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #11, !inline_history !14
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i114 = icmp eq i8 %i.jp, 0
  br i1 %.not.i.i.i.i114, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jq = add nsw i32 %i.jh, -1
  store i32 %i.jq, ptr %i.je, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jr = atomicrmw volatile add ptr %i.je, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i = phi i32 [ %i.jh, %bb.bj ], [ %i.jr, %bb.bk ]
  %i.js = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.js, label %bb.bl, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit, !prof !170

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #11
  br label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  %i.jt = load ptr, ptr %i.ih, align 8, !tbaa !159 ; 8 uses
  %.not.i.i.i115 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i115, label %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit119, label %bb.bm

bb.bm:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_16GHistIndexMatrixEED2Ev.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ju, align 8, !tbaa !155
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !156
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !131
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #11, !inline_history !14
end_hunk_0
begin_hunk_1_@_ZNK7xgboost4tree18HistMultiEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsEjNS2_4SpanINS6_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEdiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerISt6vectorIS9_SaIS9_EEEE:bb.a
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !632
  %i.cz = fadd <2 x double> %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load <2 x double>, ptr %i.db, align 8, !tbaa !632
  %i.dd = fadd <2 x double> %i.cz, %i.dc          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us, !llvm.loop !2080

._crit_edge.us.unr-lcssa:                         ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader: ; preds = %._crit_edge.us.unr-lcssa, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.preheader ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.preheader ], [ %i.dd, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil ], [ %indvars.iv.epil.init, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader ] ; 2 uses
  %i.de = phi <2 x double> [ %i.dh, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil ], [ %.epil.init, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil ], [ 0, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil.preheader ]
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.epil
  %i.dg = load <2 x double>, ptr %i.df, align 8, !tbaa !632
  %i.dh = fadd <2 x double> %i.de, %i.dg          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil, !llvm.loop !2081

._crit_edge.us:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil, %._crit_edge.us.unr-lcssa
  %.lcssa = phi <2 x double> [ %i.dd, %._crit_edge.us.unr-lcssa ], [ %i.dh, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit.us.epil ]
  %i.di = mul i64 %i.bw, %i.ce
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.di
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ce
  %i.dl = load <2 x double>, ptr %i.dj, align 8, !tbaa !632
  %i.dm = fsub <2 x double> %i.dl, %.lcssa
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !632
  %i.dn = add i32 %storemerge164.us, 1            ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = icmp ugt i64 %3, %i.do
  br i1 %i.dp, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us, label %._crit_edge165, !llvm.loop !2082

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph
  br i1 %i.bs, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split, %bb.t
  %i.dq = phi i64 [ %i.ec, %bb.t ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split ] ; 3 uses
  %storemerge164.us171 = phi i32 [ %i.eb, %bb.t ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split ]
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !533 ; 2 uses
  %.not8.i.us173 = icmp ult i64 %i.ds, %i.br
  br i1 %.not8.i.us173, label %.split.us, label %bb.s, !prof !170

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170
  %.in.i.us174 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %.in.i.us174, align 8, !tbaa !534
  %i.du = icmp ne ptr %i.dt, null
  %i.dv = icmp eq i64 %i.ds, %i.br
  %i.dw = or i1 %i.dv, %i.du
  br i1 %i.dw, label %bb.t, label %.split167.us, !prof !194

bb.t:                                             ; preds = %bb.s
  %i.dx = mul i64 %i.bw, %i.dq
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.dq
  %i.ea = load <2 x double>, ptr %i.dy, align 8, !tbaa !632
  store <2 x double> %i.ea, ptr %i.dz, align 8, !tbaa !632
  %i.eb = add i32 %storemerge164.us171, 1         ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = icmp ugt i64 %3, %i.ec
  br i1 %i.ed, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170, label %._crit_edge165, !llvm.loop !2082

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split
  %i.ee = icmp eq i32 %.fr190, 0
  br i1 %i.ee, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split, %bb.u
  %i.ef = phi i64 [ %i.en, %bb.u ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ] ; 3 uses
  %storemerge164.us177 = phi i32 [ %i.em, %bb.u ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ]
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !533
  %.not.i.us178 = icmp ugt i64 %i.bu, %i.eh
  br i1 %.not.i.us178, label %.split.us, label %bb.u, !prof !170

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176
  %i.ei = mul i64 %i.bw, %i.ef
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ef
  %i.el = load <2 x double>, ptr %i.ej, align 8, !tbaa !632
  store <2 x double> %i.el, ptr %i.ek, align 8, !tbaa !632
  %i.em = add i32 %storemerge164.us177, 1         ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %3, %i.en
  br i1 %i.eo, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176, label %._crit_edge165, !llvm.loop !2082

bb.v:                                             ; preds = %.noexc93
  call void @_ZSt9terminatev() #40, !noalias !2096
  unreachable

._crit_edge165:                                   ; preds = %bb.ab, %bb.u, %bb.t, %._crit_edge.us, %.preheader157
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store float 0.000000e+00, ptr %16, align 8, !tbaa !373
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  store i32 0, ptr %i.ep, align 4, !tbaa !374
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.eq, align 8, !tbaa !375
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.es, i8 0, i64 48, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %.not185 = icmp eq i32 %i.i, %i.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.er, i8 0, i64 25, i1 false)
  br i1 %.not185, label %._crit_edge188.thread, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge165
  %i.eu = load i64, ptr %5, align 8               ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ey = sext i32 %i.i to i64
  br label %bb.ac

bb.w:                                             ; preds = %_ZN7xgboost6linalg5EmptyINS_6detail20GradientPairInternalIdEEJiRmEEEDaPKNS_7ContextEDpOT0_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.x:                                             ; preds = %bb.g
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.y:                                             ; preds = %bb.m
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.o
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split, %bb.ab
  %i.fd = phi i64 [ %i.fm, %bb.ab ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ] ; 3 uses
  %storemerge164 = phi i32 [ %i.fl, %bb.ab ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ]
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !533
  %.not.i = icmp ugt i64 %i.bu, %i.ff
  br i1 %.not.i, label %.split.us, label %bb.aa, !prof !170

.split.us:                                        ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170, %bb.p, %.split.i.us
  call void @_ZSt9terminatev() #40
  unreachable

bb.aa:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.in.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %.in.i, align 8, !tbaa !534
  %.not191 = icmp eq ptr %i.fg, null
  br i1 %.not191, label %.split167.us, label %bb.ab, !prof !170

.split167.us:                                     ; preds = %bb.aa, %bb.s, %bb.r
  call void @_ZSt9terminatev() #40
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fh = mul i64 %i.bw, %i.fd
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.fh
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.fd
  %i.fk = load <2 x double>, ptr %i.fi, align 8, !tbaa !632
  store <2 x double> %i.fk, ptr %i.fj, align 8, !tbaa !632
  %i.fl = add i32 %storemerge164, 1               ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp ugt i64 %3, %i.fm
  br i1 %i.fn, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, label %._crit_edge165, !llvm.loop !2082

.split169.us:                                     ; preds = %.lr.ph.us
  call void @_ZSt9terminatev() #40
  unreachable

._crit_edge188:                                   ; preds = %bb.ak
  %.pre = load i8, ptr %i.et, align 8, !tbaa !557, !range !184
  %i.fo = trunc nuw i8 %.pre to i1
  br i1 %i.fo, label %bb.am, label %._crit_edge188.thread

bb.ac:                                            ; preds = %.lr.ph, %bb.ak
  %indvars.iv204.a = phi i64 [ %i.ey, %.lr.ph ], [ %indvars.iv.next205.a, %bb.ak ] ; 6 uses
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !423
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv204.a
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !241 ; 2 uses
  br i1 %.not189, label %._crit_edge, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96

._crit_edge:                                      ; preds = %bb.ae, %bb.ac
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !663
  %i.ft = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.fs, i32 noundef %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.af unwind label %bb.ag

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96: ; preds = %bb.ac, %bb.ae
  %i.fu = phi i64 [ %indvars.iv.next205, %bb.ae ], [ 0, %bb.ac ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !533
  %i.fx = icmp ugt i64 %i.fw, %indvars.iv204.a
  br i1 %i.fx, label %bb.ae, label %bb.ad, !prof !194

bb.ad:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96
  call void @_ZSt9terminatev() #40
  unreachable

bb.ae:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !534
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv204.a
  %i.gb = load i64, ptr %14, align 8, !tbaa !91
  %i.gc = mul i64 %i.gb, %i.fu
  %i.gd = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !tbaa !530
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false)
  %i.gf = mul i64 %i.eu, %i.fu
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.gf
  %i.gh = load i64, ptr %14, align 8, !tbaa !91
  %i.gi = mul i64 %i.gh, %i.fu
  %i.gj = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !tbaa !530
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i64, ptr %13, align 8, !tbaa !91
  %i.gm = mul i64 %i.gl, %i.fu
  %i.gn = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !530
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load <2 x double>, ptr %i.gg, align 8, !tbaa !632
  %i.gq = load <2 x double>, ptr %i.gk, align 8, !tbaa !632
  %i.gr = fsub <2 x double> %i.gp, %i.gq
  store <2 x double> %i.gr, ptr %i.go, align 8, !tbaa !632
  %indvars.iv.next205 = add nuw i64 %i.fu, 1      ; 2 uses
  %i.gs = icmp ugt i64 %3, %indvars.iv.next205
  br i1 %i.gs, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96, label %._crit_edge, !llvm.loop !2083

bb.af:                                            ; preds = %._crit_edge
  %i.gt = fsub double %i.ft, %6
  %i.gu = fptrunc double %i.gt to float
  %i.gv = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %16, float noundef %i.gu, i32 noundef %2, float noundef %i.fr, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %.preheader unwind label %bb.ag ; 0 uses

.preheader:                                       ; preds = %bb.af
  br i1 %.not189, label %._crit_edge184, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph: ; preds = %.preheader
  %i.gw = load i64, ptr %14, align 8
  %i.gx = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8
  %i.gy = load i64, ptr %13, align 8
  %i.gz = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  br label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100

._crit_edge184:                                   ; preds = %bb.ai, %.preheader
  %i.ha = load ptr, ptr %i.ex, align 8, !tbaa !663
  %i.hb = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.ha, i32 noundef %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.aj unwind label %bb.al

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph, %bb.ai
  %i.hd = phi i64 [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph ], [ %indvars.iv.next208, %bb.ai ] ; 6 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.hd ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !533
  %i.hg = icmp ugt i64 %i.hf, %indvars.iv204.a
  br i1 %i.hg, label %bb.ai, label %bb.ah, !prof !194

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100
  call void @_ZSt9terminatev() #40
  unreachable

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !534
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %indvars.iv204.a
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.hd
  %i.hl = mul i64 %i.gw, %i.hd
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.hl
  %i.hn = load <2 x double>, ptr %i.hj, align 8, !tbaa !632
  %i.ho = load <2 x double>, ptr %i.hk, align 8, !tbaa !632
  %i.hp = fadd <2 x double> %i.hn, %i.ho          ; 2 uses
  store <2 x double> %i.hp, ptr %i.hm, align 8, !tbaa !632
  %i.hq = mul i64 %i.eu, %i.hd
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.hq
  %i.hs = mul i64 %i.gy, %i.hd
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.hs
  %i.hu = load <2 x double>, ptr %i.hr, align 8, !tbaa !632
  %i.hv = fsub <2 x double> %i.hu, %i.hp
  store <2 x double> %i.hv, ptr %i.ht, align 8, !tbaa !632
  %indvars.iv.next208 = add nuw i64 %i.hd, 1      ; 2 uses
  %i.hw = icmp ugt i64 %3, %indvars.iv.next208
  br i1 %i.hw, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100, label %._crit_edge184, !llvm.loop !2084

bb.aj:                                            ; preds = %._crit_edge184
  %i.hx = fsub double %i.hb, %6
  %i.hy = fptrunc double %i.hx to float
  %i.hz = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %16, float noundef %i.hy, i32 noundef %2, float noundef %i.fr, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next205.a = add nsw i64 %indvars.iv204.a, 1 ; 2 uses
  %i.ia = trunc nsw i64 %indvars.iv.next205.a to i32
  %.not = icmp eq i32 %i.m, %i.ia
  br i1 %.not, label %._crit_edge188, label %bb.ac, !llvm.loop !2085

bb.al:                                            ; preds = %bb.aj, %._crit_edge184
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.am:                                            ; preds = %._crit_edge188
  %i.ic = add nuw nsw i32 %.fr190, 1
  %i.id = sext i32 %i.ic to i64
  %i.ie = uitofp i64 %i.id to double
  %i.if = fmul nnan double %i.ie, 3.125000e-02
  %i.ig = call double @llvm.ceil.f64(double %i.if)
  %i.ih = fptoui double %i.ig to i64              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !109
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !459 ; 3 uses
  %i.ik = load ptr, ptr %i.er, align 8, !tbaa !346 ; 5 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = ashr exact i64 %i.in, 2                 ; 3 uses
  %i.ip = icmp ult i64 %i.io, %i.ih
  br i1 %i.ip, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iq = sub nuw i64 %i.ih, %i.io
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr %i.ij, i64 noundef %i.iq, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge unwind label %bb.aq

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge: ; preds = %bb.an
  %.pre207 = load ptr, ptr %i.er, align 8, !tbaa !346
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.ao:                                            ; preds = %bb.am
  %i.ir = icmp ugt i64 %i.io, %i.ih
  br i1 %i.ir, label %bb.ap, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.ap:                                            ; preds = %bb.ao
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ih ; 2 uses
  %.not.i.i = icmp eq ptr %i.ij, %i.is
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.is, ptr %i.ii, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.ap, %bb.ao
  %i.it = phi ptr [ %.pre207, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge ], [ %i.ik, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ik, %bb.ap ], [ %i.ik, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.iu = load float, ptr %i.eq, align 8, !tbaa !375
  %i.iv = fptoui float %i.iu to i64               ; 2 uses
  %i.iw = lshr i64 %i.iv, 5
  %i.ix = and i64 %i.iv, 31
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.iw ; 2 uses
  %i.iz = lshr exact i64 2147483648, %i.ix
  %i.ja = trunc nuw i64 %i.iz to i32
  %i.jb = load i32, ptr %i.iy, align 4, !tbaa !109
  %i.jc = or i32 %i.jb, %i.ja
  store i32 %i.jc, ptr %i.iy, align 4, !tbaa !109
  br label %._crit_edge188.thread

bb.aq:                                            ; preds = %bb.an
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ax

._crit_edge188.thread:                            ; preds = %._crit_edge165, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %._crit_edge188
  %i.je = load float, ptr %16, align 8, !tbaa !373 ; 4 uses
  %i.jf = load i32, ptr %i.ep, align 4, !tbaa !374 ; 2 uses
  %i.jg = call float @llvm.fabs.f32(float %i.je)
  %i.jh = fcmp oeq float %i.jg, +inf
  br i1 %i.jh, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge188.thread
  %i.ji = and i32 %i.jf, 2147483647
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !374
  %i.jl = and i32 %i.jk, 2147483647
  %.not.i.i107 = icmp samesign ugt i32 %i.jl, %i.ji
  %i.jm = load float, ptr %9, align 8, !tbaa !373 ; 2 uses
  br i1 %.not.i.i107, label %.split.i108, label %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i

.split.i108:                                      ; preds = %bb.ar
  %i.jn = fcmp ule float %i.jm, %i.je
  br i1 %i.jn, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i: ; preds = %bb.ar
  %i.jo = fcmp ogt float %i.je, %i.jm
  br i1 %i.jo, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

bb.as:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108
  store float %i.je, ptr %9, align 8, !tbaa !373
  store i32 %i.jf, ptr %i.jj, align 4, !tbaa !374
  %i.jp = load float, ptr %i.eq, align 8, !tbaa !375
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jp, ptr %i.jq, align 8, !tbaa !375
  %i.jr = load i8, ptr %i.et, align 8, !tbaa !557, !range !184, !noundef !185
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 %i.jr, ptr %i.js, align 8, !tbaa !557
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ju = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.noexc109 unwind label %bb.aw ; 0 uses

.noexc109:                                        ; preds = %bb.as
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.noexc110 unwind label %bb.aw ; 0 uses

.noexc110:                                        ; preds = %.noexc109
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.jx)
          to label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit unwind label %bb.aw ; 0 uses

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit: ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108, %._crit_edge188.thread, %.noexc110
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !302
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i: ; preds = %bb.at, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kh = load ptr, ptr %i.es, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !302
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i: ; preds = %bb.au, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.kn = load ptr, ptr %i.er, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i3.i, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !347
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  ret void

bb.aw:                                            ; preds = %.noexc110, %.noexc109, %bb.as
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.al, %bb.ag, %bb.aw
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ag ], [ %i.kt, %bb.aw ], [ %i.ib, %bb.al ], [ %i.jd, %bb.aq ]
  call void @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.z
  %.pn71.pn = phi { ptr, i32 } [ %i.fc, %bb.z ], [ %.pn67.pn.pn, %bb.ax ]
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  br label %.body

.body:                                            ; preds = %bb.y, %bb.n, %bb.ay
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.ay ], [ %i.fb, %bb.y ], [ %i.bi, %bb.n ]
end_hunk_1
