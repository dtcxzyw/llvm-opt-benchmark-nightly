Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawDecoder?download=true
inline.NumInlined: 1110
inline.NumDeleted: 646
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i:bb.a
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.le = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %.body
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !126
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.be:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.lj = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.be
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !126
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.bf

bb.bf:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn72.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %.pn72.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %.pn72.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2604
  %i.c = load ptr, ptr %1, align 8, !tbaa !2500   ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2501
  %i.i = load ptr, ptr %0, align 8, !tbaa !2500   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !2502

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 4, !tbaa !114
  store i64 %i.r, ptr %i.o, align 4, !tbaa !114
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !2500   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !2501
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !2500
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !2501
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2604 ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !2502

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 4, !tbaa !114
  store i64 %i.ae, ptr %i.i, align 4, !tbaa !114
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !2502

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !2500
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !2604 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !2500
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !2604
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 4, !tbaa !114
  store i64 %i.ah, ptr %i.i, align 4, !tbaa !114
  br label %_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !2502

bb.r:                                             ; preds = %_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN8rawspeed12NotARationalIiEES3_ET0_T_S5_S4_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i64, ptr %i.ak, align 4, !tbaa !114
  store i64 %i.ap, ptr %i.ai, align 4, !tbaa !114
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !2500
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2604
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed12NotARationalIiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2606
  %i.c = load ptr, ptr %1, align 8, !tbaa !2503   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2504
  %i.i = load ptr, ptr %0, align 8, !tbaa !2503   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  %i.p = add i64 %i.d, -12
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 12
  %i.s = add i64 %.fr.i, 12
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !2503     ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !2504
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #29
  br label %_ZNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !2503
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !2504
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2606
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 12
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !2502

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 12
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.c, i64 9, i1 false), !tbaa.struct !2607
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 12
  br i1 %i.af, label %bb.l, label %bb.m, !prof !2502

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 12
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.c, i64 9, i1 false), !tbaa.struct !2607
  br label %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !2503
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !2606 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !2503
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !2606 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i.i, i64 12, i1 false), !tbaa.struct !2607
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2605

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN8rawspeed9BlackAreaES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !2503
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !2606
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed9BlackAreaESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare noundef ptr @_ZNK8rawspeed6Camera13getSensorInfoEi(ptr noundef nonnull align 8 dereferenceable(464), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed5Hints3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_S8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef align 8 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !229  ; 4 uses
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !229  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2505 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !86

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !229  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !230
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !229
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 8)
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !99
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %4, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !230 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !126
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !99
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #31
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !99
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
end_hunk_0
