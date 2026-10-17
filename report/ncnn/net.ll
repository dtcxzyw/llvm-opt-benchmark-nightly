Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/net?download=true
inline.NumInlined: 978
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn3Net23find_blob_index_by_nameEPKc:bb.a
bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c
  %i.q = trunc i64 %.01020 to i32
  br label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !71
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr nonnull %1, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = add nuw i64 %.01020, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13, %bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !135
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.47, ptr noundef %1) #35 ; 0 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !135
  %fputc = tail call i32 @fputc(i32 10, ptr %i.w) ; 0 uses
  br label %bb.d

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.x = trunc i64 %.01020 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.3 = phi i32 [ -1, %._crit_edge ], [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.x, %.loopexit ]
  ret i32 %.3
}

declare noundef i32 @_ZN4ncnn9ParamDict10load_paramERKNS_10DataReaderE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !144

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !82
  store i32 %i.r, ptr %i.o, align 4, !tbaa !82
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !108
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !144

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !82
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !144

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !81
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !80 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !81
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !80
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !82
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !82
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !144

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !82
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4ncnn3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = load ptr, ptr %0, align 8, !tbaa !83     ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 72
  %i.o = icmp ugt i64 %i.n, 128102389400760775
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.an, %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !98
  store <2 x ptr> %i.s, ptr %.013.i.i.i.i.i, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99
  store i64 %i.v, ptr %i.t, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !100
  store i32 %i.y, ptr %i.w, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40
  %i.ae = load <4 x i32>, ptr %i.ad, align 8, !tbaa !82
  store <4 x i32> %i.ae, ptr %i.ac, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !101
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !70
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !207

_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZSt10_ConstructIN4ncnn3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i
  %i.ao = load ptr, ptr %0, align 8, !tbaa !83    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i ], [ %i.ao, %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.at = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.g, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !68 ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.aw, null
  %i.ax = load ptr, ptr %.05.i.i, align 8, !tbaa !69 ; 3 uses
  br i1 %.not3.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ax)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i1.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.ax) #28
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i

bb.k:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #30
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i:          ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  store i64 0, ptr %i.be, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.bf, %i.aq
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exit

_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exit:           ; preds = %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.bg = phi ptr [ %.pr, %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exitthread-pre-split ], [ %i.ao, %_ZNSt6vectorIN4ncnn3MatESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exit
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #29
  br label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4ncnn3MatEEvT_S3_.exit, %bb.l
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !102
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4ncnn3MatESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.m:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.k                     ; 2 uses
  %.not24 = icmp ult i64 %i.bp, %i.f
  br i1 %.not24, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN4ncnn3MatEPS4_EET0_T_S9_S8_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.i) ; 2 uses
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !210 ; 2 uses
  %.not4.i.i26 = icmp eq ptr %i.bq, %i.br
  br i1 %.not4.i.i26, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4ncnn3MatESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27.preheader

.lr.ph.i.i27.preheader:                           ; preds = %bb.n
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.bs, %i.k
  %i.bu = getelementptr inbounds i8, ptr %i.i, i64 %i.bt
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29
  %.sroa.01.05.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29 ], [ %i.bu, %.lr.ph.i.i27.preheader ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i28, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i27
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.p, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !68 ; 3 uses
  %.not3.i.i.i.i31 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !69 ; 3 uses
  br i1 %.not3.i.i.i.i31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cb)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29 unwind label %bb.t, !inline_history !0

bb.r:                                             ; preds = %bb.p
  %.not.i1.i.i.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i1.i.i.i32, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cb) #28
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29

bb.t:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #30
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i29:        ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %.lr.ph.i.i27
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 64
  store i64 0, ptr %i.ci, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.01.05.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ch, i8 0, i64 20, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.cj, %i.br
  br i1 %.not.i.i30, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4ncnn3MatESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27, !llvm.loop !208

bb.u:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp
  %i.cl = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4ncnn3MatES5_EET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.ck, ptr noundef %i.i) ; 0 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !83
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !104 ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !83
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not13.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4ncnn3MatESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %_ZSt10_ConstructIN4ncnn3MatEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.dr, %_ZSt10_ConstructIN4ncnn3MatEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cn, %bb.u ] ; 8 uses
  %.01214.i.i.i.i = phi ptr [ %i.dq, %_ZSt10_ConstructIN4ncnn3MatEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cs, %bb.u ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !67 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %.01214.i.i.i.i, align 8, !tbaa !98
  store <2 x ptr> %i.cw, ptr %.015.i.i.i.i, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !99
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !99
  %i.da = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !100
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !100
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !68
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 40
  %i.di = load <4 x i32>, ptr %i.dh, align 8, !tbaa !82
  store <4 x i32> %i.di, ptr %i.dg, align 8, !tbaa !82
  %i.dj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !101
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !101
  %i.dm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 64
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !70
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10_ConstructIN4ncnn3MatEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_0
