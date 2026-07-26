inline.NumInlined: 4369
inline.NumDeleted: 1949
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %i.ym = load ptr, ptr %i.yd, align 8, !tbaa !96
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8
  call void %i.yo(ptr noundef nonnull align 8 dereferenceable(16) %i.yd) #26, !inline_history !925
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

bb.ih:                                            ; preds = %bb.if
  %i.yp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i141.i = icmp eq i8 %i.yp, 0
  br i1 %.not.i.i.i141.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.yq = add nsw i32 %i.yh, -1
  store i32 %i.yq, ptr %i.ye, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

bb.ij:                                            ; preds = %bb.ih
  %i.yr = atomicrmw volatile add ptr %i.ye, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i: ; preds = %bb.ij, %bb.ii
  %.0.i.i.i.i143.i = phi i32 [ %i.yh, %bb.ii ], [ %i.yr, %bb.ij ]
  %i.ys = icmp eq i32 %.0.i.i.i.i143.i, 1
  br i1 %i.ys, label %bb.ik, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112, !prof !66

bb.ik:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yd) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112: ; preds = %bb.ik, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i, %bb.ig, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.iv

bb.il:                                            ; preds = %bb.ib
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.im:                                            ; preds = %bb.ie
  %i.yu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #26
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %.pn.i = phi { ptr, i32 } [ %i.yu, %bb.im ], [ %i.yt, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.nb

bb.io:                                            ; preds = %._crit_edge.i
  %.not.i.i.i144.i = icmp eq i8 %i.wp, 3
  br i1 %.not.i.i.i144.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.yv = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.yv, align 8, !tbaa !96
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store ptr @.str.6, ptr %i.yw, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.yv, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc145.i unwind label %bb.iq

.noexc145.i:                                      ; preds = %bb.ip
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i84:       ; preds = %bb.io
  %i.yx = load ptr, ptr %i.sg, align 8, !tbaa !719, !noalias !901
  %i.yy = load ptr, ptr %i.wn, align 8, !tbaa !924, !noalias !901
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -24
  %i.za = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.yz, ptr noundef nonnull align 8 dereferenceable(24) %i.yx)
          to label %bb.iv unwind label %bb.iq     ; 0 uses

bb.iq:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %bb.ip
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.ir:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !901
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
          to label %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113 unwind label %bb.iu

_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113: ; preds = %bb.ir
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  %i.zc = load ptr, ptr %18, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i147.i = icmp eq ptr %i.zc, null
  br i1 %.not.i147.i, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.is, !prof !132

bb.is:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !402, !range !130, !noundef !131
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  br label %_ZN5arrow6StatusD2Ev.exit148.i

_ZN5arrow6StatusD2Ev.exit148.i:                   ; preds = %bb.it, %bb.is, %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.na

bb.iu:                                            ; preds = %bb.ir
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.nb

bb.iv:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !901
  invoke void @_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.344") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.iw unwind label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !901
  %i.zh = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zi = load ptr, ptr %i.wn, align 8, !tbaa !921, !noalias !901
  %i.zj = load ptr, ptr %i.wm, align 8, !tbaa !920, !noalias !901
  %i.zk = load ptr, ptr %19, align 8, !tbaa !917, !noalias !901
  store ptr %i.zk, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !921, !noalias !901
  store ptr %i.zm, ptr %i.wn, align 8, !tbaa !921, !noalias !901
  %i.zn = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !920, !noalias !901
  store ptr %i.zo, ptr %i.wm, align 8, !tbaa !920, !noalias !901
  %i.zp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.zq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.zh, ptr %10, align 8, !tbaa !917, !noalias !901
  store ptr %i.zi, ptr %i.zp, align 8, !tbaa !921, !noalias !901
  store ptr %i.zj, ptr %i.zq, align 8, !tbaa !920, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  %i.zr = load ptr, ptr %i.wn, align 8, !tbaa !924, !noalias !901 ; 2 uses
  %i.zs = getelementptr inbounds i8, ptr %i.zr, i64 -24
  %i.zt = getelementptr inbounds i8, ptr %i.zr, i64 -16
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !874
  %i.zv = load ptr, ptr %i.zs, align 8, !tbaa !870
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = ashr exact i64 %i.zy, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !901
  %i.aaa = sext i32 %i.wa to i64                  ; 4 uses
  %i.aab = icmp slt i32 %i.wa, 0
  br i1 %i.aab, label %bb.ix, label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc156.i unwind label %bb.ja

.noexc156.i:                                      ; preds = %bb.ix
  unreachable

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i: ; preds = %bb.iw
  store i64 0, ptr %20, align 8, !noalias !901
  %.not.i.i.i.i150.i = icmp eq i32 %i.wa, 0       ; 3 uses
  br i1 %.not.i.i.i.i150.i, label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i, label %.lr.ph.preheader.i.i.i.i.i151.i

.lr.ph.preheader.i.i.i.i.i151.i:                  ; preds = %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %i.aac = mul nuw nsw i64 %i.aaa, 24             ; 3 uses
  %i.aad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aac) #29
          to label %.noexc157.i unwind label %bb.ja ; 4 uses

.noexc157.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i151.i
  store ptr %i.aad, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.aae = getelementptr inbounds nuw [24 x i8], ptr %i.aad, i64 %i.aaa
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aad, i8 0, i64 %i.aac, i1 false)
  %scevgep.i.i.i.i.i152.i = getelementptr i8, ptr %i.aad, i64 %i.aac
  br label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i

_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i: ; preds = %.noexc157.i, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %.sink.i153.i = phi ptr [ %i.aae, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %.0.lcssa.i.i.i.i.i154.i = phi ptr [ %scevgep.i.i.i.i.i152.i, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sink.i153.i, ptr %i.aag, align 8, !tbaa !920, !noalias !901
  store ptr %.0.lcssa.i.i.i.i.i154.i, ptr %i.aaf, align 8, !tbaa !921, !noalias !901
  %.not106288.i = icmp sgt i64 %i.zz, 0
  br i1 %.not106288.i, label %.lr.ph295.i, label %.thread.i

.lr.ph295.i:                                      ; preds = %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %i.aah = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aai = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aak = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.aam = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.aan = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.aat = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.aav = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %73 = call i32 @llvm.umax.i32(i32 %i.wa, i32 1)
  %wide.trip.count309.i = zext nneg i32 %73 to i64
  br label %bb.jb

bb.iy:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97
  %i.aax = add nuw nsw i64 %.087290.i, 1          ; 2 uses
  %exitcond311.not.i = icmp eq i64 %i.aax, %i.zz
  br i1 %exitcond311.not.i, label %.thread.i, label %bb.jb, !llvm.loop !926

bb.iz:                                            ; preds = %bb.iv
  %i.aay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  br label %bb.nb

bb.ja:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i151.i, %bb.ix
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.jb:                                            ; preds = %bb.iy, %.lr.ph295.i
  %.087290.i = phi i64 [ 0, %.lr.ph295.i ], [ %i.aax, %bb.iy ] ; 3 uses
  %.088289.i = phi i64 [ 0, %.lr.ph295.i ], [ %.492.i, %bb.iy ] ; 4 uses
  %i.aba = load ptr, ptr %i.wn, align 8, !tbaa !924, !noalias !901
  %i.abb = getelementptr inbounds i8, ptr %i.aba, i64 -24
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !870
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.abc, i64 %.087290.i
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !855
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 0, i64 16, i1 false), !noalias !901
  store i64 -1, ptr %i.aah, align 8, !tbaa !59, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aai, i8 0, i64 104, i1 false), !noalias !901
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(120) %i.abg)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.abh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aak) #26
  br label %.body.i87

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88:  ; preds = %bb.jb
  %i.abi = load i32, ptr %i.aaj, align 8, !tbaa !88, !noalias !901
  %i.abj = load ptr, ptr %4, align 8, !tbaa !366, !noalias !901
  invoke void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.234") align 8 %21, ptr noundef nonnull align 8 dereferenceable(128) %22, i32 noundef %i.abi, ptr noundef %i.abj)
          to label %bb.jd unwind label %bb.jg

bb.jd:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.abk = load ptr, ptr %i.aak, align 8, !tbaa !105, !noalias !901 ; 3 uses
  %i.abl = load ptr, ptr %i.aal, align 8, !tbaa !698, !noalias !901 ; 2 uses
  %.not.i1.i.i.i89 = icmp eq ptr %i.abk, %i.abl
  br i1 %.not.i1.i.i.i89, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94, label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %bb.jd, %.lr.ph.i.i.i90
  %.0.i2.i.i.i91 = phi ptr [ %i.abm, %.lr.ph.i.i.i90 ], [ %i.abk, %bb.jd ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i91), !inline_history !758
  %i.abm = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i91, i64 128 ; 2 uses
  %.not.i.i.i159.i = icmp eq ptr %i.abm, %i.abl
  br i1 %.not.i.i.i159.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92, label %.lr.ph.i.i.i90, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92: ; preds = %.lr.ph.i.i.i90
  %.pre.i.i.i93 = load ptr, ptr %i.aak, align 8, !tbaa !105, !noalias !901
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92, %bb.jd
  %i.abn = phi ptr [ %.pre.i.i.i93, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92 ], [ %i.abk, %bb.jd ] ; 3 uses
  %.not.i.i.i.i160.i = icmp eq ptr %i.abn, null
  br i1 %.not.i.i.i.i160.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i95, label %bb.je

bb.je:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94
  %i.abo = load ptr, ptr %i.aam, align 8, !tbaa !701, !noalias !901
  %i.abp = ptrtoint ptr %i.abo to i64
  %i.abq = ptrtoint ptr %i.abn to i64
  %i.abr = sub i64 %i.abp, %i.abq
  call void @_ZdlPvm(ptr noundef nonnull %i.abn, i64 noundef %i.abr) #30, !inline_history !759
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i95

_ZN5arrow9ArraySpanD2Ev.exit.i95:                 ; preds = %bb.je, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !901
  %i.abs = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.jh, label %bb.jf, !prof !132

bb.jf:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i95
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %21) #26
  br label %bb.kx

bb.jg:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %22) #26
  br label %.body.i87

.body.i87:                                        ; preds = %bb.jg, %bb.jc
  %.pn96.i = phi { ptr, i32 } [ %i.abu, %bb.jg ], [ %i.abh, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !901
  br label %bb.my

bb.jh:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26, !noalias !901
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.abv = load ptr, ptr %i.aan, align 8, !tbaa !101, !noalias !933 ; 3 uses
  store ptr %i.abv, ptr %23, align 8, !tbaa !101, !alias.scope !934, !noalias !901
  %i.abw = load ptr, ptr %i.aap, align 8, !tbaa !352, !noalias !933 ; 5 uses
  store ptr null, ptr %i.aap, align 8, !tbaa !352, !noalias !933
  store ptr %i.abw, ptr %i.aao, align 8, !tbaa !352, !alias.scope !934, !noalias !901
  store ptr null, ptr %i.aan, align 8, !tbaa !101, !noalias !933
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !134
  %i.abz = icmp sgt i64 %i.aby, 0
  br i1 %i.abz, label %bb.ji, label %bb.kq

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26, !noalias !901
  %.not.i.i.i161.i = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i161.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abw, i64 8 ; 3 uses
  %i.acb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i162.i = icmp eq i8 %i.acb, 0
  br i1 %.not.i.i.i.i162.i, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.acc = load i32, ptr %i.aca, align 4, !tbaa !3
  %i.acd = add nsw i32 %i.acc, 1
  store i32 %i.acd, ptr %i.aca, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

bb.jl:                                            ; preds = %bb.jj
  %i.ace = atomicrmw volatile add ptr %i.aca, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103: ; preds = %bb.jl, %bb.jk, %bb.ji
  store ptr %i.abv, ptr %24, align 8, !tbaa !101, !noalias !901
  store ptr %i.abw, ptr %i.aaq, align 8, !tbaa !352, !noalias !901
  store i8 2, ptr %i.aar, align 8, !tbaa !508, !noalias !901
  br i1 %.not.i.i.i.i150.i, label %.critedge.i108, label %.lr.ph287.i

bb.jm:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count309.i
  br i1 %exitcond310.not.i, label %.critedge.i108, label %.lr.ph287.i, !llvm.loop !935

.lr.ph287.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, %bb.jm
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %bb.jm ], [ 0, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103 ] ; 3 uses
  %i.acf = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.acg = getelementptr inbounds nuw [24 x i8], ptr %i.acf, i64 %indvars.iv306.i
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !870
  %i.aci = getelementptr inbounds nuw [16 x i8], ptr %i.ach, i64 %.087290.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !901
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(16) %i.aci)
          to label %bb.jn unwind label %bb.jr

bb.jn:                                            ; preds = %.lr.ph287.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !901
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %27, i1 noundef zeroext false)
          to label %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104 unwind label %bb.js

_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104: ; preds = %bb.jn
  invoke void @_ZN5arrow7compute4TakeERKNS_5DatumES3_RKNS0_11TakeOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.208") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(17) %27, ptr noundef nonnull %4)
          to label %bb.jo unwind label %bb.jt

bb.jo:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !901
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.acj = landingpad { ptr, i32 }
          catch ptr null
  %i.ack = extractvalue { ptr, i32 } %i.acj, 0
  call void @__clang_call_terminate(ptr %i.ack) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !901
  %i.acl = load ptr, ptr %25, align 8, !tbaa !106, !noalias !901
  %i.acm = icmp eq ptr %i.acl, null               ; 2 uses
  br i1 %i.acm, label %bb.jw, label %bb.jq, !prof !132

bb.jq:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %25) #26
  br label %bb.kh

bb.jr:                                            ; preds = %.lr.ph287.i
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.js:                                            ; preds = %bb.jn
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_vector_selection_filter_internal.cc:bb.a
  %i.q = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.body.i.thread ; 4 uses

.body.i.thread:                                   ; preds = %.noexc41.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %.noexc41.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.s, ptr noundef nonnull %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i unwind label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.v, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.x, align 1, !tbaa !67
  store ptr %i.b, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, align 8, !tbaa !330
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 16), align 8, !tbaa !67
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 8), align 8, !tbaa !332
  store ptr %i.a, ptr %0, align 8, !tbaa !330
  store i64 0, ptr %i.c, align 8, !tbaa !332
  store i8 0, ptr %i.a, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 32), align 8, !tbaa !328
  %i.y = load ptr, ptr %1, align 8, !tbaa !330    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !332 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 32), align 8, !tbaa !330
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !67
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), align 8, !tbaa !67
  %.pre91.i = load i64, ptr %i.g, align 8, !tbaa !332
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i, %bb.b
  %i.ae = phi i64 [ %.pre91.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i ], [ %i.aa, %bb.b ]
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 40), align 8, !tbaa !332
  store ptr %i.e, ptr %1, align 8, !tbaa !330
  store i64 0, ptr %i.g, align 8, !tbaa !332
  store i8 0, ptr %i.e, align 8, !tbaa !67
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 64), align 8, !tbaa !333
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 72), align 8, !tbaa !335
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 80), align 8, !tbaa !337
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 88), align 8, !tbaa !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 104), ptr noundef nonnull align 8 dereferenceable(14) %i.v, i64 14, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 96), align 8, !tbaa !332
  store ptr %i.v, ptr %3, align 8, !tbaa !330
  store i64 0, ptr %i.w, align 8, !tbaa !332
  store i8 0, ptr %i.v, align 8, !tbaa !67
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 120), align 8, !tbaa !823
  %.pre92.i = load ptr, ptr %i.n, align 8, !tbaa !330 ; 2 uses
  %i.af = icmp eq ptr %.pre92.i, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !67
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.pre92.i, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !67
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.am = load ptr, ptr %1, align 8, !tbaa !330   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.1.i
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !67
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
  %i.aq = load ptr, ptr %0, align 8, !tbaa !330   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !67
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #30
  br label %__cxx_global_var_init.exit

bb.c:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

.body.i:                                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #30
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !330 ; 2 uses
  %i.aw = icmp eq ptr %.pre, %i.m
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %.body.i.thread, %.body.i
  %i.ax = phi { ptr, i32 } [ %i.r, %.body.i.thread ], [ %i.av, %.body.i ]
  %i.ay = phi ptr [ %i.l, %.body.i.thread ], [ %.pre, %.body.i ]
  %i.az = load i64, ptr %i.m, align 8, !tbaa !67
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  %i.bb = phi { ptr, i32 } [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i ], [ %i.av, %.body.i ] ; 2 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !330   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.i
  br i1 %i.bd, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i
  %i.be = load i64, ptr %i.i, align 8, !tbaa !67
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #30
  br label %.thread.i

.thread.thread.i:                                 ; preds = %.noexc25.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

.thread.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.1.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !330 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bh = icmp eq ptr %.pre.i, %i.e
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, label %.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge

.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge: ; preds = %.thread.i
  %.pre1 = load i64, ptr %i.e, align 8, !tbaa !67
  %i.bi = add i64 %.pre1, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge, %.thread.thread.i
  %i.bj = phi i64 [ 171, %.thread.thread.i ], [ %i.bi, %.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge ]
  %.pn.pn.pn83119.i = phi { ptr, i32 } [ %i.bg, %.thread.thread.i ], [ %i.bb, %.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge ]
  %i.bk = phi ptr [ %i.f, %.thread.thread.i ], [ %.pre.i, %.thread.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i_crit_edge ]
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i: ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i, %bb.c
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.au, %bb.c ], [ %.pn.pn.pn83119.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i ], [ %i.bb, %.thread.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 39) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i
  %i.bl = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow7compute11FunctionDocD2Ev, ptr nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSN5arrow9ArraySpanE", !35, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !5, i64 32, !37, i64 104}
!35 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN5arrow9ArraySpanE", !36, i64 0}
!42 = !{!43, !53, i64 40}
!43 = !{!"_ZTSN5arrow8DataTypeE", !44, i64 0, !48, i64 24, !53, i64 40, !54, i64 48}
!44 = !{!"_ZTSN5arrow6detail15FingerprintableE", !45, i64 8, !45, i64 16}
!45 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !47, i64 0}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!48 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !49, i64 0}
!49 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !50, i64 0}
!50 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !51, i64 8}
!51 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0}
!52 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!53 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!54 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!59 = !{!34, !28, i64 16}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSN5arrow10BufferSpanE", !62, i64 0, !28, i64 8, !63, i64 16}
!62 = !{!"p1 omnipotent char", !36, i64 0}
!63 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!64 = !{!34, !28, i64 24}
!65 = !{!34, !28, i64 8}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!5, !5, i64 0}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = !{!28, !28, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 long", !36, i64 0}
!76 = !{!77, !36, i64 24}
!77 = !{!"_ZTSSt8functionIFbllbEE", !78, i64 0, !36, i64 24}
!78 = !{!"_ZTSSt14_Function_base", !5, i64 0, !36, i64 16}
!79 = !{!78, !36, i64 16}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!82 = !{!"p1 _ZTSN5arrow7compute9ExecValueE", !36, i64 0}
!83 = !{!84, !86, i64 8}
!84 = !{!"_ZTSN5arrow7compute13KernelContextE", !85, i64 0, !86, i64 8, !87, i64 16}
!85 = !{!"p1 _ZTSN5arrow7compute11ExecContextE", !36, i64 0}
!86 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !36, i64 0}
!87 = !{!"p1 _ZTSN5arrow7compute6KernelE", !36, i64 0}
!88 = !{!89, !92, i64 16}
!89 = !{!"_ZTSN5arrow7compute13FilterOptionsE", !90, i64 0, !92, i64 16}
!90 = !{!"_ZTSN5arrow7compute15FunctionOptionsE", !91, i64 8}
!91 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !36, i64 0}
!92 = !{!"_ZTSN5arrow7compute13FilterOptions21NullSelectionBehaviorE", !5, i64 0}
!93 = !{!94, !5, i64 128}
!94 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEEE", !5, i64 0, !5, i64 128}
!95 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"vtable pointer", !6, i64 0}
!98 = !{!99, !62, i64 8}
!99 = !{!"_ZTSSt18bad_variant_access", !100, i64 0, !62, i64 8}
!100 = !{!"_ZTSSt9exception"}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0, !104, i64 8}
!103 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!104 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0}
!105 = !{!40, !41, i64 0}
!106 = !{!107, !108, i64 0}
!107 = !{!"_ZTSN5arrow6StatusE", !108, i64 0}
!108 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!109 = !{!110, !28, i64 0}
!110 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!111 = !{!110, !62, i64 8}
!112 = !{!110, !62, i64 16}
!113 = !{!110, !28, i64 40}
!114 = !{!41, !41, i64 0}
!115 = !{!110, !92, i64 56}
!116 = !{!110, !62, i64 64}
!117 = !{!118, !63, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!119 = !{!120, !121, i64 0}
!120 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !121, i64 0, !104, i64 8}
!121 = !{!"p1 _ZTSN5arrow6BufferE", !36, i64 0}
!122 = !{!123, !124, i64 9}
!123 = !{!"_ZTSN5arrow6BufferE", !124, i64 8, !124, i64 9, !62, i64 16, !28, i64 24, !28, i64 32, !125, i64 40, !126, i64 48, !127, i64 64}
!124 = !{!"bool", !5, i64 0}
!125 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!126 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !120, i64 0}
!127 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !128, i64 0}
!128 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !104, i64 8}
!129 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !36, i64 0}
!130 = !{i8 0, i8 2}
!131 = !{}
!132 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!133 = !{!110, !62, i64 72}
!134 = !{!135, !28, i64 16}
!135 = !{!"_ZTSN5arrow9ArrayDataE", !136, i64 0, !28, i64 16, !138, i64 24, !28, i64 32, !140, i64 40, !143, i64 64, !148, i64 88, !149, i64 104}
!136 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !137, i64 0}
!137 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !104, i64 8}
!138 = !{!"_ZTSSt6atomicIlE", !139, i64 0}
!139 = !{!"_ZTSSt13__atomic_baseIlE", !28, i64 0}
!140 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !141, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !142, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !118, i64 0}
!143 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !144, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !145, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !146, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!147 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !36, i64 0}
!148 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !102, i64 0}
!149 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !150, i64 0}
!150 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !151, i64 0, !104, i64 8}
!151 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !36, i64 0}
!152 = !{!110, !28, i64 80}
!153 = !{!110, !28, i64 88}
!154 = !{!110, !41, i64 48}
!155 = !{i64 8}
!156 = !{!157, !157, i64 0}
!157 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEE", !36, i64 0}
!158 = !{!110, !28, i64 32}
!159 = !{!160, !62, i64 0}
!160 = !{!"_ZTSN5arrow8internal15BitBlockCounterE", !62, i64 0, !28, i64 8, !28, i64 16}
!161 = !{!160, !28, i64 8}
!162 = !{!160, !28, i64 16}
end_hunk_1
