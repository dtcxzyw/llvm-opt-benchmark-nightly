begin_hunk_0_@_ZN2cv3dnn17Reshape2LayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn37 = phi { ptr, i32 } [ %i.aj, %bb.aa ], [ %i.ai, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.bv

bb.ac:                                            ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %19)
          to label %bb.ad unwind label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !61
  %i.al = icmp eq i32 %i.ak, 7
  br i1 %i.al, label %bb.ae, label %bb.bn

bb.ae:                                            ; preds = %bb.ad
  %i.am = invoke noundef zeroext i1 @_ZNK2cv3dnn17Reshape2LayerImpl18canKeepBlockLayoutERKNS_8MatShapeES4_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62 ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null               ; 2 uses
  br i1 %i.am, label %bb.ag, label %bb.bb

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 508
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63 ; 3 uses
  switch i32 %i.aq, label %bb.ai [
    i32 4, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
    i32 2, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc58 unwind label %bb.ap

.noexc58:                                         ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv, ptr noundef nonnull @.str.13, i32 noundef 58) #20
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc58
  unreachable

bb.ak:                                            ; preds = %.noexc58
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.av = load i64, ptr %i.at, align 8, !tbaa !40
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit: ; preds = %bb.ah, %bb.ah, %bb.ag
  %i.ax = phi i32 [ %i.aq, %bb.ah ], [ %i.aq, %bb.ah ], [ 2, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %20, ptr noundef nonnull align 4 dereferenceable(52) %13, i32 noundef %i.ax, i32 noundef 0)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %21, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %20, ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ay = load i32, ptr %21, align 4, !tbaa !54   ; 3 uses
  %i.az = load i32, ptr %20, align 4, !tbaa !54
  %.not.i59 = icmp eq i32 %i.ay, %i.az
  br i1 %.not.i59, label %.preheader.i, label %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit

.preheader.i:                                     ; preds = %bb.am
  %i.ba = icmp slt i32 %i.ay, 1
  br i1 %i.ba, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %.preheader.i
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 12
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.an:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond24.not.i, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !160

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.an, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.an ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.be, %i.bg
  br i1 %.not12.i, label %bb.an, label %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit

.loopexit:                                        ; preds = %bb.an, %.preheader.i
  %i.bh = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %19, ptr noundef nonnull align 4 dereferenceable(52) %13)
          to label %bb.az unwind label %bb.ar     ; 0 uses

bb.ao:                                            ; preds = %bb.br, %bb.ae, %bb.ac
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.ai
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ar:                                            ; preds = %.loopexit, %bb.al
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body61

_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.bm = load i32, ptr %13, align 4, !tbaa !54
  %i.bn = icmp sgt i32 %i.bm, 4
  br i1 %i.bn, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc66 unwind label %bb.ay

.noexc66:                                         ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.11, i32 noundef 97) #20
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc66
  unreachable

bb.au:                                            ; preds = %.noexc66
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.au
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !40
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body67

bb.av:                                            ; preds = %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55
  invoke void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %22, ptr noundef nonnull align 4 dereferenceable(52) %21, i32 noundef 7, i32 noundef %i.bv)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.bw = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %19, ptr noundef nonnull align 4 dereferenceable(52) %22)
          to label %bb.ax unwind label %bb.ay     ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.az

bb.ay:                                            ; preds = %bb.as, %bb.aw, %bb.av
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %bb.ay
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.bx, %bb.ay ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.body61

bb.az:                                            ; preds = %.loopexit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.br

.body61:                                          ; preds = %bb.ar, %.body67
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body68, %.body67 ], [ %i.bl, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ba

bb.ba:                                            ; preds = %.body61, %bb.aq
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body61 ], [ %i.bk, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.body

bb.bb:                                            ; preds = %bb.af
  br i1 %.not.i, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.by = getelementptr inbounds nuw i8, ptr %i.ao, i64 508
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !63 ; 3 uses
  switch i32 %i.bz, label %bb.bd [
    i32 4, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76
    i32 2, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76
  ]

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc73 unwind label %bb.bj

.noexc73:                                         ; preds = %bb.bd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv, ptr noundef nonnull @.str.13, i32 noundef 58) #20
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc73
  unreachable

bb.bf:                                            ; preds = %.noexc73
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.bf
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !40
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76: ; preds = %bb.bc, %bb.bc, %bb.bb
  %i.cg = phi i32 [ %i.bz, %bb.bc ], [ %i.bz, %bb.bc ], [ 2, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %23, ptr noundef nonnull align 4 dereferenceable(52) %13, i32 noundef %i.cg, i32 noundef 0)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  invoke void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %24, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %23, ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ch = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %19, ptr noundef nonnull align 4 dereferenceable(52) %24)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.br

bb.bj:                                            ; preds = %bb.bd
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit76
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn39 = phi { ptr, i32 } [ %i.ck, %bb.bl ], [ %i.cj, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.body

bb.bn:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  invoke void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %25, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.cl = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %19, ptr noundef nonnull align 4 dereferenceable(52) %25)
          to label %bb.bp unwind label %bb.bq     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %.body

bb.br:                                            ; preds = %bb.az, %bb.bi, %bb.bp
  invoke void @_ZN2cv3dnn19reshapeAndCopyFirstERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_8MatShapeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(52) %19)
          to label %bb.bs unwind label %bb.ao

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !161
  %.not.i77 = icmp eq i32 %i.co, 0
  br i1 %.not.i77, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret void

.body:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bm, %bb.ba, %bb.bq, %bb.ao
  %.pn46 = phi { ptr, i32 } [ %i.bi, %bb.ao ], [ %i.cm, %bb.bq ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn42.pn, %bb.ba ], [ %.pn39, %bb.bm ], [ %i.bj, %bb.ap ], [ %i.ci, %bb.bj ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.bv

bb.bv:                                            ; preds = %.body, %bb.ab, %bb.y
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %.body ], [ %.pn37, %bb.ab ], [ %i.ah, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.n
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.bv ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.x, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.f, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn46.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.j, %bb.f ], [ %.pn46.pn.pn, %bb.bw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn17Reshape2LayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  ret i1 %i.a
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.12") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn17Reshape2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK2cv3dnn17Reshape2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %14)
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.r = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.u, 104
  br i1 %i.v, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !166
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !167  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.ac, 8
  br i1 %i.ad, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 197) #20
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.m:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !40
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.l
  %.pn33 = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.af, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.aq

bb.n:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.an, align 4, !tbaa !55
  %i.ao = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.am, i32 %.sroa.0.0.copyload)
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZN2cv3dnn13tensorToShapeERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %18, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ap = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %18)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !165
  br label %bb.x

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.aq

bb.r:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %13, align 4, !tbaa !54
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 202) #20
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.w:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %19, align 8, !tbaa !46   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.w
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !40
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.v
  %.pn31 = phi { ptr, i32 } [ %i.at, %bb.v ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.au, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.aq

bb.x:                                             ; preds = %bb.r, %bb.p
  %i.ba = phi ptr [ %i.r, %bb.r ], [ %.pre, %bb.p ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !61
  %i.bd = icmp eq i32 %i.bc, 7
  br i1 %i.bd, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %bb.x
  %i.be = call noundef zeroext i1 @_ZNK2cv3dnn17Reshape2LayerImpl18canKeepBlockLayoutERKNS_8MatShapeES4_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %i.ba, ptr noundef nonnull align 4 dereferenceable(52) %13)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62 ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null               ; 2 uses
  br i1 %i.be, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 508
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63 ; 3 uses
  switch i32 %i.bi, label %bb.ab [
    i32 4, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
    i32 2, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv, ptr noundef nonnull @.str.13, i32 noundef 58) #20
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50 ], [ %.pn35, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit: ; preds = %bb.z, %bb.aa, %bb.aa
  %i.bp = phi i32 [ %i.bi, %bb.aa ], [ %i.bi, %bb.aa ], [ 2, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.bq = load ptr, ptr %1, align 8, !tbaa !165
  call void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %21, ptr noundef nonnull align 4 dereferenceable(52) %i.bq, i32 noundef %i.bp, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %22, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %21, ptr noundef nonnull align 4 dereferenceable(52) %13)
  %i.br = load i32, ptr %22, align 4, !tbaa !54   ; 3 uses
  %i.bs = load i32, ptr %21, align 4, !tbaa !54
  %.not.i44 = icmp eq i32 %i.br, %i.bs
  br i1 %.not.i44, label %.preheader.i, label %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit

.preheader.i:                                     ; preds = %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  %i.bt = icmp slt i32 %i.br, 1
  br i1 %i.bt, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %.preheader.i
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 12
  %wide.trip.count.i = zext nneg i32 %i.br to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.ae:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond24.not.i, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !160

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.ae, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !55
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55
  %.not12.i = icmp eq i32 %i.bx, %i.bz
  br i1 %.not12.i, label %bb.ae, label %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit

.loopexit:                                        ; preds = %bb.ae, %.preheader.i
  %i.ca = load ptr, ptr %1, align 8, !tbaa !165
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.ca)
  br label %bb.ai

_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.cb = load ptr, ptr %1, align 8, !tbaa !165   ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !54
  %i.cd = icmp sgt i32 %i.cc, 4
  br i1 %i.cd, label %_ZNK2cv8MatShapeixEm.exit, label %bb.af

bb.af:                                            ; preds = %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.11, i32 noundef 103) #20
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.ah
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !40
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZN2cv3dnn17Reshape2LayerImpl8sameDimsERKNS_8MatShapeES4_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !55
  call void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %23, ptr noundef nonnull align 4 dereferenceable(52) %22, i32 noundef 7, i32 noundef %i.cl)
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ap

bb.aj:                                            ; preds = %bb.y
  br i1 %.not.i, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit52, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 508
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !63 ; 3 uses
  switch i32 %i.cn, label %bb.al [
    i32 4, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit52
    i32 2, label %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit52
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv, ptr noundef nonnull @.str.13, i32 noundef 58) #20
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %bb.an
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !40
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i50: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit52: ; preds = %bb.aj, %bb.ak, %bb.ak
  %i.cu = phi i32 [ %i.cn, %bb.ak ], [ %i.cn, %bb.ak ], [ 2, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.cv = load ptr, ptr %1, align 8, !tbaa !165
  call void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %24, ptr noundef nonnull align 4 dereferenceable(52) %i.cv, i32 noundef %i.cu, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %25, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %24, ptr noundef nonnull align 4 dereferenceable(52) %13)
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.ap

bb.ao:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @_ZNK2cv3dnn17Reshape2LayerImpl11getOutShapeERKNS_8MatShapeES4_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %26, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(52) %i.ba, ptr noundef nonnull align 4 dereferenceable(52) %13)
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ai, %_ZNK2cv3dnn17Reshape2LayerImpl17getOriginalLayoutEv.exit52, %bb.ao
  %i.cw = load ptr, ptr %4, align 8, !tbaa !165   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !162
  %.not.i.i = icmp eq ptr %i.cy, %i.cw
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.ap
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !162
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit: ; preds = %bb.ap, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret i1 true

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn35 = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn17Reshape2LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = add nsw i64 %i.g, -1
  %or.cond = icmp ult i64 %i.h, 2
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
end_hunk_1
