inline.NumInlined: 669
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i:bb.a
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.9, i32 noundef %i.o)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.6, i32 noundef 310) #21
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.j
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26: ; preds = %bb.g, %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.in.i21 = load i64, ptr %i.x, align 8, !tbaa !53
  %.0.i22 = trunc i64 %.0.in.i21 to i32
  %i.y = icmp slt i32 %1, %.0.i22
  br i1 %i.y, label %bb.o, label %.thread

.thread:                                          ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.6, i32 noundef 154) #21
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

bb.o:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  %i.ag = phi ptr [ %i.w, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ %i.j, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  %i.ah = phi i32 [ %i.o, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ %i.b, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ]
  %i.ai = phi i32 [ %1, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit26 ], [ 0, %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit ] ; 3 uses
  switch i32 %i.ah, label %bb.s [
    i32 2, label %bb.p
    i32 0, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load double, ptr %i.al, align 8, !tbaa !67
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53
  %i.ar = sitofp i64 %i.aq to double
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = tail call double @strtod(ptr noundef nonnull captures(none) %i.av, ptr noundef null) #20, !inline_history !117
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.6, i32 noundef 171) #21
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.w:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.w
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !22
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.v
  %.pn18 = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ay, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.x:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.014 = phi double [ %i.am, %bb.p ], [ %i.ar, %bb.q ], [ %i.aw, %bb.r ]
  ret double %.014
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #14

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

declare noundef i32 @_ZN2cv13getNumThreadsEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.cv::dnn::ConcatLayerImpl::ChannelConcatInvoker", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %23 = alloca %"class.cv::Range", align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaEE, i64 16), ptr %16, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %2, ptr %i.e, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !57     ; 16 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 208                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81
  %.fr207 = freeze i32 %i.n                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82   ; 7 uses
  %.not206 = icmp eq ptr %i.g, %i.h               ; 2 uses
  br i1 %.not206, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = icmp sgt i32 %.fr207, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not163 = icmp eq i32 %.fr207, 3
  br i1 %.not163, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.t = load i32, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.u = and i32 %i.t, 16384
  %.not161.us.us = icmp eq i32 %i.u, 0
  br i1 %.not161.us.us, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.v = and i32 %i.t, 4095
  switch i32 %i.v, label %.split.us [
    i32 5, label %bb.c
    i32 7, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !82
  %i.ab = icmp eq i32 %i.aa, %i.p
  br i1 %i.ab, label %bb.e, label %.split.us

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %bb.f, label %.split172.us

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !82
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !82
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %.split.us

bb.g:                                             ; preds = %bb.f
  %.not162.us.us = icmp eq i32 %i.ad, 3
  br i1 %.not162.us.us, label %.split174.us, label %.split176.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.o
  %.0170.us = phi i64 [ %i.bh, %bb.o ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.067169.us = phi i32 [ %i.bg, %bb.o ], [ 0, %.lr.ph.split.us ]
  %i.aj = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %.0170.us ; 7 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.al = and i32 %i.ak, 16384
  %.not161.us = icmp eq i32 %i.al, 0
  br i1 %.not161.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split
  %i.am = and i32 %i.ak, 4095
  switch i32 %i.am, label %.split.us [
    i32 5, label %bb.i
    i32 7, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %bb.j, label %.split.us

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !82
  %i.as = icmp eq i32 %i.ar, %i.p
  br i1 %i.as, label %bb.k, label %.split.us

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 2
  br i1 %i.av, label %bb.l, label %.split172.us

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !82
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !82
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.m, label %.split.us

bb.m:                                             ; preds = %bb.l
  %.not162.us = icmp eq i32 %i.au, 3
  br i1 %.not162.us, label %.split174.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !82
  %i.bc = load i32, ptr %i.s, align 8, !tbaa !82
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %.split.us

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !82
  %i.bg = add nsw i32 %i.bf, %.067169.us          ; 2 uses
  %i.bh = add nuw i64 %.0170.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !130

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !73  ; 2 uses
  %i.bj = and i32 %i.bi, 16384
  %.not161 = icmp eq i32 %i.bj, 0
  br i1 %.not161, label %.split.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  %i.bk = and i32 %i.bi, 4095
  switch i32 %i.bk, label %.split.us [
    i32 5, label %bb.q
    i32 7, label %bb.q
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = icmp eq i32 %i.bm, 4
  br i1 %i.bn, label %bb.r, label %.split.us

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !82
  %i.bq = icmp eq i32 %i.bp, %i.p
  br i1 %i.bq, label %bb.s, label %.split.us

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !81
  %i.bt = icmp sgt i32 %i.bs, 2
  br i1 %i.bt, label %bb.v, label %.split172.us

.split172.us:                                     ; preds = %bb.k, %bb.s, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %.split172.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc
  unreachable

bb.u:                                             ; preds = %.noexc
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !22
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.body128

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc91 unwind label %bb.ad

.noexc91:                                         ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.w unwind label %bb.x

end_hunk_0
begin_hunk_1_@_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag
  %.pn75 = phi { ptr, i32 } [ %i.cu, %bb.ag ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.body128

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.067.lcssa = phi i32 [ 0, %bb.a ], [ %i.bg, %bb.o ] ; 3 uses
  %i.db = icmp sgt i32 %.fr207, 1
  br i1 %i.db, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc127 unwind label %bb.ac

.noexc127:                                        ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc127
  unreachable

bb.ak:                                            ; preds = %.noexc127
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.ak
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body128

bb.al:                                            ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !82
  %i.dk = icmp eq i32 %.067.lcssa, %i.dj
  br i1 %i.dk, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i, ptr noundef nonnull @.str.13, i32 noundef 188) #21
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.aq:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.aq
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !22
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.ap ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.dm, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body128

bb.ar:                                            ; preds = %bb.al
  %i.ds = load i32, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.dt = and i32 %i.ds, 16384
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = and i32 %i.ds, 4095
  switch i32 %i.du, label %bb.at [
    i32 5, label %bb.ay
    i32 7, label %bb.ay
    i32 1, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaE3runERSt6vectorINS_3MatESaIS5_EERS5_i, ptr noundef nonnull @.str.13, i32 noundef 189) #21
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.ax:                                            ; preds = %bb.au
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ax
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !22
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.aw
  %.pn70 = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.dw, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body128

bb.ay:                                            ; preds = %bb.as, %bb.as, %bb.as
  %i.ec = mul nsw i32 %.067.lcssa, %i.p           ; 3 uses
  %i.ed = sext i32 %i.ec to i64                   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 40
  %.not266 = icmp eq i32 %i.ec, 0
  br i1 %.not266, label %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.eg = icmp slt i32 %i.ec, 0
  br i1 %i.eg, label %bb.ba, label %_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #21
          to label %.noexc158 unwind label %bb.ac

.noexc158:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.az
  %i.eh = shl nuw nsw i64 %i.ed, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #18
          to label %.noexc159 unwind label %bb.ac ; 4 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIPKaSaIS1_EE12_M_check_lenEmPKc.exit.i
  store ptr null, ptr %i.ei, align 8, !tbaa !131
  %i.ej = add nsw i64 %i.ed, -1                   ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc159
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ej, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !131
  br label %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPPKamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc159
  store ptr %i.ei, ptr %i.c, align 8, !tbaa !132
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ed ; 2 uses
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !133
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !134
  br label %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split

_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split:     ; preds = %bb.ay, %_ZSt27__uninitialized_default_n_aIPPKamS1_ET_S3_T0_RSaIT1_E.exit33.i
  br i1 %.not206, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split
  %i.en = icmp sgt i32 %i.p, 0
  br i1 %i.en, label %.preheader.lr.ph.us.preheader, label %.lr.ph198.split

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph198
  %i.eo = sext i32 %.067.lcssa to i64             ; 4 uses
  %wide.trip.count219 = zext nneg i32 %i.p to i64
  %wide.trip.count229 = zext nneg i32 %i.p to i64
  %i.ep = shl nsw i64 %i.eo, 3
  %i.eq = shl nsw i64 %i.eo, 3
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge191.split.us.loopexit
  %.1197.us = phi i64 [ %i.fe, %._crit_edge191.split.us.loopexit ], [ 0, %.preheader.lr.ph.us.preheader ] ; 4 uses
  %.057194.us = phi i32 [ %i.fd, %._crit_edge191.split.us.loopexit ], [ 0, %.preheader.lr.ph.us.preheader ] ; 3 uses
  %i.er = mul i64 %.1197.us, 208
  %i.es = getelementptr i8, ptr %i.h, i64 %i.er
  %scevgep277 = getelementptr i8, ptr %i.es, i64 32
  %i.et = mul i64 %.1197.us, 208
  %i.eu = getelementptr i8, ptr %i.h, i64 %i.et
  %scevgep272 = getelementptr i8, ptr %i.eu, i64 32
  %i.ev = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %.1197.us ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !81
  %i.ey = icmp sgt i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fa = getelementptr i8, ptr %i.ev, i64 24     ; 14 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  br i1 %i.ey, label %.preheader.lr.ph.split.us, label %.noexc.i

._crit_edge191.split.us.loopexit:                 ; preds = %..split180.us_crit_edge.split.us, %..split180.us_crit_edge.split.us.us.us, %.preheader.lr.ph.split.us
  %i.fd = add nsw i32 %i.gv, %.057194.us
  %i.fe = add nuw i64 %.1197.us, 1                ; 2 uses
  %exitcond232.not = icmp eq i64 %i.fe, %i.l
  br i1 %exitcond232.not, label %._crit_edge199, label %.preheader.lr.ph.us, !llvm.loop !135

.preheader.us200:                                 ; preds = %.preheader.lr.ph.split.split.split.split.us203, %..split180.us_crit_edge.split.us
  %indvars.iv216 = phi i64 [ 0, %.preheader.lr.ph.split.split.split.split.us203 ], [ %indvars.iv.next217, %..split180.us_crit_edge.split.us ] ; 4 uses
  %i.ff = mul nsw i64 %indvars.iv216, %i.eo
  %i.fg = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fh = mul i64 %i.gz, %indvars.iv216           ; 6 uses
  %i.fi = getelementptr [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.hb ; 7 uses
  br i1 %min.iters.check282, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, label %vector.memcheck274

vector.memcheck274:                               ; preds = %.preheader.us200
  %i.fk = mul i64 %i.eq, %indvars.iv216
  %i.fl = getelementptr i8, ptr %i.fg, i64 %i.hd
  %scevgep275 = getelementptr i8, ptr %i.fl, i64 %i.fk
  %bound0278 = icmp ult ptr %i.fj, %scevgep277
  %bound1279 = icmp ult ptr %i.fa, %scevgep275
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck274
  %i.fm = load ptr, ptr %i.fa, align 8, !tbaa !136, !alias.scope !137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fh ; 2 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %vec.ind289 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph283 ], [ %vec.ind.next294, %vector.body287 ] ; 3 uses
  %step.add290 = add nuw <2 x i64> %vec.ind289, splat (i64 2)
  %i.fo = mul <2 x i64> %broadcast.splat286, %vec.ind289
  %i.fp = mul <2 x i64> %broadcast.splat286, %step.add290
  %wide.gep291 = getelementptr inbounds nuw i8, ptr %i.fn, <2 x i64> %i.fo
  %wide.gep292 = getelementptr inbounds nuw i8, ptr %i.fn, <2 x i64> %i.fp
  %i.fq = getelementptr [8 x i8], ptr %i.fj, i64 %index288 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <2 x ptr> %wide.gep291, ptr %i.fq, align 8, !tbaa !131, !alias.scope !140, !noalias !137
  store <2 x ptr> %wide.gep292, ptr %i.fr, align 8, !tbaa !131, !alias.scope !140, !noalias !137
  %index.next293 = add nuw i64 %index288, 4       ; 2 uses
  %vec.ind.next294 = add nuw <2 x i64> %vec.ind289, splat (i64 4)
  %i.fs = icmp eq i64 %index.next293, %n.vec284
  br i1 %i.fs, label %middle.block295, label %vector.body287, !llvm.loop !142

middle.block295:                                  ; preds = %vector.body287
  br i1 %cmp.n296, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader:     ; preds = %vector.memcheck274, %.preheader.us200, %middle.block295
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck274 ], [ 0, %.preheader.us200 ], [ %n.vec284, %middle.block295 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol:          ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ], [ %indvars.iv.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ], [ 0, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ]
  %i.ft = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fh
  %i.fv = mul i64 %i.ha, %indvars.iv.prol
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  %i.fx = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.prol
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !131
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol, !llvm.loop !143

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit: ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.preheader ], [ %indvars.iv.next.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol ]
  %i.fy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us:               ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us ], [ %indvars.iv.unr, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit ] ; 6 uses
  %i.ga = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fh
  %i.gc = mul i64 %i.ha, %indvars.iv
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gf = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fh
  %i.gh = mul i64 %i.ha, %indvars.iv.next
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !131
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gk = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fh
  %i.gm = mul i64 %i.ha, %indvars.iv.next.1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next.1
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !131
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gp = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.fh
  %i.gr = mul i64 %i.ha, %indvars.iv.next.2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.gt = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.next.2
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !131
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond215.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond215.not.3, label %..split180.us_crit_edge.split.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us, !llvm.loop !145

..split180.us_crit_edge.split.us:                 ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us, %middle.block295
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge191.split.us.loopexit, label %.preheader.us200, !llvm.loop !146

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph.us
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !82 ; 6 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.preheader.lr.ph.split.split.split.us, label %._crit_edge191.split.us.loopexit

.preheader.lr.ph.split.split.split.us:            ; preds = %.preheader.lr.ph.split.us
  %i.gx = load i32, ptr %i.ez, align 4, !tbaa !58
  %i.gy = icmp slt i32 %i.gx, 2
  %i.gz = load i64, ptr %i.fb, align 8, !tbaa !53 ; 7 uses
  br i1 %i.gy, label %.preheader.lr.ph.split.split.split.split.us.us, label %.preheader.lr.ph.split.split.split.split.us203

.preheader.lr.ph.split.split.split.split.us203:   ; preds = %.preheader.lr.ph.split.split.split.us
  %i.ha = load i64, ptr %i.fc, align 8, !tbaa !53 ; 6 uses
  %i.hb = sext i32 %.057194.us to i64             ; 2 uses
  %wide.trip.count = zext nneg i32 %i.gv to i64   ; 6 uses
  %i.hc = add nsw i64 %i.hb, %wide.trip.count
  %i.hd = shl nsw i64 %i.hc, 3
  %min.iters.check282 = icmp ult i32 %i.gv, 4
  %n.vec284 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert285 = insertelement <2 x i64> poison, i64 %i.ha, i64 0
  %broadcast.splat286 = shufflevector <2 x i64> %broadcast.splatinsert285, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n296 = icmp eq i64 %n.vec284, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us200

.preheader.lr.ph.split.split.split.split.us.us:   ; preds = %.preheader.lr.ph.split.split.split.us
  %i.he = sext i32 %.057194.us to i64             ; 2 uses
  %wide.trip.count224 = zext nneg i32 %i.gv to i64 ; 6 uses
  %i.hf = add nsw i64 %i.he, %wide.trip.count224
  %i.hg = shl nsw i64 %i.hf, 3
  %min.iters.check = icmp ult i32 %i.gv, 4
  %n.vec = and i64 %wide.trip.count224, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count224
  %xtraiter300 = and i64 %wide.trip.count224, 3   ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %..split180.us_crit_edge.split.us.us.us, %.preheader.lr.ph.split.split.split.split.us.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %..split180.us_crit_edge.split.us.us.us ], [ 0, %.preheader.lr.ph.split.split.split.split.us.us ] ; 3 uses
  %i.hh = mul nsw i64 %indvars.iv226, %i.eo
  %i.hi = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %i.he ; 7 uses
  br i1 %min.iters.check, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.hl = mul i64 %i.ep, %indvars.iv226
  %i.hm = getelementptr i8, ptr %i.hi, i64 %i.hg
  %scevgep = getelementptr i8, ptr %i.hm, i64 %i.hl
  %bound0 = icmp ult ptr %i.hk, %scevgep272
  %bound1 = icmp ult ptr %i.fa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hn = load ptr, ptr %i.fa, align 8, !tbaa !136, !alias.scope !147 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ho = mul <2 x i64> %broadcast.splat, %vec.ind
  %i.hp = mul <2 x i64> %broadcast.splat, %step.add
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.hn, <2 x i64> %i.ho
  %wide.gep273 = getelementptr inbounds nuw i8, ptr %i.hn, <2 x i64> %i.hp
  %i.hq = getelementptr [8 x i8], ptr %i.hk, i64 %index ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hq, align 8, !tbaa !131, !alias.scope !150, !noalias !147
  store <2 x ptr> %wide.gep273, ptr %i.hr, align 8, !tbaa !131, !alias.scope !150, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..split180.us_crit_edge.split.us.us.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader: ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv221.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod301.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol:    ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol
  %indvars.iv221.prol = phi i64 [ %indvars.iv.next222.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol ], [ %indvars.iv221.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader ] ; 3 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol ], [ 0, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader ]
  %i.ht = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.hu = mul i64 %i.gz, %indvars.iv221.prol
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  %i.hw = getelementptr [8 x i8], ptr %i.hk, i64 %indvars.iv221.prol
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !131
  %indvars.iv.next222.prol = add nuw nsw i64 %indvars.iv221.prol, 1 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol, !llvm.loop !153

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit: ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader
  %indvars.iv221.unr = phi i64 [ %indvars.iv221.ph, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.preheader ], [ %indvars.iv.next222.prol, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol ]
  %i.hx = sub nsw i64 %indvars.iv221.ph, %wide.trip.count224
  %i.hy = icmp ugt i64 %i.hx, -4
  br i1 %i.hy, label %..split180.us_crit_edge.split.us.us.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us:         ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.3, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us ], [ %indvars.iv221.unr, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.hz = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.ia = mul i64 %i.gz, %indvars.iv221
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ia
  %i.ic = getelementptr [8 x i8], ptr %i.hk, i64 %indvars.iv221
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !131
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.id = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.ie = mul i64 %i.gz, %indvars.iv.next222
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  %i.ig = getelementptr [8 x i8], ptr %i.hk, i64 %indvars.iv.next222
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !131
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %i.ih = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.ii = mul i64 %i.gz, %indvars.iv.next222.1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii
  %i.ik = getelementptr [8 x i8], ptr %i.hk, i64 %indvars.iv.next222.1
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !131
  %indvars.iv.next222.2 = add nuw nsw i64 %indvars.iv221, 3 ; 2 uses
  %i.il = load ptr, ptr %i.fa, align 8, !tbaa !136
  %i.im = mul i64 %i.gz, %indvars.iv.next222.2
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.im
  %i.io = getelementptr [8 x i8], ptr %i.hk, i64 %indvars.iv.next222.2
  store ptr %i.in, ptr %i.io, align 8, !tbaa !131
  %indvars.iv.next222.3 = add nuw nsw i64 %indvars.iv221, 4 ; 2 uses
  %exitcond225.not.3 = icmp eq i64 %indvars.iv.next222.3, %wide.trip.count224
  br i1 %exitcond225.not.3, label %..split180.us_crit_edge.split.us.us.us, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us, !llvm.loop !154

..split180.us_crit_edge.split.us.us.us:           ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us.prol.loopexit, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.us.us.us, %middle.block
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %._crit_edge191.split.us.loopexit, label %.preheader.us.us, !llvm.loop !146

.lr.ph198.split:                                  ; preds = %.lr.ph198, %bb.bg
  %.1197 = phi i64 [ %i.jk, %bb.bg ], [ 0, %.lr.ph198 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %.1197
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !81
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.bg, label %.split205.us

.split205.us:                                     ; preds = %.lr.ph198.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc143 unwind label %bb.bh

.noexc143:                                        ; preds = %.split205.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc143
  unreachable

bb.bc:                                            ; preds = %.noexc143
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %bb.bc
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !22
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body128

.noexc.i:                                         ; preds = %.preheader.lr.ph.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.iz, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 35, ptr %i.a, align 8, !tbaa !53
  %i.ja = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc160 unwind label %bb.bf ; 3 uses

.noexc160:                                        ; preds = %.noexc.i
  store ptr %i.ja, ptr %3, align 8, !tbaa !28
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ja, ptr noundef nonnull align 1 dereferenceable(35) @.str.25, i64 35, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  store i8 0, ptr %i.jd, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %.noexc160
  unreachable

bb.be:                                            ; preds = %.noexc160
  %i.je = landingpad { ptr, i32 }
          cleanup
  %i.jf = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.iz
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149: ; preds = %bb.be
  %i.jh = load i64, ptr %i.iz, align 8, !tbaa !22
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body128

bb.bf:                                            ; preds = %.noexc.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body128

bb.bg:                                            ; preds = %.lr.ph198.split
  %i.jk = add nuw i64 %.1197, 1                   ; 2 uses
  %exitcond213.not = icmp eq i64 %i.jk, %i.l
  br i1 %exitcond213.not, label %._crit_edge199, label %.lr.ph198.split, !llvm.loop !135

bb.bh:                                            ; preds = %.split205.us
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body128

._crit_edge199:                                   ; preds = %bb.bg, %._crit_edge191.split.us.loopexit, %_ZNSt6vectorIPKaSaIS1_EE6resizeEm.exit.split
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store i32 0, ptr %23, align 4, !tbaa !78
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %2, ptr %i.jm, align 4, !tbaa !83
  %i.jn = sitofp i32 %2 to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef %i.jn)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %._crit_edge199
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaEE, i64 16), ptr %16, align 8, !tbaa !14
  %i.jo = load ptr, ptr %i.c, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3dnn15ConcatLayerImpl20ChannelConcatInvokerIaED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jp = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !134
end_hunk_1
