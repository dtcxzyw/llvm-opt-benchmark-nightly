Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_detection_mtcnn?download=true
inline.NumInlined: 6844
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEvEES9_NS7_IPKS2_S4_EET_SD_:bb.a
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9, i64 noundef %i.bu) #36
  br label %_ZNSt12_Vector_baseIN6custom12_GLOBAL__N_14FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6custom12_GLOBAL__N_14FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.ai, %bb.ah
  %i.bv = phi ptr [ %i.br, %bb.ai ], [ %i.bq, %bb.ah ]
  store ptr %i.bf, ptr %0, align 8, !tbaa !263
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !264
  %i.bw = getelementptr inbounds nuw [76 x i8], ptr %i.bf, i64 %i.bc
  store ptr %i.bw, ptr %i.i, align 8, !tbaa !404
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag.exit: ; preds = %bb.s, %bb.a, %bb.k, %bb.l, %bb.m, %bb.r, %bb.t, %_ZNSt12_Vector_baseIN6custom12_GLOBAL__N_14FaceESaIS2_EE13_M_deallocateEPS2_m.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.b = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail6get_inINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getERNS_11GCPUContextEi(ptr %.val.i, ptr %.val2.i, i32 noundef 0) ; 3 uses
  %i.c = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail7get_outINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getERNS_11GCPUContextEi(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 3 uses
  %.val10.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !263 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.val11.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !264 ; 2 uses
  %i.e = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.f = ptrtoint ptr %.val10.i.i.i.i to i64      ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val11.i.i.i.i, %.val10.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 76
  %i.i = icmp ugt i64 %i.h, 121360158379668102
  br i1 %i.i, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !93

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #37
  %.val12.i.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !265 ; 3 uses
  %.val13.i.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %.pre.i.i.i = ptrtoint ptr %.val13.i.pre.i.i.i to i64
  %.pre25.i.i.i = ptrtoint ptr %.val12.i.pre.i.i.i to i64
  %i.k = icmp eq ptr %.val13.i.pre.i.i.i, %.val12.i.pre.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.a
  %.pre-phi26.i.i.i = phi i64 [ %.pre25.i.i.i, %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.val13.i.i.i.i = phi i1 [ %i.k, %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ true, %bb.a ]
  %.val12.i.i.i.i = phi ptr [ %.val12.i.pre.i.i.i, %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %.val10.i.i.i.i, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN6custom12_GLOBAL__N_14FaceEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 9 uses
  %i.m = sub i64 %.pre-phi.i.i.i, %.pre-phi26.i.i.i ; 4 uses
  %i.n = icmp sgt i64 %i.m, 76
  br i1 %i.n, label %bb.d, label %bb.e, !prof !296

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %.val12.i.i.i.i, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.m, 76
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.l, ptr noundef nonnull readonly align 4 dereferenceable(76) %.val12.i.i.i.i, i64 76, i1 false), !tbaa.struct !458
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.m ; 2 uses
  br i1 %.val13.i.i.i.i, label %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.01.03.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.l, %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i, i64 8 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !81
  %i.s = load <2 x i32>, ptr %.sroa.01.03.i.i.i.i, align 4, !tbaa !81 ; 2 uses
  %i.t = sub nsw <2 x i32> %i.r, %i.s
  %i.u = sitofp <2 x i32> %i.t to <2 x float>     ; 3 uses
  %i.v = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.w = extractelement <2 x float> %i.u, i64 1   ; 2 uses
  %i.x = fcmp olt float %i.v, %i.w
  %.sroa.speculated.i.i.i.i.i = select i1 %i.x, float %i.w, float %i.v
  %i.y = sitofp <2 x i32> %i.s to <2 x float>
  %i.z = insertelement <2 x float> poison, float %.sroa.speculated.i.i.i.i.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fsub <2 x float> %i.u, %i.aa
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> splat (float 5.000000e-01), <2 x float> %i.y)
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>   ; 2 uses
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  %i.af = fadd <2 x float> %i.aa, %i.ae           ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fptosi float %i.ag to i32
  %i.ai = extractelement <2 x float> %i.af, i64 1
  %i.aj = fptosi float %i.ai to i32
  %.sroa.7.8.insert.ext.i.i.i.i.i = zext i32 %i.aj to i64
  %.sroa.7.8.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.7.8.insert.ext.i.i.i.i.i, 32
  %.sroa.5.8.insert.ext.i.i.i.i.i = zext i32 %i.ah to i64
  %.sroa.5.8.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.7.8.insert.shift.i.i.i.i.i, %.sroa.5.8.insert.ext.i.i.i.i.i
  store <2 x i32> %i.ad, ptr %.sroa.01.03.i.i.i.i, align 4, !tbaa !81
  store i64 %.sroa.5.8.insert.insert.i.i.i.i.i, ptr %i.q, align 4, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i.i, i64 76 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.p
  br i1 %.not.i.i.i.i, label %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i, label %.lr.ph.i.i.i.i

_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EEC2ERKS4_.exit.i.i.i
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !263 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !264
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i
  %.val13.i.i.i = phi ptr [ %i.an, %_ZN6custom12_GLOBAL__N_14Face14bboxes2SquaresERSt6vectorIS1_SaIS1_EE.exit.i.i.i ], [ %i.al, %_ZSt8_DestroyIPN6custom12_GLOBAL__N_14FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i ]
  invoke fastcc void @_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEvEES9_NS7_IPKS2_S4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %.val13.i.i.i, ptr %i.l, ptr %i.p)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #36
  br label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EE5clearEv.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i18.i.i.i, label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #36
  br label %_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i

_ZNSt6vectorIN6custom12_GLOBAL__N_14FaceESaIS2_EED2Ev.exit19.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ao

_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_118OCVBBoxesToSquaresESt5tupleIJNS_6GArrayINS3_4FaceEEEEES9_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSE_IJXspT0_EEEE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.b = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail6get_inINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getERNS_11GCPUContextEi(ptr %.val.i, ptr %.val3.i, i32 noundef 0) ; 2 uses
  %i.c = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZN2cv6detail6get_inINS_7GOpaqueINS_5Size_IiEEEEE3getERNS_11GCPUContextEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 1) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN2cv11GCPUContext9outVecRefEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv6detail9VectorRef4wrefINS_5Rect_IiEEEERSt6vectorIT_SaIS6_EEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d) ; 4 uses
  %.val4.i = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val5.i = load ptr, ptr %i.f, align 8          ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !421  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !422  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %bb.a ], [ %i.g, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i ]
  %.not95.i.i.i = icmp eq ptr %.val4.i, %.val5.i
  br i1 %.not95.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.cg, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 6 uses
  %i.n = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.ch, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 7 uses
  %.sroa.091.096.i.i.i = phi ptr [ %.val4.i, %.lr.ph.i.i.i ], [ %i.ci, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i ] ; 4 uses
  %i.o = load i64, ptr %.sroa.091.096.i.i.i, align 4 ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 9 uses
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !272
  %i.u = sub nsw i32 %i.t, %i.p                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !273
  %i.x = sub nsw i32 %i.w, %i.r                   ; 3 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !211  ; 4 uses
  %i.z = sub nsw i32 %i.y, %i.p                   ; 4 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !210 ; 4 uses
  %i.ab = sub nsw i32 %i.aa, %i.r                 ; 2 uses
  %i.ac = icmp slt i32 %i.z, 1
  %i.ad = icmp slt i32 %i.ab, 1
  %i.ae = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %i.ae, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %1

1:                                                ; preds = %bb.b
  %2 = icmp slt i32 %i.y, 1
  %3 = icmp slt i32 %i.aa, 1
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %1
  %5 = tail call i32 @llvm.smin.i32(i32 %i.p, i32 0) ; 2 uses
  %i.af = icmp slt i32 %i.p, 0                    ; 3 uses
  %6 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0) ; 3 uses
  %7 = add nsw i32 %i.z, %5
  %i.ag = icmp slt i32 %7, %6
  %or.cond.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i, label %.cont35.i.i.i.i

.cont35.i.i.i.i:                                  ; preds = %bb.c
  %i.ah = icmp slt i64 %i.o, 0                    ; 2 uses
  %spec.select92.i.i.i = select i1 %i.ah, i32 0, i32 %i.r ; 2 uses
  %.v.v.i.i.i.i = select i1 %i.af, i32 %i.z, i32 %i.y
  %.v.i.i.i.i = sub i32 %5, %6
  %i.ai = add i32 %.v.i.i.i.i, %.v.v.i.i.i.i
  %i.aj = select i1 %i.af, i32 %i.y, i32 %i.z
  %.sroa.speculated53.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ai) ; 2 uses
  %i.ak = sub nsw i32 %i.aa, %spec.select92.i.i.i
  %i.al = select i1 %i.ah, i32 %i.aa, i32 %i.ab
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ak) ; 2 uses
  %i.am = icmp slt i32 %.sroa.speculated53.i.i.i.i.i, 1
  %i.an = icmp slt i32 %.sroa.speculated.i.i.i.i.i, 1
  %i.ao = select i1 %i.am, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.d, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i

bb.d:                                             ; preds = %.cont35.i.i.i.i
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i:    ; preds = %bb.d, %.cont35.i.i.i.i, %bb.c, %1, %bb.b
  %.sroa.0.sroa.0.0.i.i.i.i = phi i32 [ %6, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %1 ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.sroa.9.0.i.i.i.i = phi i32 [ %spec.select92.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %1 ], [ 0, %bb.c ] ; 4 uses
  %.sroa.14.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.speculated53.i.i.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %1 ], [ 0, %bb.c ] ; 4 uses
  %.sroa.14.sroa.12.0.i.i.i.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %.cont35.i.i.i.i ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %1 ], [ 0, %bb.c ] ; 3 uses
  %i.ap = icmp slt i32 %i.u, 1
  %i.aq = icmp slt i32 %i.x, 1
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %i.ar, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i
  %i.as = icmp eq i32 %.sroa.14.sroa.0.0.i.i.i.i, 0
  %i.at = icmp eq i32 %.sroa.14.sroa.12.0.i.i.i.i, 0
  %i.au = select i1 %i.as, i1 true, i1 %i.at
  br i1 %i.au, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = icmp sgt i32 %.sroa.0.sroa.0.0.i.i.i.i, %i.p ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.0.sroa.9.0.i.i.i.i, %i.r ; 2 uses
  %i.ax = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %.sroa.0.sroa.0.0.i.i.i.i) ; 2 uses
  %i.ay = icmp slt i32 %i.p, 0
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %.sroa.0.sroa.0.0.i.i.i.i) ; 3 uses
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated37.i.i.i = select i1 %i.av, i32 %i.u, i32 %.sroa.14.sroa.0.0.i.i.i.i
  %i.ba = add nsw i32 %.sroa.speculated37.i.i.i, %i.ax
  %i.bb = icmp slt i32 %i.ba, %i.az
  br i1 %i.bb, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.speculated50.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r) ; 3 uses
  %i.bc = icmp slt i32 %.sroa.speculated50.i.i.i, 0
  %.sroa.speculated31.i.i.i = select i1 %i.aw, i32 %i.x, i32 %.sroa.14.sroa.12.0.i.i.i.i ; 2 uses
  br i1 %i.bc, label %bb.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h
  %.pre59.i.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r)
  %.pre60.i.i.i.i = add nuw i32 %.sroa.speculated31.i.i.i, %.sroa.speculated50.i.i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %.sroa.speculated31.i.i.i, %.sroa.speculated50.i.i.i ; 2 uses
  %.sroa.speculated47.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.sroa.9.0.i.i.i.i, i32 %i.r) ; 2 uses
  %i.be = icmp slt i32 %i.bd, %.sroa.speculated47.i.i.i
  br i1 %i.be, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.neg49.pre-phi.i.i.i.i = phi i32 [ %.pre60.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bd, %bb.i ]
  %i.bf = phi i32 [ %.pre59.i.sroa.speculated.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.speculated47.i.i.i, %bb.i ] ; 2 uses
  %.sroa.speculated40.i.i.i = select i1 %i.av, i32 %i.u, i32 %.sroa.14.sroa.0.0.i.i.i.i
  %.neg.i.i.i.i = sub i32 %i.ax, %i.az
  %i.bg = add i32 %.neg.i.i.i.i, %.sroa.speculated40.i.i.i
  %.sroa.speculated34.i.i.i = select i1 %i.av, i32 %.sroa.14.sroa.0.0.i.i.i.i, i32 %i.u
  %.sroa.speculated53.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated34.i.i.i, i32 %i.bg) ; 2 uses
  %.sroa.17.8.insert.ext.i.i.i = zext nneg i32 %.sroa.speculated53.i.i.i.i to i64
  %i.bh = sub i32 %.neg49.pre-phi.i.i.i.i, %i.bf
  %.sroa.speculated.i.i.i = select i1 %i.aw, i32 %.sroa.14.sroa.12.0.i.i.i.i, i32 %i.x
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i.i.i, i32 %i.bh) ; 2 uses
  %.sroa.17.12.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i.i to i64
  %.sroa.17.12.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.17.12.insert.ext.i.i.i, 32
  %.sroa.17.12.insert.insert.i.i.i = or disjoint i64 %.sroa.17.12.insert.shift.i.i.i, %.sroa.17.8.insert.ext.i.i.i
  %i.bi = icmp slt i32 %.sroa.speculated53.i.i.i.i, 1
  %i.bj = icmp slt i32 %.sroa.speculated.i.i.i.i, 1
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  br label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i:   ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i
  %.sroa.054.sroa.0.0.i.i.i = phi i32 [ %i.az, %bb.j ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.054.sroa.11.0.i.i.i = phi i32 [ %i.bf, %bb.j ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.17.0.i.i.i = phi i64 [ %.sroa.17.12.insert.insert.i.i.i, %bb.j ], [ 0, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit.i.i.i ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !426
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.bl
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i
  %.sroa.054.sroa.11.0.insert.ext.i.i.i = zext nneg i32 %.sroa.054.sroa.11.0.i.i.i to i64
  %.sroa.054.sroa.11.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.054.sroa.11.0.insert.ext.i.i.i, 32
  %.sroa.054.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %.sroa.054.sroa.0.0.i.i.i to i64
  %.sroa.054.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.054.sroa.11.0.insert.shift.i.i.i, %.sroa.054.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.054.sroa.0.0.insert.insert.i.i.i, ptr %i.n, align 4, !tbaa !81
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.17.0.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i, align 4, !tbaa !81
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i

bb.m:                                             ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.i.i.i
  %i.bn = ptrtoint ptr %i.n to i64
  %i.bo = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.n, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.m
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #37 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %.sroa.054.sroa.11.0.insert.ext77.i.i.i = zext nneg i32 %.sroa.054.sroa.11.0.i.i.i to i64
  %.sroa.054.sroa.11.0.insert.shift78.i.i.i = shl nuw nsw i64 %.sroa.054.sroa.11.0.insert.ext77.i.i.i, 32
  %.sroa.054.sroa.0.0.insert.ext74.i.i.i = zext nneg i32 %.sroa.054.sroa.0.0.i.i.i to i64
  %.sroa.054.sroa.0.0.insert.insert76.i.i.i = or disjoint i64 %.sroa.054.sroa.11.0.insert.shift78.i.i.i, %.sroa.054.sroa.0.0.insert.ext74.i.i.i
  store i64 %.sroa.054.sroa.0.0.insert.insert76.i.i.i, ptr %i.by, align 4, !tbaa !81
  %.sroa.17.0..sroa_idx60.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.sroa.17.0.i.i.i, ptr %.sroa.17.0..sroa_idx60.i.i.i, align 4, !tbaa !81
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bx, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !279, !alias.scope !1417
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1416

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !426
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ce) #36
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !421
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !422
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !426
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.l
  %i.cg = phi ptr [ %i.m, %bb.l ], [ %i.bx, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.ch = phi ptr [ %i.bm, %bb.l ], [ %i.cb, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.091.096.i.i.i, i64 76 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, %.val5.i
  br i1 %.not.i.i.i, label %_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit, label %bb.b

_ZN2cv6detail13OCVCallHelperIN6custom12_GLOBAL__N_124OCVR_O_NetPreProcGetROIsESt5tupleIJNS_6GArrayINS3_4FaceEEENS_7GOpaqueINS_5Size_IiEEEEEES5_IJNS6_INS_5Rect_IiEEEEEEE9call_implIJLi0ELi1EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSM_IJXspT0_EEEE.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN2cv6detail6get_inINS_7GOpaqueINS_5Size_IiEEEEE3getERNS_11GCPUContextEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.73, i64 noundef %i.a, i64 noundef %i.h) #34
  unreachable

_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !130  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_6detail9OpaqueRefEEE, i64 0) #35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv11GCPUContext5inArgINS_6detail9OpaqueRefEEERKT_i.exit

_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.i.i.i, %_ZNSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !92
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_6detail9OpaqueRefEEEPT_PNS0_3anyE.exit.thread.i.i.i
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIN2cv5Rect_IiEES_INS1_6Point_IiEESaIS5_EEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a

_ZNSt12_Vector_baseISt4pairIN2cv5Rect_IiEESt6vectorINS1_6Point_IiEESaIS6_EEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIN2cv5Rect_IiEES_INS1_6Point_IiEESaIS5_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !269
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !268
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !270
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #35 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #36
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bg

bb.h:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #38
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN2cv5Rect_IiEESt6vectorINS3_6Point_IiEESaIS8_EEES6_ISB_SaISB_EEEEPSB_ET0_T_SJ_SI_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.u, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.t, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.018, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.017, i64 16, i1 false), !tbaa.struct !279
  %i.a = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !93

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #37
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.j, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !276
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !278
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.018, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !277
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %.noexc8 ] ; 2 uses
  %i.q = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !81
  store i64 %i.q, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc8 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !278
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.018, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1468

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %lpad.loopexit.split-lp36, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN2cv5Rect_IiEESt6vectorINS1_6Point_IiEESaIS6_EEEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #34
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.loopexit ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #38
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_face_detection_mtcnn.cpp() #30 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 16), ptr @_ZL5aboutB5cxx11, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 67, ptr %i.b, align 8, !tbaa !70
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL5aboutB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr @_ZL5aboutB5cxx11, align 8, !tbaa !72
  %i.d = load i64, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 16), align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.c, ptr noundef nonnull align 1 dereferenceable(67) @.str, i64 67, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 8), align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL5aboutB5cxx11, ptr nonnull @__dso_handle) #35 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), ptr @_ZL4keysB5cxx11, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 1223, ptr %i.a, align 8, !tbaa !70
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL4keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.g, ptr @_ZL4keysB5cxx11, align 8, !tbaa !72
  %i.h = load i64, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1223) %i.g, ptr noundef nonnull align 1 dereferenceable(1223) @.str.2, i64 1223, i1 false)
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 8), align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL4keysB5cxx11, ptr nonnull @__dso_handle) #35 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { noreturn }
attributes #35 = { nounwind }
attributes #36 = { builtin nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!56, !57, !58}
!llvm.ident = !{!59}
!llvm.errno.tbaa = !{!64}

!0 = distinct !{ptr @_ZN2cv4GMatD2Ev, null, null, null}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = distinct !{!3, !83}
!4 = distinct !{!4, !83}
!5 = distinct !{!5, !83}
!6 = distinct !{!6, !83}
!7 = distinct !{!7, !83}
!8 = distinct !{!8, !83}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv4gapi3wip13IStreamSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{!10, !83}
!11 = distinct !{ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!12 = distinct !{ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!13 = distinct !{ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!14 = distinct !{ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!15 = distinct !{null, ptr @_ZN2cv6GArrayINS_4GMatEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!16 = distinct !{null, ptr @_ZN2cv6GArrayINS_4GMatEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!17 = distinct !{ptr @_ZN2cv11GCompileArgD2Ev, null, null, null}
!18 = distinct !{ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, ptr @_ZN2cv11GCompileArgD2Ev, null, null, null}
!19 = distinct !{!19, !83}
!20 = distinct !{ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv4util3anyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev, null, ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv4util3anyEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv, null, null, null, null, null, null}
!21 = distinct !{null, null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{ptr @_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev, null, null, null, null, null, null, null}
!24 = distinct !{ptr @_ZN2cv6GFrameD2Ev, null, null, null}
!25 = distinct !{null, null, null, null, null, null}
!26 = distinct !{null, null, null}
!27 = distinct !{null, null}
!28 = distinct !{!28, !83}
!29 = distinct !{!29, !83}
!30 = distinct !{!30, !83}
!31 = distinct !{!31, !83}
!32 = distinct !{!32, !83}
!33 = distinct !{null}
!34 = distinct !{!34, !83}
!35 = distinct !{!35, !83}
!36 = distinct !{!36, !83}
!37 = distinct !{ptr @_ZN2cv4gapi8GBackendD2Ev, null, null, null}
!38 = distinct !{!38, !83}
!39 = distinct !{ptr @_ZSt8_DestroyIPN2cv4gapi9GNetParamEEvT_S4_, null, null, ptr @_ZN2cv4gapi9GNetParamD2Ev, null, null, null}
!40 = distinct !{ptr @_ZSt8_DestroyIPN2cv4gapi9GNetParamEEvT_S4_, null, null, ptr @_ZN2cv4gapi9GNetParamD2Ev, ptr @_ZN2cv4gapi8GBackendD2Ev, null, null, null}
!41 = distinct !{!41, !83}
!42 = distinct !{null, null, null, null, null, null}
!43 = distinct !{null, null}
!44 = distinct !{null, null, null, null}
!45 = distinct !{!45, !83}
!46 = distinct !{ptr @_ZN2cv6detail9VectorRefD2Ev, null, null, null}
!47 = distinct !{null, null, null, null}
!48 = distinct !{null, null, null, null}
!49 = distinct !{!49, !83}
!50 = distinct !{null, null, null, null, null, null, null}
!51 = distinct !{null, null, null, null, null, null, null}
!52 = distinct !{null}
!53 = distinct !{null, null, null, null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = !{i32 8, !"PIC Level", i32 2}
!57 = !{i32 7, !"PIE Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 2}
!59 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!"omnipotent char", !60, i64 0}
!62 = !{!"int", !61, i64 0}
!63 = !{!"__libc_errno", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = !{!"any pointer", !61, i64 0}
!66 = !{!"p1 omnipotent char", !65, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!68 = !{!67, !66, i64 0}
!69 = !{!"long", !61, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !69, i64 8, !61, i64 16}
!72 = !{!71, !66, i64 0}
!73 = !{!61, !61, i64 0}
!74 = !{!71, !69, i64 8}
!75 = !{!"float", !61, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"bool", !61, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!62, !62, i64 0}
!82 = !{!"double", !61, i64 0}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"p1 _ZTSN2cv4GMatE", !65, i64 0}
!85 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0}
!86 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0}
!87 = !{!86, !85, i64 0}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !62, i64 8, !62, i64 12}
!89 = !{!88, !62, i64 8}
!90 = !{!88, !62, i64 12}
!91 = !{!"vtable pointer", !60, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!94 = !{!65, !65, i64 0}
!95 = !{!"p1 _ZTSN2cv7GOriginE", !65, i64 0}
!96 = !{!"_ZTSSt12__shared_ptrIN2cv7GOriginELN9__gnu_cxx12_Lock_policyE2EE", !95, i64 0, !86, i64 8}
!97 = !{!96, !95, i64 0}
!98 = !{!"p1 _ZTSN2cv6detail12TypeHintBaseE", !65, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN2cv6GShapeESaIS1_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!100 = !{!99, !65, i64 0}
!101 = !{!99, !65, i64 16}
!102 = !{!"_ZTSN2cv6GShapeE", !61, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!99, !65, i64 8}
!105 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail10OpaqueKindESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!106 = !{!105, !65, i64 0}
!107 = !{!105, !65, i64 16}
!108 = !{!105, !65, i64 8}
!109 = !{!"_ZTSN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEEE", !69, i64 0, !61, i64 8}
!110 = !{!109, !69, i64 0}
!111 = !{!"p1 _ZTSN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEEE", !65, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 16}
!115 = !{!112, !111, i64 8}
!116 = !{!"_ZTSN2cv6detail10OpaqueKindE", !61, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTSN2cv6detail7ArgKindE", !61, i64 0}
!119 = !{!"p1 _ZTSN2cv4util3any6holderE", !65, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EPN2cv4util3any6holderELb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJPN2cv4util3any6holderESt14default_deleteIS3_EEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJPN2cv4util3any6holderESt14default_deleteIS3_EEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implIN2cv4util3any6holderESt14default_deleteIS3_EE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataIN2cv4util3any6holderESt14default_deleteIS3_ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrIN2cv4util3any6holderESt14default_deleteIS3_EE", !124, i64 0}
!126 = !{!"_ZTSN2cv4util3anyE", !125, i64 0}
!127 = !{!"_ZTSN2cv4GArgE", !118, i64 0, !116, i64 4, !126, i64 8}
!128 = !{!127, !118, i64 0}
!129 = !{!127, !116, i64 4}
!130 = !{!119, !119, i64 0}
!131 = !{!"p1 _ZTSN2cv4GArgE", !65, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIN2cv4GArgESaIS1_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!133 = !{!132, !131, i64 0}
!134 = !{!132, !131, i64 16}
!135 = !{!132, !131, i64 8}
!136 = !{!"_ZTSSt14_Function_base", !61, i64 0, !65, i64 16}
!137 = !{!136, !65, i64 16}
end_hunk_1
