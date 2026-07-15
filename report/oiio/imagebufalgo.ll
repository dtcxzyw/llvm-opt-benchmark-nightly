inline.NumInlined: 7403
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !63, !alias.scope !1467, !noalias !1470
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !96, !alias.scope !1470, !noalias !1467
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !96, !alias.scope !1467, !noalias !1470
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !55, !alias.scope !1470, !noalias !1467
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !55, !alias.scope !1467, !noalias !1470
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !tbaa !63, !alias.scope !1470, !noalias !1467
  store i64 0, ptr %i.bc, align 8, !tbaa !55, !alias.scope !1470, !noalias !1467
  store i8 0, ptr %i.au, align 8, !tbaa !96, !alias.scope !1470, !noalias !1467
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !99
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !54
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !99
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #33
  invoke void @__cxa_rethrow() #36
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #35
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1473, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1475, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !254 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !254 ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.bq)
  %6 = call noundef float @llvm.cos.f32(float %i.bq)
  %i.br = fmul float %i.bo, %6
  %i.bs = load ptr, ptr %3, align 8, !tbaa !287
  %i.bt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.br, ptr %i.bv, align 4, !tbaa !254
  %i.bw = fmul float %i.bo, %5
  %i.bx = load ptr, ptr %3, align 8, !tbaa !287
  %i.by = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %.noexc25.i.i.i unwind label %bb.ak

.noexc25.i.i.i:                                   ; preds = %bb.k
  %i.bz = icmp eq i32 %i.by, 3
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !288

bb.l:                                             ; preds = %.noexc25.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc25.i.i.i
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.bw, ptr %i.cb, align 4, !tbaa !254
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !279
  %i.cd = add nsw i32 %i.cc, 1                    ; 7 uses
  store i32 %i.cd, ptr %i.e, align 4, !tbaa !279
  %i.ce = load i32, ptr %i.m, align 8, !tbaa !309
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cg = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ci = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cl = getelementptr inbounds i8, ptr %i.ca, i64 %i.ck
  store ptr %i.cl, ptr %i.l, align 8, !tbaa !289
  %i.cm = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.cd, %i.cm
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !232

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.cn = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cq = getelementptr inbounds i8, ptr %i.ca, i64 %i.cp
  store ptr %i.cq, ptr %i.l, align 8, !tbaa !289
  %i.cr = load i32, ptr %i.s, align 8, !tbaa !313
  %i.cs = icmp slt i32 %i.cd, %i.cr               ; 3 uses
  %i.ct = load i32, ptr %i.t, align 4
  %i.cu = icmp sge i32 %i.cd, %i.ct
  %not..i.i10.i.i = xor i1 %i.cs, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cu, !prof !315
  %i.cv = load ptr, ptr %i.u, align 8
  %i.cw = icmp eq ptr %i.cv, null
  %i.cx = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.cw, !prof !315
  br i1 %i.cx, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %3, align 8, !tbaa !287
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !280
  %i.da = load i32, ptr %i.i, align 4, !tbaa !282
  %i.db = load i32, ptr %i.z, align 8, !tbaa !316
  %i.dc = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i32 noundef %i.cd, i32 noundef %i.cz, i32 noundef %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.cs, i32 noundef %i.db)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dd = zext i1 %i.cs to i8
  store ptr %i.dc, ptr %i.l, align 8, !tbaa !289
  store i8 %i.dd, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.de = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.de, ptr %i.e, align 4, !tbaa !279
  %i.df = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  store i32 %i.dg, ptr %i.g, align 8, !tbaa !280
  %i.dh = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.dg, %i.dh
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.di, ptr %i.g, align 8, !tbaa !280
  %i.dj = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dj, ptr %i.i, align 4, !tbaa !282
  %i.dk = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.dj, %i.dk
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.dl = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dj, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dm = phi i32 [ %i.dg, %bb.u ], [ %i.di, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.dn = phi i32 [ %i.de, %bb.u ], [ %i.de, %bb.v ], [ %i.cd, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.dn, i32 noundef %i.dm, i32 noundef %i.dl)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.do = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.dp = add nsw i32 %i.do, 1                    ; 7 uses
  store i32 %i.dp, ptr %i.aa, align 4, !tbaa !279
  %i.dq = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ds = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.du = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dw = load i64, ptr %i.am, align 8, !tbaa !312
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  store ptr %i.dy, ptr %i.k, align 8, !tbaa !289
  %i.dz = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.dp, %i.dz
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ea = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load i64, ptr %i.am, align 8, !tbaa !312
  %i.ed = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.ec
  store ptr %i.ee, ptr %i.k, align 8, !tbaa !289
  %i.ef = load i32, ptr %i.an, align 8, !tbaa !313
  %i.eg = icmp slt i32 %i.dp, %i.ef               ; 3 uses
  %i.eh = load i32, ptr %i.ao, align 4
  %i.ei = icmp sge i32 %i.dp, %i.eh
  %not..i.i.i.i = xor i1 %i.eg, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ei, !prof !315
  %i.ej = load ptr, ptr %i.ap, align 8
  %i.ek = icmp eq ptr %i.ej, null
  %i.el = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ek, !prof !315
  br i1 %i.el, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %2, align 8, !tbaa !287
  %i.en = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.eo = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.ep = load i32, ptr %i.au, align 8, !tbaa !316
  %i.eq = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i32 noundef %i.dp, i32 noundef %i.en, i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.eg, i32 noundef %i.ep)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.er = zext i1 %i.eg to i8
  store ptr %i.eq, ptr %i.k, align 8, !tbaa !289
  store i8 %i.er, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.es = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.es, ptr %i.aa, align 4, !tbaa !279
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.eu = add nsw i32 %i.et, 1                    ; 3 uses
  store i32 %i.eu, ptr %i.ad, align 8, !tbaa !280
  %i.ev = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.eu, %i.ev
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ew, ptr %i.ad, align 8, !tbaa !280
  %i.ex = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.ex, ptr %i.ag, align 4, !tbaa !282
  %i.ey = load i32, ptr %i.ah, align 8, !tbaa !283
  %.not1.i.i.i = icmp slt i32 %i.ex, %i.ey
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ai, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.ez = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.ex, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.fa = phi i32 [ %i.eu, %bb.af ], [ %i.ew, %bb.ag ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.fb = phi i32 [ %i.es, %bb.af ], [ %i.es, %bb.ag ], [ %i.dp, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fb, i32 noundef %i.fa, i32 noundef %i.ez)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.ai, %bb.ah, %.noexc3.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.aj:                                            ; preds = %bb.j, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.l, %bb.k
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.t, %bb.q
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.fe, %bb.al ], [ %i.fd, %bb.ak ], [ %i.fc, %bb.aj ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.i
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i, %bb.am ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn17.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS0_8ImageBufERKS2_NS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1476
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #8

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1477, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1479, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !96
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x3B808081      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x3B808081      ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.bu)
  %6 = call noundef float @llvm.cos.f32(float %i.bu)
  %i.bv = fmul nnan float %i.bq, %6
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.bv, ptr %i.bz, align 4, !tbaa !254
  %i.ca = fmul nnan float %i.bq, %5
  %i.cb = load ptr, ptr %3, align 8, !tbaa !287
  %i.cc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %.noexc25.i.i.i unwind label %bb.ak

.noexc25.i.i.i:                                   ; preds = %bb.k
  %i.cd = icmp eq i32 %i.cc, 3
  br i1 %i.cd, label %bb.l, label %bb.m, !prof !288

bb.l:                                             ; preds = %.noexc25.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc25.i.i.i
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store float %i.ca, ptr %i.cf, align 4, !tbaa !254
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ch = add nsw i32 %i.cg, 1                    ; 7 uses
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !279
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !309
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ck = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cm = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cp = getelementptr inbounds i8, ptr %i.ce, i64 %i.co
  store ptr %i.cp, ptr %i.l, align 8, !tbaa !289
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.ch, %i.cq
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !232

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.cr = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cu = getelementptr inbounds i8, ptr %i.ce, i64 %i.ct
  store ptr %i.cu, ptr %i.l, align 8, !tbaa !289
  %i.cv = load i32, ptr %i.s, align 8, !tbaa !313
  %i.cw = icmp slt i32 %i.ch, %i.cv               ; 3 uses
  %i.cx = load i32, ptr %i.t, align 4
  %i.cy = icmp sge i32 %i.ch, %i.cx
  %not..i.i10.i.i = xor i1 %i.cw, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cy, !prof !315
  %i.cz = load ptr, ptr %i.u, align 8
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.da, !prof !315
  br i1 %i.db, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %3, align 8, !tbaa !287
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !280
  %i.de = load i32, ptr %i.i, align 4, !tbaa !282
  %i.df = load i32, ptr %i.z, align 8, !tbaa !316
  %i.dg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i32 noundef %i.ch, i32 noundef %i.dd, i32 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.cw, i32 noundef %i.df)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dh = zext i1 %i.cw to i8
  store ptr %i.dg, ptr %i.l, align 8, !tbaa !289
  store i8 %i.dh, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.di, ptr %i.e, align 4, !tbaa !279
  %i.dj = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  store i32 %i.dk, ptr %i.g, align 8, !tbaa !280
  %i.dl = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.dk, %i.dl
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.dm, ptr %i.g, align 8, !tbaa !280
  %i.dn = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dn, ptr %i.i, align 4, !tbaa !282
  %i.do = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.dn, %i.do
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.dp = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dn, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dq = phi i32 [ %i.dk, %bb.u ], [ %i.dm, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.dr = phi i32 [ %i.di, %bb.u ], [ %i.di, %bb.v ], [ %i.ch, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.dr, i32 noundef %i.dq, i32 noundef %i.dp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ds = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.dt = add nsw i32 %i.ds, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.aa, align 4, !tbaa !279
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.dw = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.dy = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ea = load i64, ptr %i.am, align 8, !tbaa !312
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.ea
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !289
  %i.ed = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.dt, %i.ed
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ee = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load i64, ptr %i.am, align 8, !tbaa !312
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.eg
  store ptr %i.ei, ptr %i.k, align 8, !tbaa !289
  %i.ej = load i32, ptr %i.an, align 8, !tbaa !313
  %i.ek = icmp slt i32 %i.dt, %i.ej               ; 3 uses
  %i.el = load i32, ptr %i.ao, align 4
  %i.em = icmp sge i32 %i.dt, %i.el
  %not..i.i.i.i = xor i1 %i.ek, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.em, !prof !315
  %i.en = load ptr, ptr %i.ap, align 8
  %i.eo = icmp eq ptr %i.en, null
  %i.ep = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.eo, !prof !315
  br i1 %i.ep, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load ptr, ptr %2, align 8, !tbaa !287
  %i.er = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.es = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.et = load i32, ptr %i.au, align 8, !tbaa !316
  %i.eu = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i32 noundef %i.dt, i32 noundef %i.er, i32 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ek, i32 noundef %i.et)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.ev = zext i1 %i.ek to i8
  store ptr %i.eu, ptr %i.k, align 8, !tbaa !289
  store i8 %i.ev, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ew = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ew, ptr %i.aa, align 4, !tbaa !279
  %i.ex = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.ey = add nsw i32 %i.ex, 1                    ; 3 uses
  store i32 %i.ey, ptr %i.ad, align 8, !tbaa !280
  %i.ez = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.ey, %i.ez
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.fa, ptr %i.ad, align 8, !tbaa !280
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1480, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1482, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !1164 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 13
  %i.br = and i32 %i.bq, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i = sext i16 %i.bo to i32
  %i.bs = and i32 %.signext.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.bt = icmp samesign ugt i32 %i.br, 8388607
  br i1 %i.bt, label %bb.j, label %bb.m, !prof !232

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bu = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bv = icmp samesign ult i32 %i.br, 260046848
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !232

bb.k:                                             ; preds = %bb.j
  %i.bw = add nuw nsw i32 %i.bu, 939524096
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bx = or i32 %i.bu, 2139095040
  br label %bb.o

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bz = add nsw i32 %i.by, -8                   ; 2 uses
  %i.ca = shl i32 %i.br, %i.bz
  %i.cb = or i32 %i.bs, %i.ca
  %i.cc = or i32 %i.cb, 947912704
  %i.cd = shl nuw nsw i32 %i.bz, 23
  %i.ce = sub nuw i32 %i.cc, %i.cd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.k ], [ %i.bx, %bb.l ], [ %i.ce, %bb.n ], [ %i.bs, %bb.m ]
  %i.cf = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i to float ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !1164 ; 2 uses
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 13
  %i.ck = and i32 %i.cj, 268427264                ; 6 uses
  %.signext.i.i.i.i.i22.i.i.i = sext i16 %i.ch to i32
  %i.cl = and i32 %.signext.i.i.i.i.i22.i.i.i, -2147483648 ; 3 uses
  %i.cm = icmp samesign ugt i32 %i.ck, 8388607
  br i1 %i.cm, label %bb.p, label %bb.s, !prof !232

bb.p:                                             ; preds = %bb.o
  %i.cn = or disjoint i32 %i.ck, %i.cl            ; 2 uses
  %i.co = icmp samesign ult i32 %i.ck, 260046848
  br i1 %i.co, label %bb.q, label %bb.r, !prof !232

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw nsw i32 %i.cn, 939524096
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cq = or i32 %i.cn, 2139095040
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %.not.i.i.i.i.i23.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i23.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ck, i1 true)
  %i.cs = add nsw i32 %i.cr, -8                   ; 2 uses
  %i.ct = shl i32 %i.ck, %i.cs
  %i.cu = or i32 %i.cl, %i.ct
  %i.cv = or i32 %i.cu, 947912704
  %i.cw = shl nuw nsw i32 %i.cs, 23
  %i.cx = sub nuw i32 %i.cv, %i.cw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i24.i.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cq, %bb.r ], [ %i.cx, %bb.t ], [ %i.cl, %bb.s ]
  %i.cy = bitcast i32 %.sroa.0.0.i.i.i.i.i24.i.i.i to float ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.cy)
  %6 = call noundef float @llvm.cos.f32(float %i.cy)
  %i.cz = fmul float %6, %i.cf
  %i.da = load ptr, ptr %3, align 8, !tbaa !287
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc.i.i.i unwind label %bb.av

.noexc.i.i.i:                                     ; preds = %bb.u
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.v, label %bb.w, !prof !288

bb.v:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.w unwind label %bb.av

bb.w:                                             ; preds = %bb.v, %.noexc.i.i.i
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.cz, ptr %i.dd, align 4, !tbaa !254
  %i.de = fmul float %5, %i.cf
  %i.df = load ptr, ptr %3, align 8, !tbaa !287
  %i.dg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df)
          to label %.noexc29.i.i.i unwind label %bb.aw

.noexc29.i.i.i:                                   ; preds = %bb.w
  %i.dh = icmp eq i32 %i.dg, 3
  br i1 %i.dh, label %bb.x, label %bb.y, !prof !288

bb.x:                                             ; preds = %.noexc29.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.y unwind label %bb.aw

bb.y:                                             ; preds = %bb.x, %.noexc29.i.i.i
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store float %i.de, ptr %i.dj, align 4, !tbaa !254
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !279
  %i.dl = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dl, ptr %i.e, align 4, !tbaa !279
  %i.dm = load i32, ptr %i.m, align 8, !tbaa !309
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.do = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.aa, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.z
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load i64, ptr %i.r, align 8, !tbaa !312
  %i.dt = getelementptr inbounds i8, ptr %i.di, i64 %i.ds
  store ptr %i.dt, ptr %i.l, align 8, !tbaa !289
  %i.du = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.dl, %i.du
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.ac, !prof !232

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.ax

bb.ad:                                            ; preds = %bb.aa
  %i.dv = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = load i64, ptr %i.r, align 8, !tbaa !312
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 %i.dx
  store ptr %i.dy, ptr %i.l, align 8, !tbaa !289
  %i.dz = load i32, ptr %i.s, align 8, !tbaa !313
  %i.ea = icmp slt i32 %i.dl, %i.dz               ; 3 uses
  %i.eb = load i32, ptr %i.t, align 4
  %i.ec = icmp sge i32 %i.dl, %i.eb
  %not..i.i10.i.i = xor i1 %i.ea, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.ec, !prof !315
  %i.ed = load ptr, ptr %i.u, align 8
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.ee, !prof !315
  br i1 %i.ef, label %bb.af, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.af:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %3, align 8, !tbaa !287
  %i.eh = load i32, ptr %i.g, align 8, !tbaa !280
  %i.ei = load i32, ptr %i.i, align 4, !tbaa !282
  %i.ej = load i32, ptr %i.z, align 8, !tbaa !316
  %i.ek = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i32 noundef %i.dl, i32 noundef %i.eh, i32 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.ea, i32 noundef %i.ej)
          to label %.noexc14.i.i unwind label %bb.ax

.noexc14.i.i:                                     ; preds = %bb.af
  %i.el = zext i1 %i.ea to i8
  store ptr %i.ek, ptr %i.l, align 8, !tbaa !289
  store i8 %i.el, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.ag:                                            ; preds = %bb.y
  %i.em = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.em, ptr %i.e, align 4, !tbaa !279
  %i.en = load i32, ptr %i.g, align 8, !tbaa !280
  %i.eo = add nsw i32 %i.en, 1                    ; 3 uses
  store i32 %i.eo, ptr %i.g, align 8, !tbaa !280
  %i.ep = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.eo, %i.ep
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.eq, ptr %i.g, align 8, !tbaa !280
  %i.er = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.er, ptr %i.i, align 4, !tbaa !282
  %i.es = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.er, %i.es
  br i1 %.not1.i6.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i7.i.i
  %i.et = phi i32 [ %.pre17.i.i, %bb.ag ], [ %i.er, %bb.ah ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.eu = phi i32 [ %i.eo, %bb.ag ], [ %i.eq, %bb.ah ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ev = phi i32 [ %i.em, %bb.ag ], [ %i.em, %bb.ah ], [ %i.dl, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ev, i32 noundef %i.eu, i32 noundef %i.et)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.ax

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.aj, %bb.ai, %.noexc14.i.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ew = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.ex = add nsw i32 %i.ew, 1                    ; 7 uses
  store i32 %i.ex, ptr %i.aa, align 4, !tbaa !279
  %i.ey = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.fa = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.al, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fc = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fe = load i64, ptr %i.am, align 8, !tbaa !312
  %i.ff = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.fe
  store ptr %i.fg, ptr %i.k, align 8, !tbaa !289
  %i.fh = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.ex, %i.fh
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.an, !prof !232

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.ax

bb.ao:                                            ; preds = %bb.al
  %i.fi = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = load i64, ptr %i.am, align 8, !tbaa !312
  %i.fl = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk
  store ptr %i.fm, ptr %i.k, align 8, !tbaa !289
  %i.fn = load i32, ptr %i.an, align 8, !tbaa !313
  %i.fo = icmp slt i32 %i.ex, %i.fn               ; 3 uses
  %i.fp = load i32, ptr %i.ao, align 4
  %i.fq = icmp sge i32 %i.ex, %i.fp
  %not..i.i.i.i = xor i1 %i.fo, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.fq, !prof !315
  %i.fr = load ptr, ptr %i.ap, align 8
  %i.fs = icmp eq ptr %i.fr, null
  %i.ft = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.fs, !prof !315
  br i1 %i.ft, label %bb.aq, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load ptr, ptr %2, align 8, !tbaa !287
  %i.fv = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.fw = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.fx = load i32, ptr %i.au, align 8, !tbaa !316
  %i.fy = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i32 noundef %i.ex, i32 noundef %i.fv, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.fo, i32 noundef %i.fx)
          to label %.noexc3.i.i unwind label %bb.ax

.noexc3.i.i:                                      ; preds = %bb.aq
  %i.fz = zext i1 %i.fo to i8
  store ptr %i.fy, ptr %i.k, align 8, !tbaa !289
  store i8 %i.fz, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ar:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ga = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ga, ptr %i.aa, align 4, !tbaa !279
  %i.gb = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.gc = add nsw i32 %i.gb, 1                    ; 3 uses
  store i32 %i.gc, ptr %i.ad, align 8, !tbaa !280
  %i.gd = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.gc, %i.gd
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ge, ptr %i.ad, align 8, !tbaa !280
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.gh = phi i32 [ %.pre19.i.i, %bb.ar ], [ %i.gf, %bb.as ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.gi = phi i32 [ %i.gc, %bb.ar ], [ %i.ge, %bb.as ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.gj = phi i32 [ %i.ga, %bb.ar ], [ %i.ga, %bb.as ], [ %i.ex, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gj, i32 noundef %i.gi, i32 noundef %i.gh)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.ax

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.au, %bb.at, %.noexc3.i.i, %bb.ap, %bb.ao, %bb.an, %bb.am
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.av:                                            ; preds = %bb.v, %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.x, %bb.w
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.aq, %bb.an, %bb.aj, %bb.af, %bb.ac
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.gm, %bb.ax ], [ %i.gl, %bb.aw ], [ %i.gk, %bb.av ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.i
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i, %bb.ay ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn17.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1476
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1483, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1485, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !1177
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x37800080      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !1177
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x37800080      ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.bu)
  %6 = call noundef float @llvm.cos.f32(float %i.bu)
  %i.bv = fmul nnan float %i.bq, %6
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.bv, ptr %i.bz, align 4, !tbaa !254
  %i.ca = fmul nnan float %i.bq, %5
  %i.cb = load ptr, ptr %3, align 8, !tbaa !287
  %i.cc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %.noexc25.i.i.i unwind label %bb.ak

.noexc25.i.i.i:                                   ; preds = %bb.k
  %i.cd = icmp eq i32 %i.cc, 3
  br i1 %i.cd, label %bb.l, label %bb.m, !prof !288

bb.l:                                             ; preds = %.noexc25.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc25.i.i.i
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store float %i.ca, ptr %i.cf, align 4, !tbaa !254
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ch = add nsw i32 %i.cg, 1                    ; 7 uses
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !279
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !309
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ck = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cm = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cp = getelementptr inbounds i8, ptr %i.ce, i64 %i.co
  store ptr %i.cp, ptr %i.l, align 8, !tbaa !289
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.ch, %i.cq
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !232

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.cr = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !312
  %i.cu = getelementptr inbounds i8, ptr %i.ce, i64 %i.ct
  store ptr %i.cu, ptr %i.l, align 8, !tbaa !289
  %i.cv = load i32, ptr %i.s, align 8, !tbaa !313
  %i.cw = icmp slt i32 %i.ch, %i.cv               ; 3 uses
  %i.cx = load i32, ptr %i.t, align 4
  %i.cy = icmp sge i32 %i.ch, %i.cx
  %not..i.i10.i.i = xor i1 %i.cw, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cy, !prof !315
  %i.cz = load ptr, ptr %i.u, align 8
  %i.da = icmp eq ptr %i.cz, null
  %i.db = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.da, !prof !315
  br i1 %i.db, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %3, align 8, !tbaa !287
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !280
  %i.de = load i32, ptr %i.i, align 4, !tbaa !282
  %i.df = load i32, ptr %i.z, align 8, !tbaa !316
  %i.dg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i32 noundef %i.ch, i32 noundef %i.dd, i32 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.cw, i32 noundef %i.df)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dh = zext i1 %i.cw to i8
  store ptr %i.dg, ptr %i.l, align 8, !tbaa !289
  store i8 %i.dh, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.di, ptr %i.e, align 4, !tbaa !279
  %i.dj = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  store i32 %i.dk, ptr %i.g, align 8, !tbaa !280
  %i.dl = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.dk, %i.dl
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.dm, ptr %i.g, align 8, !tbaa !280
  %i.dn = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dn, ptr %i.i, align 4, !tbaa !282
  %i.do = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.dn, %i.do
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.dp = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dn, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dq = phi i32 [ %i.dk, %bb.u ], [ %i.dm, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.dr = phi i32 [ %i.di, %bb.u ], [ %i.di, %bb.v ], [ %i.ch, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.dr, i32 noundef %i.dq, i32 noundef %i.dp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ds = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.dt = add nsw i32 %i.ds, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.aa, align 4, !tbaa !279
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.dw = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.dy = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ea = load i64, ptr %i.am, align 8, !tbaa !312
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.ea
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !289
  %i.ed = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.dt, %i.ed
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ee = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load i64, ptr %i.am, align 8, !tbaa !312
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.eg
  store ptr %i.ei, ptr %i.k, align 8, !tbaa !289
  %i.ej = load i32, ptr %i.an, align 8, !tbaa !313
  %i.ek = icmp slt i32 %i.dt, %i.ej               ; 3 uses
  %i.el = load i32, ptr %i.ao, align 4
  %i.em = icmp sge i32 %i.dt, %i.el
  %not..i.i.i.i = xor i1 %i.ek, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.em, !prof !315
  %i.en = load ptr, ptr %i.ap, align 8
  %i.eo = icmp eq ptr %i.en, null
  %i.ep = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.eo, !prof !315
  br i1 %i.ep, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load ptr, ptr %2, align 8, !tbaa !287
  %i.er = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.es = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.et = load i32, ptr %i.au, align 8, !tbaa !316
  %i.eu = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i32 noundef %i.dt, i32 noundef %i.er, i32 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ek, i32 noundef %i.et)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.ev = zext i1 %i.ek to i8
  store ptr %i.eu, ptr %i.k, align 8, !tbaa !289
  store i8 %i.ev, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ew = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ew, ptr %i.aa, align 4, !tbaa !279
  %i.ex = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.ey = add nsw i32 %i.ex, 1                    ; 3 uses
  store i32 %i.ey, ptr %i.ad, align 8, !tbaa !280
  %i.ez = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.ey, %i.ez
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.fa, ptr %i.ad, align 8, !tbaa !280
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fd = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.fb, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.fe = phi i32 [ %i.ey, %bb.af ], [ %i.fa, %bb.ag ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.ff = phi i32 [ %i.ew, %bb.af ], [ %i.ew, %bb.ag ], [ %i.dt, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ff, i32 noundef %i.fe, i32 noundef %i.fd)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.ai, %bb.ah, %.noexc3.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.aj:                                            ; preds = %bb.j, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.l, %bb.k
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.t, %bb.q
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.al ], [ %i.fh, %bb.ak ], [ %i.fg, %bb.aj ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.i
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i, %bb.am ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn17.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS0_8ImageBufERKS2_NS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1476
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.169", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1486, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1488, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !96
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x3B808081      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x3B808081      ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.bu)
  %6 = call noundef float @llvm.cos.f32(float %i.bu)
  %i.bv = fmul nnan float %i.bq, %6
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.ca = fmul nnan float %i.bv, 2.550000e+02     ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cd, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cd, float 0.000000e+00 ; 2 uses
  %i.ce = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !96
  %i.cg = fmul nnan float %i.bq, %5
  %i.ch = load ptr, ptr %3, align 8, !tbaa !287
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28.i.i.i unwind label %bb.ak

.noexc28.i.i.i:                                   ; preds = %bb.k
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !288

bb.l:                                             ; preds = %.noexc28.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc28.i.i.i
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = fmul nnan float %i.cg, 2.550000e+02     ; 2 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -5.000000e-01, float 5.000000e-01
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
  %.inv.i.i.i.i.i25.i.i.i = fcmp oge float %i.cp, 0.000000e+00
  %.0.i.i.i.i.i.i26.i.i.i = select i1 %.inv.i.i.i.i.i25.i.i.i, float %i.cp, float 0.000000e+00 ; 2 uses
  %i.cq = fcmp ogt float %.0.i.i.i.i.i.i26.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i27.i.i.i = select i1 %i.cq, float 2.550000e+02, float %.0.i.i.i.i.i.i26.i.i.i
  %i.cr = fptoui float %.1.i.i.i.i.i.i27.i.i.i to i8
  store i8 %i.cr, ptr %i.cl, align 1, !tbaa !96
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ct = add nsw i32 %i.cs, 1                    ; 7 uses
  store i32 %i.ct, ptr %i.e, align 4, !tbaa !279
  %i.cu = load i32, ptr %i.m, align 8, !tbaa !309
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cw = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cy = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.r, align 8, !tbaa !312
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.da
  store ptr %i.dc, ptr %i.l, align 8, !tbaa !289
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.ct, %i.dd
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !232

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.de = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !312
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.dg
  store ptr %i.di, ptr %i.l, align 8, !tbaa !289
  %i.dj = load i32, ptr %i.s, align 8, !tbaa !313
  %i.dk = icmp slt i32 %i.ct, %i.dj               ; 3 uses
  %i.dl = load i32, ptr %i.t, align 4
  %i.dm = icmp sge i32 %i.ct, %i.dl
  %not..i.i10.i.i = xor i1 %i.dk, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.dm, !prof !315
  %i.dn = load ptr, ptr %i.u, align 8
  %i.do = icmp eq ptr %i.dn, null
  %i.dp = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.do, !prof !315
  br i1 %i.dp, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.t:                                             ; preds = %bb.s
  %i.dq = load ptr, ptr %3, align 8, !tbaa !287
  %i.dr = load i32, ptr %i.g, align 8, !tbaa !280
  %i.ds = load i32, ptr %i.i, align 4, !tbaa !282
  %i.dt = load i32, ptr %i.z, align 8, !tbaa !316
  %i.du = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i32 noundef %i.ct, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.dk, i32 noundef %i.dt)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dv = zext i1 %i.dk to i8
  store ptr %i.du, ptr %i.l, align 8, !tbaa !289
  store i8 %i.dv, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.dw = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.dw, ptr %i.e, align 4, !tbaa !279
  %i.dx = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dy = add nsw i32 %i.dx, 1                    ; 3 uses
  store i32 %i.dy, ptr %i.g, align 8, !tbaa !280
  %i.dz = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.dy, %i.dz
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ea, ptr %i.g, align 8, !tbaa !280
  %i.eb = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.eb, ptr %i.i, align 4, !tbaa !282
  %i.ec = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.eb, %i.ec
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.ed = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.eb, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.ee = phi i32 [ %i.dy, %bb.u ], [ %i.ea, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ef = phi i32 [ %i.dw, %bb.u ], [ %i.dw, %bb.v ], [ %i.ct, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ef, i32 noundef %i.ee, i32 noundef %i.ed)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.eg = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.eh = add nsw i32 %i.eg, 1                    ; 7 uses
  store i32 %i.eh, ptr %i.aa, align 4, !tbaa !279
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.ej = icmp slt i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ek = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.em = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eo = load i64, ptr %i.am, align 8, !tbaa !312
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.eo
  store ptr %i.eq, ptr %i.k, align 8, !tbaa !289
  %i.er = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.eh, %i.er
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.es = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load i64, ptr %i.am, align 8, !tbaa !312
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.eu
  store ptr %i.ew, ptr %i.k, align 8, !tbaa !289
  %i.ex = load i32, ptr %i.an, align 8, !tbaa !313
  %i.ey = icmp slt i32 %i.eh, %i.ex               ; 3 uses
  %i.ez = load i32, ptr %i.ao, align 4
  %i.fa = icmp sge i32 %i.eh, %i.ez
  %not..i.i.i.i = xor i1 %i.ey, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.fa, !prof !315
  %i.fb = load ptr, ptr %i.ap, align 8
  %i.fc = icmp eq ptr %i.fb, null
  %i.fd = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.fc, !prof !315
  br i1 %i.fd, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr %2, align 8, !tbaa !287
  %i.ff = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.fg = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.fh = load i32, ptr %i.au, align 8, !tbaa !316
  %i.fi = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i32 noundef %i.eh, i32 noundef %i.ff, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ey, i32 noundef %i.fh)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.fj = zext i1 %i.ey to i8
  store ptr %i.fi, ptr %i.k, align 8, !tbaa !289
  store i8 %i.fj, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.fk = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.fk, ptr %i.aa, align 4, !tbaa !279
  %i.fl = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.fm = add nsw i32 %i.fl, 1                    ; 3 uses
  store i32 %i.fm, ptr %i.ad, align 8, !tbaa !280
  %i.fn = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.fm, %i.fn
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.fo, ptr %i.ad, align 8, !tbaa !280
  %i.fp = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fp, ptr %i.ag, align 4, !tbaa !282
  %i.fq = load i32, ptr %i.ah, align 8, !tbaa !283
  %.not1.i.i.i = icmp slt i32 %i.fp, %i.fq
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1489, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1491, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !1164 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 13
  %i.br = and i32 %i.bq, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i = sext i16 %i.bo to i32
  %i.bs = and i32 %.signext.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.bt = icmp samesign ugt i32 %i.br, 8388607
  br i1 %i.bt, label %bb.j, label %bb.m, !prof !232

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bu = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bv = icmp samesign ult i32 %i.br, 260046848
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !232

bb.k:                                             ; preds = %bb.j
  %i.bw = add nuw nsw i32 %i.bu, 939524096
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bx = or i32 %i.bu, 2139095040
  br label %bb.o

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bz = add nsw i32 %i.by, -8                   ; 2 uses
  %i.ca = shl i32 %i.br, %i.bz
  %i.cb = or i32 %i.bs, %i.ca
  %i.cc = or i32 %i.cb, 947912704
  %i.cd = shl nuw nsw i32 %i.bz, 23
  %i.ce = sub nuw i32 %i.cc, %i.cd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.k ], [ %i.bx, %bb.l ], [ %i.ce, %bb.n ], [ %i.bs, %bb.m ]
  %i.cf = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i to float ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !1164 ; 2 uses
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 13
  %i.ck = and i32 %i.cj, 268427264                ; 6 uses
  %.signext.i.i.i.i.i22.i.i.i = sext i16 %i.ch to i32
  %i.cl = and i32 %.signext.i.i.i.i.i22.i.i.i, -2147483648 ; 3 uses
  %i.cm = icmp samesign ugt i32 %i.ck, 8388607
  br i1 %i.cm, label %bb.p, label %bb.s, !prof !232

bb.p:                                             ; preds = %bb.o
  %i.cn = or disjoint i32 %i.ck, %i.cl            ; 2 uses
  %i.co = icmp samesign ult i32 %i.ck, 260046848
  br i1 %i.co, label %bb.q, label %bb.r, !prof !232

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw nsw i32 %i.cn, 939524096
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cq = or i32 %i.cn, 2139095040
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %.not.i.i.i.i.i23.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i23.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ck, i1 true)
  %i.cs = add nsw i32 %i.cr, -8                   ; 2 uses
  %i.ct = shl i32 %i.ck, %i.cs
  %i.cu = or i32 %i.cl, %i.ct
  %i.cv = or i32 %i.cu, 947912704
  %i.cw = shl nuw nsw i32 %i.cs, 23
  %i.cx = sub nuw i32 %i.cv, %i.cw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i24.i.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cq, %bb.r ], [ %i.cx, %bb.t ], [ %i.cl, %bb.s ]
  %i.cy = bitcast i32 %.sroa.0.0.i.i.i.i.i24.i.i.i to float ; 2 uses
  %5 = call noundef float @llvm.cos.f32(float %i.cy)
  %i.cz = fmul float %5, %i.cf                    ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !287
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc23.i.i unwind label %bb.bo

.noexc23.i.i:                                     ; preds = %bb.u
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.v, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i19.i.i, !prof !288

bb.v:                                             ; preds = %.noexc23.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i19.i.i unwind label %bb.bo

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i19.i.i: ; preds = %bb.v, %.noexc23.i.i
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.de = bitcast float %i.cz to i32
  %i.df = call float @llvm.fabs.f32(float %i.cz)
  %i.dg = bitcast float %i.df to i32              ; 10 uses
  %i.dh = lshr i32 %i.de, 16                      ; 3 uses
  %i.di = trunc nuw i32 %i.dh to i16
  %i.dj = and i16 %i.di, -32768                   ; 3 uses
  %i.dk = icmp samesign ugt i32 %i.dg, 947912703
  br i1 %i.dk, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i19.i.i
  %i.dl = icmp samesign ugt i32 %i.dg, 2139095039
  br i1 %i.dl, label %bb.x, label %bb.z, !prof !288

bb.x:                                             ; preds = %bb.w
  %i.dm = or disjoint i16 %i.dj, 31744            ; 2 uses
  %i.dn = icmp eq i32 %i.dg, 2139095040
  br i1 %i.dn, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = lshr i32 %i.dg, 13
  %i.dp = and i32 %i.do, 1023                     ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i16
  %i.ds = trunc nuw nsw i32 %i.dp to i16
  %i.dt = or i16 %i.ds, %i.dr
  %i.du = or disjoint i16 %i.dt, %i.dm
  br label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.dv = icmp samesign ugt i32 %i.dg, 1199566847
  br i1 %i.dv, label %bb.aa, label %bb.ab, !prof !288

bb.aa:                                            ; preds = %bb.z
  %i.dw = or disjoint i16 %i.dj, 31744
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.dx = add nuw nsw i32 %i.dg, 134221823
  %i.dy = lshr i32 %i.dg, 13
  %i.dz = and i32 %i.dy, 1
  %i.ea = add nuw nsw i32 %i.dx, %i.dz
  %i.eb = lshr i32 %i.ea, 13
  %i.ec = and i32 %i.dh, 32768
  %i.ed = or i32 %i.eb, %i.ec
  %i.ee = trunc i32 %i.ed to i16
  br label %bb.ag

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i19.i.i
  %i.ef = icmp samesign ult i32 %i.dg, 855638017
  br i1 %i.ef, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = lshr i32 %i.dg, 23                      ; 2 uses
  %i.eh = sub nuw nsw i32 126, %i.eg
  %i.ei = and i32 %i.dg, 8388607
  %i.ej = or disjoint i32 %i.ei, 8388608          ; 2 uses
  %i.ek = add nsw i32 %i.eg, -94
  %i.el = shl i32 %i.ej, %i.ek                    ; 2 uses
  %i.em = lshr i32 %i.ej, %i.eh                   ; 2 uses
  %i.en = and i32 %i.dh, 32768
  %i.eo = or i32 %i.em, %i.en
  %i.ep = trunc nuw i32 %i.eo to i16              ; 2 uses
  %i.eq = icmp ugt i32 %i.el, -2147483648
  br i1 %i.eq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = icmp ne i32 %i.el, -2147483648
  %i.es = and i32 %i.em, 1
  %.not.i.i.i.i.i20.i.i = icmp eq i32 %i.es, 0
  %or.cond.i.i.i.i.i21.i.i = select i1 %i.er, i1 true, i1 %.not.i.i.i.i.i20.i.i
  br i1 %or.cond.i.i.i.i.i21.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.et = add nuw i16 %i.ep, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.0.i.i.i.i.i22.i.i = phi i16 [ %i.dj, %bb.ac ], [ %i.du, %bb.y ], [ %i.dw, %bb.aa ], [ %i.ee, %bb.ab ], [ %i.dm, %bb.x ], [ %i.et, %bb.af ], [ %i.ep, %bb.ae ]
  store i16 %.0.i.i.i.i.i22.i.i, ptr %i.dd, align 2, !tbaa !1177
  %6 = call noundef float @llvm.sin.f32(float %i.cy)
  %i.eu = fmul float %6, %i.cf                    ; 2 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !287
  %i.ew = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev)
          to label %.noexc17.i.i unwind label %bb.bp

.noexc17.i.i:                                     ; preds = %bb.ag
  %i.ex = icmp eq i32 %i.ew, 3
  br i1 %i.ex, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i, !prof !288

bb.ah:                                            ; preds = %.noexc17.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i unwind label %bb.bp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i: ; preds = %bb.ah, %.noexc17.i.i
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.ez = bitcast float %i.eu to i32
  %i.fa = call float @llvm.fabs.f32(float %i.eu)
  %i.fb = bitcast float %i.fa to i32              ; 10 uses
  %i.fc = lshr i32 %i.ez, 16                      ; 3 uses
  %i.fd = trunc nuw i32 %i.fc to i16
  %i.fe = and i16 %i.fd, -32768                   ; 3 uses
  %i.ff = icmp samesign ugt i32 %i.fb, 947912703
  br i1 %i.ff, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i
  %i.fg = icmp samesign ugt i32 %i.fb, 2139095039
  br i1 %i.fg, label %bb.aj, label %bb.al, !prof !288

bb.aj:                                            ; preds = %bb.ai
  %i.fh = or disjoint i16 %i.fe, 31744            ; 2 uses
  %i.fi = icmp eq i32 %i.fb, 2139095040
  br i1 %i.fi, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = lshr i32 %i.fb, 13
  %i.fk = and i32 %i.fj, 1023                     ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i16
  %i.fn = trunc nuw nsw i32 %i.fk to i16
  %i.fo = or i16 %i.fn, %i.fm
  %i.fp = or disjoint i16 %i.fo, %i.fh
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i

bb.al:                                            ; preds = %bb.ai
  %i.fq = icmp samesign ugt i32 %i.fb, 1199566847
  br i1 %i.fq, label %bb.am, label %bb.an, !prof !288

bb.am:                                            ; preds = %bb.al
  %i.fr = or disjoint i16 %i.fe, 31744
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fs = add nuw nsw i32 %i.fb, 134221823
  %i.ft = lshr i32 %i.fb, 13
  %i.fu = and i32 %i.ft, 1
  %i.fv = add nuw nsw i32 %i.fs, %i.fu
  %i.fw = lshr i32 %i.fv, 13
  %i.fx = and i32 %i.fc, 32768
  %i.fy = or i32 %i.fw, %i.fx
  %i.fz = trunc i32 %i.fy to i16
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i
  %i.ga = icmp samesign ult i32 %i.fb, 855638017
  br i1 %i.ga, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gb = lshr i32 %i.fb, 23                      ; 2 uses
  %i.gc = sub nuw nsw i32 126, %i.gb
  %i.gd = and i32 %i.fb, 8388607
  %i.ge = or disjoint i32 %i.gd, 8388608          ; 2 uses
  %i.gf = add nsw i32 %i.gb, -94
  %i.gg = shl i32 %i.ge, %i.gf                    ; 2 uses
  %i.gh = lshr i32 %i.ge, %i.gc                   ; 2 uses
  %i.gi = and i32 %i.fc, 32768
  %i.gj = or i32 %i.gh, %i.gi
  %i.gk = trunc nuw i32 %i.gj to i16              ; 2 uses
  %i.gl = icmp ugt i32 %i.gg, -2147483648
  br i1 %i.gl, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = icmp ne i32 %i.gg, -2147483648
  %i.gn = and i32 %i.gh, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.gn, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %i.gm, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.go = add nuw i16 %i.gk, 1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i16 [ %i.fe, %bb.ao ], [ %i.fp, %bb.ak ], [ %i.fr, %bb.am ], [ %i.fz, %bb.an ], [ %i.fh, %bb.aj ], [ %i.go, %bb.ar ], [ %i.gk, %bb.aq ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i16 %.0.i.i.i.i.i.i.i, ptr %i.gp, align 2, !tbaa !1177
  %i.gq = load i32, ptr %i.e, align 4, !tbaa !279
  %i.gr = add nsw i32 %i.gq, 1                    ; 7 uses
  store i32 %i.gr, ptr %i.e, align 4, !tbaa !279
  %i.gs = load i32, ptr %i.m, align 8, !tbaa !309
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.as, label %bb.az

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i
  %i.gu = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.at, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.as
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.gw = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gy = load i64, ptr %i.r, align 8, !tbaa !312
  %i.gz = getelementptr inbounds i8, ptr %i.ey, i64 %i.gy
  store ptr %i.gz, ptr %i.l, align 8, !tbaa !289
  %i.ha = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.gr, %i.ha
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.av, !prof !232

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.bq

bb.aw:                                            ; preds = %bb.at
  %i.hb = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hd = load i64, ptr %i.r, align 8, !tbaa !312
  %i.he = getelementptr inbounds i8, ptr %i.ey, i64 %i.hd
  store ptr %i.he, ptr %i.l, align 8, !tbaa !289
  %i.hf = load i32, ptr %i.s, align 8, !tbaa !313
  %i.hg = icmp slt i32 %i.gr, %i.hf               ; 3 uses
  %i.hh = load i32, ptr %i.t, align 4
  %i.hi = icmp sge i32 %i.gr, %i.hh
  %not..i.i10.i.i = xor i1 %i.hg, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.hi, !prof !315
  %i.hj = load ptr, ptr %i.u, align 8
  %i.hk = icmp eq ptr %i.hj, null
  %i.hl = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.hk, !prof !315
  br i1 %i.hl, label %bb.ay, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.ay:                                            ; preds = %bb.ax
  %i.hm = load ptr, ptr %3, align 8, !tbaa !287
  %i.hn = load i32, ptr %i.g, align 8, !tbaa !280
  %i.ho = load i32, ptr %i.i, align 4, !tbaa !282
  %i.hp = load i32, ptr %i.z, align 8, !tbaa !316
  %i.hq = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i32 noundef %i.gr, i32 noundef %i.hn, i32 noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.hg, i32 noundef %i.hp)
          to label %.noexc14.i.i unwind label %bb.bq

.noexc14.i.i:                                     ; preds = %bb.ay
  %i.hr = zext i1 %i.hg to i8
  store ptr %i.hq, ptr %i.l, align 8, !tbaa !289
  store i8 %i.hr, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE14IteratorValRefaSEf.exit28.i.i.i
  %i.hs = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.hs, ptr %i.e, align 4, !tbaa !279
  %i.ht = load i32, ptr %i.g, align 8, !tbaa !280
  %i.hu = add nsw i32 %i.ht, 1                    ; 3 uses
  store i32 %i.hu, ptr %i.g, align 8, !tbaa !280
  %i.hv = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.hu, %i.hv
  %.pre26.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hw = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.hw, ptr %i.g, align 8, !tbaa !280
  %i.hx = add nsw i32 %.pre26.i.i, 1              ; 3 uses
  store i32 %i.hx, ptr %i.i, align 4, !tbaa !282
  %i.hy = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.hx, %i.hy
  br i1 %.not1.i6.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.bc:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i7.i.i
  %i.hz = phi i32 [ %.pre26.i.i, %bb.az ], [ %i.hx, %bb.ba ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.ia = phi i32 [ %i.hu, %bb.az ], [ %i.hw, %bb.ba ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ib = phi i32 [ %i.hs, %bb.az ], [ %i.hs, %bb.ba ], [ %i.gr, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ib, i32 noundef %i.ia, i32 noundef %i.hz)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.bq

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.bc, %bb.bb, %.noexc14.i.i, %bb.ax, %bb.aw, %bb.av, %bb.au
  %i.ic = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.id = add nsw i32 %i.ic, 1                    ; 7 uses
  store i32 %i.id, ptr %i.aa, align 4, !tbaa !279
  %i.ie = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %bb.bd, label %bb.bk
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.jn = phi i32 [ %.pre28.i.i, %bb.bk ], [ %i.jl, %bb.bl ], [ %.pre27.i.i, %._crit_edge.i.i.i ]
  %i.jo = phi i32 [ %i.ji, %bb.bk ], [ %i.jk, %bb.bl ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.jp = phi i32 [ %i.jg, %bb.bk ], [ %i.jg, %bb.bl ], [ %i.id, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.jp, i32 noundef %i.jo, i32 noundef %i.jn)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.bq

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.bn, %bb.bm, %.noexc3.i.i, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.bo:                                            ; preds = %bb.v, %bb.u
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %bb.ah, %bb.ag
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %bb.bc, %bb.ay, %bb.av
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.js, %bb.bq ], [ %i.jr, %bb.bp ], [ %i.jq, %bb.bo ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.i
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn17.i.i.i, %bb.br ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn17.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1476
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21polar_to_complex_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.179", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1492, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1494, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !275, !range !216, !noundef !217
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !281
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !280
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !300
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !282
  %i.be = load i32, ptr %i.j, align 8, !tbaa !283
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !284
  %.not.i20.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i20.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !1177
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x37800080      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !1177
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x37800080      ; 2 uses
  %5 = call noundef float @llvm.sin.f32(float %i.bu)
  %6 = call noundef float @llvm.cos.f32(float %i.bu)
  %i.bv = fmul nnan float %i.bq, %6
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.ca = fmul nnan float %i.bv, 6.553500e+04     ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cd, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cd, float 0.000000e+00 ; 2 uses
  %i.ce = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.cf, ptr %i.bz, align 2, !tbaa !1177
  %i.cg = fmul nnan float %i.bq, %5
  %i.ch = load ptr, ptr %3, align 8, !tbaa !287
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28.i.i.i unwind label %bb.ak

.noexc28.i.i.i:                                   ; preds = %bb.k
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !288

bb.l:                                             ; preds = %.noexc28.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc28.i.i.i
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = fmul nnan float %i.cg, 6.553500e+04     ; 2 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -5.000000e-01, float 5.000000e-01
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
  %.inv.i.i.i.i.i25.i.i.i = fcmp oge float %i.cp, 0.000000e+00
  %.0.i.i.i.i.i.i26.i.i.i = select i1 %.inv.i.i.i.i.i25.i.i.i, float %i.cp, float 0.000000e+00 ; 2 uses
  %i.cq = fcmp ogt float %.0.i.i.i.i.i.i26.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i27.i.i.i = select i1 %i.cq, float 6.553500e+04, float %.0.i.i.i.i.i.i26.i.i.i
  %i.cr = fptoui float %.1.i.i.i.i.i.i27.i.i.i to i16
  store i16 %i.cr, ptr %i.cl, align 2, !tbaa !1177
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !279
  %i.ct = add nsw i32 %i.cs, 1                    ; 7 uses
  store i32 %i.ct, ptr %i.e, align 4, !tbaa !279
  %i.cu = load i32, ptr %i.m, align 8, !tbaa !309
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cw = load i8, ptr %i.o, align 1, !tbaa !310, !range !216, !noundef !217
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !282
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cy = load i8, ptr %i.p, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.r, align 8, !tbaa !312
  %i.db = getelementptr inbounds i8, ptr %i.ck, i64 %i.da
  store ptr %i.db, ptr %i.l, align 8, !tbaa !289
  %i.dc = load i32, ptr %i.s, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.ct, %i.dc
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !232

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.dd = load i8, ptr %i.q, align 2, !tbaa !314, !range !216, !noundef !217
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = load i64, ptr %i.r, align 8, !tbaa !312
  %i.dg = getelementptr inbounds i8, ptr %i.ck, i64 %i.df
  store ptr %i.dg, ptr %i.l, align 8, !tbaa !289
  %i.dh = load i32, ptr %i.s, align 8, !tbaa !313
  %i.di = icmp slt i32 %i.ct, %i.dh               ; 3 uses
  %i.dj = load i32, ptr %i.t, align 4
  %i.dk = icmp sge i32 %i.ct, %i.dj
  %not..i.i10.i.i = xor i1 %i.di, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.dk, !prof !315
  %i.dl = load ptr, ptr %i.u, align 8
  %i.dm = icmp eq ptr %i.dl, null
  %i.dn = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.dm, !prof !315
  br i1 %i.dn, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !288

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %3, align 8, !tbaa !287
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dq = load i32, ptr %i.i, align 4, !tbaa !282
  %i.dr = load i32, ptr %i.z, align 8, !tbaa !316
  %i.ds = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i32 noundef %i.ct, i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.di, i32 noundef %i.dr)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dt = zext i1 %i.di to i8
  store ptr %i.ds, ptr %i.l, align 8, !tbaa !289
  store i8 %i.dt, ptr %i.o, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.du = load i32, ptr %i.f, align 4, !tbaa !281 ; 3 uses
  store i32 %i.du, ptr %i.e, align 4, !tbaa !279
  %i.dv = load i32, ptr %i.g, align 8, !tbaa !280
  %i.dw = add nsw i32 %i.dv, 1                    ; 3 uses
  store i32 %i.dw, ptr %i.g, align 8, !tbaa !280
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.dw, %i.dx
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = load i32, ptr %i.h, align 4, !tbaa !300 ; 2 uses
  store i32 %i.dy, ptr %i.g, align 8, !tbaa !280
  %i.dz = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dz, ptr %i.i, align 4, !tbaa !282
  %i.ea = load i32, ptr %i.j, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.dz, %i.ea
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.eb = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dz, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.ec = phi i32 [ %i.dw, %bb.u ], [ %i.dy, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ed = phi i32 [ %i.du, %bb.u ], [ %i.du, %bb.v ], [ %i.ct, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ed, i32 noundef %i.ec, i32 noundef %i.eb)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ee = load i32, ptr %i.aa, align 4, !tbaa !279
  %i.ef = add nsw i32 %i.ee, 1                    ; 7 uses
  store i32 %i.ef, ptr %i.aa, align 4, !tbaa !279
  %i.eg = load i32, ptr %i.ab, align 8, !tbaa !309
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ei = load i8, ptr %i.aj, align 1, !tbaa !310, !range !216, !noundef !217
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !280
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !282
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ek = load i8, ptr %i.ak, align 1, !tbaa !311, !range !216, !noundef !217
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.em = load i64, ptr %i.am, align 8, !tbaa !312
  %i.en = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.k, align 8, !tbaa !289
  %i.ep = load i32, ptr %i.an, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.ef, %i.ep
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.eq = load i8, ptr %i.al, align 2, !tbaa !314, !range !216, !noundef !217
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = load i64, ptr %i.am, align 8, !tbaa !312
  %i.et = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.es
  store ptr %i.eu, ptr %i.k, align 8, !tbaa !289
  %i.ev = load i32, ptr %i.an, align 8, !tbaa !313
  %i.ew = icmp slt i32 %i.ef, %i.ev               ; 3 uses
  %i.ex = load i32, ptr %i.ao, align 4
  %i.ey = icmp sge i32 %i.ef, %i.ex
  %not..i.i.i.i = xor i1 %i.ew, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ey, !prof !315
  %i.ez = load ptr, ptr %i.ap, align 8
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.fa, !prof !315
  br i1 %i.fb, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !288

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %2, align 8, !tbaa !287
  %i.fd = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.fe = load i32, ptr %i.ag, align 4, !tbaa !282
  %i.ff = load i32, ptr %i.au, align 8, !tbaa !316
  %i.fg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i32 noundef %i.ef, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ew, i32 noundef %i.ff)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.fh = zext i1 %i.ew to i8
  store ptr %i.fg, ptr %i.k, align 8, !tbaa !289
  store i8 %i.fh, ptr %i.aj, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.fi = load i32, ptr %i.ac, align 4, !tbaa !281 ; 3 uses
  store i32 %i.fi, ptr %i.aa, align 4, !tbaa !279
  %i.fj = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.fk = add nsw i32 %i.fj, 1                    ; 3 uses
  store i32 %i.fk, ptr %i.ad, align 8, !tbaa !280
  %i.fl = load i32, ptr %i.ae, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.fk, %i.fl
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fm = load i32, ptr %i.af, align 4, !tbaa !300 ; 2 uses
  store i32 %i.fm, ptr %i.ad, align 8, !tbaa !280
  %i.fn = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fn, ptr %i.ag, align 4, !tbaa !282
  %i.fo = load i32, ptr %i.ah, align 8, !tbaa !283
  %.not1.i.i.i = icmp slt i32 %i.fn, %i.fo
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !384
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !390
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !381
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !384
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #36
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ah

bb.g:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN11OpenImageIO4v3_18ImageBufEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !304
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !305
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !307
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !1527
  store ptr %i.a, ptr %0, align 8, !tbaa !304
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #32 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 16) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1527 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { cold nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!9 = !{!8, !4, i64 28}
!10 = !{!8, !4, i64 24}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN11OpenImageIO4v3_116roi_intersectionERKNS0_3ROIES3_: argument 0"}
!13 = distinct !{!13, !"_ZN11OpenImageIO4v3_116roi_intersectionERKNS0_3ROIES3_"}
!14 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !3}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!17 = distinct !{!17, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!20 = distinct !{!20, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!23 = distinct !{!23, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!26 = distinct !{!26, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!27 = !{!28, !4, i64 60}
!28 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !29, i64 64, !30, i64 72, !36, i64 96, !4, i64 120, !4, i64 124, !41, i64 128, !42, i64 136}
!29 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!30 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !35, i64 0}
!35 = !{!"any pointer", !5, i64 0}
!36 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !43, i64 0}
!43 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !35, i64 0}
!48 = !{!28, !4, i64 120}
!49 = !{!28, !4, i64 124}
!50 = !{!39, !40, i64 8}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!53 = distinct !{!53, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!54 = !{!39, !40, i64 0}
!55 = !{!56, !59, i64 8}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !59, i64 8, !5, i64 16}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !58, i64 0}
!58 = !{!"p1 omnipotent char", !35, i64 0}
!59 = !{!"long", !5, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!62 = distinct !{!62, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!63 = !{!56, !58, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!66 = distinct !{!66, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!69 = distinct !{!69, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!72 = distinct !{!72, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!75 = distinct !{!75, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!29, !5, i64 0}
!79 = !{!29, !5, i64 1}
!80 = !{!29, !5, i64 2}
!81 = !{!29, !4, i64 4}
!82 = !{!28, !4, i64 48}
!83 = !{!28, !4, i64 52}
!84 = !{!28, !4, i64 56}
!85 = !{!46, !47, i64 0}
!86 = !{!46, !47, i64 8}
!87 = distinct !{!87, !77}
!88 = !{!89, !58, i64 0}
!89 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !58, i64 0, !59, i64 8}
!90 = !{!89, !59, i64 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!93 = distinct !{!93, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!94 = !{!57, !58, i64 0}
!95 = !{!59, !59, i64 0}
!96 = !{!5, !5, i64 0}
!97 = !{!46, !47, i64 16}
!98 = distinct !{!98, !77}
!99 = !{!39, !40, i64 16}
!100 = !{!33, !34, i64 0}
!101 = !{!33, !34, i64 16}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!104 = distinct !{!104, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!107 = distinct !{!107, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!110 = distinct !{!110, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi: argument 0"}
!113 = distinct !{!113, !"_ZNK11OpenImageIO4v3_19ImageSpec12channel_nameEi"}
!114 = distinct !{!114, !77}
!115 = !{!28, !4, i64 20}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA26_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!118 = distinct !{!118, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA26_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA56_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!121 = distinct !{!121, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA56_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA32_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA32_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA45_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!127 = distinct !{!127, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA45_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA50_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!130 = distinct !{!130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA50_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA22_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA22_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA39_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!136 = distinct !{!136, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA39_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!137 = !{!138, !138, i64 0}
!138 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !35, i64 0}
!139 = distinct !{!139, !77}
!140 = distinct !{!140, !77}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11OpenImageIO4v3_116roi_intersectionERKNS0_3ROIES3_: argument 0"}
!143 = distinct !{!143, !"_ZN11OpenImageIO4v3_116roi_intersectionERKNS0_3ROIES3_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!146 = distinct !{!146, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!147 = !{!148}
end_hunk_6
