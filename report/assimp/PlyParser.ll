inline.NumInlined: 1469
inline.NumDeleted: 612
begin_hunk_0_@_ZN6Assimp3PLY3DOM12SkipCommentsESt6vectorIcSaIcEE:bb.a

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.cv, i64 %.pre90, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

bb.bf:                                            ; preds = %bb.bd
  %i.cx = icmp eq i64 %.pre90, 1
  br i1 %i.cx, label %bb.bg, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

bb.bg:                                            ; preds = %bb.bf
  %i.cy = load i8, ptr %i.cv, align 1
  store i8 %i.cy, ptr %i.a, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63: ; preds = %bb.bc, %bb.bg, %bb.bf, %bb.be
  %.pre-phi91 = phi i64 [ %.pre90, %bb.be ], [ 1, %bb.bg ], [ %.pre90, %bb.bf ], [ %.pre90, %bb.bc ]
  %i.cz = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi91 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.by, %i.cz
  br i1 %.not.i.i.i.i64, label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63
  store ptr %i.cz, ptr %i.b, align 8
  br label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68: ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit25.thread, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i65, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i63, %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit.i59
  %i.da = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge unwind label %bb.l ; 0 uses

_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge: ; preds = %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68
  %.pr76.pre = load ptr, ptr %1, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48: ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge, %bb.n
  %i.db = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.a ], [ %i.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %.pr76.pre, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge ], [ %i.a, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 2 uses
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ true, %_ZN6Assimp3PLY3DOM8SkipLineERSt6vectorIcSaIcEE.exit68._ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48thread-pre-split_crit_edge ], [ false, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit ] ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIcSaIcEED2Ev.exit70, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47, %bb.o, %bb.p, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48
  %.0132 = phi i1 [ %.0, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ true, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45 ], [ true, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47 ], [ false, %bb.o ], [ false, %bb.p ]
  %i.dc = phi ptr [ %i.db, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ %i.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i45 ], [ %i.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i47 ], [ %i.a, %bb.o ], [ %i.a, %bb.p ] ; 2 uses
  %i.dd = load ptr, ptr %i.d, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit70

_ZNSt6vectorIcSaIcEED2Ev.exit70:                  ; preds = %bb.b, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread
  %.0133 = phi i1 [ %.0, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48 ], [ %.0132, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit48.thread ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i1 %.0133
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !3

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1
  store i8 %i.q, ptr %i.o, align 1
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit: ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.f, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !3

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.c, align 1
  store i8 %i.y, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.v, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !3

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %bb.p, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %i.c, align 1
  store i8 %i.ab, ptr %i.i, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !3

bb.q:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %i.ai, align 1
  store i8 %i.ap, ptr %i.ad, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY3DOM11ParseHeaderERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %6 = alloca %"class.std::vector", align 8       ; 7 uses
  %7 = alloca %"class.Assimp::PLY::Element", align 8 ; 22 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.70)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %.sink29.i.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 23
  %.sink29.i.sroa.gep65 = getelementptr inbounds nuw i8, ptr %8, i64 27
  %.sink29.i.sroa.gep66 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sink29.i.sroa.gep67 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sink29.i.sroa.gep68 = getelementptr inbounds nuw i8, ptr %8, i64 25
  %.sink29.i.sroa.gep69 = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %11 = load ptr, ptr %2, align 8                 ; 2 uses
  %12 = load ptr, ptr %i.h, align 8               ; 2 uses
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %14 = phi ptr [ %46, %.backedge ], [ %12, %bb.a ]
  %15 = phi ptr [ %45, %.backedge ], [ %11, %bb.a ] ; 3 uses
  %i.v = ptrtoint ptr %14 to i64
  %i.w = ptrtoint ptr %15 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !9

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %.noexc33 unwind label %.loopexit ; 5 uses

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.z, ptr %6, align 8
  store ptr %i.z, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.aa, ptr %i.j, align 8
  %i.ab = icmp samesign ugt i64 %i.x, 1
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !3

bb.c:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %15, i64 %i.x, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc33
  %i.ac = icmp eq i64 %i.x, 1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %15, align 1
  store i8 %i.ad, ptr %i.z, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.aa, ptr %i.i, align 8
  %i.ae = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM12SkipCommentsESt6vectorIcSaIcEE(ptr noundef nonnull %6)
          to label %bb.g unwind label %bb.t       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.j, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %7, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.k, align 8
  store ptr %i.m, ptr %i.l, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.m, align 8
  store i32 0, ptr %i.o, align 8
  %i.ak = invoke noundef zeroext i1 @_ZN6Assimp3PLY7Element12ParseElementERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %7)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  br i1 %i.ak, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.al = load i64, ptr %i.n, align 8             ; 5 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.k, align 8
  store ptr %i.p, ptr %8, align 8, !alias.scope !16
  switch i32 %i.an, label %._crit_edge.i.i20.i [
    i32 0, label %._crit_edge.i.i.i
    i32 2, label %._crit_edge.i.i4.i
    i32 3, label %._crit_edge.i.i8.i
    i32 4, label %._crit_edge.i.i12.i
    i32 5, label %._crit_edge.i.i16.i
  ]

._crit_edge.i.i.i:                                ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

._crit_edge.i.i4.i:                               ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

._crit_edge.i.i8.i:                               ; preds = %bb.k
  store i32 1701274725, ptr %i.p, align 8, !alias.scope !16
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

._crit_edge.i.i12.i:                              ; preds = %bb.k
  store i64 7809639168886464877, ptr %i.p, align 8, !alias.scope !16
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

._crit_edge.i.i16.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.p, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

._crit_edge.i.i20.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  br label %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit

_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit: ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i4.i, %._crit_edge.i.i8.i, %._crit_edge.i.i12.i, %._crit_edge.i.i16.i, %._crit_edge.i.i20.i
  %.sink.i = phi i64 [ 7, %._crit_edge.i.i20.i ], [ 11, %._crit_edge.i.i16.i ], [ 8, %._crit_edge.i.i12.i ], [ 4, %._crit_edge.i.i8.i ], [ 9, %._crit_edge.i.i4.i ], [ 6, %._crit_edge.i.i.i ]
  %.sink29.i.sroa.phi = phi ptr [ %.sink29.i.sroa.gep, %._crit_edge.i.i20.i ], [ %.sink29.i.sroa.gep65, %._crit_edge.i.i16.i ], [ %.sink29.i.sroa.gep66, %._crit_edge.i.i12.i ], [ %.sink29.i.sroa.gep67, %._crit_edge.i.i8.i ], [ %.sink29.i.sroa.gep68, %._crit_edge.i.i4.i ], [ %.sink29.i.sroa.gep69, %._crit_edge.i.i.i ]
  store i64 %.sink.i, ptr %i.q, align 8, !alias.scope !16
  store i8 0, ptr %.sink29.i.sroa.phi, align 1, !alias.scope !16
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store ptr %i.p, ptr %8, align 8
  %i.ao = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.al, ptr %i.a, align 8
  %i.ap = icmp ugt i64 %i.al, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.w ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.aq, ptr %8, align 8
  %i.ar = load i64, ptr %i.a, align 8
  store i64 %i.ar, ptr %i.p, align 8
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.l
  %cond = icmp eq i64 %i.al, 1
  br i1 %cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.ao, align 1
  store i8 %i.as, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.at = phi ptr [ %i.aq, %._crit_edge.i.i.thread ], [ %i.p, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.m, %bb.n
  %i.au = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.au, ptr %i.q, align 8
  %i.av = load ptr, ptr %8, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZN6Assimp9to_stringB5cxx11ENS_3PLY16EElementSemanticE.exit
  %i.ax = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit unwind label %bb.x

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %bb.o
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit
  %i.ay = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.bf unwind label %bb.y

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit37

.loopexit.split-lp:                               ; preds = %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, %bb.bd, %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit37

bb.t:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIcSaIcEED2Ev.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load ptr, ptr %i.j, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit37

bb.v:                                             ; preds = %bb.am, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.w:                                             ; preds = %.noexc.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.x:                                             ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.y:                                             ; preds = %bb.s, %bb.r
  %.018 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %9, align 8               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bn = load i64, ptr %i.bl, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bp = load ptr, ptr %10, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %10, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = load i64, ptr %i.bq, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %.018, label %bb.z, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %.018, label %bb.z, label %bb.ae

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.thread
  %.pn.pn72.ph = phi { ptr, i32 } [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.thread ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn.pn72 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn.pn72.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ay) #27
  br label %bb.ae

bb.aa:                                            ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8
  %i.ca = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.x      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cb = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.cc = load ptr, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6Assimp3PLY7ElementC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.cb, ptr noundef nonnull align 8 dereferenceable(68) %7)
          to label %.noexc42 unwind label %bb.x

.noexc42:                                         ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.r, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  store ptr %i.ce, ptr %i.r, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE9push_backERKS2_.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(68) %7)
          to label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE9push_backERKS2_.exit unwind label %bb.x

_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc42, %bb.ad
  %i.cf = load ptr, ptr %8, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.p
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE9push_backERKS2_.exit
  %i.ch = load i64, ptr %i.p, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.an

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.z, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn72, %bb.z ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.bh, %bb.x ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ] ; 2 uses
  %i.cj = load ptr, ptr %8, align 8               ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.p
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.ae
  %i.cl = load i64, ptr %i.p, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.aq

bb.af:                                            ; preds = %bb.i
  %i.cn = load ptr, ptr %2, align 8               ; 10 uses
  %i.co = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  %.not.i50 = icmp eq ptr %i.cn, null
  %or.cond.i = or i1 %.not.i50, %i.cp
  br i1 %or.cond.i, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.73, ptr noundef nonnull dereferenceable(1) %i.cn, i64 noundef 10) #26
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 10 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  switch i8 %i.cs, label %bb.am [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i:     ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %.not11.i.i = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 11
  %storemerge.i.i = select i1 %.not11.i.i, ptr %i.cr, ptr %i.ct ; 2 uses
  %i.cu = ptrtoint ptr %storemerge.i.i to i64     ; 3 uses
  %i.cv = ptrtoint ptr %i.cn to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %.not11.i.i.i = icmp eq ptr %storemerge.i.i, %i.co
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.cy = ptrtoint ptr %i.co to i64
  %i.cz = sub i64 %i.cy, %i.cu                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 1
  br i1 %i.da, label %bb.aj, label %bb.ak, !prof !3

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %i.cx, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.db = icmp eq i64 %i.cz, 1
  br i1 %i.db, label %bb.al, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.dc = load i8, ptr %i.cx, align 1
  store i8 %i.dc, ptr %i.cn, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.dd = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cu
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.dd, %i.dg
  br i1 %.not.i.i.i.i52, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt3, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.dg, ptr %i.h, align 8
  br label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt3

bb.am:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dh = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %16 unwind label %bb.v

16:                                               ; preds = %bb.am
  br i1 %i.dh, label %bb.an, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt1

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt3: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i
  %17 = load ptr, ptr %i.l, align 8               ; 2 uses
  %18 = icmp eq ptr %17, %i.m
  br i1 %18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3, label %bb.ao

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt1: ; preds = %16
  %19 = load ptr, ptr %i.l, align 8               ; 2 uses
  %20 = icmp eq ptr %19, %i.m
  br i1 %20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1, label %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %16
  %21 = load ptr, ptr %i.l, align 8               ; 2 uses
  %22 = icmp eq ptr %21, %i.m
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ao:                                            ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt3
  %23 = load i64, ptr %i.m, align 8
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %24) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3

_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit: ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt1
  %25 = load i64, ptr %i.m, align 8
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %26) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.an
  %i.di = load i64, ptr %i.m, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3: ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt3, %bb.ao
  %27 = load ptr, ptr %7, align 8                 ; 5 uses
  %28 = load ptr, ptr %i.t, align 8               ; 2 uses
  %.not4.i.i.i.i.jt3 = icmp eq ptr %27, %28
  br i1 %.not4.i.i.i.i.jt3, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt3, label %.lr.ph.i.i.i.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1: ; preds = %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit.jt1, %_ZN6Assimp3PLY3DOM10TokenMatchERSt6vectorIcSaIcEEPKcj.exit
  %29 = load ptr, ptr %7, align 8                 ; 5 uses
  %30 = load ptr, ptr %i.t, align 8               ; 2 uses
  %.not4.i.i.i.i.jt1 = icmp eq ptr %29, %30
  br i1 %.not4.i.i.i.i.jt1, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt1, label %.lr.ph.i.i.i.i.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dk = load ptr, ptr %7, align 8               ; 5 uses
  %i.dl = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt0, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %31 = phi ptr [ %28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3 ], [ %30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %32 = phi ptr [ %27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3 ], [ %29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.0141 = phi i32 [ 3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ds, %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i ], [ %32, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dq = load i64, ptr %i.do, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.ds, %31
  br i1 %.not.i.i.i.i53, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8            ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp3PLY7ElementD2Ev.exit, label %33

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt3
  %.not.i.i1.i.i.jt3 = icmp eq ptr %27, null
  br i1 %.not.i.i1.i.i.jt3, label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt3, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.a

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.jt1
  %.not.i.i1.i.i.jt1 = icmp eq ptr %29, null
  br i1 %.not.i.i1.i.i.jt1, label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt1, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt0: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.not.i.i1.i.i.jt0 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i.i.jt0, label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt0, label %bb.ap

33:                                               ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i
  %34 = load ptr, ptr %i.u, align 8
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %.pr.i.i to i64
  %37 = sub i64 %35, %36
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i, i64 noundef %37) #28
  br label %_ZN6Assimp3PLY7ElementD2Ev.exit

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.a: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt3
  %.pr.i.i.a = load ptr, ptr %i.u, align 8
  %38 = ptrtoint ptr %.pr.i.i.a to i64
  %39 = ptrtoint ptr %27 to i64
  %40 = sub i64 %38, %39
  call void @_ZdlPvm(ptr noundef nonnull %27, i64 noundef %40) #28
  br label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt3

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt1
  %41 = load ptr, ptr %i.u, align 8
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %29 to i64
  %44 = sub i64 %42, %43
  call void @_ZdlPvm(ptr noundef nonnull %29, i64 noundef %44) #28
  br label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt1

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt0
  %i.dt = load ptr, ptr %i.u, align 8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dk to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dw) #28
  br label %_ZN6Assimp3PLY7ElementD2Ev.exit.jt0

_ZN6Assimp3PLY7ElementD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  switch i32 %.0141, label %.loopexit85 [
    i32 0, label %.backedge
    i32 3, label %bb.ar
  ]

.backedge:                                        ; preds = %_ZN6Assimp3PLY7ElementD2Ev.exit, %_ZN6Assimp3PLY7ElementD2Ev.exit.jt0
  %45 = load ptr, ptr %2, align 8                 ; 2 uses
  %46 = load ptr, ptr %i.h, align 8               ; 2 uses
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %bb.ar, label %bb.b, !llvm.loop !20

_ZN6Assimp3PLY7ElementD2Ev.exit.jt3:              ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.a, %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ar

_ZN6Assimp3PLY7ElementD2Ev.exit.jt1:              ; preds = %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i, %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.loopexit85

_ZN6Assimp3PLY7ElementD2Ev.exit.jt0:              ; preds = %bb.ap, %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.backedge

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.bf, %bb.v ]
  call void @_ZN6Assimp3PLY7ElementD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit37

bb.ar:                                            ; preds = %.backedge, %_ZN6Assimp3PLY7ElementD2Ev.exit, %bb.a, %_ZN6Assimp3PLY7ElementD2Ev.exit.jt3
  br i1 %3, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = load ptr, ptr %2, align 8               ; 10 uses
  %i.dy = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %.not.i54 = icmp eq ptr %i.dx, null
  br i1 %.not.i54, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.0.i.i = phi ptr [ %i.dx, %bb.au ], [ %i.ef, %bb.ax ] ; 4 uses
  %i.ee = load i8, ptr %.0.i.i, align 1
  switch i8 %i.ee, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit.i [
    i8 32, label %bb.aw
    i8 9, label %bb.aw
    i8 13, label %bb.aw
    i8 10, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av
  %.not.i.i55 = icmp eq ptr %.0.i.i, %i.dy
  br i1 %.not.i.i55, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.av, !llvm.loop !8

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit.i: ; preds = %bb.aw, %bb.av
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.av ], [ %i.ed, %bb.aw ] ; 3 uses
  %i.eg = ptrtoint ptr %.0.lcssa.i.i to i64       ; 3 uses
  %i.eh = sub i64 %i.eg, %i.eb
  %i.ei = getelementptr inbounds i8, ptr %i.dx, i64 %i.eh ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.dx, %.0.lcssa.i.i
  br i1 %.not.i.i.i56, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit.i
  %.not11.i.i.i57 = icmp eq ptr %.0.lcssa.i.i, %i.dy
  br i1 %.not11.i.i.i57, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ej = sub i64 %i.ea, %i.eg                    ; 3 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.ba, label %bb.bb, !prof !3

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %i.ei, i64 %i.ej, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58

bb.bb:                                            ; preds = %bb.az
  %i.el = icmp eq i64 %i.ej, 1
  br i1 %i.el, label %bb.bc, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58

bb.bc:                                            ; preds = %bb.bb
  %i.em = load i8, ptr %i.ei, align 1
  store i8 %i.em, ptr %i.dx, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.en = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.eg
  %i.eq = getelementptr inbounds i8, ptr %i.dx, i64 %i.ep ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.en, %i.eq
  br i1 %.not.i.i.i.i59, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i60

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i60:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58
  store ptr %i.eq, ptr %i.h, align 8
  br label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i60, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i58, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit.i, %bb.at, %bb.as, %bb.ar
  %i.er = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bd unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.er, ptr noundef nonnull @.str.74)
          to label %.loopexit85 unwind label %.loopexit.split-lp

.loopexit85:                                      ; preds = %_ZN6Assimp3PLY7ElementD2Ev.exit, %_ZN6Assimp3PLY7ElementD2Ev.exit.jt1, %bb.bd
  %.2 = phi i1 [ true, %bb.bd ], [ false, %_ZN6Assimp3PLY7ElementD2Ev.exit.jt1 ], [ false, %_ZN6Assimp3PLY7ElementD2Ev.exit ]
  %i.es = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.loopexit85, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.et, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.es, %.loopexit85 ] ; 4 uses
  %i.et = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i62
  %i.ey = load i64, ptr %i.ew, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #28
  %.not.i.i.i.i63 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i63, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i62, !llvm.loop !21

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.loopexit85
  %i.fa = load ptr, ptr %5, align 8
  %i.fb = load i64, ptr %i.d, align 8
  %i.fc = shl i64 %i.fb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fa, i8 0, i64 %i.fc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.fd = load ptr, ptr %5, align 8               ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.c
  br i1 %i.fe, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ff = load i64, ptr %i.d, align 8
  %i.fg = shl i64 %i.ff, 3
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #28
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i1 %.2

_ZNSt6vectorIcSaIcEED2Ev.exit37:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.t, %bb.aq
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.aq ], [ %i.az, %bb.u ], [ %i.az, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn

bb.bf:                                            ; preds = %bb.s
  unreachable
}

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 3 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !22
  store i8 0, ptr %i.e, align 8, !alias.scope !22
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !22
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !22
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !22 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !22
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
end_hunk_0
