inline.NumInlined: 688
inline.NumDeleted: 358
begin_hunk_0_@_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.n:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !102
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #20
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !113
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !102
  ret void

bb.o:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.bc = extractvalue { ptr, i32 } %i.w, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #19 ; 0 uses
  tail call void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #19
  br label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit

bb.p:                                             ; preds = %bb.o, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.z, %bb.j ], [ %i.p, %bb.o ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.bb, %bb.o ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.p, %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #21
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bg

bb.s:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

bb.t:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.g, ptr %i.a, align 8, !tbaa !71
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.j, ptr %i.d, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !52
  store i8 %i.l, ptr %i.k, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !51
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !116

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !104
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !117 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %.noexc5
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc5
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !52
  store i8 %i.al, ptr %i.aa, align 1, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !107
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !52
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i, !prof !116

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #20
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !55
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 16
  br i1 %i.y, label %bb.h, label %bb.i, !prof !118

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 16
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !74
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.x, 16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !118

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.x, 16
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !74
  br label %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !73  ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !54
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !74
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN22photos_editing_formats8image_io9DataRangeES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io9DataRangeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io8JpegInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #20
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !52
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !111

_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io11JpegXmpInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !112
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #20
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11JpegXmpInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ap, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i ], [ %i.z, %_ZNSt6vectorIN22photos_editing_formats8image_io11JpegXmpInfoESaIS2_EED2Ev.exit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i4, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 80 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ap, %i.ab
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !114
end_hunk_0
