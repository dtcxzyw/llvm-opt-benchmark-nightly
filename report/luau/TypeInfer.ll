Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13252
inline.NumDeleted: 4928
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS_5ScopeEERKNS_11AstExprCallEPKNS_11TypePackVarESB_RKSt6vectorINS_8LocationESaISD_EERKSC_IPKNS_4TypeESaISK_EESO_RSC_INS_18OverloadErrorEntryESaISP_EE:bb.a

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZSt8_DestroyIPPKN4Luau4TypeES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %.not.i.i122 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i122, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.jh = load i32, ptr %i.hs, align 8, !tbaa !544
  %i.ji = icmp eq i32 %i.jh, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.jk = select i1 %i.ji, ptr %i.jj, ptr null
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.av, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.jl = phi ptr [ %i.jk, %bb.av ], [ null, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit ] ; 7 uses
  %i.jm = load ptr, ptr %8, align 8, !tbaa !1039  ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1039 ; 3 uses
  %i.jp = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = sdiv exact i64 %i.jr, 184
  %i.jt = ashr i64 %i.js, 2                       ; 3 uses
  %i.ju = icmp sgt i64 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %i.jv = mul nuw nsw i64 %i.jt, 736
  %scevgep.i.i.i = getelementptr i8, ptr %i.jm, i64 %i.jv ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.az, %.lr.ph.preheader.i.i.i
  %.058.i.i.i = phi i64 [ %i.kf, %bb.az ], [ %i.jt, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.ke, %bb.az ], [ %i.jm, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.jw = getelementptr i8, ptr %.sroa.038.057.i.i.i, i64 176
  %.val1.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !1035
  %i.jx = icmp eq ptr %i.jl, %.val1.i.i.i.i
  br i1 %i.jx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit", label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.jy = getelementptr i8, ptr %.sroa.038.057.i.i.i, i64 360
  %.val1.i22.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !1035
  %i.jz = icmp eq ptr %i.jl, %.val1.i22.i.i.i
  br i1 %i.jz, label %.loopexit.split.loop.exit48.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ka = getelementptr i8, ptr %.sroa.038.057.i.i.i, i64 544
  %.val1.i23.i.i.i = load ptr, ptr %i.ka, align 8, !tbaa !1035
  %i.kb = icmp eq ptr %i.jl, %.val1.i23.i.i.i
  br i1 %i.kb, label %.loopexit.split.loop.exit50.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = getelementptr i8, ptr %.sroa.038.057.i.i.i, i64 728
  %.val1.i24.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !1035
  %i.kd = icmp eq ptr %i.jl, %.val1.i24.i.i.i
  br i1 %i.kd, label %.loopexit.split.loop.exit52.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 736
  %i.kf = add nsw i64 %.058.i.i.i, -1
  %i.kg = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.kg, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1791

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.az
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre63.i.i.i = sub i64 %i.jp, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.jr, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.jm, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit ] ; 5 uses
  %i.kh = sdiv exact i64 %.pre-phi64.i.i.i, 184
  switch i64 %i.kh, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit" [
    i64 3, label %bb.ba
    i64 2, label %bb.bc
    i64 1, label %bb.be
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i
  %i.ki = getelementptr i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 176
  %.val1.i25.i.i.i = load ptr, ptr %i.ki, align 8, !tbaa !1035
  %i.kj = icmp eq ptr %i.jl, %.val1.i25.i.i.i
  br i1 %i.kj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 184
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.kk, %bb.bb ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.kl = getelementptr i8, ptr %.sroa.038.1.i.i.i, i64 176
  %.val1.i26.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !1035
  %i.km = icmp eq ptr %i.jl, %.val1.i26.i.i.i
  br i1 %i.km, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 184
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.kn, %bb.bd ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ko = getelementptr i8, ptr %.sroa.038.2.i.i.i, i64 176
  %.val1.i27.i.i.i = load ptr, ptr %i.ko, align 8, !tbaa !1035
  %i.kp = icmp eq ptr %i.jl, %.val1.i27.i.i.i
  %spec.select.i.i.i = select i1 %i.kp, ptr %.sroa.038.2.i.i.i, ptr %i.jo
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"

.loopexit.split.loop.exit48.i.i.i:                ; preds = %bb.aw
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 184
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"

.loopexit.split.loop.exit50.i.i.i:                ; preds = %bb.ax
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 368
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"

.loopexit.split.loop.exit52.i.i.i:                ; preds = %bb.ay
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 552
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit": ; preds = %.lr.ph.i.i.i, %.loopexit.split.loop.exit52.i.i.i, %.loopexit.split.loop.exit50.i.i.i, %.loopexit.split.loop.exit48.i.i.i, %bb.be, %bb.bc, %bb.ba, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %bb.bc ], [ %spec.select.i.i.i, %bb.be ], [ %i.jo, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.ba ], [ %i.kr, %.loopexit.split.loop.exit50.i.i.i ], [ %i.kq, %.loopexit.split.loop.exit48.i.i.i ], [ %i.ks, %.loopexit.split.loop.exit52.i.i.i ], [ %.sroa.038.057.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  invoke void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.08.0.in.sroa.speculated.i.i.i)
          to label %bb.bf unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 128
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !535 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 136
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !535 ; 2 uses
  %.not8.i123 = icmp eq ptr %i.ku, %i.kw
  br i1 %.not8.i123, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit131, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !346
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 928
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !508
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit131, label %.lr.ph.split.i125

.lr.ph.split.i125:                                ; preds = %.lr.ph.i124, %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127
  %.sroa.05.09.i126 = phi ptr [ %i.lm, %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127 ], [ %i.ku, %.lr.ph.i124 ] ; 2 uses
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !346 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 928
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !508
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.split.i125
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.05.09.i126)
          to label %.noexc129 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.bg
  %i.lh = load ptr, ptr %i.kx, align 8, !tbaa !346 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 864
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !535
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ll, ptr noundef nonnull align 8 dereferenceable(32) %i.li)
          to label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127: ; preds = %.noexc129, %.lr.ph.split.i125
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i126, i64 184 ; 2 uses
  %.not.i128 = icmp eq ptr %i.lm, %i.kw
  br i1 %.not.i128, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit131, label %.lr.ph.split.i125, !llvm.loop !9

_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit131: ; preds = %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i127, %.lr.ph.i124, %bb.bf
  %i.ln = load ptr, ptr %i.ae, align 8, !tbaa !545
  %i.lo = load ptr, ptr %7, align 8, !tbaa !293
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %.not = icmp eq i64 %i.lr, 8
  br i1 %.not, label %bb.co, label %bb.bh

.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc129, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau18OverloadErrorEntryESt6vectorIS3_SaIS3_EEEEZNS2_11TypeChecker29reportOverloadResolutionErrorERKSt10shared_ptrINS2_5ScopeEERKNS2_11AstExprCallEPKNS2_11TypePackVarESK_RKS5_INS2_8LocationESaISL_EERKS5_IPKNS2_4TypeESaISS_EESW_RS7_E3$_0ET_SZ_SZ_T0_.exit"
  %lpad.loopexit.split-lp625 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp219

bb.bh:                                            ; preds = %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ls, ptr %16, align 8, !tbaa !286
  %i.lt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i64 0, ptr %i.lt, align 8, !tbaa !132
  store i8 0, ptr %i.ls, align 8, !tbaa !287
  %i.lu = load ptr, ptr %i.ak, align 8, !tbaa !545
  %i.lv = load ptr, ptr %10, align 8, !tbaa !293  ; 2 uses
  %.not242 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not242, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 168 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.mf = load ptr, ptr %i.lv, align 8, !tbaa !268
  %i.mg = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.mf)
          to label %bb.bi unwind label %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.bi:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.mh = load ptr, ptr %1, align 8, !tbaa !308, !noalias !1806
  invoke void @_ZN4Luau7UnifierC1ENS_7NotNullINS_10NormalizerEEENS1_INS_5ScopeEEERKNS_8LocationENS_8VarianceEPNS_6TxnLogE(ptr noundef nonnull align 8 dereferenceable(288) %17, ptr nonnull %i.lx, ptr %i.mh, ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i32 noundef 0, ptr noundef null)
          to label %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit.peel unwind label %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit.peel: ; preds = %bb.bi
  %.not.i.i133.peel = icmp eq ptr %i.mg, null
  br i1 %.not.i.i133.peel, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel, label %bb.bj

bb.bj:                                            ; preds = %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit.peel
  %i.mi = load i32, ptr %i.mg, align 8, !tbaa !544
  %i.mj = icmp eq i32 %i.mi, 8
  br i1 %i.mj, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.peel, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.peel: ; preds = %bb.bj
  %i.mk = load ptr, ptr %i.ly, align 8, !tbaa !94
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 224
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !677
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.mk, ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef %3, ptr noundef %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bk unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.peel
  %i.mn = load ptr, ptr %18, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i135.peel = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i135.peel, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit.peel, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mo = load ptr, ptr %i.lz, align 8, !tbaa !676
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.mr) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit.peel

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit.peel: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.ms = load ptr, ptr %i.ly, align 8, !tbaa !94
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mg, i64 216
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !672
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.ms, ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef %4, ptr noundef %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel: ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit.peel, %bb.bj, %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit.peel
  %i.mv = load ptr, ptr %i.ma, align 8, !tbaa !535
  %i.mw = load ptr, ptr %i.mb, align 8, !tbaa !535
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.bm, label %.critedge.peel

bb.bm:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel
  invoke void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %i.mc)
          to label %.critedge.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge.peel:                                   ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread.peel, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %i.mg)
          to label %bb.bn unwind label %.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %.critedge.peel
  %i.my = load i64, ptr %i.md, align 8, !tbaa !132 ; 2 uses
  %i.mz = load i64, ptr %i.lt, align 8, !tbaa !132
  %i.na = sub i64 4611686018427387903, %i.mz
  %i.nb = icmp ult i64 %i.na, %i.my
  br i1 %i.nb, label %.loopexit282, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.bn
  %i.nc = load ptr, ptr %19, align 8, !tbaa !80
  %i.nd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.nc, i64 noundef %i.my)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ne = load ptr, ptr %19, align 8, !tbaa !80   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.me
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ng = load i64, ptr %i.me, align 8, !tbaa !287
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.ni = load ptr, ptr %i.ak, align 8, !tbaa !545
  %i.nj = load ptr, ptr %10, align 8, !tbaa !293  ; 2 uses
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = icmp ugt i64 %i.nm, 8
  br i1 %i.nn, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel, %bb.bh
  %i.no = load ptr, ptr %i.ae, align 8, !tbaa !545
  %i.np = load ptr, ptr %7, align 8, !tbaa !293
  %i.nq = icmp eq ptr %i.no, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !94 ; 2 uses
  br i1 %i.nq, label %bb.bx, label %bb.cf

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.nt = phi ptr [ %i.pv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.nj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel ]
  %.0241 = phi i64 [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.peel ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.0241
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !268
  %i.nw = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.nv)
          to label %bb.bo unwind label %.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.bo:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.nx = load ptr, ptr %1, align 8, !tbaa !308, !noalias !1806
  invoke void @_ZN4Luau7UnifierC1ENS_7NotNullINS_10NormalizerEEENS1_INS_5ScopeEEERKNS_8LocationENS_8VarianceEPNS_6TxnLogE(ptr noundef nonnull align 8 dereferenceable(288) %17, ptr nonnull %i.lx, ptr %i.nx, ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i32 noundef 0, ptr noundef null)
          to label %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit unwind label %.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit: ; preds = %bb.bo
  %.not.i.i133 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i133, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread, label %bb.bp

bb.bp:                                            ; preds = %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.ny = load i32, ptr %i.nw, align 8, !tbaa !544
  %i.nz = icmp eq i32 %i.ny, 8
  br i1 %i.nz, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134: ; preds = %bb.bp
  %i.oa = load ptr, ptr %i.ly, align 8, !tbaa !94
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 224
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !677
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.oa, ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef %3, ptr noundef %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bq unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134
  %i.od = load ptr, ptr %18, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oe = load ptr, ptr %i.lz, align 8, !tbaa !676
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %i.od to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oh) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit:   ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.oi = load ptr, ptr %i.ly, align 8, !tbaa !94
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nw, i64 216
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !672
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.oi, ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef %4, ptr noundef %i.ok, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp259.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph
  %lpad.loopexit.split-lp605 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259.loopexit.split-lp

.loopexit.split-lp264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bi
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp264.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i141, %.loopexit277.invoke, %bb.bm, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit.peel
  %lpad.loopexit.split-lp612 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ol = load ptr, ptr %18, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit137, label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.om = load ptr, ptr %i.lz, align 8, !tbaa !676
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.op) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit137

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit137: ; preds = %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  br label %.loopexit.split-lp

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread: ; preds = %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit, %bb.bp, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit
  %i.oq = load ptr, ptr %i.ma, align 8, !tbaa !535
  %i.or = load ptr, ptr %i.mb, align 8, !tbaa !535
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread
  invoke void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %i.mc)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit134.thread, %bb.bt
  %i.ot = load i64, ptr %i.lt, align 8, !tbaa !132
  %i.ou = and i64 %i.ot, -2
  %i.ov = icmp eq i64 %i.ou, 4611686018427387902
  br i1 %i.ov, label %.loopexit277.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i138: ; preds = %bb.bu
  %i.ow = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.134, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i138
  %i.ox = load ptr, ptr %i.ak, align 8, !tbaa !545
  %i.oy = load ptr, ptr %10, align 8, !tbaa !293
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = ashr exact i64 %i.pb, 3
  %i.pd = add nsw i64 %i.pc, -1
  %i.pe = icmp eq i64 %.0241, %i.pd
  br i1 %i.pe, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.pf = load i64, ptr %i.lt, align 8, !tbaa !132
  %i.pg = and i64 %i.pf, -4
  %i.ph = icmp eq i64 %i.pg, 4611686018427387900
  br i1 %i.ph, label %.loopexit277.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i141

.loopexit277.invoke:                              ; preds = %bb.bv, %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #38
          to label %.loopexit277.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit277.cont:                                ; preds = %.loopexit277.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i141: ; preds = %bb.bv
  %i.pi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.135, i64 noundef 4)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %i.nw)
          to label %bb.bw unwind label %.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.critedge
  %i.pj = load i64, ptr %i.md, align 8, !tbaa !132 ; 2 uses
  %i.pk = load i64, ptr %i.lt, align 8, !tbaa !132
  %i.pl = sub i64 4611686018427387903, %i.pk
  %i.pm = icmp ult i64 %i.pl, %i.pj
  br i1 %i.pm, label %.loopexit282, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit282:                                     ; preds = %bb.bw, %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #38
          to label %.noexc145 unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %.loopexit282
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bw
  %i.pn = load ptr, ptr %19, align 8, !tbaa !80
  %i.po = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.pn, i64 noundef %i.pj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.pp = load ptr, ptr %19, align 8, !tbaa !80   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.me
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.pr = load i64, ptr %i.me, align 8, !tbaa !287
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.pt = add nuw i64 %.0241, 1                   ; 2 uses
  %i.pu = load ptr, ptr %i.ak, align 8, !tbaa !545
  %i.pv = load ptr, ptr %10, align 8, !tbaa !293  ; 2 uses
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 3
end_hunk_0
