Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tps_trans?download=true
inline.NumInlined: 283
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cvL20_applyTransformationERKNS_3MatENS_6Point_IfEES2_:bb.a
  br i1 %exitcond83.1.not, label %.split63.us.loopexit69, label %bb.g, !llvm.loop !66

.split63.us.loopexit69:                           ; preds = %bb.g
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cw, float %.sroa.030.0.vec.extract, float %i.cu)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cy, float %.sroa.030.4.vec.extract, float %i.dm)
  %i.do = fadd float %i.dn, %i.dl
  %.sroa.045.4.vec.insert.us.us.1 = insertelement <2 x float> %.sroa.045.0.vec.insert.us.us, float %i.do, i64 1
  br label %.split63.us

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.03351.us57 = phi float [ %i.ec, %bb.h ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %i.dp = mul i64 %i.j, %indvars.iv
  %gep.us = getelementptr i8, ptr %i.h, i64 %i.dp
  %i.dq = load float, ptr %gep.us, align 4, !tbaa !36
  %i.dr = mul i64 %i.ab, %indvars.iv
  %.sink.idx.i40.us58 = select i1 %i.x, i64 0, i64 %i.dr
  %.sink.i41.us59 = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.idx.i40.us58 ; 2 uses
  %i.ds = load float, ptr %.sink.i41.us59, align 4, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %.sink.i41.us59, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36
  %i.dv = fsub float %i.ds, %.sroa.030.0.vec.extract ; 2 uses
  %i.dw = fsub float %i.du, %.sroa.030.4.vec.extract ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dx) ; 2 uses
  %i.dz = fadd float %i.dy, f0x34000000
  %i.ea = tail call float @llvm.log.f32(float %i.dz)
  %i.eb = fmul float %i.dy, %i.ea
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.eb, float %.03351.us57) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.us.1, label %bb.h, !llvm.loop !66

.lr.ph.us.1:                                      ; preds = %bb.h
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.030.0.vec.extract, float %i.ac)
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.030.4.vec.extract, float %i.ed)
  %i.ef = fadd float %i.ee, %i.ec
  %.sroa.045.0.vec.insert.us = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink.i35, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink.i37, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !36
  %invariant.gep.us.1 = getelementptr i8, ptr %i.h, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.i ], [ 0, %.lr.ph.us.1 ] ; 3 uses
  %.03351.us57.1 = phi float [ %i.ez, %bb.i ], [ 0.000000e+00, %.lr.ph.us.1 ]
  %i.em = mul i64 %i.j, %indvars.iv.1
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us.1, i64 %i.em
  %i.en = load float, ptr %gep.us.1, align 4, !tbaa !36
  %i.eo = mul i64 %i.ab, %indvars.iv.1
  %.sink.idx.i40.us58.1 = select i1 %i.x, i64 0, i64 %i.eo
  %.sink.i41.us59.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.idx.i40.us58.1 ; 2 uses
  %i.ep = load float, ptr %.sink.i41.us59.1, align 4, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink.i41.us59.1, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !36
  %i.es = fsub float %i.ep, %.sroa.030.0.vec.extract ; 2 uses
  %i.et = fsub float %i.er, %.sroa.030.4.vec.extract ; 2 uses
  %i.eu = fmul float %i.et, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.eu) ; 2 uses
  %i.ew = fadd float %i.ev, f0x34000000
  %i.ex = tail call float @llvm.log.f32(float %i.ew)
  %i.ey = fmul float %i.ev, %i.ex
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ey, float %.03351.us57.1) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %.split63.us.loopexit70, label %bb.i, !llvm.loop !66

.split63.us.loopexit70:                           ; preds = %bb.i
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ej, float %.sroa.030.0.vec.extract, float %i.eh)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.el, float %.sroa.030.4.vec.extract, float %i.fa)
  %i.fc = fadd float %i.fb, %i.ez
  %.sroa.045.4.vec.insert.us.1 = insertelement <2 x float> %.sroa.045.0.vec.insert.us, float %i.fc, i64 1
  br label %.split63.us

.split63.us:                                      ; preds = %.split63.us.loopexit71, %.split63.us.loopexit70, %.split63.us.loopexit69, %.split63.us.loopexit
  %.us-phi64 = phi <2 x float> [ %.sroa.045.4.vec.insert.us.us.1, %.split63.us.loopexit69 ], [ %.sroa.045.4.vec.insert.us.us.us.1, %.split63.us.loopexit ], [ %.sroa.045.4.vec.insert.us.1, %.split63.us.loopexit70 ], [ %i.fk, %.split63.us.loopexit71 ]
  ret <2 x float> %.us-phi64

.split63.us.loopexit71:                           ; preds = %bb.a
  %i.fd = load <2 x float>, ptr %.sink.i37, align 4, !tbaa !36
  %i.fe = load <2 x float>, ptr %.sink.i35, align 4, !tbaa !36
  %i.ff = load <2 x float>, ptr %.sink.i, align 4, !tbaa !36
  %i.fg = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fg, <2 x float> %i.ff)
  %i.fi = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fi, <2 x float> %i.fh)
  %i.fk = fadd <2 x float> %i.fj, zeroinitializer
  br label %.split63.us
}

declare void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
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
define hidden noundef float @_ZN2cv35ThinPlateSplineShapeTransformerImpl19applyTransformationERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv35ThinPlateSplineShapeTransformerImpl19applyTransformationERKNS_11_InputArrayERKNS_12_OutputArrayEE25__cv_trace_location_fn173)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv35ThinPlateSplineShapeTransformerImpl19applyTransformationERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 175) #19
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
  %i.f = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.k = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33, !noalias !74
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.j

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.o = load i32, ptr %6, align 8, !tbaa !50
  %i.p = and i32 %i.o, 4064
  %i.q = icmp eq i32 %i.p, 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp sgt i32 %i.s, 0
  %or.cond = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.q, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.k:                                             ; preds = %bb.s, %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv35ThinPlateSplineShapeTransformerImpl19applyTransformationERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 177) #19
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.p
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.o
  %.pn23 = phi { ptr, i32 } [ %i.w, %bb.o ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ab

bb.q:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ad = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  br i1 %i.ad, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !35
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef %i.ae, i32 noundef 37, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.af = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc36 unwind label %bb.w

.noexc36:                                         ; preds = %bb.t
  %i.ag = icmp eq i32 %i.af, 65536
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc36
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33, !noalias !75
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %_ZNK2cv11_InputArray6getMatEi.exit39 unwind label %bb.w

bb.v:                                             ; preds = %.noexc36
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit39 unwind label %bb.w

_ZNK2cv11_InputArray6getMatEi.exit39:             ; preds = %bb.v, %bb.u
  %i.aj = load i32, ptr %i.r, align 4, !tbaa !35  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit39
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  %11 = load ptr, ptr %i.ao, align 8, !tbaa !48
  %wide.trip.count = zext nneg i32 %i.aj to i64
  br label %bb.x

._crit_edge:                                      ; preds = %bb.x, %_ZNK2cv11_InputArray6getMatEi.exit39
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.aq, align 4, !tbaa !36
  %i.ar = call fastcc <2 x float> @_ZN2cvL20_applyTransformationERKNS_3MatENS_6Point_IfEES2_(ptr noundef nonnull align 8 dereferenceable(208) %i.am, <2 x float> %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  store <2 x float> %i.ar, ptr %i.as, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !73

bb.y:                                             ; preds = %._crit_edge, %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load float, ptr %i.at, align 8, !tbaa !51
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret float %i.au

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.k
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.w ], [ %i.v, %bb.k ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.j
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.ab ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.ac ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv35ThinPlateSplineShapeTransformerImpl22estimateTransformationERKNS_11_InputArrayES3_RSt6vectorINS_6DMatchESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %21 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %33 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %38 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %40 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %41 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %42 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv35ThinPlateSplineShapeTransformerImpl22estimateTransformationERKNS_11_InputArrayES3_RSt6vectorINS_6DMatchESaIS5_EEE25__cv_trace_location_fn198)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !96
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc166 unwind label %bb.h

.noexc166:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc166
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33, !noalias !97
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit169 unwind label %bb.h

bb.e:                                             ; preds = %.noexc166
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit169 unwind label %bb.h

_ZNK2cv11_InputArray6getMatEi.exit169:            ; preds = %bb.d, %bb.e
  %i.i = load i32, ptr %5, align 8, !tbaa !50
  %i.j = and i32 %i.i, 4064
  %i.k = icmp eq i32 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit169
  %i.o = load i32, ptr %6, align 8, !tbaa !50
  %i.p = and i32 %i.o, 4064
  %i.q = icmp eq i32 %i.p, 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp sgt i32 %i.s, 0
  %or.cond5 = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond5, label %bb.n, label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.h:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.i:                                             ; preds = %bb.f, %_ZNK2cv11_InputArray6getMatEi.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv35ThinPlateSplineShapeTransformerImpl22estimateTransformationERKNS_11_InputArrayES3_RSt6vectorINS_6DMatchESaIS5_EE, ptr noundef nonnull @.str.1, i32 noundef 202) #19
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.x, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit226

bb.n:                                             ; preds = %bb.f
end_hunk_0
