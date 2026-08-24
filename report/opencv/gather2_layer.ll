Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gather2_layer?download=true
inline.NumInlined: 456
inline.NumDeleted: 259
begin_hunk_0_@_ZN2cv3dnn16Gather2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn16Gather2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.8, i32 noundef 163) #20
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.cj

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %14, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.o unwind label %bb.s       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.q = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  switch i32 %i.q, label %bb.u [
    i32 11, label %bb.z
    i32 4, label %bb.z
  ]

bb.q:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.r:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.s:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.t:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn16Gather2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.8, i32 noundef 169) #20
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.y:                                             ; preds = %bb.v
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %15, align 8, !tbaa !28    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.y
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !22
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.x
  %.pn56 = phi { ptr, i32 } [ %i.v, %bb.x ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.w, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ch

bb.z:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNK2cv3dnn16Gather2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %17, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %14)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.ac = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32 ; 8 uses
  %i.af = load i32, ptr %13, align 4, !tbaa !50   ; 6 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii, ptr noundef nonnull @.str.17, i32 noundef 249) #20
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc
  unreachable

bb.ae:                                            ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ae
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !22
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.af:                                            ; preds = %bb.ab
  %i.an = sub nsw i32 0, %i.af
  %.not.i = icmp slt i32 %i.ae, %i.an
  %.not20.i = icmp sgt i32 %i.ae, %i.af
  %or.cond.i = or i1 %.not.i, %.not20.i
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #20
          to label %.noexc83 unwind label %bb.an

.noexc83:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ao = icmp ult i32 %i.ae, %i.af
  br i1 %i.ao, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = icmp slt i32 %i.ae, 0
  br i1 %i.ap, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aq = add nsw i32 %i.af, %i.ae
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ar = sub nuw nsw i32 %i.ae, %i.af
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.as = phi i32 [ %i.ar, %bb.ak ], [ %i.aq, %bb.aj ], [ %i.ae, %bb.ah ] ; 2 uses
  switch i32 %i.ac, label %bb.ao [
    i32 327680, label %bb.at
    i32 720896, label %bb.bi
  ]

bb.al:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.ag, %bb.ac
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv3dnn16Gather2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.8, i32 noundef 176) #20
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.as:                                            ; preds = %bb.ap
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.as
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ar
  %.pn58 = phi { ptr, i32 } [ %i.aw, %bb.ar ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ax, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.body

bb.at:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.bd = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc88 unwind label %bb.bd  ; 0 uses

.noexc88:                                         ; preds = %bb.at
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.bd

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.be = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc91 unwind label %bb.be  ; 0 uses

.noexc91:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit93 unwind label %bb.be

_ZNK2cv11_InputArray6getMatEi.exit93:             ; preds = %.noexc91
  %i.bf = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc97 unwind label %bb.bf

.noexc97:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit93
  %i.bg = icmp eq i32 %i.bf, 327680
  br i1 %i.bg, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc98 unwind label %bb.bf

.noexc98:                                         ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv12_OutputArray12getMatVecRefEv, ptr noundef nonnull @.str.15, i32 noundef 412) #20
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.noexc98
  unreachable

bb.aw:                                            ; preds = %.noexc98
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %bb.aw
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body99

bb.ax:                                            ; preds = %.noexc97
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56 ; 4 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208               ; 2 uses
  %i.bw = icmp eq ptr %i.bq, %i.br
  br i1 %i.bw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.bx = sub nuw nsw i64 1, %i.bv
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.bx)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.bf

bb.az:                                            ; preds = %bb.ax
  %i.by = icmp ugt i64 %i.bv, 1
  br i1 %i.by, label %bb.ba, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.ba:                                            ; preds = %bb.az
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 208 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bz
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.ba ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #19
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.bq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !56
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ba, %bb.az, %bb.ay
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !57
  invoke void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.cb, ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.p)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !57
  invoke void @_ZN2cv3dnn16Gather2LayerImpl5runOpERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.cc, i32 noundef %i.as)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ce

bb.bd:                                            ; preds = %.noexc88, %bb.at
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %.noexc91, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ay, %bb.au, %_ZNK2cv11_InputArray6getMatEi.exit93, %bb.bb, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.body99:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95, %bb.bf
  %eh.lpad-body100 = phi { ptr, i32 } [ %i.cf, %bb.bf ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  br label %bb.bg

bb.bg:                                            ; preds = %.body99, %bb.be
  %.pn67 = phi { ptr, i32 } [ %eh.lpad-body100, %.body99 ], [ %i.ce, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  br label %bb.bh
end_hunk_0
begin_hunk_1_@_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i:bb.a
bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.2, i32 noundef 101) #20
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.v:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.u
  %.pn24 = phi { ptr, i32 } [ %i.au, %bb.u ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.bb = fptosi double %i.aq to i64
  br label %bb.ae

bb.x:                                             ; preds = %bb.o
  %i.bc = zext nneg i32 %i.ai to i64
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bg = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bf, ptr noundef null, i32 noundef 10) #19, !inline_history !89
  %sext = shl i64 %i.bg, 32
  %i.bh = ashr exact i64 %sext, 32
  br label %bb.ae

bb.y:                                             ; preds = %bb.o
  %i.bi = and i32 %i.ah, -3
  %spec.select.i = icmp eq i32 %i.bi, 0
  br i1 %spec.select.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i, ptr noundef nonnull @.str.2, i32 noundef 111) #20
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.ad:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ad
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !22
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

bb.ae:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.p
  %.018 = phi i64 [ %i.am, %bb.p ], [ %i.bb, %bb.w ], [ %i.bh, %bb.x ], [ 0, %bb.y ]
  ret i64 %.018
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #13

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind writable sret(%"struct.cv::MatShape") align 4, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16Gather2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind noalias writable sret(%"struct.cv::MatShape") align 4 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 4 dereferenceable(52) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
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
  %i.a = load i32, ptr %2, align 4, !tbaa !50     ; 8 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !50     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 8 uses
  %i.e = icmp sgt i32 %i.a, -1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii, ptr noundef nonnull @.str.17, i32 noundef 249) #20
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %10, align 8, !tbaa !28    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.l = sub nsw i32 0, %i.a
  %.not.i = icmp slt i32 %i.d, %i.l
  %.not20.i = icmp sgt i32 %i.d, %i.a
  %or.cond.i = or i1 %.not.i, %.not20.i
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = icmp ult i32 %i.d, %i.a
  br i1 %i.m, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp slt i32 %i.d, 0
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.d, %i.a
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

bb.j:                                             ; preds = %bb.h
  %i.p = sub nuw nsw i32 %i.d, %i.a
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.q = phi i32 [ %i.p, %bb.j ], [ %i.o, %bb.i ], [ %i.d, %bb.g ] ; 3 uses
  %or.cond = icmp ult i32 %i.q, %i.a
  br i1 %or.cond, label %.split, label %bb.k

bb.k:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv3dnn16Gather2LayerImpl11getOutShapeERKNS_8MatShapeES4_, ptr noundef nonnull @.str.8, i32 noundef 108) #20
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %12, align 8, !tbaa !28    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !22
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.n ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %common.resume

.split:                                           ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit
  %i.y = add nsw i32 %i.a, -1
  %i.z = add i32 %i.y, %i.b
  %i.aa = sext i32 %i.z to i64
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %0, i64 noundef %i.aa, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.ab = load i32, ptr %0, align 4, !tbaa !50    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = zext nneg i32 %i.q to i64
  %14 = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.op = sub i32 1, %i.b
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN2cv8MatShapeixEm.exit59, %.split
  ret void

bb.p:                                             ; preds = %.lr.ph, %_ZN2cv8MatShapeixEm.exit59
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit59 ] ; 7 uses
  %i.ah = icmp samesign ult i64 %indvars.iv, %14
  br i1 %i.ah, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ai = load i32, ptr %2, align 4, !tbaa !50
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = zext nneg i32 %narrow.i to i64
  %i.ak = icmp samesign ult i64 %indvars.iv, %i.aj
  br i1 %i.ak, label %_ZNK2cv8MatShapeixEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.15, i32 noundef 103) #20
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  br label %_ZN2cv8MatShapeixEm.exit59

bb.u:                                             ; preds = %bb.p
  %i.as = sub nuw nsw i64 %indvars.iv, %i.ag      ; 3 uses
  %15 = trunc nuw i64 %i.as to i32
  %16 = icmp sgt i32 %i.b, %15
  br i1 %16, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.at = load i32, ptr %3, align 4, !tbaa !50
  %narrow.i42 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %17 = zext nneg i32 %narrow.i42 to i64
  %18 = icmp samesign ult i64 %i.as, %17
  br i1 %18, label %_ZNK2cv8MatShapeixEm.exit47, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.15, i32 noundef 103) #20
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.y
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i45: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit47:                      ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.as
  br label %_ZN2cv8MatShapeixEm.exit59

bb.z:                                             ; preds = %bb.u
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.reass.reass = add i32 %i.bb, %invariant.op ; 2 uses
  %i.bc = load i32, ptr %2, align 4, !tbaa !50
  %narrow.i48 = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 1)
  %i.bd = icmp ult i32 %.reass.reass.reass, %narrow.i48
  br i1 %i.bd, label %_ZNK2cv8MatShapeixEm.exit53, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.15, i32 noundef 103) #20
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.ac
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !22
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit53:                      ; preds = %bb.z
  %i.bk = zext nneg i32 %.reass.reass.reass to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bk
  br label %_ZN2cv8MatShapeixEm.exit59

_ZN2cv8MatShapeixEm.exit59:                       ; preds = %_ZNK2cv8MatShapeixEm.exit47, %_ZNK2cv8MatShapeixEm.exit53, %_ZNK2cv8MatShapeixEm.exit
  %.sink.in = phi ptr [ %i.ar, %_ZNK2cv8MatShapeixEm.exit ], [ %i.ba, %_ZNK2cv8MatShapeixEm.exit47 ], [ %i.bl, %_ZNK2cv8MatShapeixEm.exit53 ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !74
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %.sink, ptr %i.bm, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !90
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16Gather2LayerImpl5runOpERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 11 uses
  %8 = alloca %"class.std::function", align 8     ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %20 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %21 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %24 = alloca %"class.cv::Range", align 4        ; 6 uses
  %25 = alloca %"class.std::function", align 8    ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store i32 %4, ptr %i.a, align 4, !tbaa !74
  %i.h = load i32, ptr %1, align 8, !tbaa !91
  %i.i = and i32 %i.h, 16384
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnnL6gatherERKNS_3MatES3_RS1_i, ptr noundef nonnull @.str.8, i32 noundef 32) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %common.resume.i

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.r = and i32 %i.q, 16384
  %.not81.i = icmp eq i32 %i.r, 0
  br i1 %.not81.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnnL6gatherERKNS_3MatES3_RS1_i, ptr noundef nonnull @.str.8, i32 noundef 32) #20
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %13, align 8, !tbaa !28    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_:bb.a
  %i.h = add nsw i64 %.01114.i.i.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !147

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #19 ; 0 uses
  invoke void @__cxa_rethrow() #20
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !66
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #18
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2                    ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !74     ; 2 uses
  %i.n = add nsw i64 %i.j, -4                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check51 = icmp ult i64 %i.n, 28
  br i1 %min.iters.check51, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %n.vec53 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %i.q = shl i64 %n.vec53, 2
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %broadcast.splatinsert54 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat55 = shufflevector <4 x i32> %broadcast.splatinsert54, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph52
  %index57 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body56 ] ; 2 uses
  %i.s = shl i64 %index57, 2
  %next.gep58 = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep58, i64 16
  store <4 x i32> %broadcast.splat55, ptr %next.gep58, align 4, !tbaa !74
  store <4 x i32> %broadcast.splat55, ptr %i.t, align 4, !tbaa !74
  %index.next59 = add nuw i64 %index57, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.u, label %middle.block60, label %vector.body56, !llvm.loop !149

middle.block60:                                   ; preds = %vector.body56
  %cmp.n61 = icmp eq i64 %i.p, %n.vec53
  br i1 %cmp.n61, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %middle.block60
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %middle.block60 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.m, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block60
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.x = load ptr, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !148
  store ptr %i.k, ptr %0, align 8, !tbaa !73
  store ptr %i.l, ptr %i.y, align 8, !tbaa !70
  store ptr %i.w, ptr %i.a, align 8, !tbaa !148
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 8 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = sub i64 %i.af, %i.e                     ; 2 uses
  %i.ah = ashr exact i64 %i.ag, 2                 ; 2 uses
  %i.ai = icmp ugt i64 %1, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %2, align 4, !tbaa !74    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.ae
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ak = add i64 %i.af, -4
  %i.al = sub i64 %i.ak, %i.e                     ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check25 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check25, label %.lr.ph.i.i.i.i.preheader63, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec27 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec27, 2
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.ao
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.aq = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat29, ptr %next.gep32, align 4, !tbaa !74
  store <4 x i32> %broadcast.splat29, ptr %i.ar, align 4, !tbaa !74
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.as, label %middle.block34, label %vector.body30, !llvm.loop !153

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %i.an, %n.vec27
  br i1 %cmp.n35, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block34
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block34 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  store i32 %i.aj, ptr %.06.i.i.i.i, align 4, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !154

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block34
  %.pre = load i32, ptr %2, align 4, !tbaa !74
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.au = phi i32 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit ], [ %i.aj, %bb.f ] ; 2 uses
  %i.av = sub nuw i64 %1, %i.ah
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.ax = shl i64 %1, 2
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %i.ag                    ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.az, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %n.vec40 = and i64 %i.bb, 9223372036854775800   ; 3 uses
  %i.bc = shl i64 %n.vec40, 2
  %i.bd = getelementptr i8, ptr %i.ae, i64 %i.bc
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph39
  %index44 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body43 ] ; 2 uses
  %i.be = shl i64 %index44, 2
  %next.gep45 = getelementptr i8, ptr %i.ae, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %broadcast.splat42, ptr %next.gep45, align 4, !tbaa !74
  store <4 x i32> %broadcast.splat42, ptr %i.bf, align 4, !tbaa !74
  %index.next46 = add nuw i64 %index44, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.bg, label %middle.block47, label %vector.body43, !llvm.loop !155

middle.block47:                                   ; preds = %vector.body43
  %cmp.n48 = icmp eq i64 %i.bb, %n.vec40
  br i1 %cmp.n48, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block47
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.bd, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.au, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !156

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block47
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !70
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %1, 0
  br i1 %i.bi, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bk = load i32, ptr %2, align 4, !tbaa !74    ; 2 uses
  %i.bl = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.bo = shl i64 %n.vec, 2
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bo
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !74
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bk, ptr %.06.i.i.i.i13, align 4, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bt, %i.bj
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !158

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.bj, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.ad, align 8, !tbaa !70
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn16Gather2LayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !159
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !162
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn16Gather2LayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !163
  store ptr %i.a, ptr %0, align 8, !tbaa !159
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #19 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 160) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #20
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16Gather2LayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16Gather2LayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.b) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16Gather2LayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}
end_hunk_2
