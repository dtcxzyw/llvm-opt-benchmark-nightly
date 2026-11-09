Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebuf?download=true
inline.NumInlined: 16785
inline.NumDeleted: 5500
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 121
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_116copy_pixels_implIddEEbRNS1_8ImageBufERKS6_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  tail call void @__clang_call_terminate(ptr %i.sp) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.sq = load ptr, ptr %i.fo, align 8, !tbaa !910
  %.not.i53.i.i.i = icmp eq ptr %i.sq, null
  br i1 %.not.i53.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54.i.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sr = landingpad { ptr, i32 }
          catch ptr null
  %i.ss = extractvalue { ptr, i32 } %i.sr, 0
  tail call void @__clang_call_terminate(ptr %i.ss) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54.i.i.i: ; preds = %bb.cg, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS1_8ImageBufERKS4_NS1_3ROIEiEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

bb.ci:                                            ; preds = %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qs, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %common.resume.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS1_8ImageBufERKS4_NS1_3ROIEiEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %._crit_edge91.i.i.i, %bb.d, %.lr.ph94.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_116copy_pixels_implIddEEbRNS1_8ImageBufERKS6_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 !guid !4719 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS0_8ImageBufERKS3_NS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !1266
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !754
  store ptr %.val, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1426
  store ptr %i.a, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !754 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_116copy_pixels_implIddEEbRNS2_8ImageBufERKS5_NS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IffEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 !guid !4723 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !754   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !82
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !82
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !82
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !82 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4725 ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.f                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.g = load ptr, ptr %.val, align 8, !tbaa !4726, !nonnull !793, !align !1012
  store ptr %i.g, ptr %2, align 8, !tbaa !909
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !910
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.j, align 8, !tbaa !911
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.h, align 8
  store i32 1, ptr %i.k, align 8, !tbaa !912
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.l, align 4, !tbaa !913
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %i.p = load <4 x i32>, ptr %i.m, align 4
  %i.q = select i1 %.not.i.i.i.i.i, <4 x i32> %i.p, <4 x i32> %i.a ; 3 uses
  %i.r = select i1 %.not.i.i.i.i.i, <2 x i32> %i.o, <2 x i32> %i.b ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.r, ptr %i.w, align 4, !tbaa !82
  %i.y = extractelement <4 x i32> %i.q, i64 0
  %i.z = extractelement <4 x i32> %i.q, i64 2
  %i.aa = extractelement <2 x i32> %i.r, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %.pre.i.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !924
  %i.af = icmp eq i32 %.pre.i.i.i.i.i, %i.ae
  %.pre16.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920 ; 2 uses
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = icmp eq i32 %i.ag, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ai = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.h, align 8, !tbaa !925
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !926
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !928
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.av = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.av, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bf = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = shl nsw i64 %i.bf, 2
  %3 = sub i64 %i.e, %i.bp
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %invariant.op = add i64 %3, -1
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927
  %.pre21.i.i.i = load i32, ptr %i.am, align 4, !tbaa !926
  %.pre34.i.i = load i32, ptr %i.ao, align 4, !tbaa !928
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.bt = load i32, ptr %i.s, align 4, !tbaa !921
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927 ; 2 uses
  %i.bv = load i32, ptr %i.u, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond25.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre35.i.i = load i32, ptr %i.ao, align 4, !tbaa !928 ; 2 uses
  %i.bx = load i32, ptr %i.x, align 8
  %i.by = icmp eq i32 %.pre35.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond25.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre34.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre35.i.i, %bb.d ] ; 5 uses
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ] ; 2 uses
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !4727
  %i.cd = sub nsw i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.ar, align 8, !tbaa !4728
  %i.cg = mul nsw i64 %i.cf, %i.ce                ; 2 uses
  %i.ch = load i32, ptr %i.as, align 8, !tbaa !4729
  %i.ci = sub nsw i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !4730
  %i.cl = mul nsw i64 %i.ck, %i.cj                ; 2 uses
  %i.cm = load i32, ptr %i.ap, align 8, !tbaa !4731
  %i.cn = sub nsw i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.au, align 8, !tbaa !4732
  %i.cq = mul nsw i64 %i.cp, %i.co                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 6 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !911 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.cu, i64 %i.bf ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = add i64 %i.cg, %i.cl
  %i.cx = add i64 %i.cw, %i.cq
  %4 = sub i64 %i.cx, %i.cv
  %i.cy = add i64 %4, %invariant.op
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %wide.load = load <4 x float>, ptr %i.cz, align 4, !tbaa !914
  %wide.load12 = load <4 x float>, ptr %i.da, align 4, !tbaa !914
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %wide.load, ptr %i.db, align 4, !tbaa !914
  store <4 x float> %wide.load12, ptr %i.dc, align 4, !tbaa !914
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !4720

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.de = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !914
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.prol
  store float %i.de, ptr %i.df, align 4, !tbaa !914
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4721

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.di = load float, ptr %gep.i.i.i, align 4, !tbaa !914
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  store float %i.di, ptr %i.dj, align 4, !tbaa !914
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dk = load float, ptr %gep.i.i.i.1, align 4, !tbaa !914
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i
  store float %i.dk, ptr %i.dl, align 4, !tbaa !914
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.dm = load float, ptr %gep.i.i.i.2, align 4, !tbaa !914
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.1
  store float %i.dm, ptr %i.dn, align 4, !tbaa !914
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.do = load float, ptr %gep.i.i.i.3, align 4, !tbaa !914
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i.2
  store float %i.do, ptr %i.dp, align 4, !tbaa !914
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !4722

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dq = add nsw i32 %i.ca, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.am, align 4, !tbaa !926
  %i.dr = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.dt = load i8, ptr %i.bg, align 1, !tbaa !929, !range !792, !noundef !793
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.f, label %._crit_edge.i8.i.i

bb.f:                                             ; preds = %bb.e
  %i.dv = load i8, ptr %i.bh, align 1, !tbaa !930, !range !792, !noundef !793
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dx = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.dy = getelementptr inbounds i8, ptr %i.cu, i64 %i.dx
  store ptr %i.dy, ptr %i.j, align 8, !tbaa !911
  %i.dz = load i32, ptr %i.bk, align 8, !tbaa !932
  %.not.i.i13.i.i = icmp slt i32 %i.dq, %i.dz
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !795

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.f
  %i.ea = load i8, ptr %i.bi, align 2, !tbaa !933, !range !792, !noundef !793
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ec = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.ed = getelementptr inbounds i8, ptr %i.cu, i64 %i.ec
  store ptr %i.ed, ptr %i.j, align 8, !tbaa !911
  %i.ee = load i32, ptr %i.bk, align 8, !tbaa !932
  %i.ef = icmp slt i32 %i.dq, %i.ee               ; 3 uses
  %i.eg = load i32, ptr %i.bl, align 4
  %i.eh = icmp sge i32 %i.dq, %i.eg
  %not..i.i11.i.i = xor i1 %i.ef, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.eh, !prof !934
  %i.ei = load ptr, ptr %i.i, align 8
  %i.ej = icmp eq ptr %i.ei, null
  %i.ek = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.ej, !prof !934
  br i1 %i.ek, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !772

bb.k:                                             ; preds = %bb.j
  %i.el = load ptr, ptr %2, align 8, !tbaa !909
  %i.em = load i32, ptr %i.k, align 8, !tbaa !912
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !814
  %i.ep = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.eo, i32 noundef %i.dq, i32 noundef %i.cb, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i1 noundef zeroext %i.ef, i32 noundef %i.em)
          to label %.noexc15.i.i unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.k
  %i.eq = zext i1 %i.ef to i8
  store ptr %i.ep, ptr %i.j, align 8, !tbaa !911
  store i8 %i.eq, ptr %i.bg, align 1, !tbaa !929
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.er = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  store i32 %i.er, ptr %i.am, align 4, !tbaa !926
  %i.es = add nsw i32 %i.cb, 1                    ; 3 uses
  store i32 %i.es, ptr %i.an, align 8, !tbaa !927
  %i.et = load i32, ptr %i.v, align 8, !tbaa !924
  %.not.i6.i.i = icmp slt i32 %i.es, %i.et
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  store i32 %i.eu, ptr %i.an, align 8, !tbaa !927
  %i.ev = add nsw i32 %i.bz, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ao, align 4, !tbaa !928
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !920
  %.not1.i7.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.h, align 8, !tbaa !925
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.m, %bb.l, %bb.e
  %i.ex = phi i32 [ %i.bz, %bb.l ], [ %i.ev, %bb.m ], [ %i.bz, %bb.e ]
  %i.ey = phi i32 [ %i.es, %bb.l ], [ %i.eu, %bb.m ], [ %i.cb, %bb.e ]
  %i.ez = phi i32 [ %i.er, %bb.l ], [ %i.er, %bb.m ], [ %i.dq, %bb.e ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ez, i32 noundef %i.ey, i32 noundef %i.ex)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fa = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.ab, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fb = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.fc = icmp eq i8 %i.fb, 0
  %.pre.i.i = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.fd = icmp eq i32 %.pre.i.i, %i.fa
  %or.cond45.i.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond45.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fe = load i32, ptr %i.an, align 8, !tbaa !927
  %i.ff = load i32, ptr %i.u, align 4, !tbaa !923
  %i.fg = icmp eq i32 %i.fe, %i.ff
  br i1 %i.fg, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.o
  %i.fh = load i32, ptr %i.ao, align 4, !tbaa !928
  %i.fi = load i32, ptr %i.x, align 8, !tbaa !920
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.o, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fk = add nsw i32 %.pre.i.i, 1                ; 7 uses
  store i32 %i.fk, ptr %i.am, align 4, !tbaa !926
  %i.fl = load i32, ptr %i.t, align 8, !tbaa !922
  %i.fm = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fn = load i8, ptr %i.aw, align 1, !tbaa !929, !range !792, !noundef !793
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.q, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.p
  %.pre.i2.i.i = load i32, ptr %i.an, align 8, !tbaa !927
  %.pre32.i.i = load i32, ptr %i.ao, align 4, !tbaa !928
  br label %bb.z

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IN9Imath_3_14halfEhEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pre.i = load i32, ptr %i.r, align 4
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhN9Imath_3_14halfEEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i8.i.i, %bb.u, %bb.r, %bb.aj, %bb.af, %bb.ac
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %lpad.loopexit.split-lp14

.split.us.i.i.i:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.d
  %i.hk = load i8, ptr %i.k, align 4, !tbaa !913, !range !792, !noundef !793
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split.us.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !4879, !nonnull !793
  store atomic i8 0, ptr %i.hn seq_cst, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.split.us.i.i.i
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !910
  %.not.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  tail call void @__clang_call_terminate(ptr %i.hq) #46
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IN9Imath_3_14halfEhEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 !guid !4880 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS0_8ImageBufES6_NS0_3ROIES7_PvllliEUlS7_E_, ptr %0, align 8, !tbaa !1266
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !754
  store ptr %.val, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !1427
  store ptr %i.a, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !754 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IN9Imath_3_14halfEhEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IN9Imath_3_14halfES6_EEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 !guid !4885 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.451", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !754   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !82
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !82
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !82
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !82 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4887 ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.f                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.g = load ptr, ptr %.val, align 8, !tbaa !4888, !nonnull !793, !align !1012
  store ptr %i.g, ptr %2, align 8, !tbaa !909
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !910
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.j, align 8, !tbaa !911
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.h, align 8
  store i32 1, ptr %i.k, align 8, !tbaa !912
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.l, align 4, !tbaa !913
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %i.p = load <4 x i32>, ptr %i.m, align 4
  %i.q = select i1 %.not.i.i.i.i.i, <4 x i32> %i.p, <4 x i32> %i.a ; 3 uses
  %i.r = select i1 %.not.i.i.i.i.i, <2 x i32> %i.o, <2 x i32> %i.b ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.r, ptr %i.w, align 4, !tbaa !82
  %i.y = extractelement <4 x i32> %i.q, i64 0
  %i.z = extractelement <4 x i32> %i.q, i64 2
  %i.aa = extractelement <2 x i32> %i.r, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %.pre.i.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !924
  %i.af = icmp eq i32 %.pre.i.i.i.i.i, %i.ae
  %.pre16.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920 ; 2 uses
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = icmp eq i32 %i.ag, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ai = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.h, align 8, !tbaa !925
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !926
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !928
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.av = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.av, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bf = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = shl nsw i64 %i.bf, 1
  %3 = sub i64 %i.e, %i.bp
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 4
  %invariant.op = add i64 %3, -1
  %min.iters.check12 = icmp ult i32 %.fr17.i.i.i, 16
  %i.bq = and i64 %wide.trip.count.i.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  %n.vec14 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.br = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927
  %.pre21.i.i.i = load i32, ptr %i.am, align 4, !tbaa !926
  %.pre34.i.i = load i32, ptr %i.ao, align 4, !tbaa !928
  br label %iter.check

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bt = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !921
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %.pre20.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927 ; 2 uses
  %i.bw = load i32, ptr %i.u, align 4
  %i.bx = icmp eq i32 %.pre20.i.i.i, %i.bw
  %or.cond25.i.i.i = select i1 %i.bv, i1 %i.bx, i1 false
  %.pre35.i.i = load i32, ptr %i.ao, align 4, !tbaa !928 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8
  %i.bz = icmp eq i32 %.pre35.i.i, %i.by
  %or.cond.i.i = select i1 %or.cond25.i.i.i, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.ca = phi i32 [ %.pre34.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre35.i.i, %bb.d ] ; 5 uses
  %i.cb = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bt, %bb.d ] ; 2 uses
  %i.cc = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cd = load i32, ptr %i.aq, align 8, !tbaa !4889
  %i.ce = sub nsw i32 %i.ca, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !4890
  %i.ch = mul nsw i64 %i.cg, %i.cf                ; 2 uses
  %i.ci = load i32, ptr %i.as, align 8, !tbaa !4891
  %i.cj = sub nsw i32 %i.cc, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !4892
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !4893
  %i.co = sub nsw i32 %i.cb, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = load i64, ptr %i.au, align 8, !tbaa !4894
  %i.cr = mul nsw i64 %i.cq, %i.cp                ; 2 uses
  %i.cs = getelementptr i8, ptr %i.d, i64 %i.ch
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr  ; 7 uses
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !911 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.cv, i64 %i.bf ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = add i64 %i.ch, %i.cm
  %i.cy = add i64 %i.cx, %i.cr
  %4 = sub i64 %i.cy, %i.cw
  %i.cz = add i64 %4, %invariant.op
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.da = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <8 x i16>, ptr %i.da, align 2, !tbaa !917
  %wide.load13 = load <8 x i16>, ptr %i.db, align 2, !tbaa !917
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <8 x i16> %wide.load, ptr %i.dc, align 2, !tbaa !917
  store <8 x i16> %wide.load13, ptr %i.dd, align 2, !tbaa !917
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4881

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !937

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.df = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index15
  %wide.load16 = load <4 x i16>, ptr %i.df, align 2, !tbaa !917
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index15
  store <4 x i16> %wide.load16, ptr %i.dg, align 2, !tbaa !917
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4882

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n18, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %.sroa.0.0.copyload.i.i.i.us.i.i.i.prol = load i16, ptr %gep.i.i.i.prol, align 2, !tbaa !917
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.prol
  store i16 %.sroa.0.0.copyload.i.i.i.us.i.i.i.prol, ptr %i.di, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !4883

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.dj = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %.sroa.0.0.copyload.i.i.i.us.i.i.i = load i16, ptr %gep.i.i.i, align 2, !tbaa !917
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i
  store i16 %.sroa.0.0.copyload.i.i.i.us.i.i.i, ptr %i.dl, align 2, !tbaa !917
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %.sroa.0.0.copyload.i.i.i.us.i.i.i.1 = load i16, ptr %gep.i.i.i.1, align 2, !tbaa !917
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i
  store i16 %.sroa.0.0.copyload.i.i.i.us.i.i.i.1, ptr %i.dm, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %.sroa.0.0.copyload.i.i.i.us.i.i.i.2 = load i16, ptr %gep.i.i.i.2, align 2, !tbaa !917
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.1
  store i16 %.sroa.0.0.copyload.i.i.i.us.i.i.i.2, ptr %i.dn, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %.sroa.0.0.copyload.i.i.i.us.i.i.i.3 = load i16, ptr %gep.i.i.i.3, align 2, !tbaa !917
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.2
  store i16 %.sroa.0.0.copyload.i.i.i.us.i.i.i.3, ptr %i.do, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !4884

._crit_edge.us.i.i.i:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dp = add nsw i32 %i.cb, 1                    ; 7 uses
  store i32 %i.dp, ptr %i.am, align 4, !tbaa !926
  %i.dq = load i32, ptr %i.t, align 8, !tbaa !922
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ds = load i8, ptr %i.bg, align 1, !tbaa !929, !range !792, !noundef !793
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.f, label %._crit_edge.i8.i.i

bb.f:                                             ; preds = %bb.e
  %i.du = load i8, ptr %i.bh, align 1, !tbaa !930, !range !792, !noundef !793
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dw = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.dx = getelementptr inbounds i8, ptr %i.cv, i64 %i.dw
  store ptr %i.dx, ptr %i.j, align 8, !tbaa !911
  %i.dy = load i32, ptr %i.bk, align 8, !tbaa !932
  %.not.i.i13.i.i = icmp slt i32 %i.dp, %i.dy
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !795

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.f
  %i.dz = load i8, ptr %i.bi, align 2, !tbaa !933, !range !792, !noundef !793
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.ec = getelementptr inbounds i8, ptr %i.cv, i64 %i.eb
  store ptr %i.ec, ptr %i.j, align 8, !tbaa !911
  %i.ed = load i32, ptr %i.bk, align 8, !tbaa !932
  %i.ee = icmp slt i32 %i.dp, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.bl, align 4
  %i.eg = icmp sge i32 %i.dp, %i.ef
  %not..i.i11.i.i = xor i1 %i.ee, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.eg, !prof !934
  %i.eh = load ptr, ptr %i.i, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.ei, !prof !934
  br i1 %i.ej, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !772

bb.k:                                             ; preds = %bb.j
  %i.ek = load ptr, ptr %2, align 8, !tbaa !909
  %i.el = load i32, ptr %i.k, align 8, !tbaa !912
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !814
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.en, i32 noundef %i.dp, i32 noundef %i.cc, i32 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i1 noundef zeroext %i.ee, i32 noundef %i.el)
          to label %.noexc15.i.i unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.k
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.j, align 8, !tbaa !911
  store i8 %i.ep, ptr %i.bg, align 1, !tbaa !929
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.eq = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  store i32 %i.eq, ptr %i.am, align 4, !tbaa !926
  %i.er = add nsw i32 %i.cc, 1                    ; 3 uses
  store i32 %i.er, ptr %i.an, align 8, !tbaa !927
  %i.es = load i32, ptr %i.v, align 8, !tbaa !924
  %.not.i6.i.i = icmp slt i32 %i.er, %i.es
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  store i32 %i.et, ptr %i.an, align 8, !tbaa !927
  %i.eu = add nsw i32 %i.ca, 1                    ; 3 uses
  store i32 %i.eu, ptr %i.ao, align 4, !tbaa !928
  %i.ev = load i32, ptr %i.x, align 8, !tbaa !920
  %.not1.i7.i.i = icmp slt i32 %i.eu, %i.ev
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.h, align 8, !tbaa !925
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.m, %bb.l, %bb.e
  %i.ew = phi i32 [ %i.ca, %bb.l ], [ %i.eu, %bb.m ], [ %i.ca, %bb.e ]
  %i.ex = phi i32 [ %i.er, %bb.l ], [ %i.et, %bb.m ], [ %i.cc, %bb.e ]
  %i.ey = phi i32 [ %i.eq, %bb.l ], [ %i.eq, %bb.m ], [ %i.dp, %bb.e ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ey, i32 noundef %i.ex, i32 noundef %i.ew)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.ez = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.ab, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fa = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.fb = icmp eq i8 %i.fa, 0
  %.pre.i.i = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.fc = icmp eq i32 %.pre.i.i, %i.ez
  %or.cond45.i.i = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond45.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfES4_EC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fd = load i32, ptr %i.an, align 8, !tbaa !927
  %i.fe = load i32, ptr %i.u, align 4, !tbaa !923
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IthEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pre.i = load i32, ptr %i.r, align 4
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i8.i.i, %bb.k, %bb.h, %bb.z, %bb.v, %bb.s
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %lpad.loopexit.split-lp14

.split.us.i.i.i:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.d
  %i.hk = load i8, ptr %i.k, align 4, !tbaa !913, !range !792, !noundef !793
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split.us.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !4941, !nonnull !793
  store atomic i8 0, ptr %i.hn seq_cst, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.i.i.i
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !910
  %.not.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  tail call void @__clang_call_terminate(ptr %i.hq) #46
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IthEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 !guid !4942 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS0_8ImageBufES4_NS0_3ROIES5_PvllliEUlS5_E_, ptr %0, align 8, !tbaa !1266
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !754
  store ptr %.val, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !1427
  store ptr %i.a, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !754 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IthEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 !guid !4945 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.629", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !754   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !82
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !82
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !82
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !82 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4947 ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.f                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.g = load ptr, ptr %.val, align 8, !tbaa !4948, !nonnull !793, !align !1012
  store ptr %i.g, ptr %2, align 8, !tbaa !909
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !910
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.j, align 8, !tbaa !911
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.h, align 8
  store i32 1, ptr %i.k, align 8, !tbaa !912
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.l, align 4, !tbaa !913
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %i.p = load <4 x i32>, ptr %i.m, align 4
  %i.q = select i1 %.not.i.i.i.i.i, <4 x i32> %i.p, <4 x i32> %i.a ; 3 uses
  %i.r = select i1 %.not.i.i.i.i.i, <2 x i32> %i.o, <2 x i32> %i.b ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.r, ptr %i.w, align 4, !tbaa !82
  %i.y = extractelement <4 x i32> %i.q, i64 0
  %i.z = extractelement <4 x i32> %i.q, i64 2
  %i.aa = extractelement <2 x i32> %i.r, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %.pre.i.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !924
  %i.af = icmp eq i32 %.pre.i.i.i.i.i, %i.ae
  %.pre16.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920 ; 2 uses
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = icmp eq i32 %i.ag, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ai = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.h, align 8, !tbaa !925
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !926
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !928
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.av = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.av, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bf = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = shl nsw i64 %i.bf, 1
  %3 = sub i64 %i.e, %i.bp
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %invariant.op = add i64 %3, -1
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927
  %.pre21.i.i.i = load i32, ptr %i.am, align 4, !tbaa !926
  %.pre34.i.i = load i32, ptr %i.ao, align 4, !tbaa !928
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.bt = load i32, ptr %i.s, align 4, !tbaa !921
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927 ; 2 uses
  %i.bv = load i32, ptr %i.u, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond27.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre35.i.i = load i32, ptr %i.ao, align 4, !tbaa !928 ; 2 uses
  %i.bx = load i32, ptr %i.x, align 8
  %i.by = icmp eq i32 %.pre35.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond27.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre34.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre35.i.i, %bb.d ] ; 5 uses
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ] ; 2 uses
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !4949
  %i.cd = sub i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.ar, align 8, !tbaa !4950
  %i.cg = mul i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i32, ptr %i.as, align 8, !tbaa !4951
  %i.ci = sub i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !4952
  %i.cl = mul i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = load i32, ptr %i.ap, align 8, !tbaa !4953
  %i.cn = sub i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.au, align 8, !tbaa !4954
  %i.cq = mul i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 2 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !911 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.cu, i64 %i.bf ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = add i64 %i.cg, %i.cl
  %i.cx = add i64 %i.cw, %i.cq
  %4 = sub i64 %i.cx, %i.cv
  %i.cy = add i64 %4, %invariant.op
  %diff.check = icmp ult i64 %i.cy, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cz, align 2, !tbaa !916 ; 2 uses
  %i.da = zext <8 x i16> %wide.load to <8 x i32>
  %i.db = shl nuw nsw <8 x i32> %i.da, splat (i32 13)
  %i.dc = and <8 x i32> %i.db, splat (i32 268427264) ; 6 uses
  %i.dd = sext <8 x i16> %wide.load to <8 x i32>
  %i.de = and <8 x i32> %i.dd, splat (i32 -2147483648) ; 3 uses
  %i.df = icmp samesign ugt <8 x i32> %i.dc, splat (i32 8388607)
  %i.dg = icmp eq <8 x i32> %i.dc, zeroinitializer
  %i.dh = tail call range(i32 4, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.dc, i1 true)
  %i.di = add nsw <8 x i32> %i.dh, splat (i32 -8) ; 2 uses
  %i.dj = shl <8 x i32> %i.dc, %i.di
  %i.dk = or <8 x i32> %i.de, %i.dj
  %i.dl = or <8 x i32> %i.dk, splat (i32 947912704)
  %i.dm = shl nuw nsw <8 x i32> %i.di, splat (i32 23)
  %i.dn = sub nuw <8 x i32> %i.dl, %i.dm
  %i.do = or disjoint <8 x i32> %i.dc, %i.de      ; 2 uses
  %i.dp = icmp samesign ugt <8 x i32> %i.dc, splat (i32 260046847)
  %i.dq = or <8 x i32> %i.do, splat (i32 2139095040)
  %i.dr = add nuw nsw <8 x i32> %i.do, splat (i32 939524096)
  %predphi = select <8 x i1> %i.dp, <8 x i32> %i.dq, <8 x i32> %i.dr
  %predphi13 = select <8 x i1> %i.df, <8 x i32> %predphi, <8 x i32> %i.dn
  %predphi14 = select <8 x i1> %i.dg, <8 x i32> %i.de, <8 x i32> %predphi13
  %i.ds = bitcast <8 x i32> %predphi14 to <8 x float>
  %i.dt = fmul <8 x float> %i.ds, splat (float 6.553500e+04) ; 2 uses
  %i.du = fcmp olt <8 x float> %i.dt, zeroinitializer
  %i.dv = select <8 x i1> %i.du, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.dw = fadd <8 x float> %i.dt, %i.dv           ; 2 uses
  %i.dx = fcmp oge <8 x float> %i.dw, zeroinitializer
  %i.dy = select <8 x i1> %i.dx, <8 x float> %i.dw, <8 x float> zeroinitializer ; 2 uses
  %i.dz = fcmp ogt <8 x float> %i.dy, splat (float 6.553500e+04)
  %i.ea = select <8 x i1> %i.dz, <8 x float> splat (float 6.553500e+04), <8 x float> %i.dy
  %i.eb = fptoui <8 x float> %i.ea to <8 x i16>
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index
  store <8 x i16> %i.eb, ptr %i.ec, align 2, !tbaa !917
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !4943

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.j
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.j ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.ee = load i16, ptr %gep.i.i.i, align 2, !tbaa !916 ; 2 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 13
  %i.eh = and i32 %i.eg, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.us.i.i.i = sext i16 %i.ee to i32
  %i.ei = and i32 %.signext.i.i.i.i.i.i.us.i.i.i, -2147483648 ; 3 uses
  %i.ej = icmp samesign ugt i32 %i.eh, 8388607
  br i1 %i.ej, label %bb.g, label %bb.e, !prof !795

bb.e:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i.i.us.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i.i.i.i.us.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ek = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true)
  %i.el = add nsw i32 %i.ek, -8                   ; 2 uses
  %i.em = shl i32 %i.eh, %i.el
  %i.en = or i32 %i.ei, %i.em
  %i.eo = or i32 %i.en, 947912704
  %i.ep = shl nuw nsw i32 %i.el, 23
  %i.eq = sub nuw i32 %i.eo, %i.ep
  br label %bb.j

bb.g:                                             ; preds = %scalar.ph
  %i.er = or disjoint i32 %i.eh, %i.ei            ; 2 uses
  %i.es = icmp samesign ult i32 %i.eh, 260046848
  br i1 %i.es, label %bb.i, label %bb.h, !prof !795

bb.h:                                             ; preds = %bb.g
  %i.et = or i32 %i.er, 2139095040
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.eu = add nuw nsw i32 %i.er, 939524096
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i = phi i32 [ %i.eu, %bb.i ], [ %i.et, %bb.h ], [ %i.eq, %bb.f ], [ %i.ei, %bb.e ]
  %i.ev = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.us.i.i.i to float
  %i.ew = fmul float %i.ev, 6.553500e+04          ; 2 uses
  %i.ex = fcmp olt float %i.ew, 0.000000e+00
  %i.ey = select i1 %i.ex, float -5.000000e-01, float 5.000000e-01
  %i.ez = fadd float %i.ew, %i.ey                 ; 2 uses
  %.inv.i.i.i.i.us.i.i.i = fcmp oge float %i.ez, 0.000000e+00
  %.0.i.i.i.i.i.us.i.i.i = select i1 %.inv.i.i.i.i.us.i.i.i, float %i.ez, float 0.000000e+00 ; 2 uses
  %i.fa = fcmp ogt float %.0.i.i.i.i.i.us.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.fa, float 6.553500e+04, float %.0.i.i.i.i.i.us.i.i.i
  %i.fb = fptoui float %.1.i.i.i.i.i.us.i.i.i to i16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !917
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !4944

._crit_edge.us.i.i.i:                             ; preds = %bb.j, %middle.block
  %i.fd = add nsw i32 %i.ca, 1                    ; 7 uses
  store i32 %i.fd, ptr %i.am, align 4, !tbaa !926
  %i.fe = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fg = load i8, ptr %i.bg, align 1, !tbaa !929, !range !792, !noundef !793
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.l, label %._crit_edge.i8.i.i

bb.l:                                             ; preds = %bb.k
  %i.fi = load i8, ptr %i.bh, align 1, !tbaa !930, !range !792, !noundef !793
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fk = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.fl = getelementptr inbounds i8, ptr %i.cu, i64 %i.fk
  store ptr %i.fl, ptr %i.j, align 8, !tbaa !911
  %i.fm = load i32, ptr %i.bk, align 8, !tbaa !932
  %.not.i.i13.i.i = icmp slt i32 %i.fd, %i.fm
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.n, !prof !795

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  %i.fn = load i8, ptr %i.bi, align 2, !tbaa !933, !range !792, !noundef !793
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fp = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.fq = getelementptr inbounds i8, ptr %i.cu, i64 %i.fp
  store ptr %i.fq, ptr %i.j, align 8, !tbaa !911
  %i.fr = load i32, ptr %i.bk, align 8, !tbaa !932
  %i.fs = icmp slt i32 %i.fd, %i.fr               ; 3 uses
  %i.ft = load i32, ptr %i.bl, align 4
  %i.fu = icmp sge i32 %i.fd, %i.ft
  %not..i.i11.i.i = xor i1 %i.fs, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.fu, !prof !934
  %i.fv = load ptr, ptr %i.i, align 8
  %i.fw = icmp eq ptr %i.fv, null
  %i.fx = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.fw, !prof !934
  br i1 %i.fx, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !772

bb.q:                                             ; preds = %bb.p
  %i.fy = load ptr, ptr %2, align 8, !tbaa !909
  %i.fz = load i32, ptr %i.k, align 8, !tbaa !912
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !814
  %i.gc = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.gb, i32 noundef %i.fd, i32 noundef %i.cb, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i1 noundef zeroext %i.fs, i32 noundef %i.fz)
          to label %.noexc15.i.i unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.q
  %i.gd = zext i1 %i.fs to i8
  store ptr %i.gc, ptr %i.j, align 8, !tbaa !911
  store i8 %i.gd, ptr %i.bg, align 1, !tbaa !929
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.r:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ge = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  store i32 %i.ge, ptr %i.am, align 4, !tbaa !926
  %i.gf = add nsw i32 %i.cb, 1                    ; 3 uses
  store i32 %i.gf, ptr %i.an, align 8, !tbaa !927
  %i.gg = load i32, ptr %i.v, align 8, !tbaa !924
  %.not.i6.i.i = icmp slt i32 %i.gf, %i.gg
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  store i32 %i.gh, ptr %i.an, align 8, !tbaa !927
  %i.gi = add nsw i32 %i.bz, 1                    ; 3 uses
  store i32 %i.gi, ptr %i.ao, align 4, !tbaa !928
  %i.gj = load i32, ptr %i.x, align 8, !tbaa !920
  %.not1.i7.i.i = icmp slt i32 %i.gi, %i.gj
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.h, align 8, !tbaa !925
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.s, %bb.r, %bb.k
  %i.gk = phi i32 [ %i.bz, %bb.r ], [ %i.gi, %bb.s ], [ %i.bz, %bb.k ]
  %i.gl = phi i32 [ %i.gf, %bb.r ], [ %i.gh, %bb.s ], [ %i.cb, %bb.k ]
  %i.gm = phi i32 [ %i.ge, %bb.r ], [ %i.ge, %bb.s ], [ %i.fd, %bb.k ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gm, i32 noundef %i.gl, i32 noundef %i.gk)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.t, %.noexc15.i.i, %bb.p, %bb.o, %bb.n, %bb.m
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pre.i = load i32, ptr %i.s, align 4
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i8.i.i, %bb.q, %bb.n, %bb.af, %bb.ab, %bb.y
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %lpad.loopexit.split-lp15

.split.us.i.i.i:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.d
  %i.il = load i8, ptr %i.l, align 4, !tbaa !913, !range !792, !noundef !793
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split.us.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !4955, !nonnull !793
  store atomic i8 0, ptr %i.io seq_cst, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.i
  %i.ip = load ptr, ptr %i.i, align 8, !tbaa !910
  %.not.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  tail call void @__clang_call_terminate(ptr %i.ir) #46
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES7_NS1_3ROIES8_PvllliEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_ItN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 !guid !4956 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_NS0_3ROIES7_PvllliEUlS7_E_, ptr %0, align 8, !tbaa !1266
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !754
  store ptr %.val, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !1427
  store ptr %i.a, ptr %0, align 8, !tbaa !754
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !754 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IttEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 !guid !4961 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.472", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !754   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !82
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !82
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !82
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !82 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4963 ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.f                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.g = load ptr, ptr %.val, align 8, !tbaa !4964, !nonnull !793, !align !1012
  store ptr %i.g, ptr %2, align 8, !tbaa !909
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !910
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.j, align 8, !tbaa !911
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.h, align 8
  store i32 1, ptr %i.k, align 8, !tbaa !912
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.l, align 4, !tbaa !913
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %i.p = load <4 x i32>, ptr %i.m, align 4
  %i.q = select i1 %.not.i.i.i.i.i, <4 x i32> %i.p, <4 x i32> %i.a ; 3 uses
  %i.r = select i1 %.not.i.i.i.i.i, <2 x i32> %i.o, <2 x i32> %i.b ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.r, ptr %i.w, align 4, !tbaa !82
  %i.y = extractelement <4 x i32> %i.q, i64 0
  %i.z = extractelement <4 x i32> %i.q, i64 2
  %i.aa = extractelement <2 x i32> %i.r, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !922
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %.pre.i.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !924
  %i.af = icmp eq i32 %.pre.i.i.i.i.i, %i.ae
  %.pre16.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !920 ; 2 uses
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = icmp eq i32 %i.ag, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ai = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.h, align 8, !tbaa !925
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !926
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !928
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.av = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.av, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bf = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = shl nsw i64 %i.bf, 1
  %3 = sub i64 %i.e, %i.bp
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 4
  %invariant.op = add i64 %3, -1
  %min.iters.check12 = icmp ult i32 %.fr17.i.i.i, 16
  %i.bq = and i64 %wide.trip.count.i.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  %n.vec14 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.br = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927
  %.pre21.i.i.i = load i32, ptr %i.am, align 4, !tbaa !926
  %.pre34.i.i = load i32, ptr %i.ao, align 4, !tbaa !928
  br label %iter.check

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bt = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !921
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %.pre20.i.i.i = load i32, ptr %i.an, align 8, !tbaa !927 ; 2 uses
  %i.bw = load i32, ptr %i.u, align 4
  %i.bx = icmp eq i32 %.pre20.i.i.i, %i.bw
  %or.cond25.i.i.i = select i1 %i.bv, i1 %i.bx, i1 false
  %.pre35.i.i = load i32, ptr %i.ao, align 4, !tbaa !928 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8
  %i.bz = icmp eq i32 %.pre35.i.i, %i.by
  %or.cond.i.i = select i1 %or.cond25.i.i.i, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.ca = phi i32 [ %.pre34.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre35.i.i, %bb.d ] ; 5 uses
  %i.cb = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bt, %bb.d ] ; 2 uses
  %i.cc = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cd = load i32, ptr %i.aq, align 8, !tbaa !4965
  %i.ce = sub nsw i32 %i.ca, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !4966
  %i.ch = mul nsw i64 %i.cg, %i.cf                ; 2 uses
  %i.ci = load i32, ptr %i.as, align 8, !tbaa !4967
  %i.cj = sub nsw i32 %i.cc, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !4968
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !4969
  %i.co = sub nsw i32 %i.cb, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = load i64, ptr %i.au, align 8, !tbaa !4970
  %i.cr = mul nsw i64 %i.cq, %i.cp                ; 2 uses
  %i.cs = getelementptr i8, ptr %i.d, i64 %i.ch
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr  ; 7 uses
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !911 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.cv, i64 %i.bf ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = add i64 %i.ch, %i.cm
  %i.cy = add i64 %i.cx, %i.cr
  %4 = sub i64 %i.cy, %i.cw
  %i.cz = add i64 %4, %invariant.op
  %diff.check = icmp ult i64 %i.cz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.da = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <8 x i16>, ptr %i.da, align 2, !tbaa !917
  %wide.load13 = load <8 x i16>, ptr %i.db, align 2, !tbaa !917
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <8 x i16> %wide.load, ptr %i.dc, align 2, !tbaa !917
  store <8 x i16> %wide.load13, ptr %i.dd, align 2, !tbaa !917
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4957

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !937

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.df = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index15
  %wide.load16 = load <4 x i16>, ptr %i.df, align 2, !tbaa !917
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index15
  store <4 x i16> %wide.load16, ptr %i.dg, align 2, !tbaa !917
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4958

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n18, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.di = load i16, ptr %gep.i.i.i.prol, align 2, !tbaa !917
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.prol
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !4959

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.dk = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dm = load i16, ptr %gep.i.i.i, align 2, !tbaa !917
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !917
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.do = load i16, ptr %gep.i.i.i.1, align 2, !tbaa !917
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.dq = load i16, ptr %gep.i.i.i.2, align 2, !tbaa !917
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.1
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ds = load i16, ptr %gep.i.i.i.3, align 2, !tbaa !917
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.2
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !917
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !4960

._crit_edge.us.i.i.i:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.du = add nsw i32 %i.cb, 1                    ; 7 uses
  store i32 %i.du, ptr %i.am, align 4, !tbaa !926
  %i.dv = load i32, ptr %i.t, align 8, !tbaa !922
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.dx = load i8, ptr %i.bg, align 1, !tbaa !929, !range !792, !noundef !793
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.f, label %._crit_edge.i8.i.i

bb.f:                                             ; preds = %bb.e
  %i.dz = load i8, ptr %i.bh, align 1, !tbaa !930, !range !792, !noundef !793
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.eb = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.ec = getelementptr inbounds i8, ptr %i.cv, i64 %i.eb
  store ptr %i.ec, ptr %i.j, align 8, !tbaa !911
  %i.ed = load i32, ptr %i.bk, align 8, !tbaa !932
  %.not.i.i13.i.i = icmp slt i32 %i.du, %i.ed
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !795

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.f
  %i.ee = load i8, ptr %i.bi, align 2, !tbaa !933, !range !792, !noundef !793
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = load i64, ptr %i.bj, align 8, !tbaa !931
  %i.eh = getelementptr inbounds i8, ptr %i.cv, i64 %i.eg
  store ptr %i.eh, ptr %i.j, align 8, !tbaa !911
  %i.ei = load i32, ptr %i.bk, align 8, !tbaa !932
  %i.ej = icmp slt i32 %i.du, %i.ei               ; 3 uses
  %i.ek = load i32, ptr %i.bl, align 4
  %i.el = icmp sge i32 %i.du, %i.ek
  %not..i.i11.i.i = xor i1 %i.ej, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.el, !prof !934
  %i.em = load ptr, ptr %i.i, align 8
  %i.en = icmp eq ptr %i.em, null
  %i.eo = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.en, !prof !934
  br i1 %i.eo, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !772

bb.k:                                             ; preds = %bb.j
  %i.ep = load ptr, ptr %2, align 8, !tbaa !909
  %i.eq = load i32, ptr %i.k, align 8, !tbaa !912
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !814
  %i.et = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.es, i32 noundef %i.du, i32 noundef %i.cc, i32 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i1 noundef zeroext %i.ej, i32 noundef %i.eq)
          to label %.noexc15.i.i unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.k
  %i.eu = zext i1 %i.ej to i8
  store ptr %i.et, ptr %i.j, align 8, !tbaa !911
  store i8 %i.eu, ptr %i.bg, align 1, !tbaa !929
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ev = load i32, ptr %i.s, align 4, !tbaa !921 ; 3 uses
  store i32 %i.ev, ptr %i.am, align 4, !tbaa !926
  %i.ew = add nsw i32 %i.cc, 1                    ; 3 uses
  store i32 %i.ew, ptr %i.an, align 8, !tbaa !927
  %i.ex = load i32, ptr %i.v, align 8, !tbaa !924
  %.not.i6.i.i = icmp slt i32 %i.ew, %i.ex
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ey = load i32, ptr %i.u, align 4, !tbaa !923 ; 2 uses
  store i32 %i.ey, ptr %i.an, align 8, !tbaa !927
  %i.ez = add nsw i32 %i.ca, 1                    ; 3 uses
  store i32 %i.ez, ptr %i.ao, align 4, !tbaa !928
  %i.fa = load i32, ptr %i.x, align 8, !tbaa !920
  %.not1.i7.i.i = icmp slt i32 %i.ez, %i.fa
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.h, align 8, !tbaa !925
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.m, %bb.l, %bb.e
  %i.fb = phi i32 [ %i.ca, %bb.l ], [ %i.ez, %bb.m ], [ %i.ca, %bb.e ]
  %i.fc = phi i32 [ %i.ew, %bb.l ], [ %i.ey, %bb.m ], [ %i.cc, %bb.e ]
  %i.fd = phi i32 [ %i.ev, %bb.l ], [ %i.ev, %bb.m ], [ %i.du, %bb.e ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fd, i32 noundef %i.fc, i32 noundef %i.fb)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fe = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.ab, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.ff = load i8, ptr %i.h, align 8, !tbaa !925, !range !792, !noundef !793
  %i.fg = icmp eq i8 %i.ff, 0
  %.pre.i.i = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %i.fh = icmp eq i32 %.pre.i.i, %i.fe
  %or.cond45.i.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond45.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIttEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fi = load i32, ptr %i.an, align 8, !tbaa !927
  %i.fj = load i32, ptr %i.u, align 4, !tbaa !923
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.o
end_hunk_3
