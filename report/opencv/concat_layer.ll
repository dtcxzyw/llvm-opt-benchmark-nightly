inline.NumInlined: 669
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.g, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.i, ptr %i.h, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ConcatLayerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9subgraphsEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EESB_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ConcatLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %13 = alloca %"class.std::vector", align 8      ; 18 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn15ConcatLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E25__cv_trace_location_fn287)
  %i.b = load ptr, ptr %12, align 8, !tbaa !54
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn15ConcatLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E22__cv_trace_arg_name288, ptr noundef %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 8 uses
  %i.h = load ptr, ptr %13, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !58   ; 6 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii, ptr noundef nonnull @.str.16, i32 noundef 249) #21
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %10, align 8, !tbaa !28    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !22
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.r = sub nsw i32 0, %i.j
  %.not.i = icmp slt i32 %i.g, %i.r
  %.not20.i = icmp sgt i32 %i.g, %i.j
  %or.cond.i = or i1 %.not.i, %.not20.i
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #21
          to label %.noexc63 unwind label %bb.t

.noexc63:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.s = icmp ult i32 %i.g, %i.j
  br i1 %i.s, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = icmp slt i32 %i.g, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = add nsw i32 %i.j, %i.g
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

bb.o:                                             ; preds = %bb.m
  %i.v = sub nsw i32 %i.g, %i.j
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit: ; preds = %bb.o, %bb.n, %bb.l
  %i.w = phi i32 [ %i.v, %bb.o ], [ %i.u, %bb.n ], [ %i.g, %bb.l ] ; 4 uses
  %i.x = load ptr, ptr %14, align 8, !tbaa !57    ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !47, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ad = sitofp i32 %i.ac to double
  store double %i.ad, ptr %i.a, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 -1056833530, ptr %15, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.a, ptr %i.af, align 8, !tbaa !72
  store i64 4294967297, ptr %i.ae, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ah = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.v

bb.s:                                             ; preds = %bb.e, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.k, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

bb.v:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  %i.al = icmp eq i32 %i.w, 1
  br i1 %i.al, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = icmp eq i32 %i.an, 4
  br i1 %i.ao, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ap = load i8, ptr %i.y, align 8, !tbaa !47, !range !65, !noundef !66
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = load ptr, ptr %13, align 8, !tbaa !57
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !73
  %i.at = and i32 %i.as, 31
  switch i32 %i.at, label %bb.ae [
    i32 5, label %bb.z
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.au = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aa unwind label %bb.ac     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.av = load i32, ptr %i.x, align 8, !tbaa !73
  %i.aw = and i32 %i.av, 4095
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.x, i32 noundef %i.au)
          to label %_ZNSt6vectorIN2cv5RangeESaIS1_EED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab, %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.aa
  invoke void @_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIfE3runERSt6vectorINS_3MatESaIS5_EERS5_i(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.x, i32 noundef %i.au)
          to label %_ZNSt6vectorIN2cv5RangeESaIS1_EED2Ev.exit unwind label %bb.ac

bb.ae:                                            ; preds = %bb.y, %bb.v, %bb.w, %bb.x
  %i.az = load ptr, ptr %14, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58 ; 4 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.af, label %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
          to label %.noexc64 unwind label %bb.ag

.noexc64:                                         ; preds = %bb.af
  unreachable

_ZNSt6vectorIN2cv5RangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.ae
  %i.bd = zext nneg i32 %i.bb to i64              ; 5 uses
  %.not.i.i.i.i = icmp ne i32 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3                ; 3 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #18
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.ag ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %min.iters.check = icmp ult i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bd, 2147483644              ; 3 uses
  %i.bg = shl nuw nsw i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = and i64 %i.bd, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 9223372034707292160), ptr %next.gep, align 4
  store <2 x i64> splat (i64 9223372034707292160), ptr %i.bk, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS1_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.i.preheader158:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.068.i.i.i.i.i.i.ph = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader158 ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader158 ]
  store i64 9223372034707292160, ptr %.09.i.i.i.i.i.i, align 4
  %i.bm = add nsw i64 %.068.i.i.i.i.i.i, -1       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS1_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bo = sext i32 %i.w to i64                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bo ; 4 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !80
  %i.bs = load ptr, ptr %13, align 8, !tbaa !57   ; 2 uses
  %.not135 = icmp eq ptr %i.br, %i.bs
  br i1 %.not135, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bz = zext i32 %i.w to i64
  br label %bb.ah

._crit_edge134:                                   ; preds = %bb.ba, %_ZNSt6vectorIN2cv5RangeESaIS1_EEC2EmRKS1_RKS2_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.be) #19
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.af
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.lr.ph133, %bb.ba
  %i.cb = phi ptr [ %i.bs, %.lr.ph133 ], [ %i.ec, %bb.ba ]
  %.038132 = phi i64 [ 0, %.lr.ph133 ], [ %i.ea, %bb.ba ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [208 x i8], ptr %i.cb, i64 %.038132
  %i.cd = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cc)
          to label %bb.ai unwind label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cd, label %bb.ba, label %bb.aj

.loopexit:                                        ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn15ConcatLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  call void @__clang_call_terminate(ptr %i.fh) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit111, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret void

.body:                                            ; preds = %bb.ag, %.body70.thread, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ac, %bb.u, %bb.s
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ak, %bb.u ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ay, %bb.ac ], [ %i.aj, %bb.t ], [ %.pn56128, %.body70.thread ], [ %i.ca, %bb.ag ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bi

bb.bi:                                            ; preds = %.body, %bb.c
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn, %.body ], [ %i.e, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn15ConcatLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  switch i32 %1, label %.fold.split [
    i32 5, label %bb.d
    i32 3, label %bb.d
    i32 6, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.fold.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  br label %bb.d

.fold.split:                                      ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %.fold.split, %bb.c, %bb.b
  %i.h = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %.fold.split ]
  ret i1 %i.h
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 88) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %13, align 8, !tbaa !28    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !92     ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 52                  ; 2 uses
  %i.r = icmp eq ptr %i.l, %i.m
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = sub nuw nsw i64 1, %i.q
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.l, i64 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %.pre = load ptr, ptr %1, align 8, !tbaa !92
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = icmp ugt i64 %i.q, 1
  br i1 %i.t, label %bb.j, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.u, ptr %i.k, align 8, !tbaa !89
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.c, %bb.i ], [ %i.c, %bb.j ], [ %i.c, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 8 uses
  %.val = load i32, ptr %i.v, align 4, !tbaa !81
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %.val, i32 0) ; 5 uses
  %i.y = sub nsw i32 0, %narrow.i.i
  %.not.i.i58 = icmp slt i32 %i.x, %i.y
  %.not20.i.i = icmp sgt i32 %i.x, %narrow.i.i
  %or.cond.i.i = or i1 %.not.i.i58, %.not20.i.i
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit
  tail call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #21
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit
  %i.z = icmp ult i32 %i.x, %narrow.i.i
  br i1 %i.z, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp slt i32 %i.x, 0
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = add nsw i32 %narrow.i.i, %i.x
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split

bb.o:                                             ; preds = %bb.m
  %i.ac = sub nsw i32 %i.x, %narrow.i.i
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split: ; preds = %bb.o, %bb.n, %bb.l
  %i.ad = phi i32 [ %i.ac, %bb.o ], [ %i.ab, %bb.n ], [ %i.x, %bb.l ] ; 6 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !89
  %.not126 = icmp eq ptr %i.ae, %i.v
  br i1 %.not126, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split.._crit_edge_crit_edge, label %.lr.ph125

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split.._crit_edge_crit_edge: ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split
  %.pre132 = load ptr, ptr %3, align 8, !tbaa !92
  br label %._crit_edge

.lr.ph125:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.ah = zext nneg i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %20 = zext i32 %i.ad to i64
  br label %bb.s

._crit_edge:                                      ; preds = %bb.aq, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split.._crit_edge_crit_edge
  %i.aj = phi ptr [ %.pre132, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split.._crit_edge_crit_edge ], [ %i.cz, %bb.aq ] ; 3 uses
  %.038.lcssa = phi i32 [ 0, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.split.._crit_edge_crit_edge ], [ %i.dk, %bb.aq ]
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !82
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ak, i32 1) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.aj, align 4, !tbaa !81
  %i.al = icmp ult i32 %i.ad, %.sroa.speculated
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70 ], [ %.pn53.pn, %bb.ar ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %._crit_edge
  %i.as = zext nneg i32 %i.ad to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 %.038.lcssa, ptr %i.au, align 4, !tbaa !82
  ret i1 false

bb.s:                                             ; preds = %.lr.ph125, %bb.aq
  %i.av = phi ptr [ %i.v, %.lr.ph125 ], [ %i.dn, %bb.aq ]
  %.037124 = phi i64 [ 0, %.lr.ph125 ], [ %i.dl, %bb.aq ] ; 2 uses
  %.038123 = phi i32 [ 0, %.lr.ph125 ], [ %i.dk, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.aw = getelementptr inbounds nuw [52 x i8], ptr %i.av, i64 %.037124
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %15, ptr noundef nonnull align 4 dereferenceable(52) %i.aw)
  %i.ax = load i8, ptr %i.af, align 8, !tbaa !47, !range !65, !noundef !66
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.s
  %i.az = load ptr, ptr %3, align 8, !tbaa !92    ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !81 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %_ZN2cv8MatShapeixEm.exit66.lr.ph, label %.loopexit

_ZN2cv8MatShapeixEm.exit66.lr.ph:                 ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = zext nneg i32 %i.ba to i64
  br label %_ZN2cv8MatShapeixEm.exit66

_ZN2cv8MatShapeixEm.exit66:                       ; preds = %_ZN2cv8MatShapeixEm.exit66.lr.ph, %_ZN2cv8MatShapeixEm.exit79
  %indvars.iv129 = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit66.lr.ph ], [ %indvars.iv.next130, %_ZN2cv8MatShapeixEm.exit79 ] ; 4 uses
  %i.be = load i32, ptr %15, align 4, !tbaa !81
  %narrow.i67 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %i.bf = zext nneg i32 %narrow.i67 to i64
  %i.bg = icmp samesign ult i64 %indvars.iv129, %i.bf
  br i1 %i.bg, label %_ZN2cv8MatShapeixEm.exit79, label %bb.t

bb.t:                                             ; preds = %_ZN2cv8MatShapeixEm.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.v
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit79:                       ; preds = %_ZN2cv8MatShapeixEm.exit66
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv129 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv129
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !82
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !82
  %i.br = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bq)
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !82
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next130, %i.bd
  br i1 %i.bs, label %_ZN2cv8MatShapeixEm.exit66, label %.loopexit, !llvm.loop !93

bb.w:                                             ; preds = %bb.s
  %i.bt = load i32, ptr %15, align 4, !tbaa !81   ; 2 uses
  %narrow.i80 = call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bu = load ptr, ptr %3, align 8, !tbaa !92    ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !81 ; 3 uses
  %narrow.i82 = call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bw = icmp eq i32 %narrow.i80, %narrow.i82
  br i1 %i.bw, label %.preheader113, label %bb.x

.preheader113:                                    ; preds = %bb.w
  %i.bx = icmp sgt i32 %i.bv, 0
  br i1 %i.bx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader113
  %narrow.i95 = call i32 @llvm.smax.i32(i32 %i.bt, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bz = zext nneg i32 %narrow.i95 to i64
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 106) #21
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ab:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ab
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !22
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.aa
  %.pn49 = phi { ptr, i32 } [ %i.ca, %bb.aa ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.cb, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ar

bb.ac:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 5 uses
  %.not51 = icmp eq i64 %indvars.iv, %20
  br i1 %.not51, label %bb.al, label %_ZN2cv8MatShapeixEm.exit94

_ZN2cv8MatShapeixEm.exit94:                       ; preds = %bb.ac
  %i.ch = icmp samesign ult i64 %indvars.iv, %i.bz
  br i1 %i.ch, label %_ZN2cv8MatShapeixEm.exit100, label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv8MatShapeixEm.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.af
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !22
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit100:                      ; preds = %_ZN2cv8MatShapeixEm.exit94
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !82
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !82
  %.not52 = icmp eq i32 %i.cp, %i.cr
  br i1 %.not52, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %_ZN2cv8MatShapeixEm.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 110) #21
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ak:                                            ; preds = %bb.ah
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ak
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.aj
  %.pn53 = phi { ptr, i32 } [ %i.cs, %bb.aj ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.ct, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ar

bb.al:                                            ; preds = %bb.ac, %_ZN2cv8MatShapeixEm.exit100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ac, !llvm.loop !94

.loopexit:                                        ; preds = %bb.al, %_ZN2cv8MatShapeixEm.exit79, %.preheader113, %.preheader
  %i.cz = phi ptr [ %i.az, %_ZN2cv8MatShapeixEm.exit79 ], [ %i.az, %.preheader ], [ %i.bu, %.preheader113 ], [ %i.bu, %bb.al ]
  %i.da = load i32, ptr %15, align 4, !tbaa !81   ; 2 uses
  %.not57 = icmp slt i32 %i.da, %i.ad
  br i1 %.not57, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %narrow.i104 = call i32 @llvm.smax.i32(i32 %i.da, i32 1)
  %i.db = icmp ult i32 %i.ad, %narrow.i104
  br i1 %i.db, label %_ZN2cv8MatShapeixEm.exit109, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %bb.ap
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit109:                      ; preds = %bb.am
  %i.di = load i32, ptr %i.ai, align 4, !tbaa !82
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %_ZN2cv8MatShapeixEm.exit109
  %i.dj = phi i32 [ %i.di, %_ZN2cv8MatShapeixEm.exit109 ], [ 1, %.loopexit ]
  %i.dk = add nsw i32 %i.dj, %.038123             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.dl = add nuw i64 %.037124, 1                 ; 2 uses
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.dn = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = sdiv exact i64 %i.dq, 52
  %i.ds = icmp ult i64 %i.dl, %i.dr
  br i1 %i.ds, label %bb.s, label %._crit_edge, !llvm.loop !95

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn15ConcatLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !99     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = load i32, ptr %i.c, align 4, !tbaa !82   ; 2 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_, ptr noundef nonnull @.str.13, i32 noundef 127) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
end_hunk_1
