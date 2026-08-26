Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstallScriptHandler?download=true
inline.NumInlined: 1346
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_:bb.a
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !12
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !230

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !9
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !231

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.ba = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !232

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !74
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !74
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !22
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre43 = sub i64 %.pre40, %.pre41
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ah, %bb.g ]
  %i.bc = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bd = phi ptr [ %.pre37, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.af, %bb.g ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre-phi44
  %i.bg = tail call noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %i.bd) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.e = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i:              ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !235
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit

_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit

_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #23
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 5 uses
  %4 = alloca %class.cmUVProcessChainBuilder, align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %class.cmUVProcessChain, align 8    ; 7 uses
  %7 = alloca %"class.std::unique_ptr.74", align 8 ; 5 uses
  %8 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN23cmUVProcessChainBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !80

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !9
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %.noexc10

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre27, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc10_crit_edge ] ; 4 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !74     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #23
  br label %.body

bb.e:                                             ; preds = %.noexc10
  store ptr %i.o, ptr %i.l, align 8, !tbaa !22
  %i.v = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder10AddCommandESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 %5)
          to label %bb.f unwind label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(848) ptr @_ZNK2cm11uv_loop_ptrdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder15SetExternalLoopER9uv_loop_s(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(848) %i.w)
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.y = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder23SetMergedBuiltinStreamsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.x)
          to label %bb.i unwind label %bb.z       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %5, align 8, !tbaa !74     ; 3 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !22  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.z, %bb.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNK23cmUVProcessChainBuilder5StartEv(ptr dead_on_unwind nonnull writable sret(%class.cmUVProcessChain) align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %4)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.am = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.l unwind label %bb.ab      ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN16cmUVProcessChainC1EOS_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %6) #22, !noalias !236
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !225
  %.not.i.i.i.i14 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit.i.i.i.i: ; preds = %bb.l
  call void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 8) #23
  br label %_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI16cmUVProcessChainEclEPS0_.exit.i.i.i.i, %bb.l
  call void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !225
  %i.aq = invoke noundef ptr @_ZN16cmUVProcessChain12OutputStreamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.m unwind label %bb.ad      ; 2 uses

bb.m:                                             ; preds = %_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !129
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !129
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !122
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %bb.m, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ax = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc15 unwind label %bb.ae  ; 9 uses

.noexc15:                                         ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ax, i8 0, i64 88, i1 false), !noalias !245
  store ptr %i.ax, ptr %7, align 8, !tbaa !227, !alias.scope !245
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = ptrtoint ptr %0 to i64
  store i64 %i.az, ptr %i.ay, align 8, !noalias !239
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr @"_ZNSt17_Function_handlerIFvSt6vectorIcSaIcEEEZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.ba, align 8, !tbaa !121, !noalias !239
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr @"_ZNSt17_Function_handlerIFvSt6vectorIcSaIcEEEZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.bb, align 8, !tbaa !121, !noalias !239
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bc = load <2 x ptr>, ptr %.phi.trans.insert9.i, align 8, !tbaa !121, !noalias !239
  %.pre10.i = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !127, !noalias !239
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !239
  %.not.i.i.not.i.i.i = icmp eq ptr %.pre10.i, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !122, !noalias !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert9.i, i8 0, i64 16, i1 false), !noalias !239
  br label %_ZNSt8functionIFvvEEaSEOS1_.exit.i

_ZNSt8functionIFvvEEaSEOS1_.exit.i:               ; preds = %bb.o, %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !noalias !239
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store <2 x ptr> %i.bc, ptr %i.be, align 8, !tbaa !121, !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !246, !noalias !239
  %i.bf = invoke i32 @uv_read_start(ptr noundef nonnull %i.aq, ptr noundef nonnull @"_ZZ14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_ENUlP11uv_handle_smP8uv_buf_tE_8__invokeESJ_mSL_", ptr noundef nonnull @"_ZZ14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_ENUlSF_lPK8uv_buf_tE_8__invokeESF_lSK_")
          to label %"_Z14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_.exit" unwind label %bb.p, !noalias !239 ; 0 uses

bb.p:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %.body16

"_Z14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_.exit": ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !227 ; 8 uses
  store ptr %i.ax, ptr %i.bh, align 8, !tbaa !227
  %.not.i.i.i.i18 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %"_Z14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bm = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i:       ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !127 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bs = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i:      ; preds = %bb.t, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EEaSEOS3_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !235
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #23
  br label %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EEaSEOS3_.exit

_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EEaSEOS3_.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i.i, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 88) #23
  br label %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EEaSEOS3_.exit, %"_Z14cmUVStreamReadIZN22cmInstallScriptHandler19InstallScriptRunner5startERN2cm11uv_loop_ptrESt8functionIFvvEEE3$_0S7_ESt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteISA_EEP11uv_stream_sT_T0_.exit"
  %i.cb = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !127 ; 2 uses
  %.not.i21 = icmp eq ptr %i.cb, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev.exit
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN23cmUVProcessChainBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.y:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  br label %.body

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ab ], [ %i.ch, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

bb.ad:                                            ; preds = %_ZNSt10unique_ptrI16cmUVProcessChainSt14default_deleteIS0_EED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit23

bb.ae:                                            ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body16

.body16:                                          ; preds = %bb.p, %bb.ae
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %i.bg, %bb.p ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127 ; 2 uses
  %.not.i22 = icmp eq ptr %i.cm, null
  br i1 %.not.i22, label %_ZNSt14_Function_baseD2Ev.exit23, label %bb.af

bb.af:                                            ; preds = %.body16
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit23 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit23:                 ; preds = %bb.af, %.body16, %bb.ad
  %.pn7 = phi { ptr, i32 } [ %i.cj, %bb.ad ], [ %eh.lpad-body17, %.body16 ], [ %eh.lpad-body17, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

.body:                                            ; preds = %bb.y, %bb.d, %bb.c, %_ZNSt14_Function_baseD2Ev.exit23, %bb.ac, %bb.z
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %_ZNSt14_Function_baseD2Ev.exit23 ], [ %.pn, %bb.ac ], [ %i.cg, %bb.z ], [ %i.cf, %bb.y ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  call void @_ZN23cmUVProcessChainBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn7.pn
}

declare void @_ZN23cmUVProcessChainBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder10AddCommandESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef align 8) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder15SetExternalLoopER9uv_loop_s(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(848)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(848) ptr @_ZNK2cm11uv_loop_ptrdeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN23cmUVProcessChainBuilder23SetMergedBuiltinStreamsEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

declare void @_ZNK23cmUVProcessChainBuilder5StartEv(ptr dead_on_unwind writable sret(%class.cmUVProcessChain) align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZN16cmUVProcessChain12OutputStreamEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23cmUVProcessChainBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !256  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !259  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ap, %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.aa = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !74 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i2
  %i.aj = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23
  br label %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i

_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !260

_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.w, align 8, !tbaa !256
  br label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !261
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #23
  br label %_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit

_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmInstallScriptHandler19InstallScriptRunner11printResultEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [7 x %"struct.std::pair"], align 8  ; 24 uses
  %4 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !262
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %4, align 8, !noalias !262
  store i8 91, ptr %i.c, align 8, !tbaa !21, !noalias !262
  store i64 1, ptr %i.b, align 8, !tbaa !26, !noalias !262
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !262
  store i64 1, ptr %3, align 8, !tbaa !26, !alias.scope !265, !noalias !262
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !30, !alias.scope !265, !noalias !262
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !31, !alias.scope !265, !noalias !262
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !262
  call void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %1), !noalias !262
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.f = load ptr, ptr %5, align 8, !tbaa !271, !noalias !273 ; 4 uses
  %.not.i.i8.i = icmp eq ptr %i.f, null           ; 2 uses
  %.sroa.3.0..sroa_idx.i.i9.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pn.in.i.i11.i = select i1 %.not.i.i8.i, ptr %.sroa.3.0..sroa_idx.i.i9.i, ptr %i.f
  %.pn.i.i12.i = load ptr, ptr %.pn.in.i.i11.i, align 8, !tbaa !30, !noalias !273
  %.pn3.i.i10.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i8.i, ptr %5, ptr %i.f
  %.pn3.i.i10.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i10.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i14.i = load i64, ptr %.pn3.i.i10.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !26, !noalias !273
  store i64 %.pn2.i.i14.i, ptr %i.e, align 8, !tbaa !26, !alias.scope !268, !noalias !262
  %.sroa.4.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.pn.i.i12.i, ptr %.sroa.4.0..sroa_idx.i15.i, align 8, !tbaa !30, !alias.scope !268, !noalias !262
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
end_hunk_0
