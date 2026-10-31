Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tracker_dasiamrpn?download=true
inline.NumInlined: 719
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv20TrackerDaSiamRPNImpl21generateHanningWindowEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !83
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn11 = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn13 = phi { ptr, i32 } [ %i.r, %bb.l ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

.lr.ph:                                           ; preds = %bb.f, %bb.n
  %.017 = phi i32 [ %i.s, %bb.n ], [ 1, %bb.f ]
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.t = load i32, ptr %i.k, align 8, !tbaa !83
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !142

bb.o:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %bb.n, %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.j, %bb.g
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.o ], [ %.pn13, %bb.m ], [ %.pn11, %bb.j ], [ %i.n, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn15
}

declare void @_ZN2cv4meanERKNS_11_InputArrayES2_(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv20TrackerDaSiamRPNImpl12getSubwindowERNS_3MatERKNS_5Rect_IfEEfNS_7Scalar_IdEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, ptr noundef align 8 dead_on_return %5) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w
  %i.y = fadd float %4, 1.000000e+00
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = load <2 x float>, ptr %3, align 4, !tbaa !53
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fsub <2 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ae)
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ah = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ag)
  %i.ai = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>   ; 3 uses
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fadd <2 x float> %i.am, %i.ak
  %i.ao = fadd <2 x float> %i.an, splat (float -1.000000e+00) ; 2 uses
  %i.ap = fneg nsz <2 x float> %i.ak
  %i.aq = call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>   ; 4 uses
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x float> ; 2 uses
  %i.at = fadd <2 x float> %i.ao, %i.as           ; 2 uses
  %i.au = fadd <2 x float> %i.ak, %i.as           ; 4 uses
  %i.av = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %i.x, i64 1
  %i.ax = sitofp nsz <2 x i32> %i.aw to <2 x float>
  %i.ay = fsub nsz <2 x float> %i.ao, %i.ax
  %i.az = fadd nsz <2 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer)
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>   ; 3 uses
  %i.bc = shufflevector <2 x i32> %i.ar, <2 x i32> %i.bb, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bd = icmp eq <4 x i32> %i.bc, zeroinitializer ; 4 uses
  %i.be = extractelement <4 x i1> %i.bd, i64 1
  %i.bf = extractelement <4 x i1> %i.bd, i64 3
  %or.cond = select i1 %i.bf, i1 %i.be, i1 false
  %i.bg = extractelement <4 x i1> %i.bd, i64 2
  %or.cond3 = select i1 %or.cond, i1 %i.bg, i1 false
  %i.bh = extractelement <4 x i1> %i.bd, i64 0
  %or.cond5 = select i1 %or.cond3, i1 %i.bh, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bi = fsub <2 x float> %i.at, %i.au
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = fadd <4 x float> %i.bj, <float -0.000000e+00, float -0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bl = fptosi <4 x float> %i.bk to <4 x i32>
  store <4 x i32> %i.bl, ptr %10, align 16, !tbaa !52
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bn, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !58
  store ptr %0, ptr %i.bm, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.x

bb.l:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn66.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.bp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.bs, align 4, !tbaa !57
  store i32 16842752, ptr %12, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %i.bt, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.bv, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !58
  store ptr %8, ptr %i.bu, align 8, !tbaa !29
  %i.bw = extractelement <2 x i32> %i.ar, i64 0
  %i.bx = extractelement <2 x i32> %i.ar, i64 1
  %i.by = extractelement <2 x i32> %i.bb, i64 0
  %i.bz = extractelement <2 x i32> %i.bb, i64 1
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.ca = fsub <2 x float> %i.at, %i.au
  %i.cb = shufflevector <2 x float> %i.au, <2 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = fadd <4 x float> %i.cb, <float -0.000000e+00, float -0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.cd = fptosi <4 x float> %i.cc to <4 x i32>
  store <4 x i32> %i.cd, ptr %15, align 16, !tbaa !52
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.cf, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !58
  store ptr %0, ptr %i.ce, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body

bb.u:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn63.pn = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.ch, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.body

bb.x:                                             ; preds = %bb.s, %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

.body:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.o, %bb.t, %bb.w
  %.pn66.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %.pn63.pn, %bb.w ], [ %.pn66.pn, %bb.o ], [ %i.bo, %bb.l ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  resume { ptr, i32 } %.pn66.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3dnn14dnn5_v2026060513blobFromImageERKNS_11_InputArrayERKNS_12_OutputArrayEdRKNS_5Size_IiEERKNS_7Scalar_IdEEbbi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3dnn14dnn5_v202606053Net8setInputERKNS_11_InputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), double noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !76
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !76
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
end_hunk_0
begin_hunk_1_@_ZN2cv20TrackerDaSiamRPNImpl11trackerEvalENS_3MatE:bb.a
  %.pn346 = phi float [ %i.qw, %_ZN2cv3Mat2atIfEERT_PKi.exit283 ], [ %i.ps, %_ZN2cv3Mat2atIfEERT_PKi.exit291.loopexit ]
  %i.sq = insertelement <2 x float> poison, float %.pn345, i64 0
  %i.sr = insertelement <2 x float> %i.sq, float %.pn346, i64 1
  %i.ss = fdiv <2 x float> %i.sr, %i.dl
  %i.st = insertelement <2 x float> poison, float %.pn, i64 0
  %i.su = insertelement <2 x float> %i.st, float %i.sp, i64 1
  %i.sv = fdiv <2 x float> %i.su, %i.dl
  %i.sw = getelementptr inbounds nuw i8, ptr %66, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !235 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !236 ; 3 uses
  %i.ta = icmp sgt i32 %i.sx, 0
  br i1 %i.ta, label %.lr.ph.i.i293, label %_ZN2cv3Mat2atIfEERT_PKi.exit299

.lr.ph.i.i293:                                    ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit291
  %i.tb = getelementptr inbounds nuw i8, ptr %66, i64 128 ; 5 uses
  %wide.trip.count.i.i294 = zext nneg i32 %i.sx to i64 ; 2 uses
  %xtraiter438 = and i64 %wide.trip.count.i.i294, 3 ; 3 uses
  %i.tc = icmp ult i32 %i.sx, 4
  br i1 %i.tc, label %.epil.preheader437, label %.lr.ph.i.i293.new

.lr.ph.i.i293.new:                                ; preds = %.lr.ph.i.i293
  %unroll_iter443 = and i64 %wide.trip.count.i.i294, 2147483644
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i.i293.new
  %indvars.iv.i.i295 = phi i64 [ 0, %.lr.ph.i.i293.new ], [ %indvars.iv.next.i.i297.3, %bb.cv ] ; 6 uses
  %.010.i.i296 = phi ptr [ %i.sz, %.lr.ph.i.i293.new ], [ %i.ue, %bb.cv ]
  %niter444 = phi i64 [ 0, %.lr.ph.i.i293.new ], [ %niter444.next.3, %bb.cv ]
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i295
  %i.te = load i32, ptr %i.td, align 8, !tbaa !52
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i.i295
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !76
  %i.ti = mul i64 %i.th, %i.tf
  %i.tj = getelementptr inbounds nuw i8, ptr %.010.i.i296, i64 %i.ti
  %indvars.iv.next.i.i297 = or disjoint i64 %indvars.iv.i.i295, 1 ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i297
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !52
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i297
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !76
  %i.tp = mul i64 %i.to, %i.tm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tp
  %indvars.iv.next.i.i297.1 = or disjoint i64 %indvars.iv.i.i295, 2 ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i297.1
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !52
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i297.1
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !76
  %i.tw = mul i64 %i.tv, %i.tt
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tw
  %indvars.iv.next.i.i297.2 = or disjoint i64 %indvars.iv.i.i295, 3 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i297.2
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !52
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i297.2
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !76
  %i.ud = mul i64 %i.uc, %i.ua
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ud ; 3 uses
  %indvars.iv.next.i.i297.3 = add nuw nsw i64 %indvars.iv.i.i295, 4 ; 2 uses
  %niter444.next.3 = add i64 %niter444, 4         ; 2 uses
  %niter444.ncmp.3 = icmp eq i64 %niter444.next.3, %unroll_iter443
  br i1 %niter444.ncmp.3, label %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa, label %bb.cv, !llvm.loop !0

_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa: ; preds = %bb.cv
  %lcmp.mod440.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod440.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit299, label %.epil.preheader437

.epil.preheader437:                               ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa, %.lr.ph.i.i293
  %indvars.iv.i.i295.epil.init = phi i64 [ 0, %.lr.ph.i.i293 ], [ %indvars.iv.next.i.i297.3, %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa ]
  %.010.i.i296.epil.init = phi ptr [ %i.sz, %.lr.ph.i.i293 ], [ %i.ue, %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa ]
  %lcmp.mod442 = icmp ne i64 %xtraiter438, 0
  call void @llvm.assume(i1 %lcmp.mod442)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader437
  %indvars.iv.i.i295.epil = phi i64 [ %indvars.iv.i.i295.epil.init, %.epil.preheader437 ], [ %indvars.iv.next.i.i297.epil, %bb.cw ] ; 3 uses
  %.010.i.i296.epil = phi ptr [ %.010.i.i296.epil.init, %.epil.preheader437 ], [ %i.ul, %bb.cw ]
  %epil.iter439 = phi i64 [ 0, %.epil.preheader437 ], [ %epil.iter439.next, %bb.cw ]
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i295.epil
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !52
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i.i295.epil
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !76
  %i.uk = mul i64 %i.uj, %i.uh
  %i.ul = getelementptr inbounds nuw i8, ptr %.010.i.i296.epil, i64 %i.uk ; 2 uses
  %indvars.iv.next.i.i297.epil = add nuw nsw i64 %indvars.iv.i.i295.epil, 1
  %epil.iter439.next = add i64 %epil.iter439, 1   ; 2 uses
  %epil.iter439.cmp.not = icmp eq i64 %epil.iter439.next, %xtraiter438
  br i1 %epil.iter439.cmp.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit299, label %bb.cw, !llvm.loop !202

_ZN2cv3Mat2atIfEERT_PKi.exit299:                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa, %bb.cw, %_ZN2cv3Mat2atIfEERT_PKi.exit291
  %.0.lcssa.i.i292 = phi ptr [ %i.sz, %_ZN2cv3Mat2atIfEERT_PKi.exit291 ], [ %i.ue, %_ZN2cv3Mat2atIfEERT_PKi.exit299.loopexit.unr-lcssa ], [ %i.ul, %bb.cw ]
  %i.um = load float, ptr %.0.lcssa.i.i292, align 4, !tbaa !53
  %i.un = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !235 ; 5 uses
  %i.up = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !236 ; 6 uses
  %i.ur = icmp sgt i32 %i.uo, 0                   ; 2 uses
  br i1 %i.ur, label %.lr.ph.i.i301, label %_ZN2cv3Mat2atIfEERT_PKi.exit307

.lr.ph.i.i301:                                    ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit299
  %i.us = getelementptr inbounds nuw i8, ptr %63, i64 128 ; 5 uses
  %wide.trip.count.i.i302 = zext nneg i32 %i.uo to i64 ; 2 uses
  %xtraiter446 = and i64 %wide.trip.count.i.i302, 3 ; 3 uses
  %i.ut = icmp ult i32 %i.uo, 4
  br i1 %i.ut, label %.epil.preheader445, label %.lr.ph.i.i301.new

.lr.ph.i.i301.new:                                ; preds = %.lr.ph.i.i301
  %unroll_iter451 = and i64 %wide.trip.count.i.i302, 2147483644
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i.i301.new
  %indvars.iv.i.i303 = phi i64 [ 0, %.lr.ph.i.i301.new ], [ %indvars.iv.next.i.i305.3, %bb.cx ] ; 6 uses
  %.010.i.i304 = phi ptr [ %i.uq, %.lr.ph.i.i301.new ], [ %i.vv, %bb.cx ]
  %niter452 = phi i64 [ 0, %.lr.ph.i.i301.new ], [ %niter452.next.3, %bb.cx ]
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i303
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !52
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.i.i303
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !76
  %i.uz = mul i64 %i.uy, %i.uw
  %i.va = getelementptr inbounds nuw i8, ptr %.010.i.i304, i64 %i.uz
  %indvars.iv.next.i.i305 = or disjoint i64 %indvars.iv.i.i303, 1 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i305
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !52
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.next.i.i305
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !76
  %i.vg = mul i64 %i.vf, %i.vd
  %i.vh = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vg
  %indvars.iv.next.i.i305.1 = or disjoint i64 %indvars.iv.i.i303, 2 ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i305.1
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !52
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.next.i.i305.1
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !76
  %i.vn = mul i64 %i.vm, %i.vk
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vn
  %indvars.iv.next.i.i305.2 = or disjoint i64 %indvars.iv.i.i303, 3 ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i305.2
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !52
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.next.i.i305.2
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !76
  %i.vu = mul i64 %i.vt, %i.vr
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vu ; 3 uses
  %indvars.iv.next.i.i305.3 = add nuw nsw i64 %indvars.iv.i.i303, 4 ; 2 uses
  %niter452.next.3 = add i64 %niter452, 4         ; 2 uses
  %niter452.ncmp.3 = icmp eq i64 %niter452.next.3, %unroll_iter451
  br i1 %niter452.ncmp.3, label %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa, label %bb.cx, !llvm.loop !0

_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa: ; preds = %bb.cx
  %lcmp.mod448.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod448.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit307, label %.epil.preheader445

.epil.preheader445:                               ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa, %.lr.ph.i.i301
  %indvars.iv.i.i303.epil.init = phi i64 [ 0, %.lr.ph.i.i301 ], [ %indvars.iv.next.i.i305.3, %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa ]
  %.010.i.i304.epil.init = phi ptr [ %i.uq, %.lr.ph.i.i301 ], [ %i.vv, %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa ]
  %lcmp.mod450 = icmp ne i64 %xtraiter446, 0
  call void @llvm.assume(i1 %lcmp.mod450)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.epil.preheader445
  %indvars.iv.i.i303.epil = phi i64 [ %indvars.iv.i.i303.epil.init, %.epil.preheader445 ], [ %indvars.iv.next.i.i305.epil, %bb.cy ] ; 3 uses
  %.010.i.i304.epil = phi ptr [ %.010.i.i304.epil.init, %.epil.preheader445 ], [ %i.wc, %bb.cy ]
  %epil.iter447 = phi i64 [ 0, %.epil.preheader445 ], [ %epil.iter447.next, %bb.cy ]
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i303.epil
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !52
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv.i.i303.epil
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !76
  %i.wb = mul i64 %i.wa, %i.vy
  %i.wc = getelementptr inbounds nuw i8, ptr %.010.i.i304.epil, i64 %i.wb ; 2 uses
  %indvars.iv.next.i.i305.epil = add nuw nsw i64 %indvars.iv.i.i303.epil, 1
  %epil.iter447.next = add i64 %epil.iter447, 1   ; 2 uses
  %epil.iter447.cmp.not = icmp eq i64 %epil.iter447.next, %xtraiter446
  br i1 %epil.iter447.cmp.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit307, label %bb.cy, !llvm.loop !203

_ZN2cv3Mat2atIfEERT_PKi.exit307:                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa, %bb.cy, %_ZN2cv3Mat2atIfEERT_PKi.exit299
  %.0.lcssa.i.i300 = phi ptr [ %i.uq, %_ZN2cv3Mat2atIfEERT_PKi.exit299 ], [ %i.vv, %_ZN2cv3Mat2atIfEERT_PKi.exit307.loopexit.unr-lcssa ], [ %i.wc, %bb.cy ]
  %i.wd = load float, ptr %.0.lcssa.i.i300, align 4, !tbaa !53
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.wf = load float, ptr %i.we, align 4, !tbaa !237
  %i.wg = fdiv <2 x float> %i.dm, %i.dl
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.wi = fmul float %i.um, %i.wd
  %i.wj = fmul float %i.wi, %i.wf                 ; 2 uses
  %i.wk = load <2 x float>, ptr %56, align 8, !tbaa !53
  %i.wl = fadd <2 x float> %i.ss, %i.wk
  %i.wm = fsub float 1.000000e+00, %i.wj
  %i.wn = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = fmul <2 x float> %i.sv, %i.wo
  %i.wq = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.wr, <2 x float> %i.wp)
  %i.wt = load <2 x i32>, ptr %i.wh, align 8, !tbaa !52
  %i.wu = shufflevector <2 x i32> %i.wt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.wv = sitofp nsz <4 x i32> %i.wu to <4 x float>
  %i.ww = shufflevector <2 x float> %i.wl, <2 x float> %i.ws, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wx = call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.wv, <4 x float> %i.ww)
  %i.wy = call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.wx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01>)
  store <4 x float> %i.wy, ptr %i.l, align 8, !tbaa !53
  br i1 %i.ur, label %.lr.ph.i.i309, label %_ZN2cv3Mat2atIfEERT_PKi.exit315

.lr.ph.i.i309:                                    ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit307
  %i.wz = getelementptr inbounds nuw i8, ptr %63, i64 128 ; 5 uses
  %wide.trip.count.i.i310 = zext nneg i32 %i.uo to i64 ; 2 uses
  %xtraiter454 = and i64 %wide.trip.count.i.i310, 3 ; 3 uses
  %i.xa = icmp ult i32 %i.uo, 4
  br i1 %i.xa, label %.epil.preheader453, label %.lr.ph.i.i309.new

.lr.ph.i.i309.new:                                ; preds = %.lr.ph.i.i309
  %unroll_iter459 = and i64 %wide.trip.count.i.i310, 2147483644
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.lr.ph.i.i309.new
  %indvars.iv.i.i311 = phi i64 [ 0, %.lr.ph.i.i309.new ], [ %indvars.iv.next.i.i313.3, %bb.cz ] ; 6 uses
  %.010.i.i312 = phi ptr [ %i.uq, %.lr.ph.i.i309.new ], [ %i.yc, %bb.cz ]
  %niter460 = phi i64 [ 0, %.lr.ph.i.i309.new ], [ %niter460.next.3, %bb.cz ]
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i311
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !52
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.i.i311
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !76
  %i.xg = mul i64 %i.xf, %i.xd
  %i.xh = getelementptr inbounds nuw i8, ptr %.010.i.i312, i64 %i.xg
  %indvars.iv.next.i.i313 = or disjoint i64 %indvars.iv.i.i311, 1 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i313
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !52
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.i313
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !76
  %i.xn = mul i64 %i.xm, %i.xk
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xn
  %indvars.iv.next.i.i313.1 = or disjoint i64 %indvars.iv.i.i311, 2 ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i313.1
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !52
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.i313.1
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !76
  %i.xu = mul i64 %i.xt, %i.xr
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xu
  %indvars.iv.next.i.i313.2 = or disjoint i64 %indvars.iv.i.i311, 3 ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.i313.2
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !52
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.i313.2
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !76
  %i.yb = mul i64 %i.ya, %i.xy
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.yb ; 3 uses
  %indvars.iv.next.i.i313.3 = add nuw nsw i64 %indvars.iv.i.i311, 4 ; 2 uses
  %niter460.next.3 = add i64 %niter460, 4         ; 2 uses
  %niter460.ncmp.3 = icmp eq i64 %niter460.next.3, %unroll_iter459
  br i1 %niter460.ncmp.3, label %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa, label %bb.cz, !llvm.loop !0

_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa: ; preds = %bb.cz
  %lcmp.mod456.not = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod456.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit315, label %.epil.preheader453

.epil.preheader453:                               ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa, %.lr.ph.i.i309
  %indvars.iv.i.i311.epil.init = phi i64 [ 0, %.lr.ph.i.i309 ], [ %indvars.iv.next.i.i313.3, %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa ]
  %.010.i.i312.epil.init = phi ptr [ %i.uq, %.lr.ph.i.i309 ], [ %i.yc, %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa ]
  %lcmp.mod458 = icmp ne i64 %xtraiter454, 0
  call void @llvm.assume(i1 %lcmp.mod458)
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.epil.preheader453
  %indvars.iv.i.i311.epil = phi i64 [ %indvars.iv.i.i311.epil.init, %.epil.preheader453 ], [ %indvars.iv.next.i.i313.epil, %bb.da ] ; 3 uses
  %.010.i.i312.epil = phi ptr [ %.010.i.i312.epil.init, %.epil.preheader453 ], [ %i.yj, %bb.da ]
  %epil.iter455 = phi i64 [ 0, %.epil.preheader453 ], [ %epil.iter455.next, %bb.da ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i311.epil
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !52
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.i.i311.epil
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !76
  %i.yi = mul i64 %i.yh, %i.yf
  %i.yj = getelementptr inbounds nuw i8, ptr %.010.i.i312.epil, i64 %i.yi ; 2 uses
  %indvars.iv.next.i.i313.epil = add nuw nsw i64 %indvars.iv.i.i311.epil, 1
  %epil.iter455.next = add i64 %epil.iter455, 1   ; 2 uses
  %epil.iter455.cmp.not = icmp eq i64 %epil.iter455.next, %xtraiter454
  br i1 %epil.iter455.cmp.not, label %_ZN2cv3Mat2atIfEERT_PKi.exit315, label %bb.da, !llvm.loop !204

_ZN2cv3Mat2atIfEERT_PKi.exit315:                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa, %bb.da, %_ZN2cv3Mat2atIfEERT_PKi.exit307
  %.0.lcssa.i.i308 = phi ptr [ %i.uq, %_ZN2cv3Mat2atIfEERT_PKi.exit307 ], [ %i.yc, %_ZN2cv3Mat2atIfEERT_PKi.exit315.loopexit.unr-lcssa ], [ %i.yj, %bb.da ]
  %i.yk = load float, ptr %.0.lcssa.i.i308, align 4, !tbaa !53
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 828
  store float %i.yk, ptr %i.yl, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.ym = load ptr, ptr %61, align 16, !tbaa !86  ; 3 uses
  %i.yn = load ptr, ptr %i.bl, align 8, !tbaa !87 ; 2 uses
  %.not4.i.i.i316 = icmp eq ptr %i.ym, %i.yn
  br i1 %.not4.i.i.i316, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i324, label %.lr.ph.i.i.i317

.lr.ph.i.i.i317:                                  ; preds = %_ZN2cv3Mat2atIfEERT_PKi.exit315, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320
  %.05.i.i.i318 = phi ptr [ %i.yt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320 ], [ %i.ym, %_ZN2cv3Mat2atIfEERT_PKi.exit315 ] ; 3 uses
  %i.yo = load ptr, ptr %.05.i.i.i318, align 8, !tbaa !26 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.05.i.i.i318, i64 16 ; 2 uses
  %i.yq = icmp eq ptr %i.yo, %i.yp
  br i1 %i.yq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i319: ; preds = %.lr.ph.i.i.i317
  %i.yr = load i64, ptr %i.yp, align 8, !tbaa !22
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.ys) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320: ; preds = %.lr.ph.i.i.i317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i319
  %i.yt = getelementptr inbounds nuw i8, ptr %.05.i.i.i318, i64 32 ; 2 uses
  %.not.i.i.i321 = icmp eq ptr %i.yt, %i.yn
  br i1 %.not.i.i.i321, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i322, label %.lr.ph.i.i.i317, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i322: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i320
  %.pr.i323 = load ptr, ptr %61, align 16, !tbaa !86
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i324: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i322, %_ZN2cv3Mat2atIfEERT_PKi.exit315
  %i.yu = phi ptr [ %.pr.i323, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i322 ], [ %i.ym, %_ZN2cv3Mat2atIfEERT_PKi.exit315 ] ; 3 uses
  %.not.i.i1.i325 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i1.i325, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i324
  %i.yv = load ptr, ptr %i.bn, align 16, !tbaa !88
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = ptrtoint ptr %i.yu to i64
  %i.yy = sub i64 %i.yw, %i.yx
  call void @_ZdlPvm(ptr noundef nonnull %i.yu, i64 noundef %i.yy) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i324, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  %i.yz = load ptr, ptr %60, align 8, !tbaa !91   ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i328 = icmp eq ptr %i.yz, %i.zb
  br i1 %.not4.i.i.i328, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i329

.lr.ph.i.i.i329:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327, %.lr.ph.i.i.i329
  %.05.i.i.i330 = phi ptr [ %i.zc, %.lr.ph.i.i.i329 ], [ %i.yz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i330) #21
  %i.zc = getelementptr inbounds nuw i8, ptr %.05.i.i.i330, i64 208 ; 2 uses
  %.not.i.i.i331 = icmp eq ptr %i.zc, %i.zb
  br i1 %.not.i.i.i331, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i329, !llvm.loop !3

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i329
  %.pr.i332 = load ptr, ptr %60, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327
  %i.zd = phi ptr [ %.pr.i332, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.yz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit327 ] ; 3 uses
  %.not.i.i1.i333 = icmp eq ptr %i.zd, null
  br i1 %.not.i.i1.i333, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ze = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !100
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.zd to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.zd, i64 noundef %i.zi) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  ret void

bb.dd:                                            ; preds = %bb.a
  %i.zj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  br label %bb.ib

bb.de:                                            ; preds = %._crit_edge.i.i
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  %i.zl = load ptr, ptr %73, align 8, !tbaa !26   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.be
end_hunk_1
