Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/shapedescr?download=true
inline.NumInlined: 1222
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.i, ptr %i.h, align 1, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !68
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv10fitEllipseERKNS_11_InputArrayE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::RotatedRect") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv10fitEllipseERKNS_11_InputArrayEE25__cv_trace_location_fn407)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11, !noalias !71
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %.not = icmp eq i32 %i.e, 5
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !38
  store i32 16842752, ptr %4, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.h, align 8, !tbaa !11
  invoke void @_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.critedge32 unwind label %.thread35

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !38
  store i32 16842752, ptr %5, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !11
  invoke fastcc void @_ZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayE(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.critedge unwind label %.thread38

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge31

.critedge32:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge, %.critedge32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge31
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge31, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.thread35:                                        ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

.thread38:                                        ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.k:                                             ; preds = %.thread38, %.thread35, %bb.j
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.r, %.thread35 ], [ %i.q, %bb.j ], [ %i.s, %.thread38 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.k ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::RotatedRect") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 32 uses
  %9 = alloca %"class.cv::Matx.6", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::RotatedRect", align 4  ; 5 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !80
  %i.c = icmp eq i32 %i.b, 65536
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11, !noalias !80
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.e)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.f = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f       ; 10 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.i = and i32 %i.h, 31
  %i.j = icmp eq i32 %i.i, 5                      ; 2 uses
  %i.k = and i32 %i.h, 30
  %or.cond = icmp eq i32 %i.k, 4
  br i1 %or.cond, label %bb.l, label %bb.g

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv16fitEllipseDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 620) #18
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.as

bb.l:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.t = icmp samesign ult i32 %i.f, 5
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv16fitEllipseDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 625) #18
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.q:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.q
  %i.z = load i64, ptr %i.x, align 8, !tbaa !24
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.p
  %.pn189 = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.v, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.as

bb.r:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.f, i32 noundef 6, i32 noundef 6)
          to label %.lr.ph unwind label %bb.s

.lr.ph:                                           ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %8, i8 0, i64 288, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %wide.trip.count439 = zext nneg i32 %i.f to i64 ; 8 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count439, 3      ; 3 uses
  %unroll_iter = and i64 %wide.trip.count439, 2147483644
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter593 = and i64 %wide.trip.count439, 3   ; 3 uses
  %unroll_iter600 = and i64 %wide.trip.count439, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader
  %indvars.iv436 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next437.3, %.lr.ph.split.us ] ; 5 uses
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph.split.us.preheader ], [ %i.aw, %.lr.ph.split.us ]
  %niter601 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %niter601.next.3, %.lr.ph.split.us ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.af = load <2 x float>, ptr %i.ae, align 4
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = fadd <2 x double> %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fadd <2 x double> %i.ah, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load <2 x float>, ptr %i.ao, align 4
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fadd <2 x double> %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 4
  %i.av = fpext <2 x float> %i.au to <2 x double>
  %i.aw = fadd <2 x double> %i.ar, %i.av          ; 3 uses
  %indvars.iv.next437.3 = add nuw nsw i64 %indvars.iv436, 4 ; 2 uses
  %niter601.next.3 = add i64 %niter601, 4         ; 2 uses
  %niter601.ncmp.3 = icmp eq i64 %niter601.next.3, %unroll_iter600
  br i1 %niter601.ncmp.3, label %.lr.ph385.split.us.preheader.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 5 uses
  %i.ax = phi <2 x double> [ zeroinitializer, %.lr.ph.split.preheader ], [ %i.bu, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader ], [ %niter.next.3, %.lr.ph.split ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.az = load <2 x i32>, ptr %i.ay, align 4, !tbaa !28
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fadd <2 x double> %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !28
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = fadd <2 x double> %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !tbaa !28
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = fpext <2 x float> %i.bm to <2 x double>
  %i.bo = fadd <2 x double> %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load <2 x i32>, ptr %i.bq, align 4, !tbaa !28
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = fadd <2 x double> %i.bo, %i.bt          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph385.split.preheader.unr-lcssa, label %.lr.ph.split, !llvm.loop !74

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph385.split.preheader.unr-lcssa:              ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph385.split.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.lr.ph385.split.preheader.unr-lcssa
  %lcmp.mod585 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.next.3, %.lr.ph.split.epil.preheader ] ; 2 uses
  %i.bw = phi <2 x double> [ %i.cb, %.lr.ph.split.epil ], [ %i.bu, %.lr.ph.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.epil
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !28
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %i.cb = fadd <2 x double> %i.bw, %i.ca          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph385.split.preheader, label %.lr.ph.split.epil, !llvm.loop !75

.lr.ph385.split.preheader:                        ; preds = %.lr.ph.split.epil, %.lr.ph385.split.preheader.unr-lcssa
  %.lcssa583.a = phi <2 x double> [ %i.bu, %.lr.ph385.split.preheader.unr-lcssa ], [ %i.cb, %.lr.ph.split.epil ]
  %i.cc = uitofp nneg i32 %i.f to double          ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %.lcssa583.a, %i.ce   ; 5 uses
  %xtraiter586 = and i64 %wide.trip.count439, 1
  %unroll_iter591 = and i64 %wide.trip.count439, 2147483646
  br label %.lr.ph385.split

.lr.ph385.split.us.preheader.unr-lcssa:           ; preds = %.lr.ph.split.us
  %lcmp.mod597.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod597.not, label %.lr.ph385.split.us.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.lr.ph385.split.us.preheader.unr-lcssa
  %lcmp.mod599 = icmp ne i64 %xtraiter593, 0
  call void @llvm.assume(i1 %lcmp.mod599)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv436.epil = phi i64 [ %indvars.iv.next437.epil, %.lr.ph.split.us.epil ], [ %indvars.iv.next437.3, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %i.cg = phi <2 x double> [ %i.ck, %.lr.ph.split.us.epil ], [ %i.aw, %.lr.ph.split.us.epil.preheader ]
  %epil.iter594 = phi i64 [ %epil.iter594.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436.epil
  %i.ci = load <2 x float>, ptr %i.ch, align 4
  %i.cj = fpext <2 x float> %i.ci to <2 x double>
  %i.ck = fadd <2 x double> %i.cg, %i.cj          ; 2 uses
  %indvars.iv.next437.epil = add nuw nsw i64 %indvars.iv436.epil, 1
  %epil.iter594.next = add i64 %epil.iter594, 1   ; 2 uses
  %epil.iter594.cmp.not = icmp eq i64 %epil.iter594.next, %xtraiter593
  br i1 %epil.iter594.cmp.not, label %.lr.ph385.split.us.preheader, label %.lr.ph.split.us.epil, !llvm.loop !76

.lr.ph385.split.us.preheader:                     ; preds = %.lr.ph.split.us.epil, %.lr.ph385.split.us.preheader.unr-lcssa
  %.lcssa580 = phi <2 x double> [ %i.aw, %.lr.ph385.split.us.preheader.unr-lcssa ], [ %i.ck, %.lr.ph.split.us.epil ]
  %i.cl = uitofp nneg i32 %i.f to double          ; 3 uses
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x double> %.lcssa580, %i.cn     ; 5 uses
  %xtraiter602 = and i64 %wide.trip.count439, 1
  %unroll_iter607 = and i64 %wide.trip.count439, 2147483646
  br label %.lr.ph385.split.us

.lr.ph385.split.us:                               ; preds = %.lr.ph385.split.us, %.lr.ph385.split.us.preheader
  %indvars.iv446 = phi i64 [ 0, %.lr.ph385.split.us.preheader ], [ %indvars.iv.next447.1, %.lr.ph385.split.us ] ; 3 uses
  %.0138382.us = phi double [ 0.000000e+00, %.lr.ph385.split.us.preheader ], [ %i.dd, %.lr.ph385.split.us ]
  %niter608 = phi i64 [ 0, %.lr.ph385.split.us.preheader ], [ %niter608.next.1, %.lr.ph385.split.us ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv446
  %i.cq = load <2 x float>, ptr %i.cp, align 4
  %i.cr = fpext <2 x float> %i.cq to <2 x double>
  %i.cs = fsub <2 x double> %i.cr, %i.co
  %i.ct = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cs) ; 2 uses
  %shift = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ct
  %i.cu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cv = fadd double %.0138382.us, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv446
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load <2 x float>, ptr %i.cx, align 4
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fsub <2 x double> %i.cz, %i.co
  %i.db = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %shift.1, %i.db
  %i.dc = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.dd = fadd double %i.cv, %i.dc                ; 3 uses
  %indvars.iv.next447.1 = add nuw nsw i64 %indvars.iv446, 2 ; 2 uses
  %niter608.next.1 = add i64 %niter608, 2         ; 2 uses
  %niter608.ncmp.1 = icmp eq i64 %niter608.next.1, %unroll_iter607
  br i1 %niter608.ncmp.1, label %._crit_edge386.loopexit.unr-lcssa, label %.lr.ph385.split.us, !llvm.loop !77

.lr.ph385.split:                                  ; preds = %.lr.ph385.split, %.lr.ph385.split.preheader
  %indvars.iv441 = phi i64 [ 0, %.lr.ph385.split.preheader ], [ %indvars.iv.next442.1, %.lr.ph385.split ] ; 3 uses
  %.0138382 = phi double [ 0.000000e+00, %.lr.ph385.split.preheader ], [ %i.du, %.lr.ph385.split ]
  %niter592 = phi i64 [ 0, %.lr.ph385.split.preheader ], [ %niter592.next.1, %.lr.ph385.split ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv441
  %i.df = load <2 x i32>, ptr %i.de, align 4, !tbaa !28
  %i.dg = sitofp <2 x i32> %i.df to <2 x float>
  %i.dh = fpext <2 x float> %i.dg to <2 x double>
  %i.di = fsub <2 x double> %i.dh, %i.cf
  %i.dj = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.di) ; 2 uses
  %shift548 = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549 = fadd <2 x double> %shift548, %i.dj
  %i.dk = extractelement <2 x double> %foldExtExtBinop549, i64 0
  %i.dl = fadd double %.0138382, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv441
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !28
  %i.dp = sitofp <2 x i32> %i.do to <2 x float>
  %i.dq = fpext <2 x float> %i.dp to <2 x double>
  %i.dr = fsub <2 x double> %i.dq, %i.cf
  %i.ds = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr) ; 2 uses
  %shift548.1 = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549.1 = fadd <2 x double> %shift548.1, %i.ds
  %i.dt = extractelement <2 x double> %foldExtExtBinop549.1, i64 0
  %i.du = fadd double %i.dl, %i.dt                ; 3 uses
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 2 uses
  %niter592.next.1 = add i64 %niter592, 2         ; 2 uses
  %niter592.ncmp.1 = icmp eq i64 %niter592.next.1, %unroll_iter591
  br i1 %niter592.ncmp.1, label %._crit_edge386.loopexit581.unr-lcssa, label %.lr.ph385.split, !llvm.loop !77

._crit_edge386.loopexit.unr-lcssa:                ; preds = %.lr.ph385.split.us
  %lcmp.mod604.not = icmp eq i64 %xtraiter602, 0
  br i1 %lcmp.mod604.not, label %._crit_edge386, label %.lr.ph385.split.us.epil.preheader

.lr.ph385.split.us.epil.preheader:                ; preds = %._crit_edge386.loopexit.unr-lcssa
  %lcmp.mod606 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod606)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next447.1
  %i.dw = load <2 x float>, ptr %i.dv, align 4
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = fsub <2 x double> %i.dx, %i.co
  %i.dz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dy) ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %shift.epil, %i.dz
  %i.ea = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.eb = fadd double %i.dd, %i.ea
  br label %._crit_edge386

._crit_edge386.loopexit581.unr-lcssa:             ; preds = %.lr.ph385.split
  %lcmp.mod588.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod588.not, label %._crit_edge386, label %.lr.ph385.split.epil.preheader

.lr.ph385.split.epil.preheader:                   ; preds = %._crit_edge386.loopexit581.unr-lcssa
  %lcmp.mod590 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod590)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next442.1
  %i.ed = load <2 x i32>, ptr %i.ec, align 4, !tbaa !28
  %i.ee = sitofp <2 x i32> %i.ed to <2 x float>
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.ef, %i.cf
  %i.eh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eg) ; 2 uses
  %shift548.epil = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549.epil = fadd <2 x double> %shift548.epil, %i.eh
  %i.ei = extractelement <2 x double> %foldExtExtBinop549.epil, i64 0
  %i.ej = fadd double %i.du, %i.ei
  br label %._crit_edge386

._crit_edge386:                                   ; preds = %.lr.ph385.split.epil.preheader, %._crit_edge386.loopexit581.unr-lcssa, %.lr.ph385.split.us.epil.preheader, %._crit_edge386.loopexit.unr-lcssa
  %i.ek = phi double [ %i.cl, %.lr.ph385.split.us.epil.preheader ], [ %i.cl, %._crit_edge386.loopexit.unr-lcssa ], [ %i.cc, %._crit_edge386.loopexit581.unr-lcssa ], [ %i.cc, %.lr.ph385.split.epil.preheader ]
  %.0138.lcssa = phi double [ %i.eb, %.lr.ph385.split.us.epil.preheader ], [ %i.dd, %._crit_edge386.loopexit.unr-lcssa ], [ %i.du, %._crit_edge386.loopexit581.unr-lcssa ], [ %i.ej, %.lr.ph385.split.epil.preheader ] ; 3 uses
  %i.el = phi <2 x double> [ %i.co, %.lr.ph385.split.us.epil.preheader ], [ %i.co, %._crit_edge386.loopexit.unr-lcssa ], [ %i.cf, %._crit_edge386.loopexit581.unr-lcssa ], [ %i.cf, %.lr.ph385.split.epil.preheader ] ; 2 uses
  %i.em = fcmp ogt double %.0138.lcssa, f0x3E80000000000000
  %i.en = select i1 %i.em, double %.0138.lcssa, double f0x3E80000000000000
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ew = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ek, i64 1
  %i.ey = fdiv <2 x double> <double 1.000000e+02, double 1.000000e+00>, %i.ex ; 4 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1 ; 6 uses
  %i.fa = extractelement <2 x double> %i.ey, i64 0
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 280 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pn184.in = shl nuw nsw i32 %i.f, 1
  %.pn184 = uitofp nneg i32 %.pn184.in to double
  %.1143.in.in = fdiv double %.0138.lcssa, %.pn184
  %.1143.in = fmul double %.1143.in.in, 1.000000e-02
  %.1143 = fptrunc double %.1143.in to float
  %wide.trip.count456 = zext nneg i32 %i.f to i64
  %i.go = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  %i.gp = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.af, %._crit_edge386
  %i.gq = phi i1 [ true, %._crit_edge386 ], [ false, %bb.af ]
  %.0142392 = phi float [ 0.000000e+00, %._crit_edge386 ], [ %.1143, %bb.af ] ; 3 uses
  %i.gr = fneg float %.0142392
  %i.gs = fadd float %.0142392, %.0142392
  %i.gt = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph390, %bb.x
  %indvars.iv452 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next453, %bb.x ] ; 8 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv452 ; 2 uses
  br i1 %i.j, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gy = load <2 x float>, ptr %i.gx, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gz = load <2 x i32>, ptr %i.gx, align 4, !tbaa !28
  %i.ha = sitofp <2 x i32> %i.gz to <2 x float>
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hb = phi <2 x float> [ %i.gy, %bb.u ], [ %i.ha, %bb.v ]
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !44 ; 2 uses
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = mul nuw i64 %i.he, 4164903690
  %i.hg = lshr i64 %i.hd, 32
  %i.hh = add nuw i64 %i.hf, %i.hg                ; 3 uses
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = mul nuw i64 %i.hi, 4164903690
  %i.hk = lshr i64 %i.hh, 32
  %i.hl = add nuw i64 %i.hj, %i.hk                ; 2 uses
  store i64 %i.hl, ptr %i.hc, align 8, !tbaa !44
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = trunc i64 %i.hh to i32
  %i.ho = uitofp i32 %i.hm to float
  %i.hp = uitofp i32 %i.hn to float
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.ho, i64 1
  %i.hs = fmul nnan <2 x float> %i.hr, splat (float f0x2F800000)
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.gu, <2 x float> %i.gw)
  %i.hu = fadd <2 x float> %i.hb, %i.ht
  %i.hv = fpext <2 x float> %i.hu to <2 x double>
  %i.hw = fsub <2 x double> %i.hv, %i.el
  %i.hx = load i32, ptr %i.eo, align 4, !tbaa !45
  %i.hy = icmp slt i32 %i.hx, 2                   ; 6 uses
  %i.hz = load ptr, ptr %i.ep, align 8, !tbaa !27 ; 6 uses
  %i.ia = load i64, ptr %i.eq, align 8
  %i.ib = mul i64 %i.ia, %indvars.iv452
  %.sink.idx.i = select i1 %i.hy, i64 0, i64 %i.ib
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i
  %i.ic = fmul <2 x double> %i.gp, %i.hw          ; 4 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.id, %i.ic          ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  store double %i.if, ptr %.sink.i, align 8, !tbaa !41
  %i.ig = load i64, ptr %i.eq, align 8
  %i.ih = mul i64 %i.ig, %indvars.iv452
  %.sink.idx.i197 = select i1 %i.hy, i64 0, i64 %i.ih
  %.sink.i198 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i197
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink.i198, i64 8
  %i.ij = extractelement <2 x double> %i.ie, i64 1
  store double %i.ij, ptr %i.ii, align 8, !tbaa !41
  %i.ik = load i64, ptr %i.eq, align 8
  %i.il = mul i64 %i.ik, %indvars.iv452
  %.sink.idx.i199 = select i1 %i.hy, i64 0, i64 %i.il
  %.sink.i200 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i199
  %i.im = getelementptr inbounds nuw i8, ptr %.sink.i200, i64 16
  %i.in = extractelement <2 x double> %i.ic, i64 1 ; 3 uses
  %i.io = fmul double %i.in, %i.in
  store double %i.io, ptr %i.im, align 8, !tbaa !41
  %i.ip = load i64, ptr %i.eq, align 8
  %i.iq = mul i64 %i.ip, %indvars.iv452
  %.sink.idx.i201 = select i1 %i.hy, i64 0, i64 %i.iq
  %.sink.i202 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i201
  %i.ir = getelementptr inbounds nuw i8, ptr %.sink.i202, i64 24
  %i.is = extractelement <2 x double> %i.ic, i64 0
  store double %i.is, ptr %i.ir, align 8, !tbaa !41
  %i.it = load i64, ptr %i.eq, align 8
  %i.iu = mul i64 %i.it, %indvars.iv452
  %.sink.idx.i203 = select i1 %i.hy, i64 0, i64 %i.iu
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i203
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink.i204, i64 32
  store double %i.in, ptr %i.iv, align 8, !tbaa !41
  %i.iw = load i64, ptr %i.eq, align 8
  %i.ix = mul i64 %i.iw, %indvars.iv452
  %.sink.idx.i205 = select i1 %i.hy, i64 0, i64 %i.ix
  %.sink.i206 = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sink.idx.i205
  %i.iy = getelementptr inbounds nuw i8, ptr %.sink.i206, i64 40
  store double 1.000000e+00, ptr %i.iy, align 8, !tbaa !41
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge391, label %bb.t, !llvm.loop !78

bb.y:                                             ; preds = %bb.w
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge391:                                   ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 0, ptr %i.er, align 8, !tbaa !37
  store i32 0, ptr %i.es, align 4, !tbaa !38
  store i32 16842752, ptr %12, align 8, !tbaa !39
  store ptr %7, ptr %i.et, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i32 -1040056314, ptr %13, align 8, !tbaa !39
  store ptr %8, ptr %i.eu, align 8, !tbaa !11
  store i64 25769803782, ptr %i.ev, align 8
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %._crit_edge391
  invoke void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.jb = load double, ptr %8, align 8, !tbaa !41
  %i.jc = fmul double %i.ez, %i.jb                ; 2 uses
  store double %i.jc, ptr %8, align 8, !tbaa !41
  %i.jd = load <2 x double>, ptr %i.fb, align 8, !tbaa !41
  %i.je = fmul <2 x double> %i.go, %i.jd          ; 2 uses
  store <2 x double> %i.je, ptr %i.fb, align 8, !tbaa !41
  %i.jf = load double, ptr %i.fe, align 8, !tbaa !41
  %i.jg = load <2 x double>, ptr %i.ff, align 8, !tbaa !41
  %i.jh = fmul <2 x double> %i.go, %i.jg          ; 2 uses
  store <2 x double> %i.jh, ptr %i.ff, align 8, !tbaa !41
  %i.ji = load double, ptr %i.fg, align 8, !tbaa !41
  %i.jj = fmul double %i.ez, %i.ji                ; 2 uses
  store double %i.jj, ptr %i.fg, align 8, !tbaa !41
  %i.jk = load <2 x double>, ptr %i.fi, align 8
  %i.jl = insertelement <2 x double> %i.jk, double %i.jf, i64 1
  %i.jm = fmul <2 x double> %i.go, %i.jl          ; 7 uses
  %i.jn = extractelement <2 x double> %i.jm, i64 0
  store double %i.jn, ptr %i.fi, align 8, !tbaa !41
  %i.jo = load <2 x double>, ptr %i.fm, align 8, !tbaa !41
  %i.jp = fmul <2 x double> %i.go, %i.jo
  store <2 x double> %i.jp, ptr %i.fm, align 8, !tbaa !41
  %i.jq = load double, ptr %i.fn, align 8, !tbaa !41
  %i.jr = fmul double %i.ez, %i.jq
  store double %i.jr, ptr %i.fn, align 8, !tbaa !41
  %i.js = load double, ptr %i.fq, align 8, !tbaa !41
  %i.jt = load <2 x double>, ptr %i.fr, align 8, !tbaa !41
  %i.ju = fmul <2 x double> %i.go, %i.jt
  store <2 x double> %i.ju, ptr %i.fr, align 8, !tbaa !41
  %i.jv = load double, ptr %i.fs, align 8, !tbaa !41
  %i.jw = fmul double %i.ez, %i.jv
  store double %i.jw, ptr %i.fs, align 8, !tbaa !41
  %i.jx = load double, ptr %i.ft, align 8, !tbaa !41
  %i.jy = load <2 x double>, ptr %i.fv, align 8, !tbaa !41
  %i.jz = fmul <2 x double> %i.go, %i.jy
  store <2 x double> %i.jz, ptr %i.fv, align 8, !tbaa !41
  %i.ka = load double, ptr %i.fw, align 8, !tbaa !41
  %i.kb = fmul double %i.ez, %i.ka
  store double %i.kb, ptr %i.fw, align 8, !tbaa !41
  %i.kc = load double, ptr %i.fz, align 8, !tbaa !41
  %i.kd = fmul double %i.ez, %i.kc                ; 4 uses
  store double %i.kd, ptr %i.fz, align 8, !tbaa !41
  %i.ke = load <2 x double>, ptr %i.fo, align 8, !tbaa !41 ; 2 uses
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kg = insertelement <2 x double> %i.kf, double %i.js, i64 0 ; 2 uses
  %i.kh = fmul <2 x double> %i.go, %i.kg          ; 11 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 1 ; 3 uses
  store double %i.ki, ptr %i.fo, align 8, !tbaa !41
  %i.kj = shufflevector <2 x double> %i.ke, <2 x double> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.kk = fmul <2 x double> %i.go, %i.kj          ; 7 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0 ; 2 uses
  store double %i.kl, ptr %i.fp, align 8, !tbaa !41
  %i.km = extractelement <2 x double> %i.kh, i64 0 ; 2 uses
  store double %i.km, ptr %i.fq, align 8, !tbaa !41
  %i.kn = load <2 x double>, ptr %i.fu, align 8, !tbaa !41 ; 2 uses
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kp = insertelement <2 x double> %i.ko, double %i.jx, i64 1
  %i.kq = fmul <2 x double> %i.go, %i.kp          ; 4 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 1 ; 3 uses
  store double %i.kr, ptr %i.ft, align 8, !tbaa !41
  %i.ks = fmul <2 x double> %i.go, %i.kn          ; 8 uses
  %i.kt = extractelement <2 x double> %i.ks, i64 0 ; 3 uses
  store <2 x double> %i.ks, ptr %i.fu, align 8, !tbaa !41
  %i.ku = load <2 x double>, ptr %i.fx, align 8, !tbaa !41
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kw = fmul <2 x double> %i.go, %i.kv          ; 11 uses
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ky = extractelement <2 x double> %i.kw, i64 1 ; 4 uses
  store double %i.ky, ptr %i.fx, align 8, !tbaa !41
  %i.kz = extractelement <2 x double> %i.kw, i64 0 ; 4 uses
  store double %i.kz, ptr %i.fy, align 8, !tbaa !41
  %i.la = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lb = fmul <2 x double> %i.la, %i.kk          ; 2 uses
  %i.lc = fmul <2 x double> %i.la, %i.kh          ; 2 uses
  %i.ld = fneg <2 x double> %i.kq                 ; 7 uses
  %i.le = fmul <2 x double> %i.lb, %i.ld
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> %i.ks, <2 x double> %i.le)
  %i.lg = fneg <2 x double> %i.kh
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> %i.kh, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.li = shufflevector <2 x double> %i.ks, <2 x double> %i.ld, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.lj = fneg <2 x double> %i.kh
  %i.lk = shufflevector <2 x double> %i.kk, <2 x double> %i.lj, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ll = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %foldExtExtBinop551 = fmul <2 x double> %i.jm, %i.kk ; 2 uses
  %i.ln = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lo = fmul <2 x double> %i.ln, %i.kh          ; 3 uses
  %i.lp = shufflevector <2 x double> %foldExtExtBinop551, <2 x double> %i.lo, <2 x i32> <i32 0, i32 2>
  %i.lq = fmul <2 x double> %i.lp, %i.ld
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.ks, <2 x double> %i.lq)
  %i.ls = load <2 x double>, ptr %i.fc, align 8, !tbaa !41 ; 2 uses
  %i.lt = load <2 x double>, ptr %i.fh, align 8, !tbaa !41 ; 2 uses
  %i.lu = shufflevector <2 x double> %i.ls, <2 x double> %i.lt, <2 x i32> <i32 0, i32 2>
  %i.lv = fmul <2 x double> %i.go, %i.lu          ; 8 uses
  %i.lw = extractelement <2 x double> %i.lv, i64 0
  store double %i.lw, ptr %i.fc, align 8, !tbaa !41
  %i.lx = shufflevector <2 x double> %i.ls, <2 x double> %i.lt, <2 x i32> <i32 1, i32 3>
  %i.ly = fmul <2 x double> %i.go, %i.lx          ; 8 uses
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> %i.jm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.lz, ptr %i.fd, align 8, !tbaa !41
  %i.ma = shufflevector <2 x double> %i.lv, <2 x double> %i.ly, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ma, ptr %i.fh, align 8, !tbaa !41
  %i.mb = load <2 x double>, ptr %i.fj, align 8, !tbaa !41
  %i.mc = fmul <2 x double> %i.go, %i.mb          ; 2 uses
  store <2 x double> %i.mc, ptr %i.fj, align 8, !tbaa !41
  %19 = load <2 x double>, ptr %i.fk, align 8, !tbaa !41
  %20 = fmul <2 x double> %i.go, %19              ; 5 uses
  store <2 x double> %20, ptr %i.fk, align 8, !tbaa !41
  %21 = load <2 x double>, ptr %i.fl, align 8, !tbaa !41
  %22 = fmul <2 x double> %i.go, %21              ; 6 uses
  store <2 x double> %22, ptr %i.fl, align 8, !tbaa !41
  %i.md = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.me = fmul <2 x double> %i.md, %i.lh
  %i.mf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.kw, <2 x double> %i.lf)
  %i.mg = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mh = fmul <2 x double> %i.mg, %i.li
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.kw, <2 x double> %i.mf)
  %i.mj = fmul <2 x double> %i.md, %i.lk
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.lm, <2 x double> %i.mi)
  %i.ml = fneg double %i.kt                       ; 4 uses
  %i.mm = fneg double %i.kl                       ; 2 uses
  %i.mn = insertelement <2 x double> %i.kq, double %i.ml, i64 0 ; 3 uses
  %i.mo = fmul <2 x double> %i.mg, %i.mn
  %i.mp = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.mq = fmul <2 x double> %i.mp, %i.lh
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.kw, <2 x double> %i.lr)
  %i.ms = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.mt = fmul <2 x double> %i.ms, %i.li
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %i.kw, <2 x double> %i.mr)
  %i.mv = fmul <2 x double> %i.mp, %i.lk
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.lm, <2 x double> %i.mu)
  %i.mx = fmul <2 x double> %i.ms, %i.mn
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.my = fmul <2 x double> %23, %i.kk            ; 2 uses
  %i.mz = fmul <2 x double> %23, %i.kh            ; 2 uses
  %i.na = fmul <2 x double> %i.my, %i.ld
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.ks, <2 x double> %i.na)
  %24 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nc = fmul <2 x double> %24, %i.lh
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.kw, <2 x double> %i.nb)
  %25 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ne = fmul <2 x double> %25, %i.li
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.kw, <2 x double> %i.nd)
  %i.ng = fmul <2 x double> %24, %i.lk
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.lm, <2 x double> %i.nf)
  %i.ni = fmul <2 x double> %25, %i.mn
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.lm, <2 x double> %i.mk) ; 5 uses
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.lm, <2 x double> %i.mw) ; 5 uses
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.lm, <2 x double> %i.nh) ; 7 uses
  %i.nm = shufflevector <2 x double> %i.lc, <2 x double> %i.lo, <2 x i32> <i32 1, i32 3>
  %i.nn = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x double> %i.nm, %i.no
  %i.nq = shufflevector <2 x double> %i.lb, <2 x double> %foldExtExtBinop551, <2 x i32> <i32 0, i32 2>
  %i.nr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.nr, <2 x double> %i.np)
  %i.nt = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = fmul <2 x double> %i.ly, %i.nu
  %i.nw = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nw, <2 x double> %i.ns)
  %i.ny = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x double> %i.lv, %i.ny
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.nw, <2 x double> %i.nx)
  %i.ob = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = fmul <2 x double> %i.ly, %i.ob
  %i.od = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.od, <2 x double> %i.oa)
  %i.of = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.og = fmul <2 x double> %i.lv, %i.of
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.od, <2 x double> %i.oe) ; 6 uses
  %i.oi = extractelement <2 x double> %i.mz, i64 1
  %i.oj = fmul double %i.oi, %i.ml
  %26 = extractelement <2 x double> %i.my, i64 0
  %i.ok = extractelement <2 x double> %22, i64 0  ; 2 uses
  %i.ol = fmul double %i.ok, %i.mm
  %27 = extractelement <2 x double> %20, i64 1    ; 2 uses
  %i.om = fmul double %27, %i.kt
  %i.on = call double @llvm.fmuladd.f64(double %26, double %i.kr, double %i.oj)
  %i.oo = call double @llvm.fmuladd.f64(double %i.ol, double %i.ky, double %i.on)
  %i.op = call double @llvm.fmuladd.f64(double %i.om, double %i.ky, double %i.oo)
  %shift553 = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop554 = fmul <2 x double> %i.kk, %shift553
  %i.oq = extractelement <2 x double> %foldExtExtBinop554, i64 0
  %i.or = fmul double %i.ok, %i.ki
  %i.os = fmul double %i.oq, %i.ky
  %i.ot = call double @llvm.fmuladd.f64(double %i.or, double %i.kz, double %i.op)
  %28 = shufflevector <2 x double> %i.kh, <2 x double> %20, <2 x i32> <i32 0, i32 3>
  %i.ou = insertelement <2 x double> %i.ld, double %i.ml, i64 0
  %i.ov = fmul <2 x double> %28, %i.ou
  %i.ow = insertelement <2 x double> poison, double %i.os, i64 0
  %i.ox = insertelement <2 x double> %i.ow, double %i.ot, i64 1
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.kx, <2 x double> %i.ox) ; 4 uses
  %i.oz = fmul double %i.km, %i.kr
  %i.pa = extractelement <2 x double> %i.oy, i64 0
  %i.pb = call double @llvm.fmuladd.f64(double %i.oz, double %i.kz, double %i.pa)
  %i.pc = shufflevector <2 x double> %i.kh, <2 x double> %i.kk, <2 x i32> <i32 1, i32 2>
  %i.pd = fmul <2 x double> %i.pc, %i.ld          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  %i.pf = call double @llvm.fmuladd.f64(double %i.pe, double %i.kz, double %i.pb)
  %i.pg = extractelement <2 x double> %i.pd, i64 1
  %i.ph = call double @llvm.fmuladd.f64(double %i.pg, double %i.kd, double %i.pf)
  %i.pi = fmul double %i.ki, %i.kt
  %i.pj = call double @llvm.fmuladd.f64(double %i.pi, double %i.kd, double %i.ph) ; 4 uses
  %i.pk = call double @llvm.fabs.f64(double %i.pj)
  %i.pl = fcmp olt double %i.pk, f0x3CB0000000000000
  br i1 %i.pl, label %bb.af, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %._crit_edge391
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.pn = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.po = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pp = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pq = shufflevector <2 x double> %i.nj, <2 x double> %i.nk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.pr = fmul <2 x double> %24, %i.pq
  %i.ps = shufflevector <2 x double> %i.nj, <2 x double> %i.nk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %i.ps, <2 x double> %i.pr)
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.oh, <2 x double> %i.pt)
  %i.pv = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.px = fdiv <2 x double> %i.pu, %i.pw
  %i.py = fadd <2 x double> %i.mc, %i.px
  %i.pz = fmul <2 x double> %i.py, splat (double 5.000000e-01)
  store <2 x double> %i.pz, ptr %9, align 16, !tbaa !41
  %shift556 = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop557 = fmul <2 x double> %22, %shift556
  %29 = extractelement <2 x double> %foldExtExtBinop557, i64 0
  %i.qa = extractelement <2 x double> %i.nl, i64 0
  %i.qb = call double @llvm.fmuladd.f64(double %27, double %i.qa, double %29)
  %30 = extractelement <2 x double> %22, i64 1
  %i.qc = extractelement <2 x double> %i.oy, i64 1 ; 2 uses
  %i.qd = call double @llvm.fmuladd.f64(double %30, double %i.qc, double %i.qb)
  %i.qe = fdiv double %i.qd, %i.pj
  %31 = extractelement <2 x double> %20, i64 0
  %i.qf = fadd double %31, %i.qe
  %i.qg = fmul double %i.qf, 5.000000e-01
  store double %i.qg, ptr %i.ga, align 16, !tbaa !41
  %i.qh = fneg <2 x double> %i.jh
  %i.qi = fmul <2 x double> %i.po, %i.pq
  %i.qj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.ps, <2 x double> %i.qi)
  %i.qk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.oh, <2 x double> %i.qj)
  %i.ql = fdiv <2 x double> %i.qk, %i.pw
  %i.qm = fsub <2 x double> %i.qh, %i.ql
  store <2 x double> %i.qm, ptr %i.gb, align 8, !tbaa !41
  %i.qn = fneg double %i.jj
  %i.qo = shufflevector <2 x double> %i.nj, <2 x double> %i.nl, <2 x i32> <i32 1, i32 3>
  %i.qp = fmul <2 x double> %i.ly, %i.qo
  %i.qq = shufflevector <2 x double> %i.nj, <2 x double> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.qr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.qq, <2 x double> %i.qp)
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qt = shufflevector <2 x double> %i.oy, <2 x double> %i.oh, <2 x i32> <i32 1, i32 2>
  %i.qu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.qt, <2 x double> %i.qs)
  %i.qv = fdiv <2 x double> %i.qu, %i.pw          ; 2 uses
  %i.qw = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qx = insertelement <2 x double> %i.qw, double %i.jc, i64 1 ; 2 uses
  %i.qy = fsub <2 x double> %i.qx, %i.qv
  %i.qz = fadd <2 x double> %i.qx, %i.qv
  %i.ra = shufflevector <2 x double> %i.qy, <2 x double> %i.qz, <2 x i32> <i32 0, i32 3>
  %i.rb = fmul <2 x double> %i.ra, <double 1.000000e+00, double 5.000000e-01>
  store <2 x double> %i.rb, ptr %i.gc, align 8, !tbaa !41
  %i.rc = shufflevector <2 x double> %i.nk, <2 x double> %i.nl, <2 x i32> <i32 1, i32 3>
  %i.rd = fmul <2 x double> %i.md, %i.rc
  %i.re = shufflevector <2 x double> %i.nk, <2 x double> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.rf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.re, <2 x double> %i.rd)
  %i.rg = shufflevector <2 x double> %i.oh, <2 x double> %i.oy, <2 x i32> <i32 1, i32 3>
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.rg, <2 x double> %i.rf)
  %i.ri = fdiv <2 x double> %i.rh, %i.pw
  %i.rj = fadd <2 x double> %i.je, %i.ri
  %i.rk = fmul <2 x double> %i.rj, splat (double 5.000000e-01)
  store <2 x double> %i.rk, ptr %i.gd, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i32 -1056833530, ptr %14, align 8, !tbaa !39
  store ptr %9, ptr %i.gf, align 8, !tbaa !11
  store i64 12884901891, ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i64 0, ptr %i.gh, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !39
  store ptr %10, ptr %i.gg, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i64 0, ptr %i.gj, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !39
  store ptr %11, ptr %i.gi, align 8, !tbaa !11
  invoke void @_ZN2cv17eigenNonSymmetricERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.rm = load i32, ptr %i.gk, align 4, !tbaa !45
  %i.rn = load ptr, ptr %i.gl, align 8, !tbaa !27 ; 5 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !41
  %i.rq = icmp slt i32 %i.rm, 2                   ; 3 uses
  %i.rr = load i64, ptr %i.gm, align 8            ; 3 uses
  %.sink.idx.i215 = select i1 %i.rq, i64 0, i64 %i.rr
  %.sink.i216 = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.sink.idx.i215 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sink.i216, i64 16
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !41
  %i.ru = load <2 x double>, ptr %i.rn, align 8, !tbaa !41 ; 2 uses
  %i.rv = load <2 x double>, ptr %.sink.i216, align 8, !tbaa !41 ; 2 uses
  %i.rw = shufflevector <2 x double> %i.ru, <2 x double> %i.rv, <2 x i32> <i32 0, i32 2>
  %i.rx = fmul <2 x double> %i.rw, splat (double 4.000000e+00)
  %i.ry = shufflevector <2 x double> %i.ru, <2 x double> %i.rv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.rz = fneg <2 x double> %i.ry
  %i.sa = fmul <2 x double> %i.ry, %i.rz
  %i.sb = insertelement <2 x double> poison, double %i.rp, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.rt, i64 1
  %i.sd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.sc, <2 x double> %i.sa) ; 3 uses
  store <2 x double> %i.sd, ptr %i.a, align 16, !tbaa !41
  %i.se = shl i64 %i.rr, 1
  %.sink.idx.i223 = select i1 %i.rq, i64 0, i64 %i.se
  %.sink.i224 = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.sink.idx.i223 ; 3 uses
  %i.sf = load double, ptr %.sink.i224, align 8, !tbaa !41
  %i.sg = fmul double %i.sf, 4.000000e+00
  %i.sh = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 16
  %i.si = load double, ptr %i.sh, align 8, !tbaa !41
  %i.sj = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 8
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !41 ; 2 uses
  %i.sl = fneg double %i.sk
  %i.sm = fmul double %i.sk, %i.sl
  %i.sn = call double @llvm.fmuladd.f64(double %i.sg, double %i.si, double %i.sm) ; 3 uses
  store double %i.sn, ptr %i.gn, align 16, !tbaa !41
  %i.so = extractelement <2 x double> %i.sd, i64 0 ; 2 uses
  %i.sp = extractelement <2 x double> %i.sd, i64 1 ; 2 uses
  %i.sq = fcmp olt double %i.so, %i.sp
  %i.sr = fcmp olt double %i.sp, %i.sn
  %i.ss = select i1 %i.sr, i64 2, i64 1
  %i.st = fcmp olt double %i.so, %i.sn
  %i.su = select i1 %i.st, i64 2, i64 0
  %.4 = select i1 %i.sq, i64 %i.ss, i64 %i.su     ; 2 uses
  %i.sv = mul i64 %i.rr, %.4
  %.sink.idx.i231 = select i1 %i.rq, i64 0, i64 %i.sv
  %.sink.i232 = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.sink.idx.i231 ; 3 uses
  %i.sw = load double, ptr %.sink.i232, align 8, !tbaa !41 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 8
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !41 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 16
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !41 ; 4 uses
  %i.tb = fmul double %i.sy, %i.sy
  %i.tc = call double @llvm.fmuladd.f64(double %i.sw, double %i.sw, double %i.tb)
  %i.td = call double @llvm.fmuladd.f64(double %i.ta, double %i.ta, double %i.tc) ; 2 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4
  %i.tf = load double, ptr %i.te, align 8, !tbaa !41
  %i.tg = fmul double %i.td, f0x3EB0C6F7A0B5ED8D
  %i.th = fcmp ogt double %i.tf, %i.tg
  br i1 %i.th, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  br i1 %i.gq, label %.lr.ph390, label %bb.am, !llvm.loop !79

bb.ag:                                            ; preds = %bb.ae
  %sqrt353 = call double @llvm.sqrt.f64(double %i.td) ; 2 uses
  %i.ti = fcmp olt double %i.sy, 0.000000e+00
  %i.tj = select i1 %i.ti, i32 -1, i32 1          ; 2 uses
  %i.tk = fcmp olt double %i.sw, 0.000000e+00
  %i.tl = sub nsw i32 0, %i.tj
  %i.tm = select i1 %i.tk, i32 %i.tl, i32 %i.tj   ; 2 uses
  %i.tn = fcmp olt double %i.ta, 0.000000e+00
  %i.to = sub nsw i32 0, %i.tm
  %i.tp = select i1 %i.tn, i32 %i.to, i32 %i.tm
  %i.tq = icmp slt i32 %i.tp, 1
  %i.tr = fneg double %sqrt353
  %.0135 = select i1 %i.tq, double %i.tr, double %sqrt353 ; 2 uses
  %i.ts = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tt = insertelement <2 x double> %i.ts, double %i.sw, i64 1
  %i.tu = insertelement <2 x double> poison, double %.0135, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tw = fdiv <2 x double> %i.tt, %i.tv          ; 6 uses
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ty = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tz = extractelement <2 x double> %i.tw, i64 1 ; 7 uses
  %i.ua = extractelement <2 x double> %i.tw, i64 0 ; 6 uses
  %i.ub = fmul double %i.tz, %i.ua
  %i.uc = fsub double %i.tz, %i.ua                ; 3 uses
  %i.ud = fmul double %i.uc, %i.uc
  %i.ue = fadd double %i.tz, %i.ua                ; 2 uses
  %i.uf = fneg double %i.ua
  %i.ug = fmul <2 x double> %i.tw, splat (double 2.000000e+00)
  %i.uh = fdiv double %i.sy, %.0135               ; 10 uses
  %i.ui = extractelement <2 x double> %i.oh, i64 1
  %i.uj = fmul double %i.ui, %i.uh
  %i.uk = insertelement <2 x double> poison, double %i.uh, i64 0
  %i.ul = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.um = fmul <2 x double> %i.nk, %i.ul
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.tx, <2 x double> %i.um)
  %i.uo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.ty, <2 x double> %i.un)
  %i.up = fdiv <2 x double> %i.uo, %i.pw          ; 5 uses
  %i.uq = extractelement <2 x double> %i.oh, i64 0
  %i.ur = call double @llvm.fmuladd.f64(double %i.uq, double %i.tz, double %i.uj)
  %i.us = call double @llvm.fmuladd.f64(double %i.qc, double %i.ua, double %i.ur)
  %i.ut = fdiv double %i.us, %i.pj                ; 2 uses
  %i.uu = extractelement <2 x double> %i.up, i64 0 ; 2 uses
  %foldExtExtBinop556 = fmul <2 x double> %i.tw, %i.up
  %i.uv = extractelement <2 x double> %foldExtExtBinop556, i64 0
  %i.uw = fmul double %i.uh, %i.uu
  %i.ux = fneg <2 x double> %i.up                 ; 2 uses
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.uz = extractelement <2 x double> %i.ux, i64 1
  %i.va = fmul double %i.uw, %i.uz
  %i.vb = call double @llvm.fmuladd.f64(double %i.uv, double %i.uu, double %i.va)
  %i.vc = extractelement <2 x double> %i.up, i64 1 ; 2 uses
  %i.vd = fmul double %i.tz, %i.vc
  %i.ve = call double @llvm.fmuladd.f64(double %i.vd, double %i.vc, double %i.vb)
  %i.vf = fmul double %i.ub, %i.ut
  %i.vg = call double @llvm.fmuladd.f64(double %i.uh, double %i.uh, double %i.ud)
  %i.vh = fmul double %i.tz, 4.000000e+00
  %i.vi = fmul double %i.uh, %i.uh
  %i.vj = fmul double %i.vh, %i.uf
  %i.vk = call double @llvm.fmuladd.f64(double %i.vi, double %i.ut, double %i.ve)
  %i.vl = fmul <2 x double> %i.ul, %i.uy
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %i.up, <2 x double> %i.vl)
  %i.vn = insertelement <2 x double> poison, double %i.vf, i64 0
  %i.vo = insertelement <2 x double> %i.vn, double %i.uh, i64 1 ; 2 uses
  %i.vp = insertelement <2 x double> %i.vo, double -4.000000e+00, i64 0
  %i.vq = insertelement <2 x double> poison, double %i.vk, i64 0
  %i.vr = insertelement <2 x double> %i.vq, double %i.vj, i64 1
  %i.vs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vo, <2 x double> %i.vp, <2 x double> %i.vr) ; 3 uses
  %sqrt = call double @llvm.sqrt.f64(double %i.vg) ; 2 uses
  %i.vt = shufflevector <2 x double> %i.vs, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vu = fdiv <2 x double> %i.vm, %i.vt
  %i.vv = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.vw = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.vx = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.vy = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.vz = fsub <2 x double> %i.vw, %i.vy
  %i.wa = fadd <2 x double> %i.vv, %i.vx
end_hunk_0
