Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gstreamersource?download=true
inline.NumInlined: 833
inline.NumDeleted: 545
begin_hunk_0_@_ZN2cv4gapi3wip3gst15GStreamerSource4Priv16computeTimestampEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %.not10 = icmp eq i64 %i.j, -1
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = udiv i64 %i.j, 1000
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %i.m = sdiv i64 %i.l, 1000
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.k, %bb.f ], [ %i.m, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv4gapi3wip3gst15GStreamerSource4Priv8descr_ofEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::util::variant.37") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv(ptr noundef nonnull align 8 dereferenceable(304) %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  switch i32 %i.b, label %bb.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 5, ptr %0, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !167
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 1, ptr %0, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !168  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !82   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.n, 9223372036854775804
  br i1 %i.o, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !87

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge unwind label %bb.k

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !169 ; 2 uses
  %.pre2 = load ptr, ptr %i.i, align 8, !tbaa !169
  %.pre3 = ptrtoint ptr %.pre2 to i64
  %.pre4 = ptrtoint ptr %.pre to i64
  br label %.noexc1

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge, %bb.d
  %.pre-phi5 = phi i64 [ %.pre4, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge ], [ %i.m, %bb.d ]
  %.pre-phi = phi i64 [ %.pre3, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge ], [ %i.l, %bb.d ]
  %i.q = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge ], [ %i.k, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %i.p, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i..noexc1_crit_edge ], [ null, %bb.d ] ; 5 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.t, ptr %i.u, align 8, !tbaa !83
  %i.v = sub i64 %.pre-phi, %.pre-phi5            ; 4 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.f, label %bb.g, !prof !170

bb.f:                                             ; preds = %.noexc1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.q, i64 %i.v, i1 false)
  br label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2IRS3_vEEOT_.exit

bb.g:                                             ; preds = %.noexc1
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.h, label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2IRS3_vEEOT_.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.q, align 4, !tbaa !86
  store i32 %i.y, ptr %i.r, align 4, !tbaa !86
  br label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2IRS3_vEEOT_.exit

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2IRS3_vEEOT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.z, ptr %i.s, align 8, !tbaa !168
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !166
  br label %bb.j

bb.j:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2IRS3_vEEOT_.exit, %bb.c, %bb.i
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.a
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !171, !range !106, !noundef !107
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  tail call void @_ZN2cv4gapi3wip3gst23GStreamerPipelineFacade15completePrerollEv(ptr noundef nonnull align 8 dereferenceable(96) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.j = tail call ptr @gst_app_sink_try_pull_preroll(ptr noundef %i.i, i64 noundef 5000000000) ; 4 uses
  %.not73 = icmp eq ptr %i.j, null
  br i1 %.not73, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv, ptr noundef nonnull @.str.1, i32 noundef 170) #24
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !76
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.h:                                             ; preds = %bb.b
  %i.r = invoke ptr @gst_sample_get_caps(ptr noundef nonnull %i.j)
          to label %bb.i unwind label %bb.w       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv, ptr noundef nonnull @.str.1, i32 noundef 173) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.n:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.n
  %i.x = load i64, ptr %i.v, align 8, !tbaa !76
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.t, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bh

bb.o:                                             ; preds = %bb.i
  %i.z = invoke ptr @gst_caps_get_structure(ptr noundef nonnull %i.r, i32 noundef 0)
          to label %bb.p unwind label %bb.w       ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !86
  %i.aa = invoke i32 @gst_structure_get_int(ptr noundef %i.z, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not22 = icmp eq i32 %i.aa, 0
  br i1 %.not22, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = invoke i32 @gst_structure_get_int(ptr noundef %i.z, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.13)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.h, %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.x:                                             ; preds = %bb.ab, %bb.r, %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.y:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn24 = phi { ptr, i32 } [ %i.af, %bb.z ], [ %i.ae, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bg

bb.ab:                                            ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = invoke i32 @gst_video_info_from_caps(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.r)
          to label %bb.ac unwind label %bb.x

bb.ac:                                            ; preds = %bb.ab
  %.not26 = icmp eq i32 %i.ah, 0
  br i1 %.not26, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.14)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn27 = phi { ptr, i32 } [ %i.aj, %bb.ah ], [ %i.ai, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ac
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !99 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.am, ptr %i.an, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !70
  switch i32 %i.ap, label %bb.be [
    i32 0, label %bb.ak
    i32 1, label %bb.bc
  ]

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.al, label %bb.ax [
    i32 23, label %bb.al
    i32 25, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !86
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 1, ptr %i.as, align 8, !tbaa !105
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.aq, ptr %.sroa.461.0..sroa_idx, align 4, !tbaa !86
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.ar, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 84
  %i.au = load i32, ptr %i.at, align 4, !tbaa !104
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.be, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv, ptr noundef nonnull @.str.1, i32 noundef 199) #24
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.aq:                                            ; preds = %bb.an
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.aq
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !76
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.ap
  %.pn31 = phi { ptr, i32 } [ %i.aw, %bb.ap ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.ax, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bg

bb.ar:                                            ; preds = %bb.ak
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !86
  %i.be = load i32, ptr %i.b, align 4, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 2, ptr %i.bf, align 8, !tbaa !105
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.bd, ptr %.sroa.458.0..sroa_idx, align 4, !tbaa !86
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.be, ptr %.sroa.559.0..sroa_idx, align 8, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 84
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !104
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv, ptr noundef nonnull @.str.1, i32 noundef 204) #24
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.as
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.aw:                                            ; preds = %bb.at
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.aw
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !76
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.av
  %.pn29 = phi { ptr, i32 } [ %i.bj, %bb.av ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bk, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bg

bb.ax:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv16prepareVideoMetaEv, ptr noundef nonnull @.str.1, i32 noundef 208) #24
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.bb:                                            ; preds = %bb.ay
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.bb
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.ba
  %.pn33 = phi { ptr, i32 } [ %i.bq, %bb.ba ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.br, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bg

bb.bc:                                            ; preds = %bb.aj
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !86
  %i.by = load i32, ptr %i.b, align 4, !tbaa !86
  %.sroa.2.0.insert.ext = zext i32 %i.by to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bx to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.bz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #22
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.al, %bb.ar, %bb.aj
  store i8 1, ptr %i.c, align 4, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @gst_mini_object_unref(ptr noundef nonnull %i.j)
          to label %_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.ai, %bb.aa, %bb.x
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn27, %bb.ai ], [ %i.ad, %bb.x ], [ %.pn24, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit52

bb.bh:                                            ; preds = %bb.w, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn33.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn33.pn, %bb.bg ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ac, %bb.w ]
  invoke void @gst_mini_object_unref(ptr noundef nonnull %i.j)
          to label %_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit52 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #25
  unreachable

_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit52: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.pn33.pn.pn.pn.pn72 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.pn33.pn.pn.pn.pn.ph, %bb.bh ]
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn72

_ZNSt10unique_ptrI10_GstSamplePFvPS0_EED2Ev.exit: ; preds = %bb.be, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare noundef zeroext i1 @_ZN2cv4gapi3wip3gst23GStreamerPipelineFacade9isPlayingEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare void @gst_app_sink_set_max_buffers(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gst_app_sink_set_emit_signals(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gst_caps_from_string(ptr noundef) local_unnamed_addr #3

declare ptr @gst_element_get_static_pad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gst_pad_peer_query_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gst_caps_can_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 2 uses
  tail call void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #24
  unreachable
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @gst_app_sink_set_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @gst_pad_add_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 1, 5) i32 @_ZN2cv4gapi3wip3gst12_GLOBAL__N_120appsinkQueryCallbackEP7_GstPadP16_GstPadProbeInfoPv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !178
  %.not = icmp eq i32 %i.d, 35846
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @gst_video_meta_api_get_type()
  tail call void @gst_query_add_allocation_meta(ptr noundef nonnull %i.b, i64 noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @_ZN2cv4gapi3wip3gst23GStreamerPipelineFacade15completePrerollEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare ptr @gst_app_sink_try_pull_preroll(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gst_sample_get_caps(ptr noundef) local_unnamed_addr #3

declare ptr @gst_caps_get_structure(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gst_structure_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gst_video_info_from_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv4gapi3wip3gst15GStreamerSource4Priv10pullBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 285 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !179, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void @_ZN2cv4gapi3wip3gst23GStreamerPipelineFacade4playEv(ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  store i8 1, ptr %i.a, align 1, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = tail call i32 @gst_app_sink_is_eos(ptr noundef %i.g)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.j = tail call ptr @gst_app_sink_pull_sample(ptr noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84   ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !81
  invoke void %i.n(ptr noundef nonnull %i.m)
          to label %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exitthread-pre-split unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exitthread-pre-split: ; preds = %bb.e
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !84
  br label %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit

_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit: ; preds = %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exitthread-pre-split, %bb.d
  %i.q = phi ptr [ %.pr, %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exitthread-pre-split ], [ %i.j, %bb.d ] ; 2 uses
  store ptr @_ZN2cv4gapi3wip3gstL19GStreamerPtrReleaseI10_GstSampleEEvPT_, ptr %i.k, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit
  %i.r = tail call ptr @gst_sample_get_buffer(ptr noundef nonnull %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !88
  %.not5 = icmp eq ptr %i.r, null
  br i1 %.not5, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv4gapi3wip3gst15GStreamerSource4Priv10pullBufferEv, ptr noundef nonnull @.str.1, i32 noundef 266) #24
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.x = load i64, ptr %i.v, align 8, !tbaa !76
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.t

bb.k:                                             ; preds = %bb.g, %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit, %bb.c
  %.04 = phi i1 [ false, %_ZN2cv4gapi3wip3gst12GStreamerPtrI10_GstSampleEaSEPS4_.exit ], [ false, %bb.c ], [ true, %bb.g ]
  ret i1 %.04
}

declare void @_ZN2cv4gapi3wip3gst23GStreamerPipelineFacade4playEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

end_hunk_0
