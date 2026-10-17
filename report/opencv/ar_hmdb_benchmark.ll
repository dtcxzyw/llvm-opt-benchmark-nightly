Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ar_hmdb_benchmark?download=true
inline.NumInlined: 1782
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv5flann22hierarchicalClusteringIN7cvflann2L2IfEEEEiRKNS_3MatERS5_RKNS2_17KMeansIndexParamsET_:bb.a
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.q
  %.pn21 = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.ah, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ad

bb.s:                                             ; preds = %bb.m
  %i.an = and i32 %i.ad, 16384
  %.not36 = icmp eq i32 %i.an, 0
  br i1 %.not36, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv5flann22hierarchicalClusteringIN7cvflann2L2IfEEEEiRKNS_3MatERS5_RKNS2_17KMeansIndexParamsET_, ptr noundef nonnull @.str.26, i32 noundef 595) #31
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.x:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.x
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.w
  %.pn23 = phi { ptr, i32 } [ %i.ao, %bb.w ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.ap, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !358
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !359
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  store i64 %i.az, ptr %13, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.aw, ptr %i.bf, align 8, !tbaa !139
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN7cvflann11KMeansIndexINS_2L2IfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(212) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(48) %2)
  invoke void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE10buildIndexEv(ptr noundef nonnull align 8 dereferenceable(212) %3)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bg = invoke noundef i32 @_ZN7cvflann11KMeansIndexINS_2L2IfEEE17getClusterCentersERNS_6MatrixIfEE(ptr noundef nonnull align 8 dereferenceable(212) %3, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN7cvflann22hierarchicalClusteringINS_2L2IfEEEEiRKNS_6MatrixINT_11ElementTypeEEERNS3_INS4_11CentersTypeEEERKNS_17KMeansIndexParamsES4_.exit unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.ad, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.ac ], [ %.pn23.pn, %bb.ad ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.ab ], [ %i.bh, %bb.aa ]
  call void @_ZN7cvflann11KMeansIndexINS_2L2IfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

_ZN7cvflann22hierarchicalClusteringINS_2L2IfEEEEiRKNS_6MatrixINT_11ElementTypeEEERNS3_INS4_11CentersTypeEEERKNS_17KMeansIndexParamsES4_.exit: ; preds = %bb.z
  call void @_ZN7cvflann11KMeansIndexINS_2L2IfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret i32 %i.bg

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !134
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !134
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !100
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !97
  store ptr %0, ptr %i.o, align 8, !tbaa !98
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv5flann17KDTreeIndexParamsC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN2cv5flann5IndexC1ERKNS_11_InputArrayERKNS0_11IndexParamsEN7cvflann16flann_distance_tE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv5flann11IndexParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare void @_ZN2cv2ml3SVM6createEv(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.27") align 8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv8datasets7Dataset7getTestEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !370
  %i.j = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE11_M_allocateEm.exit.i, !prof !116

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !141
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !141
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !99
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !99
  br label %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !360

_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_8datasets6ObjectEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !112 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !115
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #30, !inline_history !361
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #30, !inline_history !361
  br label %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !99
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i, !prof !116

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #30
  br label %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !362

_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_8datasets6ObjectEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exit

_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exitthread-pre-split, %_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !370
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #32
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_8datasets6ObjectEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_8datasets6ObjectEEEEvT_S6_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !370
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !46
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !112 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !99
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !99
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !115
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !363
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !363
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !99
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !116

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !112
  br label %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i

_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, !llvm.loop !364

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit: ; preds = %_ZN2cv3PtrINS_8datasets6ObjectEEaSERKS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !371
  %.pre66 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3PtrINS2_8datasets6ObjectEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
