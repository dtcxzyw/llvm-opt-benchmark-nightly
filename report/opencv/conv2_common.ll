inline.NumInlined: 689
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorIfSaIfEEaSERKS1_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ac = load float, ptr %i.c, align 4, !tbaa !70
  store float %i.ac, ptr %i.i, align 4, !tbaa !70
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !69

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load float, ptr %i.af, align 4, !tbaa !70
  store float %i.ak, ptr %i.ad, align 4, !tbaa !70
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !65
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cv3dnn14dnn5_v20260605L10getPaddingERKSt6vectorIiSaIiEEiiNS1_11AutoPaddingEiRiS8_(ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp sgt i32 %0, -1
  %i.b = icmp slt i32 %0, %1
  %or.cond41 = and i1 %i.a, %i.b
  br i1 %or.cond41, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L10getPaddingERKSt6vectorIiSaIiEEiiNS1_11AutoPaddingEiRiS8_, ptr noundef nonnull @.str.15, i32 noundef 121) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  switch i32 %2, label %bb.k [
    i32 3, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.j = icmp eq ptr %.0.val, %.8.val
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = zext nneg i32 %0 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.m, ptr %4, align 4, !tbaa !32
  %i.n = add nuw nsw i32 %1, %0
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  store i32 %i.q, ptr %5, align 4, !tbaa !32
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  store i32 0, ptr %5, align 4, !tbaa !32
  store i32 0, ptr %4, align 4, !tbaa !32
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.r = icmp eq i32 %2, 2
  %i.s = icmp eq i32 %2, 1
  %i.t = add i32 %2, -1
  %or.cond3 = icmp ult i32 %i.t, 2
  br i1 %or.cond3, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L10getPaddingERKSt6vectorIiSaIiEEiiNS1_11AutoPaddingEiRiS8_, ptr noundef nonnull @.str.15, i32 noundef 131) #16
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.p:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !17     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.p
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.o
  %.pn37 = phi { ptr, i32 } [ %i.u, %bb.o ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.v, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.ab = sdiv i32 %3, 2                          ; 4 uses
  store i32 %i.ab, ptr %5, align 4, !tbaa !32
  store i32 %i.ab, ptr %4, align 4, !tbaa !32
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, %3
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.neg = sext i1 %i.s to i32
  %i.ae = add nsw i32 %i.ab, %.neg
  store i32 %i.ae, ptr %4, align 4, !tbaa !32
  %.neg40 = sext i1 %i.r to i32
  %i.af = load i32, ptr %5, align 4, !tbaa !32
  %i.ag = add i32 %i.af, %.neg40
  store i32 %i.ag, ptr %5, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.i, %bb.j
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v202606059ConvState7initOfsEv(ptr noundef nonnull align 8 dereferenceable(344) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32   ; 3 uses
  %i.o = icmp sgt i32 %i.b, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  br i1 %i.o, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %i.q, %i.b
  br i1 %i.r, label %_ZN2cv8MatShapeixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.57, i32 noundef 97) #16
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.b
  %i.y = zext nneg i32 %i.b to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZN2cv8MatShapeixEm.exit
  %i.ac = phi i32 [ %i.ab, %_ZN2cv8MatShapeixEm.exit ], [ 1, %bb.a ]
  %i.ad = add nsw i32 %i.b, 1                     ; 2 uses
  %narrow.i41 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 1)
  %i.ae = icmp ult i32 %i.ad, %narrow.i41
  br i1 %i.ae, label %_ZN2cv8MatShapeixEm.exit46, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.57, i32 noundef 97) #16
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.h
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit46:                       ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = zext nneg i32 %i.ad to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = mul nsw i32 %i.f, %i.d
  %i.ar = mul nsw i32 %i.aq, %i.h                 ; 2 uses
  %i.as = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %i.al)
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.av = mul nsw i32 %i.ar, 3
  %i.aw = sext i32 %i.av to i64                   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !72 ; 2 uses
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.aw
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cv8MatShapeixEm.exit46
  %i.bf = sub nuw nsw i64 %i.aw, %i.bd
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.bf)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.j:                                             ; preds = %_ZN2cv8MatShapeixEm.exit46
  %i.bg = icmp ugt i64 %i.bd, %i.aw
  br i1 %i.bg, label %bb.k, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.bh
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bj = sext i32 %i.ar to i64                   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 2 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bj
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bs = sub nuw nsw i64 %i.bj, %i.bq
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.bs)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit49

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bt = icmp ugt i64 %i.bq, %i.bj
  br i1 %i.bt, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit49

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bl, %i.bu
  br i1 %.not.i.i47, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit49, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i48

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i48:      ; preds = %bb.n
  store ptr %i.bu, ptr %i.bk, align 8, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit49

_ZNSt6vectorIiSaIiEE6resizeEm.exit49:             ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i48
  %i.bv = icmp sgt i32 %i.d, 0
  %i.bw = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.bv, i1 %i.bw, i1 false
  %i.bx = icmp sgt i32 %i.h, 0
  %or.cond86 = select i1 %or.cond, i1 %i.bx, i1 false
  br i1 %or.cond86, label %.lr.ph.split.split.us, label %._crit_edge.split

.lr.ph.split.split.us:                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit49
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !73 ; 3 uses
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %5 = mul i32 %i.f, %i.h
  %xtraiter = and i32 %i.h, 1
  %i.ca = icmp eq i32 %i.h, 1
  %unroll_iter = and i32 %i.h, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %i.h to i1
  br label %.lr.ph55.us

.lr.ph55.us:                                      ; preds = %._crit_edge56.split.us.us, %.lr.ph.split.split.us
  %.059.us = phi i32 [ 0, %.lr.ph.split.split.us ], [ %i.de, %._crit_edge56.split.us.us ] ; 2 uses
  %.03858.us = phi i32 [ 0, %.lr.ph.split.split.us ], [ %8, %._crit_edge56.split.us.us ] ; 2 uses
  %i.cb = mul nsw i32 %.059.us, %i.j              ; 4 uses
  %i.cc = mul nsw i32 %i.cb, %i.ac
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph55.us
  %indvars.iv = phi i32 [ %i.dd, %._crit_edge.us.us ], [ %.03858.us, %.lr.ph55.us ] ; 2 uses
  %.03952.us.us = phi i32 [ %7, %._crit_edge.us.us ], [ 0, %.lr.ph55.us ] ; 2 uses
  %6 = sext i32 %indvars.iv to i64                ; 2 uses
  %i.cd = mul nsw i32 %.03952.us.us, %i.l         ; 4 uses
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = mul nsw i32 %i.ce, %i.ap                ; 3 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.new ], [ %6, %.lr.ph.us.us ] ; 4 uses
  %.03751.us.us = phi i32 [ %i.cv, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.cg = mul nsw i32 %.03751.us.us, %i.n         ; 2 uses
  %.idx = mul i64 %indvars.iv.a, 12
  %i.ch = getelementptr i8, ptr %i.by, i64 %.idx  ; 3 uses
  store i32 %i.cb, ptr %i.ch, align 4, !tbaa !32
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  store i32 %i.cd, ptr %i.ci, align 4, !tbaa !32
  %i.cj = getelementptr i8, ptr %i.ch, i64 8
  store i32 %i.cg, ptr %i.cj, align 4, !tbaa !32
  %i.ck = add nsw i32 %i.cg, %i.cf
  %i.cl = mul nsw i32 %i.ck, %i.at
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.a
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !32
  %i.cn = or disjoint i32 %.03751.us.us, 1
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.n                 ; 2 uses
  %.idx.1 = mul i64 %indvars.iv.next.a, 12
  %i.cp = getelementptr i8, ptr %i.by, i64 %.idx.1 ; 3 uses
  store i32 %i.cb, ptr %i.cp, align 4, !tbaa !32
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  store i32 %i.cd, ptr %i.cq, align 4, !tbaa !32
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  store i32 %i.co, ptr %i.cr, align 4, !tbaa !32
  %i.cs = add nsw i32 %i.co, %i.cf
  %i.ct = mul nsw i32 %i.cs, %i.at
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.a
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !32
  %i.cv = add nuw nsw i32 %.03751.us.us, 2        ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !74

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ %6, %.lr.ph.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.03751.us.us.epil.init = phi i32 [ 0, %.lr.ph.us.us ], [ %i.cv, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.cw = mul nsw i32 %.03751.us.us.epil.init, %i.n ; 2 uses
  %.idx.epil = mul i64 %indvars.iv.epil.init, 12
  %i.cx = getelementptr i8, ptr %i.by, i64 %.idx.epil ; 3 uses
  store i32 %i.cb, ptr %i.cx, align 4, !tbaa !32
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  store i32 %i.cd, ptr %i.cy, align 4, !tbaa !32
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !32
  %i.da = add nsw i32 %i.cw, %i.cf
  %i.db = mul nsw i32 %i.da, %i.at
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.epil.init
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %7 = add nuw nsw i32 %.03952.us.us, 1           ; 2 uses
  %i.dd = add i32 %indvars.iv, %i.h
  %exitcond64.not = icmp eq i32 %7, %i.f
  br i1 %exitcond64.not, label %._crit_edge56.split.us.us, label %.lr.ph.us.us, !llvm.loop !75

._crit_edge56.split.us.us:                        ; preds = %._crit_edge.us.us
  %8 = add i32 %5, %.03858.us
  %i.de = add nuw nsw i32 %.059.us, 1             ; 2 uses
  %exitcond65.not = icmp eq i32 %i.de, %i.d
  br i1 %exitcond65.not, label %._crit_edge.split, label %.lr.ph55.us, !llvm.loop !76

._crit_edge.split:                                ; preds = %._crit_edge56.split.us.us, %_ZNSt6vectorIiSaIiEE6resizeEm.exit49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv3dnn14dnn5_v20260605L13getWpackShapeERKNS_8MatShapeEii(ptr dead_on_unwind noalias nonnull writable align 4 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::vector.6", align 8     ; 9 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp sgt i32 %i.a, 2
  br i1 %i.b, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L13getWpackShapeERKNS_8MatShapeEii, ptr noundef nonnull @.str.15, i32 noundef 156) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.t

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32   ; 5 uses
  %i.n = tail call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %1)
  %i.o = trunc i64 %i.n to i32
  %i.p = mul nsw i32 %i.m, %i.k
  %i.q = sdiv i32 %i.o, %i.p
  %i.r = srem i32 %i.k, %2
  %i.s = sdiv i32 %i.k, %2
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L13getWpackShapeERKNS_8MatShapeEii, ptr noundef nonnull @.str.15, i32 noundef 159) #16
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.j
  %.pn39 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ab = add i32 %3, -1                          ; 5 uses
  %i.ac = add i32 %i.ab, %i.s
  %i.ad = sdiv i32 %i.ac, %3
  %i.ae = icmp sgt i32 %2, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.af = add i32 %i.ab, %i.m                     ; 3 uses
  %xtraiter = and i32 %2, 1
  %i.ag = icmp eq i32 %2, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %2, 2147483646
  br label %bb.m

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03658.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.057.epil.init = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ah = mul nsw i32 %.03658.epil.init, %i.m
  %i.ai = and i32 %i.ah, %i.ab
  %i.aj = add i32 %i.af, %i.ai
  %i.ak = sdiv i32 %i.aj, %3
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.057.epil.init, i32 %i.ak)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.0.lcssa = phi i32 [ 0, %bb.l ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.al = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #19
          to label %bb.n unwind label %bb.q       ; 7 uses

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %.03658 = phi i32 [ 0, %.lr.ph.new ], [ %i.av, %bb.m ] ; 3 uses
  %.057 = phi i32 [ 0, %.lr.ph.new ], [ %.sroa.speculated.1, %bb.m ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.am = mul nsw i32 %.03658, %i.m
  %i.an = and i32 %i.am, %i.ab
  %i.ao = add i32 %i.af, %i.an
  %i.ap = sdiv i32 %i.ao, %3
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.057, i32 %i.ap)
  %i.aq = or disjoint i32 %.03658, 1
  %i.ar = mul nsw i32 %i.aq, %i.m
  %i.as = and i32 %i.ar, %i.ab
  %i.at = add i32 %i.af, %i.as
  %i.au = sdiv i32 %i.at, %3
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.au) ; 3 uses
  %i.av = add nuw nsw i32 %.03658, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !77

bb.n:                                             ; preds = %._crit_edge
  %i.aw = mul nsw i32 %3, %3
  store ptr %i.al, ptr %8, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !78
  store i32 %2, ptr %i.al, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.ad, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %i.aw, ptr %.sroa.8.0..sroa_idx, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !72
  invoke void @_ZN2cv8MatShapeC1ERKSt6vectorIiSaIiEENS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, i32 noundef 0)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %8, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !78
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #18
end_hunk_0
