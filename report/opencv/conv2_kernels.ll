Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_kernels?download=true
inline.NumInlined: 335
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN2cv3dnn12cpu_baselineL15setupActivationERKNS0_14dnn5_v202606059ConvStateEiRNS2_14FastActivationERPKfRPFvPKvPvmS9_ERfSH_:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn12cpu_baselineL15setupActivationERKNS0_14dnn5_v202606059ConvStateEiRNS2_14FastActivationERPKfRPFvPKvPvmS9_ERfSH_, ptr noundef nonnull @.str.1, i32 noundef 417) #17
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %7, align 8, !tbaa !19     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.q, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn34 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ad

bb.h:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %3, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !59
  store float %i.w, ptr %5, align 4, !tbaa !59
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %3, align 8, !tbaa !11
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn12cpu_baselineL15setupActivationERKNS0_14dnn5_v202606059ConvStateEiRNS2_14FastActivationERPKfRPFvPKvPvmS9_ERfSH_, ptr noundef nonnull @.str.1, i32 noundef 420) #17
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.m
  %.pn32 = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.z, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

bb.o:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn12cpu_baselineL15setupActivationERKNS0_14dnn5_v202606059ConvStateEiRNS2_14FastActivationERPKfRPFvPKvPvmS9_ERfSH_, ptr noundef nonnull @.str.1, i32 noundef 422) #17
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.t:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.s
  %.pn30 = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.an, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.ad

bb.u:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %3, align 8, !tbaa !11
  %i.au = load float, ptr %i.at, align 4, !tbaa !59
  store float %i.au, ptr %6, align 4, !tbaa !59
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  %i.bc = sext i32 %1 to i64
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn12cpu_baselineL15setupActivationERKNS0_14dnn5_v202606059ConvStateEiRNS2_14FastActivationERPKfRPFvPKvPvmS9_ERfSH_, ptr noundef nonnull @.str.1, i32 noundef 425) #17
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.aa:                                            ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.aa
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.z
  %.pn = phi { ptr, i32 } [ %i.be, %bb.z ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bf, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ad

bb.ab:                                            ; preds = %bb.a
  store float 1.000000e+00, ptr %6, align 4, !tbaa !59
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.ab, %bb.v, %bb.u, %bb.h
  ret void

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2cv3dnn12cpu_baselineL13fillCoeffBufsENS0_14dnn5_v2026060514FastActivationEPKffiiS5_S5_PfS6_S6_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %i.b = ptrtoaddr ptr %6 to i64                  ; 12 uses
  %i.c = ptrtoaddr ptr %5 to i64                  ; 12 uses
  %i.d = ptrtoaddr ptr %9 to i64                  ; 28 uses
  %i.e = ptrtoaddr ptr %7 to i64                  ; 28 uses
  %i.f = ptrtoaddr ptr %8 to i64                  ; 28 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph, label %.lr.ph46.preheader

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  %.not31 = icmp eq ptr %6, null                  ; 2 uses
  %i.h = icmp eq i32 %0, 3                        ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not31, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.h, label %.lr.ph.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %wide.trip.count90 = zext nneg i32 %3 to i64    ; 5 uses
  %min.iters.check305 = icmp ult i32 %3, 16
  br i1 %min.iters.check305, label %.lr.ph.split.us.split.us.split.preheader341, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.split.us.split.us.split.preheader
  %i.i = sub i64 %i.e, %i.f
  %diff.check299 = icmp ugt i64 %i.i, -32
  %i.j = sub i64 %i.e, %i.d
  %diff.check300 = icmp ugt i64 %i.j, -32
  %conflict.rdx301 = or i1 %diff.check299, %diff.check300
  %i.k = sub i64 %i.f, %i.d
  %diff.check302 = icmp ugt i64 %i.k, -32
  %conflict.rdx303 = or i1 %conflict.rdx301, %diff.check302
  br i1 %conflict.rdx303, label %.lr.ph.split.us.split.us.split.preheader341, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck298
  %n.vec307 = and i64 %wide.trip.count90, 2147483640 ; 3 uses
  %broadcast.splatinsert308 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat309 = shufflevector <4 x float> %broadcast.splatinsert308, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph306
  %index311 = phi i64 [ 0, %vector.ph306 ], [ %index.next312, %vector.body310 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index311 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.l, align 4, !tbaa !59
  store <4 x float> splat (float 1.000000e+00), ptr %i.m, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index311 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> zeroinitializer, ptr %i.n, align 4, !tbaa !59
  store <4 x float> zeroinitializer, ptr %i.o, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index311 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x float> %broadcast.splat309, ptr %i.p, align 4, !tbaa !59
  store <4 x float> %broadcast.splat309, ptr %i.q, align 4, !tbaa !59
  %index.next312 = add nuw i64 %index311, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.r, label %middle.block313, label %vector.body310, !llvm.loop !93

middle.block313:                                  ; preds = %vector.body310
  %cmp.n314 = icmp eq i64 %n.vec307, %wide.trip.count90
  br i1 %cmp.n314, label %.preheader, label %.lr.ph.split.us.split.us.split.preheader341

.lr.ph.split.us.split.us.split.preheader341:      ; preds = %vector.memcheck298, %.lr.ph.split.us.split.us.split.preheader, %middle.block313
  %indvars.iv87.ph = phi i64 [ 0, %vector.memcheck298 ], [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %n.vec307, %middle.block313 ] ; 6 uses
  %xtraiter365 = and i64 %wide.trip.count90, 1
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.split.us.split.us.split.prol.loopexit, label %.lr.ph.split.us.split.us.split.prol

.lr.ph.split.us.split.us.split.prol:              ; preds = %.lr.ph.split.us.split.us.split.preheader341
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv87.ph
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv87.ph
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !59
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv87.ph
  store float %2, ptr %i.u, align 4, !tbaa !59
  %indvars.iv.next88.prol = or disjoint i64 %indvars.iv87.ph, 1
  br label %.lr.ph.split.us.split.us.split.prol.loopexit

.lr.ph.split.us.split.us.split.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us.split.prol, %.lr.ph.split.us.split.us.split.preheader341
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %.lr.ph.split.us.split.us.split.preheader341 ], [ %indvars.iv.next88.prol, %.lr.ph.split.us.split.us.split.prol ]
  %i.v = add nsw i64 %wide.trip.count90, -1
  %i.w = icmp eq i64 %indvars.iv87.ph, %i.v
  br i1 %i.w, label %.preheader, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %.lr.ph.split.us.split.us
  %i.x = sext i32 %4 to i64                       ; 2 uses
  %wide.trip.count95 = zext nneg i32 %3 to i64    ; 5 uses
  %invariant.gep115 = getelementptr [4 x i8], ptr %1, i64 %i.x ; 4 uses
  %min.iters.check329 = icmp ult i32 %3, 36
  br i1 %min.iters.check329, label %.lr.ph.split.us.split.us.split.us.preheader340, label %vector.memcheck316

vector.memcheck316:                               ; preds = %.lr.ph.split.us.split.us.split.us.preheader
  %i.y = sub i64 %i.e, %i.f
  %diff.check317 = icmp ugt i64 %i.y, -32
  %i.z = sub i64 %i.e, %i.d
  %diff.check318 = icmp ugt i64 %i.z, -32
  %conflict.rdx319 = or i1 %diff.check317, %diff.check318
  %i.aa = shl nsw i64 %i.x, 2                     ; 2 uses
  %i.ab = add i64 %i.aa, %i.a                     ; 2 uses
  %i.ac = sub i64 %i.e, %i.ab
  %diff.check320 = icmp ugt i64 %i.ac, -32
  %conflict.rdx321 = or i1 %conflict.rdx319, %diff.check320
  %i.ad = sub i64 %i.f, %i.d
  %diff.check322 = icmp ugt i64 %i.ad, -32
  %conflict.rdx323 = or i1 %conflict.rdx321, %diff.check322
  %i.ae = sub i64 %i.f, %i.ab
  %diff.check324.a = icmp ugt i64 %i.ae, -32
  %conflict.rdx325 = or i1 %conflict.rdx323, %diff.check324.a
  %i.af = add i64 %i.aa, %i.a
  %i.ag = sub i64 %i.af, %i.d
  %diff.check326 = icmp ugt i64 %i.ag, -32
  %conflict.rdx327 = or i1 %conflict.rdx325, %diff.check326
  br i1 %conflict.rdx327, label %.lr.ph.split.us.split.us.split.us.preheader340, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck316
  %n.vec331 = and i64 %wide.trip.count95, 2147483640 ; 3 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body332 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index333 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ah, align 4, !tbaa !59
  store <4 x float> splat (float 1.000000e+00), ptr %i.ai, align 4, !tbaa !59
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index333 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x float> zeroinitializer, ptr %i.aj, align 4, !tbaa !59
  store <4 x float> zeroinitializer, ptr %i.ak, align 4, !tbaa !59
  %i.al = getelementptr [4 x i8], ptr %invariant.gep115, i64 %index333 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load334 = load <4 x float>, ptr %i.al, align 4, !tbaa !59
  %wide.load335 = load <4 x float>, ptr %i.am, align 4, !tbaa !59
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index333 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x float> %wide.load334, ptr %i.an, align 4, !tbaa !59
  store <4 x float> %wide.load335, ptr %i.ao, align 4, !tbaa !59
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ap, label %middle.block337, label %vector.body332, !llvm.loop !94

middle.block337:                                  ; preds = %vector.body332
  %cmp.n338 = icmp eq i64 %n.vec331, %wide.trip.count95
  br i1 %cmp.n338, label %.preheader, label %.lr.ph.split.us.split.us.split.us.preheader340

.lr.ph.split.us.split.us.split.us.preheader340:   ; preds = %vector.memcheck316, %.lr.ph.split.us.split.us.split.us.preheader, %middle.block337
  %indvars.iv92.ph = phi i64 [ 0, %vector.memcheck316 ], [ 0, %.lr.ph.split.us.split.us.split.us.preheader ], [ %n.vec331, %middle.block337 ] ; 7 uses
  %xtraiter367 = and i64 %wide.trip.count95, 1
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.lr.ph.split.us.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.split.us.prol

.lr.ph.split.us.split.us.split.us.prol:           ; preds = %.lr.ph.split.us.split.us.split.us.preheader340
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv92.ph
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !59
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv92.ph
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !59
  %gep116.prol = getelementptr [4 x i8], ptr %invariant.gep115, i64 %indvars.iv92.ph
  %i.as = load float, ptr %gep116.prol, align 4, !tbaa !59
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv92.ph
  store float %i.as, ptr %i.at, align 4, !tbaa !59
  %indvars.iv.next93.prol = or disjoint i64 %indvars.iv92.ph, 1
  br label %.lr.ph.split.us.split.us.split.us.prol.loopexit

.lr.ph.split.us.split.us.split.us.prol.loopexit:  ; preds = %.lr.ph.split.us.split.us.split.us.prol, %.lr.ph.split.us.split.us.split.us.preheader340
  %indvars.iv92.unr = phi i64 [ %indvars.iv92.ph, %.lr.ph.split.us.split.us.split.us.preheader340 ], [ %indvars.iv.next93.prol, %.lr.ph.split.us.split.us.split.us.prol ]
  %i.au = add nsw i64 %wide.trip.count95, -1
  %i.av = icmp eq i64 %indvars.iv92.ph, %i.au
  br i1 %i.av, label %.preheader, label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us.split.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93.1, %.lr.ph.split.us.split.us.split.us ], [ %indvars.iv92.unr, %.lr.ph.split.us.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv92
  store float 1.000000e+00, ptr %i.aw, align 4, !tbaa !59
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv92
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !59
  %gep116 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %indvars.iv92
  %i.ay = load float, ptr %gep116, align 4, !tbaa !59
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv92
  store float %i.ay, ptr %i.az, align 4, !tbaa !59
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next93
  store float 1.000000e+00, ptr %i.ba, align 4, !tbaa !59
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next93
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !59
  %gep116.1 = getelementptr [4 x i8], ptr %invariant.gep115, i64 %indvars.iv.next93
  %i.bc = load float, ptr %gep116.1, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next93
  store float %i.bc, ptr %i.bd, align 4, !tbaa !59
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv92, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next93.1, %wide.trip.count95
  br i1 %exitcond96.not.1, label %.preheader, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !95

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us.split.prol.loopexit, %.lr.ph.split.us.split.us.split
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.1, %.lr.ph.split.us.split.us.split ], [ %indvars.iv87.unr, %.lr.ph.split.us.split.us.split.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv87
  store float 1.000000e+00, ptr %i.be, align 4, !tbaa !59
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv87
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !59
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv87
  store float %2, ptr %i.bg, align 4, !tbaa !59
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next88
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !59
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next88
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !59
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next88
  store float %2, ptr %i.bj, align 4, !tbaa !59
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %exitcond91.not.1 = icmp eq i64 %indvars.iv.next88.1, %wide.trip.count90
  br i1 %exitcond91.not.1, label %.preheader, label %.lr.ph.split.us.split.us.split, !llvm.loop !96

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.bk = sext i32 %4 to i64                      ; 7 uses
  %wide.trip.count85 = zext nneg i32 %3 to i64    ; 10 uses
  br i1 %i.h, label %.lr.ph.split.us.split.split.us.preheader, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.us.preheader:         ; preds = %.lr.ph.split.us.split
  %min.iters.check285 = icmp ult i32 %3, 48
  br i1 %min.iters.check285, label %.lr.ph.split.us.split.split.us.preheader343, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph.split.us.split.split.us.preheader
  %i.bl = sub i64 %i.e, %i.f
  %diff.check267 = icmp ugt i64 %i.bl, -32
  %i.bm = sub i64 %i.e, %i.d
  %diff.check268 = icmp ugt i64 %i.bm, -32
  %conflict.rdx269 = or i1 %diff.check267, %diff.check268
  %i.bn = shl nsw i64 %i.bk, 2                    ; 5 uses
  %i.bo = add i64 %i.bn, %i.b
  %i.bp = sub i64 %i.e, %i.bo
  %diff.check270 = icmp ugt i64 %i.bp, -32
  %conflict.rdx271 = or i1 %conflict.rdx269, %diff.check270
  %i.bq = add i64 %i.bn, %i.a                     ; 2 uses
  %i.br = sub i64 %i.e, %i.bq
  %diff.check272 = icmp ugt i64 %i.br, -32
  %conflict.rdx273 = or i1 %conflict.rdx271, %diff.check272
  %i.bs = sub i64 %i.f, %i.d
  %diff.check274 = icmp ugt i64 %i.bs, -32
  %conflict.rdx275 = or i1 %conflict.rdx273, %diff.check274
  %i.bt = add i64 %i.bn, %i.b
  %i.bu = sub i64 %i.bt, %i.f
  %diff.check276 = icmp ugt i64 %i.bu, -32
  %conflict.rdx277 = or i1 %conflict.rdx275, %diff.check276
  %i.bv = sub i64 %i.f, %i.bq
  %diff.check278 = icmp ugt i64 %i.bv, -32
  %conflict.rdx279 = or i1 %conflict.rdx277, %diff.check278
  %i.bw = add i64 %i.bn, %i.b
  %i.bx = sub i64 %i.bw, %i.d
  %diff.check280.a = icmp ugt i64 %i.bx, -32
  %conflict.rdx281 = or i1 %conflict.rdx279, %diff.check280.a
  %i.by = add i64 %i.bn, %i.a
  %i.bz = sub i64 %i.by, %i.d
  %diff.check282 = icmp ugt i64 %i.bz, -32
  %conflict.rdx283 = or i1 %conflict.rdx281, %diff.check282
  br i1 %conflict.rdx283, label %.lr.ph.split.us.split.split.us.preheader343, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck266
  %n.vec287 = and i64 %wide.trip.count85, 2147483640 ; 3 uses
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body288 ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index289 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ca, align 4, !tbaa !59
  store <4 x float> splat (float 1.000000e+00), ptr %i.cb, align 4, !tbaa !59
  %i.cc = add nsw i64 %index289, %i.bk            ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load290 = load <4 x float>, ptr %i.cd, align 4, !tbaa !59
  %wide.load291 = load <4 x float>, ptr %i.ce, align 4, !tbaa !59
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index289 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x float> %wide.load290, ptr %i.cf, align 4, !tbaa !59
  store <4 x float> %wide.load291, ptr %i.cg, align 4, !tbaa !59
  %i.ch = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load292 = load <4 x float>, ptr %i.ch, align 4, !tbaa !59
  %wide.load293 = load <4 x float>, ptr %i.ci, align 4, !tbaa !59
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index289 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x float> %wide.load292, ptr %i.cj, align 4, !tbaa !59
  store <4 x float> %wide.load293, ptr %i.ck, align 4, !tbaa !59
  %index.next294 = add nuw i64 %index289, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.cl, label %middle.block295, label %vector.body288, !llvm.loop !97

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %n.vec287, %wide.trip.count85
  br i1 %cmp.n296, label %.preheader, label %.lr.ph.split.us.split.split.us.preheader343

.lr.ph.split.us.split.split.us.preheader343:      ; preds = %vector.memcheck266, %.lr.ph.split.us.split.split.us.preheader, %middle.block295
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %n.vec287, %middle.block295 ] ; 7 uses
  %xtraiter363 = and i64 %wide.trip.count85, 1
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.split.us.split.split.us.prol.loopexit, label %.lr.ph.split.us.split.split.us.prol

.lr.ph.split.us.split.split.us.prol:              ; preds = %.lr.ph.split.us.split.split.us.preheader343
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv82.ph
  store float 1.000000e+00, ptr %i.cm, align 4, !tbaa !59
  %i.cn = add nsw i64 %indvars.iv82.ph, %i.bk     ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !59
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv82.ph
  store float %i.cp, ptr %i.cq, align 4, !tbaa !59
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cn
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !59
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv82.ph
  store float %i.cs, ptr %i.ct, align 4, !tbaa !59
  %indvars.iv.next83.prol = or disjoint i64 %indvars.iv82.ph, 1
  br label %.lr.ph.split.us.split.split.us.prol.loopexit

.lr.ph.split.us.split.split.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.split.us.prol, %.lr.ph.split.us.split.split.us.preheader343
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph.split.us.split.split.us.preheader343 ], [ %indvars.iv.next83.prol, %.lr.ph.split.us.split.split.us.prol ]
  %i.cu = add nsw i64 %wide.trip.count85, -1
  %i.cv = icmp eq i64 %indvars.iv82.ph, %i.cu
  br i1 %i.cv, label %.preheader, label %.lr.ph.split.us.split.split.us

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %invariant.gep113 = getelementptr [4 x i8], ptr %6, i64 %i.bk ; 4 uses
  %min.iters.check253 = icmp ult i32 %3, 40
  br i1 %min.iters.check253, label %.lr.ph.split.us.split.split.preheader345, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.split.us.split.split.preheader
  %i.cw = sub i64 %i.e, %i.f
  %diff.check241.a = icmp ugt i64 %i.cw, -32
  %i.cx = sub i64 %i.e, %i.d
  %diff.check242 = icmp ugt i64 %i.cx, -32
  %conflict.rdx243 = or i1 %diff.check241.a, %diff.check242
  %i.cy = shl nsw i64 %i.bk, 2                    ; 3 uses
  %i.cz = add i64 %i.cy, %i.b
  %i.da = sub i64 %i.e, %i.cz
  %diff.check244 = icmp ugt i64 %i.da, -32
  %conflict.rdx245 = or i1 %conflict.rdx243, %diff.check244
  %i.db = sub i64 %i.f, %i.d
  %diff.check246 = icmp ugt i64 %i.db, -32
  %conflict.rdx247 = or i1 %conflict.rdx245, %diff.check246
  %i.dc = add i64 %i.cy, %i.b
  %i.dd = sub i64 %i.dc, %i.f
  %diff.check248 = icmp ugt i64 %i.dd, -32
  %conflict.rdx249 = or i1 %conflict.rdx247, %diff.check248
  %i.de = add i64 %i.cy, %i.b
  %i.df = sub i64 %i.de, %i.d
  %diff.check250 = icmp ugt i64 %i.df, -32
  %conflict.rdx251 = or i1 %conflict.rdx249, %diff.check250
  br i1 %conflict.rdx251, label %.lr.ph.split.us.split.split.preheader345, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck240
  %n.vec255 = and i64 %wide.trip.count85, 2147483640 ; 3 uses
  %broadcast.splatinsert256 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat257 = shufflevector <4 x float> %broadcast.splatinsert256, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph254
  %index259 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body258 ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index259 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.dg, align 4, !tbaa !59
  store <4 x float> splat (float 1.000000e+00), ptr %i.dh, align 4, !tbaa !59
  %i.di = getelementptr [4 x i8], ptr %invariant.gep113, i64 %index259 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load260 = load <4 x float>, ptr %i.di, align 4, !tbaa !59
  %wide.load261 = load <4 x float>, ptr %i.dj, align 4, !tbaa !59
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index259 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %wide.load260, ptr %i.dk, align 4, !tbaa !59
  store <4 x float> %wide.load261, ptr %i.dl, align 4, !tbaa !59
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index259 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x float> %broadcast.splat257, ptr %i.dm, align 4, !tbaa !59
  store <4 x float> %broadcast.splat257, ptr %i.dn, align 4, !tbaa !59
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.do, label %middle.block263, label %vector.body258, !llvm.loop !98

middle.block263:                                  ; preds = %vector.body258
  %cmp.n264 = icmp eq i64 %n.vec255, %wide.trip.count85
  br i1 %cmp.n264, label %.preheader, label %.lr.ph.split.us.split.split.preheader345

.lr.ph.split.us.split.split.preheader345:         ; preds = %vector.memcheck240, %.lr.ph.split.us.split.split.preheader, %middle.block263
  %indvars.iv77.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %.lr.ph.split.us.split.split.preheader ], [ %n.vec255, %middle.block263 ] ; 7 uses
  %xtraiter361 = and i64 %wide.trip.count85, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.split.us.split.split.prol.loopexit, label %.lr.ph.split.us.split.split.prol

.lr.ph.split.us.split.split.prol:                 ; preds = %.lr.ph.split.us.split.split.preheader345
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv77.ph
  store float 1.000000e+00, ptr %i.dp, align 4, !tbaa !59
  %gep114.prol = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv77.ph
  %i.dq = load float, ptr %gep114.prol, align 4, !tbaa !59
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv77.ph
  store float %i.dq, ptr %i.dr, align 4, !tbaa !59
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv77.ph
  store float %2, ptr %i.ds, align 4, !tbaa !59
  %indvars.iv.next78.prol = or disjoint i64 %indvars.iv77.ph, 1
  br label %.lr.ph.split.us.split.split.prol.loopexit

.lr.ph.split.us.split.split.prol.loopexit:        ; preds = %.lr.ph.split.us.split.split.prol, %.lr.ph.split.us.split.split.preheader345
  %indvars.iv77.unr = phi i64 [ %indvars.iv77.ph, %.lr.ph.split.us.split.split.preheader345 ], [ %indvars.iv.next78.prol, %.lr.ph.split.us.split.split.prol ]
  %i.dt = add nsw i64 %wide.trip.count85, -1
  %i.du = icmp eq i64 %indvars.iv77.ph, %i.dt
  br i1 %i.du, label %.preheader, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split.split.us.prol.loopexit, %.lr.ph.split.us.split.split.us
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %.lr.ph.split.us.split.split.us ], [ %indvars.iv82.unr, %.lr.ph.split.us.split.split.us.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv82
  store float 1.000000e+00, ptr %i.dv, align 4, !tbaa !59
  %i.dw = add nsw i64 %indvars.iv82, %i.bk        ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !59
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv82
  store float %i.dy, ptr %i.dz, align 4, !tbaa !59
  %i.ea = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dw
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !59
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv82
  store float %i.eb, ptr %i.ec, align 4, !tbaa !59
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next83
  store float 1.000000e+00, ptr %i.ed, align 4, !tbaa !59
  %i.ee = add nsw i64 %indvars.iv.next83, %i.bk   ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !59
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next83
  store float %i.eg, ptr %i.eh, align 4, !tbaa !59
  %i.ei = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ee
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !59
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next83
  store float %i.ej, ptr %i.ek, align 4, !tbaa !59
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond86.not.1 = icmp eq i64 %indvars.iv.next83.1, %wide.trip.count85
  br i1 %exitcond86.not.1, label %.preheader, label %.lr.ph.split.us.split.split.us, !llvm.loop !99

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split.prol.loopexit, %.lr.ph.split.us.split.split
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.1, %.lr.ph.split.us.split.split ], [ %indvars.iv77.unr, %.lr.ph.split.us.split.split.prol.loopexit ] ; 6 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv77
  store float 1.000000e+00, ptr %i.el, align 4, !tbaa !59
  %gep114 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv77
  %i.em = load float, ptr %gep114, align 4, !tbaa !59
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv77
  store float %i.em, ptr %i.en, align 4, !tbaa !59
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv77
  store float %2, ptr %i.eo, align 4, !tbaa !59
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next78
  store float 1.000000e+00, ptr %i.ep, align 4, !tbaa !59
  %gep114.1 = getelementptr [4 x i8], ptr %invariant.gep113, i64 %indvars.iv.next78
  %i.eq = load float, ptr %gep114.1, align 4, !tbaa !59
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next78
  store float %i.eq, ptr %i.er, align 4, !tbaa !59
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next78
  store float %2, ptr %i.es, align 4, !tbaa !59
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %indvars.iv.next78.1, %wide.trip.count85
  br i1 %exitcond81.not.1, label %.preheader, label %.lr.ph.split.us.split.split, !llvm.loop !100

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.et = sext i32 %4 to i64                      ; 17 uses
  %wide.trip.count75 = zext nneg i32 %3 to i64    ; 20 uses
  br i1 %.not31, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.h, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %min.iters.check227 = icmp ult i32 %3, 48
  br i1 %min.iters.check227, label %.lr.ph.split.split.us.split.us.preheader347, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.eu = sub i64 %i.e, %i.f
  %diff.check209 = icmp ugt i64 %i.eu, -32
  %i.ev = sub i64 %i.e, %i.d
  %diff.check210 = icmp ugt i64 %i.ev, -32
  %conflict.rdx211 = or i1 %diff.check209, %diff.check210
  %i.ew = shl nsw i64 %i.et, 2                    ; 5 uses
  %i.ex = add i64 %i.ew, %i.c
  %i.ey = sub i64 %i.ex, %i.e
  %diff.check212 = icmp ugt i64 %i.ey, -32
  %conflict.rdx213 = or i1 %conflict.rdx211, %diff.check212
  %i.ez = add i64 %i.ew, %i.a                     ; 2 uses
  %i.fa = sub i64 %i.e, %i.ez
  %diff.check214 = icmp ugt i64 %i.fa, -32
  %conflict.rdx215 = or i1 %conflict.rdx213, %diff.check214
  %i.fb = sub i64 %i.f, %i.d
  %diff.check216 = icmp ugt i64 %i.fb, -32
  %conflict.rdx217 = or i1 %conflict.rdx215, %diff.check216
  %i.fc = add i64 %i.ew, %i.c
  %i.fd = sub i64 %i.fc, %i.f
  %diff.check218 = icmp ugt i64 %i.fd, -32
  %conflict.rdx219 = or i1 %conflict.rdx217, %diff.check218
  %i.fe = sub i64 %i.f, %i.ez
  %diff.check220 = icmp ugt i64 %i.fe, -32
  %conflict.rdx221 = or i1 %conflict.rdx219, %diff.check220
  %i.ff = add i64 %i.ew, %i.c
  %i.fg = sub i64 %i.ff, %i.d
  %diff.check222 = icmp ugt i64 %i.fg, -32
  %conflict.rdx223 = or i1 %conflict.rdx221, %diff.check222
  %i.fh = add i64 %i.ew, %i.a
  %i.fi = sub i64 %i.fh, %i.d
  %diff.check224 = icmp ugt i64 %i.fi, -32
  %conflict.rdx225 = or i1 %conflict.rdx223, %diff.check224
  br i1 %conflict.rdx225, label %.lr.ph.split.split.us.split.us.preheader347, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck208
  %n.vec229 = and i64 %wide.trip.count75, 2147483640 ; 3 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ] ; 5 uses
  %i.fj = add nsw i64 %index231, %i.et            ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load232 = load <4 x float>, ptr %i.fk, align 4, !tbaa !59
  %wide.load233 = load <4 x float>, ptr %i.fl, align 4, !tbaa !59
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index231 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x float> %wide.load232, ptr %i.fm, align 4, !tbaa !59
  store <4 x float> %wide.load233, ptr %i.fn, align 4, !tbaa !59
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index231 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <4 x float> zeroinitializer, ptr %i.fo, align 4, !tbaa !59
  store <4 x float> zeroinitializer, ptr %i.fp, align 4, !tbaa !59
  %i.fq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fj ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load234 = load <4 x float>, ptr %i.fq, align 4, !tbaa !59
  %wide.load235 = load <4 x float>, ptr %i.fr, align 4, !tbaa !59
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index231 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x float> %wide.load234, ptr %i.fs, align 4, !tbaa !59
  store <4 x float> %wide.load235, ptr %i.ft, align 4, !tbaa !59
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.fu, label %middle.block237, label %vector.body230, !llvm.loop !101

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %n.vec229, %wide.trip.count75
  br i1 %cmp.n238, label %.preheader, label %.lr.ph.split.split.us.split.us.preheader347

.lr.ph.split.split.us.split.us.preheader347:      ; preds = %vector.memcheck208, %.lr.ph.split.split.us.split.us.preheader, %middle.block237
  %indvars.iv72.ph = phi i64 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %n.vec229, %middle.block237 ] ; 7 uses
  %xtraiter359 = and i64 %wide.trip.count75, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader347
  %i.fv = add nsw i64 %indvars.iv72.ph, %i.et     ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !59
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv72.ph
  store float %i.fx, ptr %i.fy, align 4, !tbaa !59
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv72.ph
  store float 0.000000e+00, ptr %i.fz, align 4, !tbaa !59
  %i.ga = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fv
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !59
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv72.ph
  store float %i.gb, ptr %i.gc, align 4, !tbaa !59
  %indvars.iv.next73.prol = or disjoint i64 %indvars.iv72.ph, 1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %.lr.ph.split.split.us.split.us.prol, %.lr.ph.split.split.us.split.us.preheader347
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %.lr.ph.split.split.us.split.us.preheader347 ], [ %indvars.iv.next73.prol, %.lr.ph.split.split.us.split.us.prol ]
  %i.gd = add nsw i64 %wide.trip.count75, -1
  %i.ge = icmp eq i64 %indvars.iv72.ph, %i.gd
  br i1 %i.ge, label %.preheader, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %i.et ; 4 uses
  %min.iters.check195 = icmp ult i32 %3, 40
  br i1 %min.iters.check195, label %.lr.ph.split.split.us.split.preheader349, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.split.split.us.split.preheader
  %i.gf = sub i64 %i.e, %i.f
  %diff.check183 = icmp ugt i64 %i.gf, -32
  %i.gg = sub i64 %i.e, %i.d
  %diff.check184.a = icmp ugt i64 %i.gg, -32
  %conflict.rdx185 = or i1 %diff.check183, %diff.check184.a
  %i.gh = shl nsw i64 %i.et, 2                    ; 3 uses
  %i.gi = add i64 %i.gh, %i.c
  %i.gj = sub i64 %i.gi, %i.e
  %diff.check186 = icmp ugt i64 %i.gj, -32
  %conflict.rdx187 = or i1 %conflict.rdx185, %diff.check186
  %i.gk = sub i64 %i.f, %i.d
  %diff.check188 = icmp ugt i64 %i.gk, -32
  %conflict.rdx189 = or i1 %conflict.rdx187, %diff.check188
  %i.gl = add i64 %i.gh, %i.c
  %i.gm = sub i64 %i.gl, %i.f
  %diff.check190 = icmp ugt i64 %i.gm, -32
  %conflict.rdx191 = or i1 %conflict.rdx189, %diff.check190
  %i.gn = add i64 %i.gh, %i.c
  %i.go = sub i64 %i.gn, %i.d
  %diff.check192 = icmp ugt i64 %i.go, -32
  %conflict.rdx193 = or i1 %conflict.rdx191, %diff.check192
  br i1 %conflict.rdx193, label %.lr.ph.split.split.us.split.preheader349, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck182
  %n.vec197 = and i64 %wide.trip.count75, 2147483640 ; 3 uses
  %broadcast.splatinsert198 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat199 = shufflevector <4 x float> %broadcast.splatinsert198, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph196
  %index201 = phi i64 [ 0, %vector.ph196 ], [ %index.next204, %vector.body200 ] ; 5 uses
  %i.gp = getelementptr [4 x i8], ptr %invariant.gep, i64 %index201 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  %wide.load202 = load <4 x float>, ptr %i.gp, align 4, !tbaa !59
  %wide.load203 = load <4 x float>, ptr %i.gq, align 4, !tbaa !59
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index201 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x float> %wide.load202, ptr %i.gr, align 4, !tbaa !59
  store <4 x float> %wide.load203, ptr %i.gs, align 4, !tbaa !59
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index201 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <4 x float> zeroinitializer, ptr %i.gt, align 4, !tbaa !59
  store <4 x float> zeroinitializer, ptr %i.gu, align 4, !tbaa !59
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index201 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <4 x float> %broadcast.splat199, ptr %i.gv, align 4, !tbaa !59
  store <4 x float> %broadcast.splat199, ptr %i.gw, align 4, !tbaa !59
  %index.next204 = add nuw i64 %index201, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.gx, label %middle.block205, label %vector.body200, !llvm.loop !102

middle.block205:                                  ; preds = %vector.body200
  %cmp.n206 = icmp eq i64 %n.vec197, %wide.trip.count75
  br i1 %cmp.n206, label %.preheader, label %.lr.ph.split.split.us.split.preheader349

.lr.ph.split.split.us.split.preheader349:         ; preds = %vector.memcheck182, %.lr.ph.split.split.us.split.preheader, %middle.block205
  %indvars.iv67.ph = phi i64 [ 0, %vector.memcheck182 ], [ 0, %.lr.ph.split.split.us.split.preheader ], [ %n.vec197, %middle.block205 ] ; 7 uses
  %xtraiter357 = and i64 %wide.trip.count75, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader349
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv67.ph
  %i.gy = load float, ptr %gep.prol, align 4, !tbaa !59
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv67.ph
  store float %i.gy, ptr %i.gz, align 4, !tbaa !59
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv67.ph
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !59
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv67.ph
  store float %2, ptr %i.hb, align 4, !tbaa !59
  %indvars.iv.next68.prol = or disjoint i64 %indvars.iv67.ph, 1
  br label %.lr.ph.split.split.us.split.prol.loopexit

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %.lr.ph.split.split.us.split.prol, %.lr.ph.split.split.us.split.preheader349
  %indvars.iv67.unr = phi i64 [ %indvars.iv67.ph, %.lr.ph.split.split.us.split.preheader349 ], [ %indvars.iv.next68.prol, %.lr.ph.split.split.us.split.prol ]
  %i.hc = add nsw i64 %wide.trip.count75, -1
  %i.hd = icmp eq i64 %indvars.iv67.ph, %i.hc
  br i1 %i.hd, label %.preheader, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph.split.split.us.split.us ], [ %indvars.iv72.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.he = add nsw i64 %indvars.iv72, %i.et        ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !59
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv72
  store float %i.hg, ptr %i.hh, align 4, !tbaa !59
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv72
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !59
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.he
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !59
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv72
  store float %i.hk, ptr %i.hl, align 4, !tbaa !59
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 4 uses
  %i.hm = add nsw i64 %indvars.iv.next73, %i.et   ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !59
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next73
  store float %i.ho, ptr %i.hp, align 4, !tbaa !59
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next73
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !59
  %i.hr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hm
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !59
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next73
  store float %i.hs, ptr %i.ht, align 4, !tbaa !59
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next73.1, %wide.trip.count75
  br i1 %exitcond76.not.1, label %.preheader, label %.lr.ph.split.split.us.split.us, !llvm.loop !103

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.prol.loopexit, %.lr.ph.split.split.us.split
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph.split.split.us.split ], [ %indvars.iv67.unr, %.lr.ph.split.split.us.split.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv67
  %i.hu = load float, ptr %gep, align 4, !tbaa !59
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv67
  store float %i.hu, ptr %i.hv, align 4, !tbaa !59
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv67
  store float 0.000000e+00, ptr %i.hw, align 4, !tbaa !59
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv67
  store float %2, ptr %i.hx, align 4, !tbaa !59
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 4 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next68
  %i.hy = load float, ptr %gep.1, align 4, !tbaa !59
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next68
  store float %i.hy, ptr %i.hz, align 4, !tbaa !59
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next68
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !59
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next68
  store float %2, ptr %i.ib, align 4, !tbaa !59
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count75
  br i1 %exitcond71.not.1, label %.preheader, label %.lr.ph.split.split.us.split, !llvm.loop !104

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.h, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %min.iters.check = icmp ult i32 %3, 56
  br i1 %min.iters.check, label %.lr.ph.split.split.split.preheader353, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split.split.preheader
  %i.ic = sub i64 %i.e, %i.f
  %diff.check = icmp ugt i64 %i.ic, -32
  %i.id = sub i64 %i.e, %i.d
  %diff.check124 = icmp ugt i64 %i.id, -32
  %conflict.rdx = or i1 %diff.check, %diff.check124
  %i.ie = shl nsw i64 %i.et, 2                    ; 6 uses
  %i.if = add i64 %i.ie, %i.c
  %i.ig = sub i64 %i.if, %i.e
  %diff.check125 = icmp ugt i64 %i.ig, -32
  %conflict.rdx126 = or i1 %conflict.rdx, %diff.check125
  %i.ih = add i64 %i.ie, %i.b
  %i.ii = sub i64 %i.e, %i.ih
  %diff.check127 = icmp ugt i64 %i.ii, -32
  %conflict.rdx128 = or i1 %conflict.rdx126, %diff.check127
  %i.ij = sub i64 %i.f, %i.d
  %diff.check129 = icmp ugt i64 %i.ij, -32
  %conflict.rdx130 = or i1 %conflict.rdx128, %diff.check129
  %i.ik = add i64 %i.ie, %i.c
  %i.il = sub i64 %i.ik, %i.f
  %diff.check131 = icmp ugt i64 %i.il, -32
  %conflict.rdx132 = or i1 %conflict.rdx130, %diff.check131
  %i.im = add i64 %i.ie, %i.b
  %i.in = sub i64 %i.im, %i.f
  %diff.check133 = icmp ugt i64 %i.in, -32
  %conflict.rdx134 = or i1 %conflict.rdx132, %diff.check133
  %i.io = add i64 %i.ie, %i.c
  %i.ip = sub i64 %i.io, %i.d
  %diff.check135 = icmp ugt i64 %i.ip, -32
  %conflict.rdx136 = or i1 %conflict.rdx134, %diff.check135
  %i.iq = add i64 %i.ie, %i.b
  %i.ir = sub i64 %i.iq, %i.d
  %diff.check137 = icmp ugt i64 %i.ir, -32
  %conflict.rdx138 = or i1 %conflict.rdx136, %diff.check137
  br i1 %conflict.rdx138, label %.lr.ph.split.split.split.preheader353, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count75, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.is = add nsw i64 %index, %i.et               ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %5, i64 %i.is ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !59
  %wide.load139 = load <4 x float>, ptr %i.iu, align 4, !tbaa !59
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x float> %wide.load, ptr %i.iv, align 4, !tbaa !59
  store <4 x float> %wide.load139, ptr %i.iw, align 4, !tbaa !59
  %i.ix = getelementptr inbounds [4 x i8], ptr %6, i64 %i.is ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load140 = load <4 x float>, ptr %i.ix, align 4, !tbaa !59
  %wide.load141 = load <4 x float>, ptr %i.iy, align 4, !tbaa !59
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <4 x float> %wide.load140, ptr %i.iz, align 4, !tbaa !59
  store <4 x float> %wide.load141, ptr %i.ja, align 4, !tbaa !59
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <4 x float> %broadcast.splat, ptr %i.jb, align 4, !tbaa !59
  store <4 x float> %broadcast.splat, ptr %i.jc, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count75
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.split.split.preheader353

.lr.ph.split.split.split.preheader353:            ; preds = %vector.memcheck, %.lr.ph.split.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.split.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count75, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.split.prol.loopexit, label %.lr.ph.split.split.split.prol

.lr.ph.split.split.split.prol:                    ; preds = %.lr.ph.split.split.split.preheader353
  %i.je = add nsw i64 %indvars.iv.ph, %i.et       ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !59
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.ph
  store float %i.jg, ptr %i.jh, align 4, !tbaa !59
  %i.ji = getelementptr inbounds [4 x i8], ptr %6, i64 %i.je
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !59
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.ph
  store float %i.jj, ptr %i.jk, align 4, !tbaa !59
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.ph
  store float %2, ptr %i.jl, align 4, !tbaa !59
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.split.split.prol.loopexit

.lr.ph.split.split.split.prol.loopexit:           ; preds = %.lr.ph.split.split.split.prol, %.lr.ph.split.split.split.preheader353
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.split.split.preheader353 ], [ %indvars.iv.next.prol, %.lr.ph.split.split.split.prol ]
  %i.jm = add nsw i64 %wide.trip.count75, -1
  %i.jn = icmp eq i64 %indvars.iv.ph, %i.jm
  br i1 %i.jn, label %.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %min.iters.check167 = icmp ult i32 %3, 64
  br i1 %min.iters.check167, label %.lr.ph.split.split.split.us.preheader351, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.split.split.split.us.preheader
  %i.jo = sub i64 %i.e, %i.f
  %diff.check143 = icmp ugt i64 %i.jo, -32
  %i.jp = sub i64 %i.e, %i.d
  %diff.check144 = icmp ugt i64 %i.jp, -32
  %conflict.rdx145 = or i1 %diff.check143, %diff.check144
  %i.jq = shl nsw i64 %i.et, 2                    ; 8 uses
  %i.jr = add i64 %i.jq, %i.c
  %i.js = sub i64 %i.jr, %i.e
  %diff.check146 = icmp ugt i64 %i.js, -32
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.jt = add i64 %i.jq, %i.b
  %i.ju = sub i64 %i.e, %i.jt
  %diff.check148 = icmp ugt i64 %i.ju, -32
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  %i.jv = add i64 %i.jq, %i.a                     ; 2 uses
  %i.jw = sub i64 %i.e, %i.jv
  %diff.check150 = icmp ugt i64 %i.jw, -32
  %conflict.rdx151 = or i1 %conflict.rdx149, %diff.check150
  %i.jx = sub i64 %i.f, %i.d
  %diff.check152 = icmp ugt i64 %i.jx, -32
  %conflict.rdx153 = or i1 %conflict.rdx151, %diff.check152
  %i.jy = add i64 %i.jq, %i.c
  %i.jz = sub i64 %i.jy, %i.f
  %diff.check154 = icmp ugt i64 %i.jz, -32
  %conflict.rdx155 = or i1 %conflict.rdx153, %diff.check154
  %i.ka = add i64 %i.jq, %i.b
  %i.kb = sub i64 %i.ka, %i.f
  %diff.check156 = icmp ugt i64 %i.kb, -32
  %conflict.rdx157 = or i1 %conflict.rdx155, %diff.check156
  %i.kc = sub i64 %i.f, %i.jv
  %diff.check158 = icmp ugt i64 %i.kc, -32
  %conflict.rdx159 = or i1 %conflict.rdx157, %diff.check158
  %i.kd = add i64 %i.jq, %i.c
  %i.ke = sub i64 %i.kd, %i.d
  %diff.check160 = icmp ugt i64 %i.ke, -32
  %conflict.rdx161 = or i1 %conflict.rdx159, %diff.check160
  %i.kf = add i64 %i.jq, %i.b
  %i.kg = sub i64 %i.kf, %i.d
  %diff.check162 = icmp ugt i64 %i.kg, -32
  %conflict.rdx163 = or i1 %conflict.rdx161, %diff.check162
  %i.kh = add i64 %i.jq, %i.a
  %i.ki = sub i64 %i.kh, %i.d
  %diff.check164 = icmp ugt i64 %i.ki, -32
  %conflict.rdx165 = or i1 %conflict.rdx163, %diff.check164
  br i1 %conflict.rdx165, label %.lr.ph.split.split.split.us.preheader351, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck142
  %n.vec169 = and i64 %wide.trip.count75, 2147483640 ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body170 ] ; 5 uses
  %i.kj = add nsw i64 %index171, %i.et            ; 3 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load172 = load <4 x float>, ptr %i.kk, align 4, !tbaa !59
  %wide.load173 = load <4 x float>, ptr %i.kl, align 4, !tbaa !59
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index171 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x float> %wide.load172, ptr %i.km, align 4, !tbaa !59
  store <4 x float> %wide.load173, ptr %i.kn, align 4, !tbaa !59
  %i.ko = getelementptr inbounds [4 x i8], ptr %6, i64 %i.kj ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load174 = load <4 x float>, ptr %i.ko, align 4, !tbaa !59
  %wide.load175 = load <4 x float>, ptr %i.kp, align 4, !tbaa !59
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index171 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x float> %wide.load174, ptr %i.kq, align 4, !tbaa !59
  store <4 x float> %wide.load175, ptr %i.kr, align 4, !tbaa !59
  %i.ks = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kj ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load176 = load <4 x float>, ptr %i.ks, align 4, !tbaa !59
  %wide.load177 = load <4 x float>, ptr %i.kt, align 4, !tbaa !59
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index171 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store <4 x float> %wide.load176, ptr %i.ku, align 4, !tbaa !59
  store <4 x float> %wide.load177, ptr %i.kv, align 4, !tbaa !59
  %index.next178 = add nuw i64 %index171, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.kw, label %middle.block179, label %vector.body170, !llvm.loop !106

middle.block179:                                  ; preds = %vector.body170
  %cmp.n180 = icmp eq i64 %n.vec169, %wide.trip.count75
  br i1 %cmp.n180, label %.preheader, label %.lr.ph.split.split.split.us.preheader351

.lr.ph.split.split.split.us.preheader351:         ; preds = %vector.memcheck142, %.lr.ph.split.split.split.us.preheader, %middle.block179
  %indvars.iv62.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph.split.split.split.us.preheader ], [ %n.vec169, %middle.block179 ] ; 7 uses
  %xtraiter355 = and i64 %wide.trip.count75, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph.split.split.split.us.prol.loopexit, label %.lr.ph.split.split.split.us.prol

.lr.ph.split.split.split.us.prol:                 ; preds = %.lr.ph.split.split.split.us.preheader351
  %i.kx = add nsw i64 %indvars.iv62.ph, %i.et     ; 3 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %5, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !59
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv62.ph
  store float %i.kz, ptr %i.la, align 4, !tbaa !59
  %i.lb = getelementptr inbounds [4 x i8], ptr %6, i64 %i.kx
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !59
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv62.ph
  store float %i.lc, ptr %i.ld, align 4, !tbaa !59
  %i.le = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kx
  %i.lf = load float, ptr %i.le, align 4, !tbaa !59
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv62.ph
  store float %i.lf, ptr %i.lg, align 4, !tbaa !59
  %indvars.iv.next63.prol = or disjoint i64 %indvars.iv62.ph, 1
  br label %.lr.ph.split.split.split.us.prol.loopexit

.lr.ph.split.split.split.us.prol.loopexit:        ; preds = %.lr.ph.split.split.split.us.prol, %.lr.ph.split.split.split.us.preheader351
  %indvars.iv62.unr = phi i64 [ %indvars.iv62.ph, %.lr.ph.split.split.split.us.preheader351 ], [ %indvars.iv.next63.prol, %.lr.ph.split.split.split.us.prol ]
  %i.lh = add nsw i64 %wide.trip.count75, -1
  %i.li = icmp eq i64 %indvars.iv62.ph, %i.lh
  br i1 %i.li, label %.preheader, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.prol.loopexit, %.lr.ph.split.split.split.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %.lr.ph.split.split.split.us ], [ %indvars.iv62.unr, %.lr.ph.split.split.split.us.prol.loopexit ] ; 6 uses
  %i.lj = add nsw i64 %indvars.iv62, %i.et        ; 3 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !59
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv62
  store float %i.ll, ptr %i.lm, align 4, !tbaa !59
  %i.ln = getelementptr inbounds [4 x i8], ptr %6, i64 %i.lj
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !59
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv62
  store float %i.lo, ptr %i.lp, align 4, !tbaa !59
  %i.lq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lj
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !59
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv62
  store float %i.lr, ptr %i.ls, align 4, !tbaa !59
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 4 uses
  %i.lt = add nsw i64 %indvars.iv.next63, %i.et   ; 3 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !59
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next63
  store float %i.lv, ptr %i.lw, align 4, !tbaa !59
  %i.lx = getelementptr inbounds [4 x i8], ptr %6, i64 %i.lt
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !59
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next63
  store float %i.ly, ptr %i.lz, align 4, !tbaa !59
  %i.ma = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lt
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !59
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next63
  store float %i.mb, ptr %i.mc, align 4, !tbaa !59
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %indvars.iv.next63.1, %wide.trip.count75
  br i1 %exitcond66.not.1, label %.preheader, label %.lr.ph.split.split.split.us, !llvm.loop !107

.preheader:                                       ; preds = %.lr.ph.split.split.split.prol.loopexit, %.lr.ph.split.split.split, %.lr.ph.split.split.split.us.prol.loopexit, %.lr.ph.split.split.split.us, %.lr.ph.split.split.us.split.prol.loopexit, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us, %.lr.ph.split.us.split.split.prol.loopexit, %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us.prol.loopexit, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.split.us.split.prol.loopexit, %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us.split.us, %middle.block, %middle.block179, %middle.block205, %middle.block237, %middle.block263, %middle.block295, %middle.block313, %middle.block337
  %i.md = icmp samesign ult i32 %3, 8
  br i1 %i.md, label %.lr.ph46.preheader, label %._crit_edge

.lr.ph46.preheader:                               ; preds = %bb.a, %.preheader
  %.0.lcssa105 = phi i32 [ %3, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.me = shl nuw nsw i32 %.0.lcssa105, 2
  %i.mf = zext nneg i32 %i.me to i64              ; 3 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.mf
  %i.mg = shl nuw nsw i32 %.0.lcssa105, 2
  %narrow = sub nuw nsw i32 32, %i.mg
  %i.mh = zext nneg i32 %narrow to i64            ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.mh, i1 false), !tbaa !59
  %scevgep97 = getelementptr i8, ptr %8, i64 %i.mf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep97, i8 0, i64 %i.mh, i1 false), !tbaa !59
  %scevgep98 = getelementptr i8, ptr %9, i64 %i.mf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep98, i8 0, i64 %i.mh, i1 false), !tbaa !59
  br label %._crit_edge

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.prol.loopexit, %.lr.ph.split.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split.split ], [ %indvars.iv.unr, %.lr.ph.split.split.split.prol.loopexit ] ; 6 uses
  %i.mi = add nsw i64 %indvars.iv, %i.et          ; 2 uses
  %i.mj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !59
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store float %i.mk, ptr %i.ml, align 4, !tbaa !59
  %i.mm = getelementptr inbounds [4 x i8], ptr %6, i64 %i.mi
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !59
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.mn, ptr %i.mo, align 4, !tbaa !59
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  store float %2, ptr %i.mp, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.mq = add nsw i64 %indvars.iv.next, %i.et     ; 2 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !59
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next
  store float %i.ms, ptr %i.mt, align 4, !tbaa !59
  %i.mu = getelementptr inbounds [4 x i8], ptr %6, i64 %i.mq
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !59
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  store float %i.mv, ptr %i.mw, align 4, !tbaa !59
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next
  store float %2, ptr %i.mx, align 4, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count75
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph.split.split.split, !llvm.loop !108

._crit_edge:                                      ; preds = %.lr.ph46.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL21conv32fC8_1x1_stridedEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
