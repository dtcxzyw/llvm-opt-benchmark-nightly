Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/LoadConfiguration?download=true
inline.NumInlined: 5546
inline.NumDeleted: 1818
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4LIEF2PE17LoadConfigurationaSERKS1_:bb.a
bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !210 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i77, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !211
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #27
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !195
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #27
  br label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 64) #27
  br label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit"

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, %bb.o, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = load ptr, ptr %1, align 8, !tbaa !202    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = load ptr, ptr %0, align 8, !tbaa !202    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !223

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.r, ptr %i.o, align 4, !tbaa !58
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #27
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !195
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !223

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !223

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !202
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !212 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !202
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !212
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !223

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !58
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !202
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !212
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !203    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.i = load ptr, ptr %0, align 8, !tbaa !203    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false), !tbaa !58
  %3 = load ptr, ptr %0, align 8, !tbaa !203      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !203
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !197
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !213  ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !223

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !203
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 4, !tbaa !58
  store i64 %i.ad, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !223

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !203
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !213 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !203 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !213
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 4, !tbaa !58
  store i64 %i.ag, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.aa, %bb.m ], [ 8, %bb.n ]
  %i.ah = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %i.ai = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %.pre25, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  %i.ak = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.am = load i64, ptr %.0810.i.i.i.i, align 4, !tbaa !58
  store i64 %i.am, ptr %.011.i.i.i.i, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !595

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ap = phi ptr [ %2, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %i.ai, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !213
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE17LoadConfiguration6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(752) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE17LoadConfiguration9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(752) %1) local_unnamed_addr #2 align 2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %11 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %12 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %13 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %14 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %15 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %16 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %17 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %18 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %19 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %20 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %21 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %22 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %23 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %24 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %25 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %26 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %27 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %28 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %29 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %30 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %31 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %32 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %33 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %34 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %35 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %36 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %37 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %38 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %39 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %40 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %41 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %42 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %43 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %44 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %45 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %46 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %47 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %48 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %49 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %50 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %51 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %52 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %53 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %54 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %55 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %56 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %57 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %58 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %59 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %60 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %61 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %62 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %63 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %65 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %66 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %67 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %68 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %69 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %70 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %71 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %72 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %73 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %74 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %75 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %76 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %77 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %78 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %79 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %80 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %81 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %82 = alloca %"class.fmt::v12::basic_memory_buffer.836", align 8 ; 10 uses
  %i.t = alloca i64, align 8                      ; 6 uses
end_hunk_0
