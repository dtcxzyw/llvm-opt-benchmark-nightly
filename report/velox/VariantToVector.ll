inline.NumInlined: 957
inline.NumDeleted: 495
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEi:bb.a

.noexc47:                                         ; preds = %bb.ac
  br i1 %i.ee, label %.critedge.i, label %bb.ad

.critedge.i:                                      ; preds = %.noexc47, %_ZNSt3mapIN8facebook5velox7VariantES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE11lower_boundERS6_.exit.i, %bb.ab
  %.08.lcssa.i.i.i20.i = phi ptr [ %.19.i.i.i.i, %.noexc47 ], [ %.19.i.i.i.i, %_ZNSt3mapIN8facebook5velox7VariantES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE11lower_boundERS6_.exit.i ], [ %i.df, %bb.ab ]
  %i.ef = invoke ptr @_ZNSt8_Rb_treeIN8facebook5velox7VariantESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJS2_S2_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 8 dereferenceable(10) %18, ptr noundef nonnull align 8 dereferenceable(10) %19)
          to label %bb.ad unwind label %.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %.noexc47, %.critedge.i
  %i.eg = load ptr, ptr %19, align 8, !tbaa !7, !noalias !90 ; 2 uses
  %.not.i37 = icmp eq ptr %i.eg, null
  br i1 %.not.i37, label %_ZN8facebook5velox7VariantD2Ev.exit41, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load i8, ptr %i.dl, align 1, !tbaa !12, !range !13, !noalias !90, !noundef !14
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !90
  store ptr %19, ptr %6, align 8, !tbaa !15, !noalias !90
  invoke void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i40 unwind label %bb.aj, !noalias !90, !inline_history !110

.noexc.i40:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !90
  br label %_ZN8facebook5velox7VariantD2Ev.exit41

bb.ag:                                            ; preds = %bb.ae
  %i.ej = load i8, ptr %i.dm, align 8, !tbaa !19, !noalias !90
  switch i8 %i.ej, label %bb.ai [
    i8 33, label %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i38
    i8 35, label %bb.ah
  ]

_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i38: ; preds = %bb.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 1) #20, !noalias !90, !inline_history !111
  br label %_ZN8facebook5velox7VariantD2Ev.exit41

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE35EEEvv(ptr noundef nonnull align 8 dereferenceable(10) %19), !noalias !90, !inline_history !111
  br label %_ZN8facebook5velox7VariantD2Ev.exit41

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !90
  store ptr %19, ptr %5, align 8, !tbaa !21, !noalias !90
  invoke void @_ZZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc2.i39 unwind label %bb.aj, !noalias !90, !inline_history !111

.noexc2.i39:                                      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !90
  br label %_ZN8facebook5velox7VariantD2Ev.exit41

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #21, !noalias !90, !inline_history !112
  unreachable

_ZN8facebook5velox7VariantD2Ev.exit41:            ; preds = %bb.ad, %.noexc.i40, %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i38, %bb.ah, %.noexc2.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !90
  %i.em = load ptr, ptr %18, align 8, !tbaa !7, !noalias !90 ; 2 uses
  %.not.i32 = icmp eq ptr %i.em, null
  br i1 %.not.i32, label %_ZN8facebook5velox7VariantD2Ev.exit36, label %bb.ak

bb.ak:                                            ; preds = %_ZN8facebook5velox7VariantD2Ev.exit41
  %i.en = load i8, ptr %i.dn, align 1, !tbaa !12, !range !13, !noalias !90, !noundef !14
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !90
  store ptr %18, ptr %8, align 8, !tbaa !15, !noalias !90
  invoke void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc.i35 unwind label %bb.ap, !noalias !90, !inline_history !110

.noexc.i35:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !90
  br label %_ZN8facebook5velox7VariantD2Ev.exit36

bb.am:                                            ; preds = %bb.ak
  %i.ep = load i8, ptr %i.do, align 8, !tbaa !19, !noalias !90
  switch i8 %i.ep, label %bb.ao [
    i8 33, label %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i33
    i8 35, label %bb.an
  ]

_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i33: ; preds = %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 1) #20, !noalias !90, !inline_history !111
  br label %_ZN8facebook5velox7VariantD2Ev.exit36

bb.an:                                            ; preds = %bb.am
  call void @_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE35EEEvv(ptr noundef nonnull align 8 dereferenceable(10) %18), !noalias !90, !inline_history !111
  br label %_ZN8facebook5velox7VariantD2Ev.exit36

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !90
  store ptr %18, ptr %7, align 8, !tbaa !21, !noalias !90
  invoke void @_ZZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc2.i34 unwind label %bb.ap, !noalias !90, !inline_history !111

.noexc2.i34:                                      ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !90
  br label %_ZN8facebook5velox7VariantD2Ev.exit36

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #21, !noalias !90, !inline_history !112
  unreachable

_ZN8facebook5velox7VariantD2Ev.exit36:            ; preds = %_ZN8facebook5velox7VariantD2Ev.exit41, %.noexc.i35, %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i33, %bb.an, %.noexc2.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !90
  %i.es = add nuw nsw i32 %.0.i15128, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.de
  br i1 %exitcond.not, label %._crit_edge131, label %bb.z, !llvm.loop !113

bb.aq:                                            ; preds = %bb.z
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i43
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.ac, %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8facebook5velox7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %19) #19, !noalias !90, !inline_history !93
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn.i17 = phi { ptr, i32 } [ %lpad.phi, %bb.as ], [ %i.eu, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !90
  call void @_ZN8facebook5velox7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %18) #19, !noalias !90, !inline_history !93
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.pn.pn.i16 = phi { ptr, i32 } [ %.pn.i17, %bb.at ], [ %i.et, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !90
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge131
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i16, %bb.au ], [ %i.ev, %bb.av ]
  call void @_ZNSt3mapIN8facebook5velox7VariantES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #19, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !90
  br label %common.resume

_ZNSt3mapIN8facebook5velox7VariantES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit: ; preds = %bb.x, %bb.y
  %.sink2.i = phi ptr [ %i.dq, %bb.y ], [ %i.du, %bb.x ]
  %.sink1.i = phi ptr [ %i.dq, %bb.y ], [ %i.dv, %bb.x ]
  %.sink.i = phi i64 [ 0, %bb.y ], [ %i.dx, %bb.x ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.y ], [ %i.ds, %bb.x ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %.sink2.i, ptr %i.ew, align 8, !tbaa !101, !noalias !104
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %.sink1.i, ptr %i.ex, align 8, !tbaa !102, !noalias !104
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i64 %.sink.i, ptr %i.ey, align 8, !tbaa !103, !noalias !104
  store i32 %.sink.i.i.i.i.i, ptr %i.dq, align 8, !tbaa !94, !noalias !104
  store ptr %i.dp, ptr %0, align 8, !tbaa !7, !alias.scope !104
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 31, ptr %i.ez, align 8, !tbaa !19, !alias.scope !104
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.fa, align 1, !tbaa !12, !alias.scope !104
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !90
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.ax:                                            ; preds = %bb.e
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !43, !noalias !114
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 128
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !114
  %i.fe = tail call noundef ptr %i.fd(ptr noundef nonnull align 8 dereferenceable(94) %i.k), !noalias !114, !inline_history !117
  %i.ff = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.fe, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #19, !noalias !114 ; 2 uses
  %i.fg = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !114 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !43, !noalias !114
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 136
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !114
  %i.fk = tail call noundef i32 %i.fj(ptr noundef nonnull align 8 dereferenceable(94) %i.fg, i32 noundef %.tr116125), !noalias !114, !inline_history !117
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !114
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 96 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !118, !noalias !114 ; 4 uses
  %i.fn = icmp ugt i64 %i.fm, 576460752303423487
  br i1 %i.fn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc71 unwind label %bb.bb

.noexc71:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %.not192 = icmp eq i64 %i.fm, 0
  br i1 %.not192, label %._crit_edge, label %_ZNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE11_M_allocateEm.exit.i62

_ZNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE11_M_allocateEm.exit.i62: ; preds = %bb.az
  %i.fp = shl nuw nsw i64 %i.fm, 4
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #22
          to label %.lr.ph127.a unwind label %bb.bb ; 3 uses

.lr.ph127.a:                                      ; preds = %_ZNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE11_M_allocateEm.exit.i62
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.fq, ptr %15, align 8, !tbaa !78, !noalias !114
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !80, !noalias !114
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fm
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !81, !noalias !114
  %.pre = load i64, ptr %i.fl, align 8, !tbaa !118, !noalias !114
  %23 = icmp eq i64 %.pre, 0
  br i1 %23, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.a
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 9 ; 2 uses
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN8facebook5velox7VariantD2Ev.exit55, %bb.az, %.lr.ph127.a
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ft = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc59 unwind label %bb.bb  ; 3 uses

.noexc59:                                         ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN8facebook5velox12_GLOBAL__N_112rowVariantAtERKSt10shared_ptrINS0_10BaseVectorEEi.exit unwind label %bb.ba, !noalias !126

bb.ba:                                            ; preds = %.noexc59
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 24) #20, !noalias !126
  br label %.body60

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseIN8facebook5velox7VariantESaIS2_EE11_M_allocateEm.exit.i62, %bb.ay, %._crit_edge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.bc:                                            ; preds = %.lr.ph127, %_ZN8facebook5velox7VariantD2Ev.exit55
  %indvars.iv = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next, %_ZN8facebook5velox7VariantD2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !114
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %i.fx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ff, i32 noundef %i.fw)
          to label %bb.bd unwind label %bb.bm, !noalias !114, !inline_history !117

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEi(ptr dead_on_unwind noalias nonnull writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i32 noundef %i.fk)
          to label %bb.be unwind label %bb.bm, !noalias !114, !inline_history !117

bb.be:                                            ; preds = %bb.bd
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !80, !noalias !114 ; 6 uses
  %i.fz = load ptr, ptr %i.fo, align 8, !tbaa !81, !noalias !114
  %.not.i.i56 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i.i56, label %bb.bf, label %_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58.thread

_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58.thread: ; preds = %bb.be
  %i.ga = load ptr, ptr %16, align 8, !tbaa !7, !noalias !114
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !7, !noalias !114
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load i8, ptr %24, align 8, !tbaa !19, !noalias !114
  store i8 %i.gc, ptr %i.gb, align 8, !tbaa !19, !noalias !114
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 9
  %i.ge = load i8, ptr %25, align 1, !tbaa !12, !range !13, !noalias !114, !noundef !14
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !12, !noalias !114
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.gf, ptr %i.fr, align 8, !tbaa !80, !noalias !114
  br label %_ZN8facebook5velox7VariantD2Ev.exit55

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.fy, ptr noundef nonnull align 8 dereferenceable(10) %16)
          to label %_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58 unwind label %bb.bn

_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58: ; preds = %bb.bf
  %.pr113 = load ptr, ptr %16, align 8, !tbaa !7, !noalias !114 ; 2 uses
  %.not.i51 = icmp eq ptr %.pr113, null
  br i1 %.not.i51, label %_ZN8facebook5velox7VariantD2Ev.exit55, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58
  %i.gg = load i8, ptr %25, align 1, !tbaa !12, !range !13, !noalias !114, !noundef !14
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !114
  store ptr %16, ptr %4, align 8, !tbaa !15, !noalias !114
  invoke void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i54 unwind label %bb.bl, !noalias !114, !inline_history !129

.noexc.i54:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !114
  br label %_ZN8facebook5velox7VariantD2Ev.exit55

bb.bi:                                            ; preds = %bb.bg
  %i.gi = load i8, ptr %24, align 8, !tbaa !19, !noalias !114
  switch i8 %i.gi, label %bb.bk [
    i8 33, label %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i52
    i8 35, label %bb.bj
  ]

_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i52: ; preds = %bb.bi
  call void @_ZdlPvm(ptr noundef nonnull %.pr113, i64 noundef 1) #20, !noalias !114, !inline_history !130
  br label %_ZN8facebook5velox7VariantD2Ev.exit55

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE35EEEvv(ptr noundef nonnull align 8 dereferenceable(10) %16), !noalias !114, !inline_history !130
  br label %_ZN8facebook5velox7VariantD2Ev.exit55

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !114
  store ptr %16, ptr %3, align 8, !tbaa !21, !noalias !114
  invoke void @_ZZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc2.i53 unwind label %bb.bl, !noalias !114, !inline_history !130

.noexc2.i53:                                      ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !114
  br label %_ZN8facebook5velox7VariantD2Ev.exit55

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #21, !noalias !114, !inline_history !131
  unreachable

_ZN8facebook5velox7VariantD2Ev.exit55:            ; preds = %_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58.thread, %_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EE9push_backEOS2_.exit58, %.noexc.i54, %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i.i52, %bb.bj, %.noexc2.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load i64, ptr %i.fl, align 8, !tbaa !118, !noalias !114
  %i.gm = icmp ugt i64 %i.gl, %indvars.iv.next
  br i1 %i.gm, label %bb.bc, label %._crit_edge, !llvm.loop !132

bb.bm:                                            ; preds = %bb.bd, %bb.bc
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bf
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %16) #19, !noalias !114, !inline_history !117
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn.i20 = phi { ptr, i32 } [ %i.go, %bb.bn ], [ %i.gn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !114
  br label %.body60

.body60:                                          ; preds = %bb.bb, %bb.ba, %bb.bo
  %.pn.pn.i18 = phi { ptr, i32 } [ %.pn.i20, %bb.bo ], [ %i.fv, %bb.bb ], [ %i.fu, %bb.ba ]
  call void @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #19, !inline_history !117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !114
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_112rowVariantAtERKSt10shared_ptrINS0_10BaseVectorEEi.exit: ; preds = %.noexc59
  store ptr %i.ft, ptr %0, align 8, !tbaa !7, !alias.scope !126
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 32, ptr %i.gp, align 8, !tbaa !19, !alias.scope !126
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.gq, align 1, !tbaa !12, !alias.scope !126
  call void @_ZNSt6vectorIN8facebook5velox7VariantESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #19, !inline_history !117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !114
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.bp:                                            ; preds = %bb.e
  %i.gr = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorISt10shared_ptrIvEEE, i64 0) #19 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 384
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(152) %i.gr, i32 noundef %.tr116125) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.gw = load ptr, ptr %.tr115124, align 8, !tbaa !40 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !45, !noalias !133 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ha = tail call ptr @__dynamic_cast(ptr nonnull %i.gy, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox10OpaqueTypeE, i64 0) #19, !noalias !133 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ha, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.ha, ptr %22, align 16, !tbaa !136, !alias.scope !133
  %i.hb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !32, !noalias !133 ; 3 uses
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !32, !alias.scope !133
  %.not.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !133
  %.not.i.i.i.i.i = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !133
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !3, !noalias !133
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

bb.bu:                                            ; preds = %bb.bs
  %i.hi = atomicrmw volatile add ptr %i.he, i32 1 acq_rel, align 4, !noalias !133 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i: ; preds = %bb.bq, %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %22, i8 0, i64 16, i1 false), !alias.scope !133
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit: ; preds = %bb.br, %bb.bt, %bb.bu, %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.hj = load ptr, ptr %i.gv, align 8, !tbaa !142, !noalias !139 ; 3 uses
  %.not.i = icmp eq ptr %i.hj, null
  br i1 %.not.i, label %bb.bv, label %bb.bw, !prof !144

bb.bv:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7Variant6opaqueERKSt10shared_ptrIvERKS2_IKNS0_10OpaqueTypeEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.13) #23
          to label %.noexc unwind label %bb.ck

.noexc:                                           ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit
  %i.hk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc23 unwind label %bb.ck  ; 4 uses

.noexc23:                                         ; preds = %bb.bw
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !32, !noalias !139 ; 2 uses
  %i.hn = load <2 x ptr>, ptr %22, align 16, !tbaa !24, !noalias !139
  store <2 x ptr> %i.hn, ptr %i.hk, align 8, !tbaa !24, !noalias !139
  %.not.i.i.i.i21 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i21, label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !139
  %.not.i.i.i.i.i22 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i22, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !3, !noalias !139
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !3, !noalias !139
  br label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.hs = atomicrmw volatile add ptr %i.ho, i32 1 acq_rel, align 4, !noalias !139 ; 0 uses
  %.pre.i = load ptr, ptr %i.gv, align 8, !tbaa !142, !noalias !139
  br label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i: ; preds = %bb.bz, %bb.by, %.noexc23
  %i.ht = phi ptr [ %i.hj, %.noexc23 ], [ %i.hj, %bb.by ], [ %.pre.i, %bb.bz ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !142, !noalias !139
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !32, !noalias !139 ; 3 uses
  store ptr %i.hx, ptr %i.hv, align 8, !tbaa !32, !noalias !139
  %.not.i.i.i4.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i4.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !139
  %.not.i.i.i.i5.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i5.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !3, !noalias !139
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !3, !noalias !139
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ic = atomicrmw volatile add ptr %i.hy, i32 1 acq_rel, align 4, !noalias !139 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i
  store ptr %i.hk, ptr %0, align 8, !tbaa !7, !alias.scope !139
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 35, ptr %i.id, align 8, !tbaa !19, !alias.scope !139
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ie, align 1, !tbaa !12, !alias.scope !139
  %i.if = load ptr, ptr %i.hl, align 8, !tbaa !32 ; 8 uses
  %.not.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.ig, align 8, !tbaa !145
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !147
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !43
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #19, !inline_history !148
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !43
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  tail call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #19, !inline_history !148
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i = phi i32 [ %i.ij, %bb.ch ], [ %i.it, %bb.ci ]
  %i.iu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.iu, label %bb.cj, label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !144

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #19
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cd, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.ck:                                            ; preds = %bb.bw, %bb.bv
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %common.resume

bb.cl:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  switch i8 %i.m, label %bb.fh [
    i8 0, label %bb.cm
    i8 3, label %bb.ct
    i8 1, label %bb.da
    i8 2, label %bb.dh
    i8 4, label %bb.do
    i8 10, label %bb.dv
    i8 5, label %bb.ec
    i8 6, label %bb.ej
    i8 7, label %bb.eq
    i8 8, label %bb.et
    i8 9, label %bb.fa
  ]

bb.cm:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.iw = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIbEE, i64 0) #19, !noalias !155 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 384
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !155
  %i.ja = tail call noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(108) %i.iw, i32 noundef %.tr116125), !inline_history !156
  %i.jb = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !155 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !45, !noalias !155 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 17
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !157, !range !13, !noalias !155, !noundef !14
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = zext i1 %i.ja to i8                     ; 2 uses
  br i1 %i.jg, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.ji = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !158 ; 7 uses
  store i8 %i.jh, ptr %i.ji, align 16, !tbaa !161, !noalias !158
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.jk = tail call ptr @__dynamic_cast(ptr nonnull %i.jd, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE0EEE, i64 0) #19, !noalias !169 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE0EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !170, !alias.scope !166, !noalias !158
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !32, !noalias !169 ; 3 uses
  store ptr %i.jn, ptr %i.jl, align 16, !tbaa !32, !alias.scope !166, !noalias !158
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 3 uses
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !169
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jq = load i32, ptr %i.jo, align 4, !tbaa !3, !noalias !169
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !3, !noalias !169
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.cr:                                            ; preds = %bb.cp
  %i.js = atomicrmw volatile add ptr %i.jo, i32 1 acq_rel, align 4, !noalias !169 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE0EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.cn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false), !alias.scope !166, !noalias !158
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.cs:                                            ; preds = %bb.cm
  %i.jt = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #22, !noalias !155 ; 2 uses
  store i8 %i.jh, ptr %i.jt, align 1, !tbaa !171, !noalias !155
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.cs, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE0EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.cr, %bb.cq, %bb.co
  %.sink9.i.i = phi ptr [ %i.jt, %bb.cs ], [ %i.ji, %bb.co ], [ %i.ji, %bb.cq ], [ %i.ji, %bb.cr ], [ %i.ji, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE0EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i.i = phi i8 [ 0, %bb.cs ], [ 1, %bb.co ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE0EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i.i, ptr %0, align 8, !tbaa !7, !alias.scope !155
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ju, align 8, !tbaa !19, !alias.scope !155
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i.i, ptr %i.jv, align 1, !tbaa !12, !alias.scope !155
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.ct:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.jw = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #19, !noalias !176 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !43
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 384
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !176
  %i.ka = tail call noundef i32 %i.jz(ptr noundef nonnull align 8 dereferenceable(120) %i.jw, i32 noundef %.tr116125), !inline_history !177 ; 2 uses
  %i.kb = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !176 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !45, !noalias !176 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 17
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !157, !range !13, !noalias !176, !noundef !14
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.kh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !178 ; 7 uses
  store i32 %i.ka, ptr %i.kh, align 16, !tbaa !181, !noalias !178
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.kj = tail call ptr @__dynamic_cast(ptr nonnull %i.kd, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE3EEE, i64 0) #19, !noalias !189 ; 2 uses
  %.not.not.i.i.i4.i = icmp eq ptr %i.kj, null
  br i1 %.not.not.i.i.i4.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE3EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.kj, ptr %i.ki, align 8, !tbaa !190, !alias.scope !186, !noalias !178
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !32, !noalias !189 ; 3 uses
  store ptr %i.km, ptr %i.kk, align 16, !tbaa !32, !alias.scope !186, !noalias !178
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 3 uses
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !189
  %.not.i.i.i.i.i.i.i6.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i.i.i.i6.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !3, !noalias !189
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !3, !noalias !189
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.kr = atomicrmw volatile add ptr %i.kn, i32 1 acq_rel, align 4, !noalias !189 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE3EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.cu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false), !alias.scope !186, !noalias !178
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.cz:                                            ; preds = %bb.ct
  %i.ks = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22, !noalias !176 ; 2 uses
  store i32 %i.ka, ptr %i.ks, align 4, !tbaa !191, !noalias !176
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.cz, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE3EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.cy, %bb.cx, %bb.cv
  %.sink9.i2.i = phi ptr [ %i.ks, %bb.cz ], [ %i.kh, %bb.cv ], [ %i.kh, %bb.cx ], [ %i.kh, %bb.cy ], [ %i.kh, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE3EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i3.i = phi i8 [ 0, %bb.cz ], [ 1, %bb.cv ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE3EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i2.i, ptr %0, align 8, !tbaa !7, !alias.scope !176
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.kt, align 8, !tbaa !19, !alias.scope !176
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i3.i, ptr %i.ku, align 1, !tbaa !12, !alias.scope !176
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.da:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.kv = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #19, !noalias !196 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 384
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !196
  %i.kz = tail call noundef signext i8 %i.ky(ptr noundef nonnull align 8 dereferenceable(108) %i.kv, i32 noundef %.tr116125), !inline_history !197 ; 2 uses
  %i.la = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !196 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !45, !noalias !196 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 17
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !157, !range !13, !noalias !196, !noundef !14
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  %i.lg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !198 ; 7 uses
  store i8 %i.kz, ptr %i.lg, align 16, !tbaa !201, !noalias !198
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.li = tail call ptr @__dynamic_cast(ptr nonnull %i.lc, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE1EEE, i64 0) #19, !noalias !209 ; 2 uses
  %.not.not.i.i.i9.i = icmp eq ptr %i.li, null
  br i1 %.not.not.i.i.i9.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE1EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store ptr %i.li, ptr %i.lh, align 8, !tbaa !210, !alias.scope !206, !noalias !198
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !32, !noalias !209 ; 3 uses
  store ptr %i.ll, ptr %i.lj, align 16, !tbaa !32, !alias.scope !206, !noalias !198
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 3 uses
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !209
  %.not.i.i.i.i.i.i.i11.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i.i.i.i11.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lo = load i32, ptr %i.lm, align 4, !tbaa !3, !noalias !209
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !3, !noalias !209
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.lq = atomicrmw volatile add ptr %i.lm, i32 1 acq_rel, align 4, !noalias !209 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE1EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.db
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, i8 0, i64 16, i1 false), !alias.scope !206, !noalias !198
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.dg:                                            ; preds = %bb.da
  %i.lr = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #22, !noalias !196 ; 2 uses
  store i8 %i.kz, ptr %i.lr, align 1, !tbaa !211, !noalias !196
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.dg, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE1EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.df, %bb.de, %bb.dc
  %.sink9.i7.i = phi ptr [ %i.lr, %bb.dg ], [ %i.lg, %bb.dc ], [ %i.lg, %bb.de ], [ %i.lg, %bb.df ], [ %i.lg, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE1EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i8.i = phi i8 [ 0, %bb.dg ], [ 1, %bb.dc ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE1EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i7.i, ptr %0, align 8, !tbaa !7, !alias.scope !196
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ls, align 8, !tbaa !19, !alias.scope !196
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i8.i, ptr %i.lt, align 1, !tbaa !12, !alias.scope !196
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.dh:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.lu = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #19, !noalias !216 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !43
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 384
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !216
  %i.ly = tail call noundef signext i16 %i.lx(ptr noundef nonnull align 8 dereferenceable(112) %i.lu, i32 noundef %.tr116125), !inline_history !217 ; 2 uses
  %i.lz = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !216 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !45, !noalias !216 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 17
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !157, !range !13, !noalias !216, !noundef !14
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.di, label %bb.dn

bb.di:                                            ; preds = %bb.dh
  %i.mf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !218 ; 7 uses
  store i16 %i.ly, ptr %i.mf, align 16, !tbaa !221, !noalias !218
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.mh = tail call ptr @__dynamic_cast(ptr nonnull %i.mb, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE2EEE, i64 0) #19, !noalias !230 ; 2 uses
  %.not.not.i.i.i14.i = icmp eq ptr %i.mh, null
  br i1 %.not.not.i.i.i14.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE2EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !231, !alias.scope !227, !noalias !218
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !32, !noalias !230 ; 3 uses
  store ptr %i.mk, ptr %i.mi, align 16, !tbaa !32, !alias.scope !227, !noalias !218
  %.not.i.i.i.i.i.i15.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i.i15.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 3 uses
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !230
  %.not.i.i.i.i.i.i.i16.i = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i.i.i.i16.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !3, !noalias !230
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !3, !noalias !230
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.dm:                                            ; preds = %bb.dk
  %i.mp = atomicrmw volatile add ptr %i.ml, i32 1 acq_rel, align 4, !noalias !230 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE2EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.di
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i8 0, i64 16, i1 false), !alias.scope !227, !noalias !218
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.dn:                                            ; preds = %bb.dh
  %i.mq = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #22, !noalias !216 ; 2 uses
  store i16 %i.ly, ptr %i.mq, align 2, !tbaa !232, !noalias !216
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.dn, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE2EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.dm, %bb.dl, %bb.dj
  %.sink9.i12.i = phi ptr [ %i.mq, %bb.dn ], [ %i.mf, %bb.dj ], [ %i.mf, %bb.dl ], [ %i.mf, %bb.dm ], [ %i.mf, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE2EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i13.i = phi i8 [ 0, %bb.dn ], [ 1, %bb.dj ], [ 1, %bb.dl ], [ 1, %bb.dm ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE2EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i12.i, ptr %0, align 8, !tbaa !7, !alias.scope !216
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.mr, align 8, !tbaa !19, !alias.scope !216
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i13.i, ptr %i.ms, align 1, !tbaa !12, !alias.scope !216
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.do:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.mt = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #19, !noalias !237 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !43
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 384
  %i.mw = load ptr, ptr %i.mv, align 8, !noalias !237
  %i.mx = tail call noundef i64 %i.mw(ptr noundef nonnull align 8 dereferenceable(136) %i.mt, i32 noundef %.tr116125), !inline_history !238 ; 2 uses
  %i.my = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !237 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !45, !noalias !237 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 17
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !157, !range !13, !noalias !237, !noundef !14
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.ne = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !239 ; 7 uses
  store i64 %i.mx, ptr %i.ne, align 16, !tbaa !242, !noalias !239
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ng = tail call ptr @__dynamic_cast(ptr nonnull %i.na, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE4EEE, i64 0) #19, !noalias !250 ; 2 uses
  %.not.not.i.i.i19.i = icmp eq ptr %i.ng, null
  br i1 %.not.not.i.i.i19.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store ptr %i.ng, ptr %i.nf, align 8, !tbaa !251, !alias.scope !247, !noalias !239
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !32, !noalias !250 ; 3 uses
  store ptr %i.nj, ptr %i.nh, align 16, !tbaa !32, !alias.scope !247, !noalias !239
  %.not.i.i.i.i.i.i20.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i.i20.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !250
  %.not.i.i.i.i.i.i.i21.i = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i.i.i.i21.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.nm = load i32, ptr %i.nk, align 4, !tbaa !3, !noalias !250
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nk, align 4, !tbaa !3, !noalias !250
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.no = atomicrmw volatile add ptr %i.nk, i32 1 acq_rel, align 4, !noalias !250 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.dp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i8 0, i64 16, i1 false), !alias.scope !247, !noalias !239
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.du:                                            ; preds = %bb.do
  %i.np = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22, !noalias !237 ; 2 uses
  store i64 %i.mx, ptr %i.np, align 8, !tbaa !252, !noalias !237
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.du, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.dt, %bb.ds, %bb.dq
  %.sink9.i17.i = phi ptr [ %i.np, %bb.du ], [ %i.ne, %bb.dq ], [ %i.ne, %bb.ds ], [ %i.ne, %bb.dt ], [ %i.ne, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i18.i = phi i8 [ 0, %bb.du ], [ 1, %bb.dq ], [ 1, %bb.ds ], [ 1, %bb.dt ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE4EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i17.i, ptr %0, align 8, !tbaa !7, !alias.scope !237
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.nq, align 8, !tbaa !19, !alias.scope !237
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i18.i, ptr %i.nr, align 1, !tbaa !12, !alias.scope !237
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.dv:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ns = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #19, !noalias !257 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 16, !tbaa !43
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 384
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !257
  %i.nw = tail call noundef nonnull align 16 dereferenceable(16) ptr %i.nv(ptr noundef nonnull align 16 dereferenceable(176) %i.ns, i32 noundef %.tr116125), !inline_history !258
  %i.nx = load i128, ptr %i.nw, align 16, !tbaa !259, !noalias !257 ; 2 uses
  %i.ny = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !257 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !45, !noalias !257 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 17
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !157, !range !13, !noalias !257, !noundef !14
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.oe = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !261 ; 7 uses
  store i128 %i.nx, ptr %i.oe, align 16, !tbaa !264, !noalias !261
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.og = tail call ptr @__dynamic_cast(ptr nonnull %i.oa, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE10EEE, i64 0) #19, !noalias !272 ; 2 uses
  %.not.not.i.i.i24.i = icmp eq ptr %i.og, null
  br i1 %.not.not.i.i.i24.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.og, ptr %i.of, align 16, !tbaa !273, !alias.scope !269, !noalias !261
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !32, !noalias !272 ; 3 uses
  store ptr %i.oj, ptr %i.oh, align 8, !tbaa !32, !alias.scope !269, !noalias !261
  %.not.i.i.i.i.i.i25.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i.i25.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 3 uses
  %i.ol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !272
  %.not.i.i.i.i.i.i.i26.i = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i.i26.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.om = load i32, ptr %i.ok, align 4, !tbaa !3, !noalias !272
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.ok, align 4, !tbaa !3, !noalias !272
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.ea:                                            ; preds = %bb.dy
  %i.oo = atomicrmw volatile add ptr %i.ok, i32 1 acq_rel, align 4, !noalias !272 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.dw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i8 0, i64 16, i1 false), !alias.scope !269, !noalias !261
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.eb:                                            ; preds = %bb.dv
  %i.op = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22, !noalias !257 ; 2 uses
  store i128 %i.nx, ptr %i.op, align 16, !tbaa !274, !noalias !257
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.eb, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.ea, %bb.dz, %bb.dx
  %.sink9.i22.i = phi ptr [ %i.op, %bb.eb ], [ %i.oe, %bb.dx ], [ %i.oe, %bb.dz ], [ %i.oe, %bb.ea ], [ %i.oe, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i23.i = phi i8 [ 0, %bb.eb ], [ 1, %bb.dx ], [ 1, %bb.dz ], [ 1, %bb.ea ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE10EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i22.i, ptr %0, align 8, !tbaa !7, !alias.scope !257
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.oq, align 8, !tbaa !19, !alias.scope !257
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i23.i, ptr %i.or, align 1, !tbaa !12, !alias.scope !257
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.ec:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.os = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #19, !noalias !279 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 384
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !279
  %i.ow = tail call noundef float %i.ov(ptr noundef nonnull align 8 dereferenceable(120) %i.os, i32 noundef %.tr116125), !inline_history !280 ; 2 uses
  %i.ox = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !279 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !45, !noalias !279 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 17
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !157, !range !13, !noalias !279, !noundef !14
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  %i.pd = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !281 ; 7 uses
  store float %i.ow, ptr %i.pd, align 16, !tbaa !284, !noalias !281
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.pf = tail call ptr @__dynamic_cast(ptr nonnull %i.oz, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE5EEE, i64 0) #19, !noalias !293 ; 2 uses
  %.not.not.i.i.i29.i = icmp eq ptr %i.pf, null
  br i1 %.not.not.i.i.i29.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE5EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !294, !alias.scope !290, !noalias !281
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !32, !noalias !293 ; 3 uses
  store ptr %i.pi, ptr %i.pg, align 16, !tbaa !32, !alias.scope !290, !noalias !281
  %.not.i.i.i.i.i.i30.i = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i.i30.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 3 uses
  %i.pk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !293
  %.not.i.i.i.i.i.i.i31.i = icmp eq i8 %i.pk, 0
  br i1 %.not.i.i.i.i.i.i.i31.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pl = load i32, ptr %i.pj, align 4, !tbaa !3, !noalias !293
  %i.pm = add nsw i32 %i.pl, 1
  store i32 %i.pm, ptr %i.pj, align 4, !tbaa !3, !noalias !293
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.eh:                                            ; preds = %bb.ef
  %i.pn = atomicrmw volatile add ptr %i.pj, i32 1 acq_rel, align 4, !noalias !293 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE5EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.ed
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false), !alias.scope !290, !noalias !281
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.ei:                                            ; preds = %bb.ec
  %i.po = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22, !noalias !279 ; 2 uses
  store float %i.ow, ptr %i.po, align 4, !tbaa !295, !noalias !279
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.ei, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE5EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.eh, %bb.eg, %bb.ee
  %.sink9.i27.i = phi ptr [ %i.po, %bb.ei ], [ %i.pd, %bb.ee ], [ %i.pd, %bb.eg ], [ %i.pd, %bb.eh ], [ %i.pd, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE5EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i28.i = phi i8 [ 0, %bb.ei ], [ 1, %bb.ee ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE5EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i27.i, ptr %0, align 8, !tbaa !7, !alias.scope !279
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.pp, align 8, !tbaa !19, !alias.scope !279
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i28.i, ptr %i.pq, align 1, !tbaa !12, !alias.scope !279
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.ej:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.pr = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #19, !noalias !300 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !43
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 384
  %i.pu = load ptr, ptr %i.pt, align 8, !noalias !300
  %i.pv = tail call noundef double %i.pu(ptr noundef nonnull align 8 dereferenceable(136) %i.pr, i32 noundef %.tr116125), !inline_history !301 ; 2 uses
  %i.pw = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !300 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !45, !noalias !300 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 17
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !157, !range !13, !noalias !300, !noundef !14
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  %i.qc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !302 ; 7 uses
  store double %i.pv, ptr %i.qc, align 16, !tbaa !305, !noalias !302
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.qe = tail call ptr @__dynamic_cast(ptr nonnull %i.py, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE6EEE, i64 0) #19, !noalias !314 ; 2 uses
  %.not.not.i.i.i34.i = icmp eq ptr %i.qe, null
  br i1 %.not.not.i.i.i34.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE6EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !315, !alias.scope !311, !noalias !302
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !32, !noalias !314 ; 3 uses
  store ptr %i.qh, ptr %i.qf, align 16, !tbaa !32, !alias.scope !311, !noalias !302
  %.not.i.i.i.i.i.i35.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i.i.i35.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 3 uses
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !314
  %.not.i.i.i.i.i.i.i36.i = icmp eq i8 %i.qj, 0
  br i1 %.not.i.i.i.i.i.i.i36.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qk = load i32, ptr %i.qi, align 4, !tbaa !3, !noalias !314
  %i.ql = add nsw i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qi, align 4, !tbaa !3, !noalias !314
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.eo:                                            ; preds = %bb.em
  %i.qm = atomicrmw volatile add ptr %i.qi, i32 1 acq_rel, align 4, !noalias !314 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE6EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.ek
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i8 0, i64 16, i1 false), !alias.scope !311, !noalias !302
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.ep:                                            ; preds = %bb.ej
  %i.qn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22, !noalias !300 ; 2 uses
  store double %i.pv, ptr %i.qn, align 8, !tbaa !316, !noalias !300
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.ep, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE6EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.eo, %bb.en, %bb.el
  %.sink9.i32.i = phi ptr [ %i.qn, %bb.ep ], [ %i.qc, %bb.el ], [ %i.qc, %bb.en ], [ %i.qc, %bb.eo ], [ %i.qc, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE6EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i33.i = phi i8 [ 0, %bb.ep ], [ 1, %bb.el ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE6EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink9.i32.i, ptr %0, align 8, !tbaa !7, !alias.scope !300
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.qo, align 8, !tbaa !19, !alias.scope !300
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i33.i, ptr %i.qp, align 1, !tbaa !12, !alias.scope !300
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.eq:                                            ; preds = %bb.cl
  %i.qq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #19, !noalias !318 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !43
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 384
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !318
  %i.qu = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.qt(ptr noundef nonnull align 8 dereferenceable(208) %i.qq, i32 noundef %.tr116125), !inline_history !321 ; 2 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.qu, align 8, !noalias !318 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !35, !noalias !318 ; 3 uses
  %i.qv = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !318
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !45, !noalias !318
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 17
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !157, !range !13, !noalias !318, !noundef !14
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  tail call void @_ZN8facebook5velox7Variant24typeWithCustomComparisonILNS0_8TypeKindE7EEES1_NS0_10TypeTraitsIXT_EE10NativeTypeERKSt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind writable sret(%"class.facebook::velox::Variant") align 8 %0, i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.5.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !318
  store i64 %.sroa.03.0.copyload.i.i, ptr %13, align 8, !noalias !318
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.rb, align 8, !noalias !318
  %i.rc = trunc i64 %.sroa.03.0.copyload.i.i to i32
  %i.rd = icmp ult i32 %i.rc, 13
  %i.re = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.rf = select i1 %i.rd, ptr %i.re, ptr %.sroa.5.0.copyload.i.i
  %i.rg = and i64 %.sroa.03.0.copyload.i.i, 4294967295
  call void @_ZN8facebook5velox7VariantC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(10) %0, i64 %i.rg, ptr %i.rf)
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !318
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.et:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !149
  %i.rh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #19, !noalias !325 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !43
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 384
  %i.rk = load ptr, ptr %i.rj, align 8, !noalias !325
  %i.rl = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.rk(ptr noundef nonnull align 8 dereferenceable(208) %i.rh, i32 noundef %.tr116125), !inline_history !326 ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !327, !noalias !325 ; 4 uses
  %i.rn = icmp ult i32 %i.rm, 13
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 4 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !noalias !325
  %i.rr = select i1 %i.rn, ptr %i.ro, ptr %i.rq   ; 2 uses
  %i.rs = zext i32 %i.rm to i64                   ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.rt, ptr %12, align 8, !tbaa !329, !noalias !325
  %i.ru = icmp eq ptr %i.rr, null
  br i1 %i.ru, label %.noexc.i.i, label %bb.eu

.noexc.i.i:                                       ; preds = %bb.et
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #23, !noalias !325
  unreachable

bb.eu:                                            ; preds = %bb.et
  %i.rv = icmp ugt i32 %i.rm, 15
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.eu
  %i.rw = add nuw nsw i64 %i.rs, 1
  %i.rx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rw) #22, !noalias !325 ; 2 uses
  store ptr %i.rx, ptr %12, align 8, !tbaa !332, !noalias !325
  store i64 %i.rs, ptr %i.rt, align 8, !tbaa !35, !noalias !325
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.eu
  %i.ry = phi ptr [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.rt, %bb.eu ] ; 3 uses
  switch i32 %i.rm, label %bb.ew [
    i32 1, label %bb.ev
    i32 0, label %bb.ex
  ]

bb.ev:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.rz = load i8, ptr %i.ro, align 4, !tbaa !35, !noalias !325
  store i8 %i.rz, ptr %i.ry, align 1, !tbaa !35, !noalias !325
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ry, ptr nonnull align 1 %i.rr, i64 %i.rs, i1 false), !noalias !325
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %._crit_edge.i.i.i.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.rs, ptr %i.sa, align 8, !tbaa !334, !noalias !325
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rs
  store i8 0, ptr %i.sb, align 1, !tbaa !35, !noalias !325
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.sc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc6.i.i unwind label %bb.ez, !noalias !325 ; 5 uses

.noexc6.i.i:                                      ; preds = %bb.ex
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 3 uses
  store ptr %i.sd, ptr %i.sc, align 8, !tbaa !329, !noalias !338
  %i.se = load ptr, ptr %12, align 8, !tbaa !332, !noalias !338 ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.rt
  br i1 %i.sf, label %bb.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ey:                                            ; preds = %.noexc6.i.i
  %i.sg = load i64, ptr %i.sa, align 8, !tbaa !334, !noalias !338 ; 3 uses
  %i.sh = icmp ult i64 %i.sg, 16
  call void @llvm.assume(i1 %i.sh)
  %i.si = add nuw nsw i64 %i.sg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sd, ptr noundef nonnull align 8 dereferenceable(1) %i.rt, i64 %i.si, i1 false), !noalias !338
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE8EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc6.i.i
  store ptr %i.se, ptr %i.sc, align 8, !tbaa !332, !noalias !338
  %i.sj = load i64, ptr %i.rt, align 8, !tbaa !35, !noalias !338
  store i64 %i.sj, ptr %i.sd, align 8, !tbaa !35, !noalias !338
  %.pre.i.i.i = load i64, ptr %i.sa, align 8, !tbaa !334, !noalias !338
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE8EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.ez:                                            ; preds = %bb.ex
  %i.sk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sl = load ptr, ptr %12, align 8, !tbaa !332, !noalias !325 ; 2 uses
  %i.sm = icmp eq ptr %i.sl, %i.rt
  br i1 %i.sm, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.ez
  %i.sn = load i64, ptr %i.rt, align 8, !tbaa !35, !noalias !325
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.so) #20, !noalias !325
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE8EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ey
  %i.sp = phi i64 [ %i.sg, %bb.ey ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i64 %i.sp, ptr %i.sq, align 8, !tbaa !334, !noalias !338
  store ptr %i.sc, ptr %0, align 8, !tbaa !7, !alias.scope !338
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.sr, align 8, !tbaa !19, !alias.scope !338
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ss, align 1, !tbaa !12, !alias.scope !338
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !149
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.fa:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.st = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.k, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_9TimestampEEE, i64 0) #19, !noalias !342 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !43
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 384
  %i.sw = load ptr, ptr %i.sv, align 8, !noalias !342
  %i.sx = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.sw(ptr noundef nonnull align 8 dereferenceable(152) %i.st, i32 noundef %.tr116125), !inline_history !343 ; 2 uses
  %.sroa.03.0.copyload.i37.i = load i64, ptr %i.sx, align 8, !tbaa !344, !noalias !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.sroa.5.0.copyload.i39.i = load i64, ptr %.sroa.5.0..sroa_idx.i38.i, align 8, !tbaa !344, !noalias !342 ; 2 uses
  %i.sy = load ptr, ptr %.tr115124, align 8, !tbaa !40, !noalias !342 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !45, !noalias !342 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 17
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !157, !range !13, !noalias !342, !noundef !14
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.te = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !345 ; 8 uses
  store i64 %.sroa.03.0.copyload.i37.i, ptr %i.te, align 16, !tbaa !344, !noalias !345
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store i64 %.sroa.5.0.copyload.i39.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !344, !noalias !345
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.tg = tail call ptr @__dynamic_cast(ptr nonnull %i.ta, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox30CanProvideCustomComparisonTypeILNS0_8TypeKindE9EEE, i64 0) #19, !noalias !351 ; 2 uses
  %.not.not.i.i.i41.i = icmp eq ptr %i.tg, null
  br i1 %.not.not.i.i.i41.i, label %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE9EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store ptr %i.tg, ptr %i.tf, align 16, !tbaa !352, !alias.scope !348, !noalias !345
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !32, !noalias !351 ; 3 uses
  store ptr %i.tj, ptr %i.th, align 8, !tbaa !32, !alias.scope !348, !noalias !345
  %.not.i.i.i.i.i.i42.i = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i.i.i.i42.i, label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 3 uses
  %i.tl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !351
  %.not.i.i.i.i.i.i.i43.i = icmp eq i8 %i.tl, 0
  br i1 %.not.i.i.i.i.i.i.i43.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.tm = load i32, ptr %i.tk, align 4, !tbaa !3, !noalias !351
  %i.tn = add nsw i32 %i.tm, 1
  store i32 %i.tn, ptr %i.tk, align 4, !tbaa !3, !noalias !351
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.ff:                                            ; preds = %bb.fd
  %i.to = atomicrmw volatile add ptr %i.tk, i32 1 acq_rel, align 4, !noalias !351 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE9EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i: ; preds = %bb.fb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tf, i8 0, i64 16, i1 false), !alias.scope !348, !noalias !345
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

bb.fg:                                            ; preds = %bb.fa
  %i.tp = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22, !noalias !342 ; 3 uses
  store i64 %.sroa.03.0.copyload.i37.i, ptr %i.tp, align 16, !tbaa !344, !noalias !342
  %.sroa.2.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store i64 %.sroa.5.0.copyload.i39.i, ptr %.sroa.2.0..sroa_idx.i7.i.i, align 8, !tbaa !344, !noalias !342
  br label %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i

_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i: ; preds = %bb.fg, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE9EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i, %bb.ff, %bb.fe, %bb.fc
  %.sink12.i.i = phi ptr [ %i.tp, %bb.fg ], [ %i.te, %bb.fc ], [ %i.te, %bb.fe ], [ %i.te, %bb.ff ], [ %i.te, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE9EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  %.sink.i40.i = phi i8 [ 0, %bb.fg ], [ 1, %bb.fc ], [ 1, %bb.fe ], [ 1, %bb.ff ], [ 1, %_ZNSt10shared_ptrIKN8facebook5velox30CanProvideCustomComparisonTypeILNS1_8TypeKindE9EEEEC2IKNS1_4TypeEEERKS_IT_EPS5_.exit.i.i.i.i ]
  store ptr %.sink12.i.i, ptr %0, align 8, !tbaa !7, !alias.scope !342
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.tq, align 8, !tbaa !19, !alias.scope !342
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink.i40.i, ptr %i.tr, align 1, !tbaa !12, !alias.scope !342
  br label %"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit"

bb.fh:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !149
  %i.ts = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %i.m), !noalias !149 ; 2 uses
  %i.tt = extractvalue { i64, ptr } %i.ts, 0
  %i.tu = extractvalue { i64, ptr } %i.ts, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !355
  %i.tv = ptrtoint ptr %i.tu to i64
  store i64 %i.tv, ptr %11, align 16, !noalias !355
  %.sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.tt, ptr %.sroa_idx3.i.i, align 8, !noalias !355
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.15, i64 27, i64 13, ptr nonnull %11), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !355
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @"_ZZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEvE18veloxCheckFailArgs", ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.15) #23
          to label %bb.fi unwind label %bb.fj, !noalias !149

bb.fi:                                            ; preds = %bb.fh
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.tw = landingpad { ptr, i32 }
          cleanup
  %i.tx = load ptr, ptr %14, align 8, !tbaa !332, !noalias !149 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.fj
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !35, !noalias !149
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #20, !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !149
  br label %common.resume

"_ZZN8facebook5velox12_GLOBAL__N_19variantAtERKSt10shared_ptrINS0_10BaseVectorEEiENK3$_0clEv.exit": ; preds = %_ZN8facebook5velox12_GLOBAL__N_114arrayVariantAtERKSt10shared_ptrINS0_10BaseVectorEEi.exit, %_ZNSt3mapIN8facebook5velox7VariantES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit, %_ZN8facebook5velox12_GLOBAL__N_112rowVariantAtERKSt10shared_ptrINS0_10BaseVectorEEi.exit, %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE0EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE3EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE1EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE2EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE4EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE10EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE5EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE6EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %bb.er, %bb.es, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE8EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %_ZN8facebook5velox12_GLOBAL__N_19variantAtILNS0_8TypeKindE9EEENS0_7VariantERKSt10shared_ptrINS0_10BaseVectorEEi.exit.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox7Variant11dynamicCopyEPKvNS0_8TypeKindEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.5, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !358, !nonnull !14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !25
  switch i8 %i.d, label %bb.p [
    i8 33, label %bb.b
    i8 35, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !359, !nonnull !14, !align !360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !24
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox7Variant9typedCopyILb1ELNS0_8TypeKindE33EEEvPKv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN8facebook5velox7Variant9typedCopyILb1ELNS0_8TypeKindE33EEEvPKv.exit

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8facebook5velox7Variant9typedCopyILb1ELNS0_8TypeKindE33EEEvPKv.exit

_ZN8facebook5velox7Variant9typedCopyILb1ELNS0_8TypeKindE33EEEvPKv.exit: ; preds = %bb.b, %bb.d, %bb.e
  store ptr %i.h, ptr %i.b, align 8, !tbaa !7
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !359, !nonnull !14, !align !360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 6 uses
  %i.v = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !tbaa !24
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !24
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox10OpaqueTypeEEC2ERKS4_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
end_hunk_0
