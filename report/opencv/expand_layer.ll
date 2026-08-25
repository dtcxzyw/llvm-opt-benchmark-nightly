Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/expand_layer?download=true
inline.NumInlined: 473
inline.NumDeleted: 255
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606059DictValueC2ERKS2_:bb.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.06.i19.unr = phi i64 [ %.06.i19.ph, %scalar.ph.preheader ], [ %i.dg, %scalar.ph.prol ]
  %i.dh = sub i64 %.06.i19.ph, %i.ct
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %.sink.split, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.06.i19 = phi i64 [ %i.dy, %scalar.ph ], [ %.06.i19.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.06.i19
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !95
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.06.i19
  store double %i.dk, ptr %i.dl, align 8, !tbaa !95
  %i.dm = add nuw i64 %.06.i19, 1                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !95
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dm
  store double %i.do, ptr %i.dp, align 8, !tbaa !95
  %i.dq = add nuw i64 %.06.i19, 2                 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !95
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dq
  store double %i.ds, ptr %i.dt, align 8, !tbaa !95
  %i.du = add nuw i64 %.06.i19, 3                 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !95
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.du
  store double %i.dw, ptr %i.dx, align 8, !tbaa !95
  %i.dy = add nuw i64 %.06.i19, 4                 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dy, %i.ct
  br i1 %exitcond.not.i.3, label %.sink.split, label %scalar.ph, !llvm.loop !101

bb.m:                                             ; preds = %bb.l
  %i.dz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 24) #18
  br label %bb.o

.sink.split:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.d, %middle.block, %_ZN2cv10AutoBufferIdLm1EE8allocateEm.exit.i, %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE8allocateEm.exit.i, %_ZN2cv10AutoBufferIlLm1EE8allocateEm.exit.i
  %.sink = phi ptr [ %i.c, %_ZN2cv10AutoBufferIlLm1EE8allocateEm.exit.i ], [ %i.x, %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE8allocateEm.exit.i ], [ %i.ch, %_ZN2cv10AutoBufferIdLm1EE8allocateEm.exit.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ %i.ch, %middle.block ], [ %i.c, %bb.d ], [ %i.ch, %scalar.ph ], [ %i.ch, %scalar.ph.prol.loopexit ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn.i, %.body ], [ %i.dz, %bb.m ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZN2cv8MatShape6resizeEmi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ExpandLayerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(209) dereferenceable(216) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare noundef ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9subgraphsEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ExpandLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %9 = alloca %"class.std::vector", align 8       ; 11 uses
  %10 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %12 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.g

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !65, !range !102, !noundef !103
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !104
  store i32 %i.h, ptr %i.a, align 16, !tbaa !50, !noalias !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 -1, ptr %i.i, align 4, !tbaa !50, !noalias !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -1, ptr %i.j, align 8, !tbaa !50, !noalias !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 -1, ptr %i.k, align 4, !tbaa !50, !noalias !104
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %11)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !104
  %i.l = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %11)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.h:                                             ; preds = %.noexc, %bb.c, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ad

bb.i:                                             ; preds = %bb.e, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.p = load i32, ptr %10, align 4, !tbaa !47    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %narrow.i33 = call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.s = icmp sgt i32 %i.p, %narrow.i33           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.t = select i1 %i.s, i32 %i.p, i32 %i.r
  %narrow.i39 = call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %spec.select.i40 = zext nneg i32 %narrow.i39 to i64
  invoke void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %12, i64 noundef %spec.select.i40, i32 noundef 1, i32 noundef 0)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %bb.i
  %.val97 = load i32, ptr %10, align 4
  %i.u = load i32, ptr %i.q, align 4
  %13 = select i1 %i.s, i32 %.val97, i32 %i.u     ; 3 uses
  %i.v = icmp sgt i32 %13, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.sroa.sel = select i1 %i.s, ptr %.sroa.gep, ptr %.sroa.gep80
  %.val = load i32, ptr %i.q, align 4
  %.val84 = load i32, ptr %10, align 4
  %i.w = select i1 %i.s, i32 %.val, i32 %.val84   ; 2 uses
  %narrow.i48 = call i32 @llvm.smax.i32(i32 %i.w, i32 0)
  %.neg = sub nsw i32 %narrow.i48, %13
  %i.x = load i32, ptr %12, align 4
  %narrow.i68 = call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 12
  %narrow.i50 = call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %.sroa.sel83 = select i1 %i.s, ptr %.sroa.gep80, ptr %.sroa.gep
  %i.z = zext nneg i32 %narrow.i68 to i64         ; 2 uses
  %wide.trip.count = zext nneg i32 %13 to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.z, %.preheader
  invoke void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.q)
          to label %bb.aa unwind label %bb.j

bb.j:                                             ; preds = %bb.aa, %._crit_edge, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50 ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = add i32 %.neg, %i.ad                    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ult i32 %i.ae, %narrow.i50
  br i1 %i.ag, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #21
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc55
  unreachable

bb.o:                                             ; preds = %.noexc55
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %bb.o
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.an = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %i.an, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc64 unwind label %bb.u

.noexc64:                                         ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #21
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc64
  unreachable

bb.s:                                             ; preds = %.noexc64
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.body

bb.t:                                             ; preds = %bb.p
  %i.au = zext nneg i32 %i.ae to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel83, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ac)
  br label %bb.z

bb.u:                                             ; preds = %bb.w, %bb.q, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %i.ay, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc73 unwind label %bb.u

.noexc73:                                         ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #21
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc73
  unreachable

bb.y:                                             ; preds = %.noexc73
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.y
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.z:                                             ; preds = %bb.v, %bb.t
  %.sink = phi i32 [ %.sroa.speculated, %bb.t ], [ %i.ac, %bb.v ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %.sink, ptr %i.bf, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !107

bb.aa:                                            ; preds = %._crit_edge
  %i.bg = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.q, ptr noundef nonnull align 4 dereferenceable(52) %12)
          to label %bb.ab unwind label %bb.j      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.bh = load ptr, ptr %9, align 8, !tbaa !55    ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %i.bh, %bb.ab ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !108

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ab
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bh, %bb.ab ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71 ], [ %i.ax, %bb.u ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.o, %bb.h ], [ %i.n, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ae

end_hunk_0
