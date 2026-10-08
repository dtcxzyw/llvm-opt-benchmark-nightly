Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/OnDiskInvertedLists?download=true
inline.NumInlined: 1362
inline.NumDeleted: 547
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE17_M_default_appendEm:bb.a
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  invoke void @_ZN5faiss19OnDiskInvertedLists4SlotC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i)
          to label %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !210

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #19 ; 0 uses
  invoke void @__cxa_rethrow() #29
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !70
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
  unreachable

_ZNKSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 576460752303423487) ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4                 ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #31 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33
  %.014.i.i.i31 = phi ptr [ %i.ae, %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %i.ac, %_ZNKSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.01013.i.i.i32 = phi i64 [ %i.ad, %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %1, %_ZNKSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE12_M_check_lenEmPKc.exit ]
  invoke void @_ZN5faiss19OnDiskInvertedLists4SlotC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i31)
          to label %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33 unwind label %bb.i

_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.ad = add nsw i64 %.01013.i.i.i32, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 16
  %.not.i.i.i34 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i34, label %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36, label %.lr.ph.i.i.i30, !llvm.loop !210

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #19 ; 0 uses
  invoke void @__cxa_rethrow() #29
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.j
  %i.al = extractvalue { ptr, i32 } %i.ai, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36: ; preds = %_ZSt10_ConstructIN5faiss19OnDiskInvertedLists4SlotEJEEvPT_DpOT0_.exit.i.i.i33
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36, %.lr.ph.i.i.i38
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i38 ], [ %i.ab, %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i38 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !66, !alias.scope !215
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i39 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i38, !llvm.loop !214

_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i38, %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit36
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE13_M_deallocateEPS2_m.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #28
  br label %_ZNSt12_Vector_baseIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE13_M_deallocateEPS2_m.exit42

_ZNSt12_Vector_baseIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE13_M_deallocateEPS2_m.exit42: ; preds = %_ZNSt6vectorIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.n
  store ptr %i.ab, ptr %0, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %1
  store ptr %i.at, ptr %i.a, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.au, ptr %i.h, align 8, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5faiss19OnDiskInvertedLists4SlotEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5faiss19OnDiskInvertedLists4SlotESaIS2_EE13_M_deallocateEPS2_m.exit42, %bb.a
  ret void

bb.p:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #32
  unreachable

bb.q:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6insertIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEESt14_List_iteratorIS3_ESt20_List_const_iteratorIS3_ET_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !113
  store ptr %4, ptr %4, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !65
  %i.c = icmp eq ptr %2, %3
  br i1 %i.c, label %_ZNSt7__cxx1110_List_baseIN5faiss19OnDiskInvertedLists4SlotESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.04.i.i = phi ptr [ %i.h, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.04.i.i, i64 16, i1 false), !tbaa.struct !66
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %i.f = load i64, ptr %i.b, align 8, !tbaa !72
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.h, %3
  br i1 %i.i, label %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit, label %.lr.ph.i.i, !llvm.loop !216

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, %4
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #28
  %.not.i.i.i = icmp eq ptr %i.l, %4
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !64    ; 4 uses
  %i.m = icmp eq ptr %.pre, %4
  br i1 %i.m, label %5, label %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_.exit

_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_.exit: ; preds = %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %i.n = load i64, ptr %i.b, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !72
  store i64 0, ptr %i.b, align 8, !tbaa !72
  %.pre9 = load ptr, ptr %4, align 8, !tbaa !64
  br label %5

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.j

5:                                                ; preds = %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit, %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_.exit
  %6 = phi ptr [ %.pre9, %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_.exit ], [ %.pre, %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit ] ; 2 uses
  %.sroa.06.0 = phi ptr [ %.pre, %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_.exit ], [ %1, %_ZNSt7__cxx114listIN5faiss19OnDiskInvertedLists4SlotESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEvEET_SD_RKS4_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %6, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN5faiss19OnDiskInvertedLists4SlotESaIS3_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %5, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i7 ], [ %6, %5 ] ; 2 uses
  %i.r = load ptr, ptr %.09.i.i, align 8, !tbaa !64 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #28
  %.not.i.i = icmp eq ptr %i.r, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5faiss19OnDiskInvertedLists4SlotESaIS3_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIN5faiss19OnDiskInvertedLists4SlotESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i7, %bb.a, %5
  %.sroa.06.019 = phi ptr [ %1, %bb.a ], [ %.sroa.06.0, %5 ], [ %.sroa.06.0, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %.sroa.06.019
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEERS4_NS7_IPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !45
  %i.c = ptrtoint ptr %4 to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 7 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc5.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !74

.noexc5.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #31 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !47
  store i64 %i.e, ptr %i.a, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %.pre17.i.i = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = icmp eq ptr %3, %4
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre17.i.i, ptr align 1 %3, i64 %i.e, i1 false), !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.preheader, %._crit_edge.i.i
  store i64 %i.e, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %.pre17.i.i, i64 %i.e
  store i8 0, ptr %i.l, align 1, !tbaa !46
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = load ptr, ptr %0, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.n, %i.q
  %i.s = load ptr, ptr %5, align 8, !tbaa !47
  %i.t = load i64, ptr %i.b, align 8, !tbaa !45
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r, i64 noundef %i.o, ptr noundef %i.s, i64 noundef %i.t)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !46
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret ptr %i.u

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.f
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !217

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !46
  store i8 %i.v, ptr %i.t, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !46
  store i8 %i.w, ptr %i.m, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !45
  %i.x = load ptr, ptr %0, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !46
  ret ptr %0
}

end_hunk_0
