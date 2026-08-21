Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %i.ep, label %.lr.ph.us.i, label %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit, !llvm.loop !103

_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit: ; preds = %._crit_edge.us.i, %bb.ai, %.lr.ph32.i
  %i.eq = icmp sgt i32 %i.c, 0
  br i1 %i.eq, label %.lr.ph, label %.loopexit

bb.an:                                            ; preds = %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109

.lr.ph:                                           ; preds = %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101
  %.0152 = phi i32 [ %i.fn, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101 ], [ 0, %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit ] ; 2 uses
  %.lcssa146149151 = phi i32 [ %.lcssa146148, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101 ], [ 1, %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit ] ; 2 uses
  %i.es = sext i32 %.0152 to i64
  %i.et = getelementptr [4 x i8], ptr %.sroa.0130.0, i64 %i.es ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !72 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.preheader.i94, label %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101

.lr.ph.preheader.i94:                             ; preds = %.lr.ph
  %i.ex = mul nsw i32 %.0152, %i.o
  %i.ey = sdiv i32 %i.ex, 2
  %i.ez = add nsw i32 %i.ey, 1                    ; 2 uses
  %i.fa = add nsw i32 %i.ev, %i.ez
  %i.fb = sext i32 %i.ez to i64
  %i.fc = sext i32 %i.fa to i64
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.ar, %.lr.ph.preheader.i94
  %i.fd = phi i32 [ %.lcssa146149151, %.lr.ph.preheader.i94 ], [ %i.fl, %bb.ar ] ; 4 uses
  %indvars.iv.i96 = phi i64 [ %i.fb, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i99, %bb.ar ] ; 3 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv.i96 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !72
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = icmp sgt i64 %indvars.iv.i96, %i.fg
  br i1 %i.fh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i95
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !72
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !72
  br label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i95
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !72
  %.not.i.i97 = icmp eq i32 %i.fd, 2147483647
  br i1 %.not.i.i97, label %bb.aq, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.i98

bb.aq:                                            ; preds = %bb.ap
  store i32 2147483647, ptr %i.a, align 4
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
          to label %.noexc100 unwind label %bb.as

.noexc100:                                        ; preds = %bb.aq
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.i98: ; preds = %bb.ap
  %i.fk = add nsw i32 %i.fd, 1
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.i98, %bb.ao
  %i.fl = phi i32 [ %i.fk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.i98 ], [ %i.fd, %bb.ao ] ; 2 uses
  %indvars.iv.next.i99 = add nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next.i99, %i.fc
  br i1 %i.fm, label %.lr.ph.i95, label %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101, !llvm.loop !97

_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101: ; preds = %bb.ar, %.lr.ph
  %.lcssa146148 = phi i32 [ %.lcssa146149151, %.lr.ph ], [ %i.fl, %bb.ar ] ; 2 uses
  %i.fn = load i32, ptr %i.et, align 4, !tbaa !72 ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %i.c
  br i1 %i.fo, label %.lr.ph, label %.loopexit, !llvm.loop !104

bb.as:                                            ; preds = %bb.aq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109

.loopexit:                                        ; preds = %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit, %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit, %.preheader
  %storemerge = phi i32 [ %.lcssa154156, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit ], [ 1, %.preheader ], [ 1, %_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE24mergeLabels4ConnectivityERNS_3MatEPiPKi.exit ], [ %.lcssa146148, %_ZN2cv19connectedcomponentsL16flattenLParallelIiEEvPT_iiRS2_.exit101 ]
  store i32 %storemerge, ptr %i.a, align 4
  %i.fq = icmp slt i32 %i.c, 0
  br i1 %i.fq, label %bb.at, label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.at:                                            ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
          to label %.noexc103 unwind label %bb.ay

.noexc103:                                        ; preds = %bb.at
  unreachable

_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %.loopexit
  %.not.i.i.i.i102 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i102, label %bb.au, label %_ZNSt15__new_allocatorIN2cv19connectedcomponents4NoOpEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN2cv19connectedcomponents4NoOpEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #18
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZNSt15__new_allocatorIN2cv19connectedcomponents4NoOpEE8allocateEmPKv.exit.i.i.i.i
  %i.fs = phi ptr [ null, %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.fr, %_ZNSt15__new_allocatorIN2cv19connectedcomponents4NoOpEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE10SecondScanE, i64 16), ptr %14, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %2, ptr %i.ft, align 8, !tbaa !90
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ay, ptr %i.fu, align 8, !tbaa !105
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %4, ptr %i.fv, align 8, !tbaa !108
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.fs, ptr %i.fw, align 8, !tbaa !109
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.a, ptr %i.fx, align 8, !tbaa !110
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %14, double noundef %i.bf)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.ah) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ax) #17
  %.not.i.i.i106 = icmp eq ptr %.sroa.0130.0, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit107, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fz = ptrtoint ptr %.sroa.0130.0 to i64
  %i.ga = sub i64 %.sroa.17.0, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0, i64 noundef %i.ga) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

_ZNSt6vectorIiSaIiEED2Ev.exit107:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ax
  ret i32 %i.fy

bb.ay:                                            ; preds = %_ZNSt15__new_allocatorIN2cv19connectedcomponents4NoOpEE8allocateEmPKv.exit.i.i.i.i, %bb.at
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109

bb.az:                                            ; preds = %bb.au
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %.not.i.i.i108 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.ah) #17
  br label %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109

_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109: ; preds = %bb.ay, %bb.az, %bb.ba, %bb.as, %bb.an, %bb.ag, %bb.aa, %bb.z
  %.pn72 = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %i.er, %bb.an ], [ %i.bq, %bb.aa ], [ %i.bp, %bb.z ], [ %i.fp, %bb.as ], [ %i.gb, %bb.ay ], [ %i.gc, %bb.az ], [ %i.gc, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109, %bb.y
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZNSt6vectorIN2cv19connectedcomponents4NoOpESaIS2_EED2Ev.exit109 ], [ %i.bo, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ax) #17
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit111, %bb.x
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit111 ], [ %i.bn, %bb.x ] ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.sroa.0130.0, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIiSaIiEED2Ev.exit113, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = ptrtoint ptr %.sroa.0130.0 to i64
  %i.ge = sub i64 %.sroa.17.0, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0, i64 noundef %i.ge) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

_ZNSt6vectorIiSaIiEED2Ev.exit113:                 ; preds = %bb.bb, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn72.pn.pn, %bb.bc ], [ %.pn72.pn.pn, %bb.bb ]
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068, %bb.k
  %.pn1851 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071, %bb.q
  %.pn1853 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 4611686018427387903
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc2074

.noexc2074:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc2074, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2074 ] ; 2 uses
  %.sroa.03089.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2074 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3365, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph3365:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  br i1 %i.ay, label %.lr.ph.us.preheader, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.us.preheader:                              ; preds = %.lr.ph3365
  %i.az = zext nneg i32 %i.n to i64               ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv3547 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next3548, %._crit_edge.us ] ; 5 uses
  %.017903363.us = phi i16 [ 1, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !34 ; 3 uses
  %i.bd = mul i64 %i.bc, %indvars.iv3547
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = sub i64 0, %i.bc                        ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 73 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf ; 39 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.bl = mul i64 %i.bk, %indvars.iv3547
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 221 uses
  %i.bn = sub i64 0, %i.bk                        ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bn ; 101 uses
  %.not2024.us = icmp eq i64 %indvars.iv3547, 0   ; 15 uses
  %i.bq = or disjoint i64 %indvars.iv3547, 1
  %i.br = icmp samesign ult i64 %i.bq, %i.ba      ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us, %bb.qt
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qt ] ; 265 uses
  %.13360.us = phi i16 [ %.017903363.us, %.lr.ph.us ], [ %.2.us, %bb.qt ] ; 161 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %.not1878.us = icmp eq i8 %i.bt, 0
  br i1 %.not1878.us, label %bb.jw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1952.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1952.us, label %.critedge.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %.not1953.us = icmp eq i8 %i.bw, 0
  br i1 %.not1953.us, label %bb.bq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.by = icmp samesign uge i64 %i.bx, %i.az      ; 2 uses
  %or.cond.us = or i1 %.not2024.us, %i.by
  br i1 %or.cond.us, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %.not2025.us = icmp eq i8 %i.ca, 0
  br i1 %.not2025.us, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %.not2035.us = icmp eq i8 %i.cc, 0
  br i1 %.not2035.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !54
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !54
  br label %bb.qt

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %.not2036.us = icmp eq i8 %i.ch, 0
  br i1 %.not2036.us, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %.not2037.us = icmp eq i8 %i.cj, 0
  br i1 %.not2037.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !54
  store i16 %i.cm, ptr %i.ck, align 2, !tbaa !54
  br label %bb.qt

bb.ad:                                            ; preds = %bb.ab
  %i.cn = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %.not2038.us = icmp eq i8 %i.cp, 0
  br i1 %.not2038.us, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %.not2039.us = icmp eq i8 %i.cr, 0
  br i1 %.not2039.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cn
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !54
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !54
  br label %bb.qt

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !54 ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cn
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !54 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.us = phi i16 [ %i.cw, %bb.ag ], [ %i.db, %bb.ah ] ; 4 uses
  %i.cz = zext i16 %.0.i.i.us to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !54 ; 2 uses
  %i.dc = icmp ult i16 %i.db, %.0.i.i.us
  br i1 %i.dc, label %bb.ah, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us: ; preds = %bb.ah
  %.not.i.us = icmp eq i16 %i.cw, %i.cy
  br i1 %.not.i.us, label %bb.ai, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i15.i.us = phi i16 [ %i.df, %.preheader.i.us ], [ %i.cy, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dd = zext i16 %.0.i15.i.us to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !54 ; 2 uses
  %i.dg = icmp ult i16 %i.df, %.0.i15.i.us
  br i1 %i.dg, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i.us, i16 %.0.i15.i.us) ; 3 uses
  %i.dh = zext i16 %i.cy to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dh ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !54 ; 2 uses
  %i.dk = icmp ult i16 %i.dj, %i.cy
  br i1 %i.dk, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us, %.lr.ph.i.i.us
  %i.dl = phi i16 [ %i.dp, %.lr.ph.i.i.us ], [ %i.dj, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ] ; 2 uses
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i.us ], [ %i.di, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ]
  store i16 %spec.select.i.us, ptr %i.dm, align 2, !tbaa !54
  %i.dn = zext i16 %i.dl to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dn ; 3 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !54 ; 2 uses
  %i.dq = icmp ult i16 %i.dp, %i.dl
  br i1 %i.dq, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us, !llvm.loop !59

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us
  %.lcssa.i.i.us = phi ptr [ %i.di, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ], [ %i.do, %.lr.ph.i.i.us ]
  store i16 %spec.select.i.us, ptr %.lcssa.i.i.us, align 2, !tbaa !54
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us
  %.1.i2075.us = phi i16 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dr = zext i16 %i.cw to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dr ; 3 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !54 ; 2 uses
  %i.du = icmp ult i16 %i.dt, %i.cw
  br i1 %i.du, label %.lr.ph.i18.i.us, label %.loopexit3204.us

.lr.ph.i18.i.us:                                  ; preds = %bb.ai, %.lr.ph.i18.i.us
  %i.dv = phi i16 [ %i.dz, %.lr.ph.i18.i.us ], [ %i.dt, %bb.ai ] ; 2 uses
  %i.dw = phi ptr [ %i.dy, %.lr.ph.i18.i.us ], [ %i.ds, %bb.ai ]
  store i16 %.1.i2075.us, ptr %i.dw, align 2, !tbaa !54
  %i.dx = zext i16 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dx ; 3 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !54 ; 2 uses
  %i.ea = icmp ult i16 %i.dz, %i.dv
  br i1 %i.ea, label %.lr.ph.i18.i.us, label %.loopexit3204.us, !llvm.loop !59

.loopexit3204.us:                                 ; preds = %.lr.ph.i18.i.us, %bb.ai
  %.lcssa.i17.i.us = phi ptr [ %i.ds, %bb.ai ], [ %i.dy, %.lr.ph.i18.i.us ]
  store i16 %.1.i2075.us, ptr %.lcssa.i17.i.us, align 2, !tbaa !54
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2075.us, ptr %i.eb, align 2, !tbaa !54
  br label %bb.qt

bb.aj:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !54 ; 4 uses
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.cn
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !54 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i2076.us = phi i16 [ %i.ed, %bb.aj ], [ %i.ei, %bb.ak ] ; 4 uses
  %i.eg = zext i16 %.0.i.i2076.us to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !54 ; 2 uses
  %i.ej = icmp ult i16 %i.ei, %.0.i.i2076.us
  br i1 %i.ej, label %bb.ak, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us: ; preds = %bb.ak
  %.not.i2078.us = icmp eq i16 %i.ed, %i.ef
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.pz:                                            ; preds = %bb.jx, %bb.jw
  %i.dgt = or disjoint i64 %indvars.iv, 1         ; 5 uses
  %i.dgu = icmp samesign ult i64 %i.dgt, %i.az
  br i1 %i.dgu, label %bb.qa, label %.critedge2063.us

bb.qa:                                            ; preds = %bb.pz
  %i.dgv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dgt
  %i.dgw = load i8, ptr %i.dgv, align 1, !tbaa !23
  %.not1880.us = icmp eq i8 %i.dgw, 0
  br i1 %.not1880.us, label %bb.qq, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  br i1 %.not2024.us, label %bb.qp, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dgt
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !23
  %.not1883.us = icmp eq i8 %i.dgy, 0
  br i1 %.not1883.us, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.dgz = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.dha = load i16, ptr %i.dgz, align 2, !tbaa !54
  %i.dhb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.dha, ptr %i.dhb, align 2, !tbaa !54
  br label %bb.qt

bb.qe:                                            ; preds = %bb.qc
  %i.dhc = add nuw nsw i64 %indvars.iv, 2         ; 5 uses
  %.not3122.us = icmp samesign ult i64 %i.dhc, %i.az
  br i1 %.not3122.us, label %bb.qf, label %bb.qn

bb.qf:                                            ; preds = %bb.qe
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dhc
  %i.dhe = load i8, ptr %i.dhd, align 1, !tbaa !23
  %.not1885.us = icmp eq i8 %i.dhe, 0
  br i1 %.not1885.us, label %bb.qn, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.dhg = load i8, ptr %i.dhf, align 1, !tbaa !23
  %.not1888.us = icmp eq i8 %i.dhg, 0
  br i1 %.not1888.us, label %bb.qm, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dgt
  %i.dhi = load i8, ptr %i.dhh, align 1, !tbaa !23
  %.not1889.us = icmp eq i8 %i.dhi, 0
  br i1 %.not1889.us, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dhj = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.dhc
  %i.dhk = load i16, ptr %i.dhj, align 2, !tbaa !54
  %i.dhl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.dhk, ptr %i.dhl, align 2, !tbaa !54
  br label %bb.qt

bb.qj:                                            ; preds = %bb.qh
  %i.dhm = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.dhn = load i16, ptr %i.dhm, align 2, !tbaa !54 ; 4 uses
  %i.dho = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.dhc
  %i.dhp = load i16, ptr %i.dho, align 2, !tbaa !54 ; 4 uses
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qk, %bb.qj
  %.0.i.i3067.us = phi i16 [ %i.dhn, %bb.qj ], [ %i.dhs, %bb.qk ] ; 4 uses
  %i.dhq = zext i16 %.0.i.i3067.us to i64
  %i.dhr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dhq
  %i.dhs = load i16, ptr %i.dhr, align 2, !tbaa !54 ; 2 uses
  %i.dht = icmp ult i16 %i.dhs, %.0.i.i3067.us
  br i1 %i.dht, label %bb.qk, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us: ; preds = %bb.qk
  %.not.i3069.us = icmp eq i16 %i.dhn, %i.dhp
  br i1 %.not.i3069.us, label %bb.ql, label %.preheader.i3070.us

.preheader.i3070.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us, %.preheader.i3070.us
  %.0.i15.i3071.us = phi i16 [ %i.dhw, %.preheader.i3070.us ], [ %i.dhp, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us ] ; 3 uses
  %i.dhu = zext i16 %.0.i15.i3071.us to i64
  %i.dhv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dhu
  %i.dhw = load i16, ptr %i.dhv, align 2, !tbaa !54 ; 2 uses
  %i.dhx = icmp ult i16 %i.dhw, %.0.i15.i3071.us
  br i1 %i.dhx, label %.preheader.i3070.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us: ; preds = %.preheader.i3070.us
  %spec.select.i3073.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i3067.us, i16 %.0.i15.i3071.us) ; 3 uses
  %i.dhy = zext i16 %i.dhp to i64
  %i.dhz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dhy ; 3 uses
  %i.dia = load i16, ptr %i.dhz, align 2, !tbaa !54 ; 2 uses
  %i.dib = icmp ult i16 %i.dia, %i.dhp
  br i1 %i.dib, label %.lr.ph.i.i3079.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3074.us

.lr.ph.i.i3079.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us, %.lr.ph.i.i3079.us
  %i.dic = phi i16 [ %i.dig, %.lr.ph.i.i3079.us ], [ %i.dia, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us ] ; 2 uses
  %i.did = phi ptr [ %i.dif, %.lr.ph.i.i3079.us ], [ %i.dhz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us ]
  store i16 %spec.select.i3073.us, ptr %i.did, align 2, !tbaa !54
  %i.die = zext i16 %i.dic to i64
  %i.dif = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.die ; 3 uses
  %i.dig = load i16, ptr %i.dif, align 2, !tbaa !54 ; 2 uses
  %i.dih = icmp ult i16 %i.dig, %i.dic
  br i1 %i.dih, label %.lr.ph.i.i3079.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3074.us, !llvm.loop !59

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3074.us: ; preds = %.lr.ph.i.i3079.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us
  %.lcssa.i.i3075.us = phi ptr [ %i.dhz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3072.us ], [ %i.dif, %.lr.ph.i.i3079.us ]
  store i16 %spec.select.i3073.us, ptr %.lcssa.i.i3075.us, align 2, !tbaa !54
  br label %bb.ql

bb.ql:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3074.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us
  %.1.i3076.us = phi i16 [ %spec.select.i3073.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3074.us ], [ %.0.i.i3067.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3068.us ] ; 3 uses
  %i.dii = zext i16 %i.dhn to i64
  %i.dij = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dii ; 3 uses
  %i.dik = load i16, ptr %i.dij, align 2, !tbaa !54 ; 2 uses
  %i.dil = icmp ult i16 %i.dik, %i.dhn
  br i1 %i.dil, label %.lr.ph.i18.i3078.us, label %.loopexit3133.us

.lr.ph.i18.i3078.us:                              ; preds = %bb.ql, %.lr.ph.i18.i3078.us
  %i.dim = phi i16 [ %i.diq, %.lr.ph.i18.i3078.us ], [ %i.dik, %bb.ql ] ; 2 uses
  %i.din = phi ptr [ %i.dip, %.lr.ph.i18.i3078.us ], [ %i.dij, %bb.ql ]
  store i16 %.1.i3076.us, ptr %i.din, align 2, !tbaa !54
  %i.dio = zext i16 %i.dim to i64
  %i.dip = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dio ; 3 uses
  %i.diq = load i16, ptr %i.dip, align 2, !tbaa !54 ; 2 uses
  %i.dir = icmp ult i16 %i.diq, %i.dim
  br i1 %i.dir, label %.lr.ph.i18.i3078.us, label %.loopexit3133.us, !llvm.loop !59

.loopexit3133.us:                                 ; preds = %.lr.ph.i18.i3078.us, %bb.ql
  %.lcssa.i17.i3077.us = phi ptr [ %i.dij, %bb.ql ], [ %i.dip, %.lr.ph.i18.i3078.us ]
  store i16 %.1.i3076.us, ptr %.lcssa.i17.i3077.us, align 2, !tbaa !54
  %i.dis = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i3076.us, ptr %i.dis, align 2, !tbaa !54
  br label %bb.qt

bb.qm:                                            ; preds = %bb.qg
  %i.dit = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.dhc
  %i.diu = load i16, ptr %i.dit, align 2, !tbaa !54
  %i.div = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.diu, ptr %i.div, align 2, !tbaa !54
  br label %bb.qt

bb.qn:                                            ; preds = %bb.qf, %bb.qe
  %i.diw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.dix = load i8, ptr %i.diw, align 1, !tbaa !23
  %.not1887.us = icmp eq i8 %i.dix, 0
  br i1 %.not1887.us, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.diy = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.diz = load i16, ptr %i.diy, align 2, !tbaa !54
  %i.dja = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.diz, ptr %i.dja, align 2, !tbaa !54
  br label %bb.qt

bb.qp:                                            ; preds = %bb.qn, %bb.qb
  %i.djb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.13360.us, ptr %i.djb, align 2, !tbaa !54
  %i.djc = zext i16 %.13360.us to i64
  %i.djd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.djc
  store i16 %.13360.us, ptr %i.djd, align 2, !tbaa !54
  %.not.i3081.us = icmp eq i16 %.13360.us, -1
  br i1 %.not.i3081.us, label %.split3377.us.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3083.us

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3083.us: ; preds = %bb.qp
  %i.dje = add nuw i16 %.13360.us, 1
  br label %bb.qt

bb.qq:                                            ; preds = %bb.qa
  br i1 %i.br, label %bb.qr, label %.critedge2063.us

bb.qr:                                            ; preds = %bb.qq
  %i.djf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dgt
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !23
  %.not1881.us = icmp eq i8 %i.djg, 0
  br i1 %.not1881.us, label %.critedge2063.us, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.djh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.13360.us, ptr %i.djh, align 2, !tbaa !54
  %i.dji = zext i16 %.13360.us to i64
  %i.djj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dji
  store i16 %.13360.us, ptr %i.djj, align 2, !tbaa !54
  %.not.i3084.us = icmp eq i16 %.13360.us, -1
  br i1 %.not.i3084.us, label %.split3377.us.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3086.us

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3086.us: ; preds = %bb.qs
  %i.djk = add nuw i16 %.13360.us, 1
  br label %bb.qt

.critedge2063.us:                                 ; preds = %bb.qr, %bb.qq, %bb.pz
  %i.djl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 0, ptr %i.djl, align 2, !tbaa !54
  br label %bb.qt

bb.qt:                                            ; preds = %.critedge2063.us, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3086.us, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3083.us, %bb.qo, %bb.qm, %.loopexit3133.us, %bb.qi, %bb.qd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3066.us, %bb.py, %bb.pw, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3063.us, %bb.ps, %bb.pq, %.loopexit3134.us, %bb.pm, %bb.ph, %bb.pf, %.loopexit3135.us, %.loopexit3136.us, %.loopexit3137.us, %bb.ov, %bb.os, %.loopexit3138.us, %.loopexit3139.us, %bb.og, %bb.of, %bb.oe, %.loopexit3141.us, %.loopexit3142.us, %.loopexit3143.us, %.loopexit3144.us, %bb.nm, %bb.nl, %bb.nj, %.loopexit3145.us, %bb.nc, %bb.na, %.loopexit3146.us, %.loopexit3147.us, %.loopexit3148.us, %bb.mk, %bb.mj, %bb.mh, %.loopexit3149.us, %bb.ma, %bb.ly, %.thread3102.us, %.loopexit3150.us, %.loopexit3151.us, %.loopexit3152.us, %.loopexit3153.us, %bb.lf, %bb.lc, %bb.kz, %.loopexit3154.us, %.loopexit3155.us, %.loopexit3156.us, %bb.kl, %bb.ki, %bb.kf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2738.us, %bb.jv, %bb.js, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit.us, %bb.jp, %bb.jm, %bb.jk, %.loopexit3157.us, %.loopexit3158.us, %bb.jd, %.loopexit3159.us, %bb.iv, %bb.io, %.loopexit3160.us, %bb.ik, %bb.ig, %bb.id, %.loopexit3161.us, %.loopexit3162.us, %.loopexit3163.us, %bb.ht, %.loopexit3164.us, %bb.hl, %bb.hh, %.loopexit3165.us, %.loopexit3166.us, %.loopexit3167.us, %bb.gx, %.loopexit3168.us, %bb.gp, %.loopexit3169.us, %.loopexit3170.us, %.loopexit3172.us, %.loopexit3174.us, %.loopexit3175.us, %.loopexit3177.us, %.loopexit3178.us, %.loopexit3179.us, %.loopexit3181.us, %.loopexit3183.us, %.loopexit3184.us, %.loopexit3185.us, %.loopexit3186.us, %bb.eg, %bb.ee, %.loopexit3187.us, %.loopexit3188.us, %bb.dt, %bb.dr, %.loopexit3189.us, %.loopexit3190.us, %.loopexit3192.us, %.loopexit3193.us, %.loopexit3194.us, %.loopexit3195.us, %.loopexit3196.us, %bb.ci, %bb.cg, %.loopexit3197.us, %bb.bz, %bb.bx, %bb.bp, %bb.bo, %.loopexit3198.us, %.loopexit3199.us, %.loopexit3200.us, %.loopexit3201.us, %bb.bb, %bb.ay, %bb.av, %.loopexit3202.us, %.loopexit3203.us, %.loopexit3204.us, %bb.af, %bb.ac, %bb.z
  %.2.us = phi i16 [ %.13360.us, %bb.z ], [ %.13360.us, %bb.ac ], [ %.13360.us, %bb.af ], [ %.13360.us, %.loopexit3204.us ], [ %.13360.us, %.loopexit3203.us ], [ %.13360.us, %.loopexit3202.us ], [ %.13360.us, %bb.av ], [ %.13360.us, %bb.ay ], [ %.13360.us, %bb.bb ], [ %.13360.us, %.loopexit3201.us ], [ %.13360.us, %.loopexit3200.us ], [ %.13360.us, %.loopexit3199.us ], [ %.13360.us, %.loopexit3198.us ], [ %.13360.us, %bb.bo ], [ %.13360.us, %bb.bp ], [ %.13360.us, %bb.bx ], [ %.13360.us, %bb.bz ], [ %.13360.us, %.loopexit3197.us ], [ %.13360.us, %bb.cg ], [ %.13360.us, %bb.ci ], [ %.13360.us, %.loopexit3196.us ], [ %.13360.us, %.loopexit3195.us ], [ %.13360.us, %.loopexit3194.us ], [ %.13360.us, %.loopexit3193.us ], [ %.13360.us, %.loopexit3192.us ], [ %.13360.us, %.loopexit3190.us ], [ %.13360.us, %.loopexit3189.us ], [ %.13360.us, %bb.dr ], [ %.13360.us, %bb.dt ], [ %.13360.us, %.loopexit3188.us ], [ %.13360.us, %.loopexit3187.us ], [ %.13360.us, %bb.ee ], [ %.13360.us, %bb.eg ], [ %.13360.us, %.loopexit3186.us ], [ %.13360.us, %.loopexit3185.us ], [ %.13360.us, %.loopexit3184.us ], [ %.13360.us, %.loopexit3183.us ], [ %.13360.us, %.loopexit3181.us ], [ %.13360.us, %.loopexit3179.us ], [ %.13360.us, %.loopexit3178.us ], [ %.13360.us, %.loopexit3177.us ], [ %.13360.us, %.loopexit3175.us ], [ %.13360.us, %.loopexit3174.us ], [ %.13360.us, %.loopexit3172.us ], [ %.13360.us, %.loopexit3170.us ], [ %.13360.us, %.loopexit3169.us ], [ %.13360.us, %bb.gp ], [ %.13360.us, %.loopexit3168.us ], [ %.13360.us, %bb.gx ], [ %.13360.us, %.loopexit3167.us ], [ %.13360.us, %.loopexit3166.us ], [ %.13360.us, %.loopexit3165.us ], [ %.13360.us, %bb.hh ], [ %.13360.us, %bb.hl ], [ %.13360.us, %.loopexit3164.us ], [ %.13360.us, %bb.ht ], [ %.13360.us, %.loopexit3163.us ], [ %.13360.us, %.loopexit3162.us ], [ %.13360.us, %.loopexit3161.us ], [ %.13360.us, %bb.id ], [ %.13360.us, %bb.ig ], [ %.13360.us, %bb.ik ], [ %.13360.us, %.loopexit3160.us ], [ %.13360.us, %bb.io ], [ %.13360.us, %bb.iv ], [ %.13360.us, %.loopexit3159.us ], [ %.13360.us, %bb.jd ], [ %.13360.us, %.loopexit3158.us ], [ %.13360.us, %.loopexit3157.us ], [ %.13360.us, %bb.jk ], [ %.13360.us, %bb.jm ], [ %.13360.us, %bb.jp ], [ %i.bua, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit.us ], [ %.13360.us, %bb.js ], [ %.13360.us, %bb.jv ], [ %i.bup, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2738.us ], [ %.13360.us, %bb.kf ], [ %.13360.us, %bb.ki ], [ %.13360.us, %bb.kl ], [ %.13360.us, %.loopexit3156.us ], [ %.13360.us, %.loopexit3155.us ], [ %.13360.us, %.loopexit3154.us ], [ %.13360.us, %bb.kz ], [ %.13360.us, %bb.lc ], [ %.13360.us, %bb.lf ], [ %.13360.us, %.loopexit3153.us ], [ %.13360.us, %.loopexit3152.us ], [ %.13360.us, %.loopexit3151.us ], [ %.13360.us, %.loopexit3150.us ], [ %.13360.us, %.thread3102.us ], [ %.13360.us, %bb.ly ], [ %.13360.us, %bb.ma ], [ %.13360.us, %.loopexit3149.us ], [ %.13360.us, %bb.mh ], [ %.13360.us, %bb.mj ], [ %.13360.us, %bb.mk ], [ %.13360.us, %.loopexit3148.us ], [ %.13360.us, %.loopexit3147.us ], [ %.13360.us, %.loopexit3146.us ], [ %.13360.us, %bb.na ], [ %.13360.us, %bb.nc ], [ %.13360.us, %.loopexit3145.us ], [ %.13360.us, %bb.nj ], [ %.13360.us, %bb.nl ], [ %.13360.us, %bb.nm ], [ %.13360.us, %.loopexit3144.us ], [ %.13360.us, %.loopexit3143.us ], [ %.13360.us, %.loopexit3142.us ], [ %.13360.us, %.loopexit3141.us ], [ %.13360.us, %bb.oe ], [ %.13360.us, %bb.of ], [ %.13360.us, %bb.og ], [ %.13360.us, %.loopexit3139.us ], [ %.13360.us, %.loopexit3138.us ], [ %.13360.us, %bb.os ], [ %.13360.us, %bb.ov ], [ %.13360.us, %.loopexit3137.us ], [ %.13360.us, %.loopexit3136.us ], [ %.13360.us, %.loopexit3135.us ], [ %.13360.us, %bb.pf ], [ %.13360.us, %bb.ph ], [ %.13360.us, %bb.pm ], [ %.13360.us, %.loopexit3134.us ], [ %.13360.us, %bb.pq ], [ %.13360.us, %bb.ps ], [ %i.dgd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3063.us ], [ %.13360.us, %bb.pw ], [ %.13360.us, %bb.py ], [ %i.dgs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3066.us ], [ %.13360.us, %bb.qd ], [ %.13360.us, %bb.qi ], [ %.13360.us, %.loopexit3133.us ], [ %.13360.us, %bb.qm ], [ %.13360.us, %bb.qo ], [ %i.dje, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3083.us ], [ %i.djk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3086.us ], [ %.13360.us, %.critedge2063.us ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.djm = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.djm, label %bb.t, label %._crit_edge.us, !llvm.loop !111

._crit_edge.us:                                   ; preds = %bb.qt
  %indvars.iv.next3548 = add nuw nsw i64 %indvars.iv3547, 2 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next3548 to i32
  %12 = icmp sgt i32 %i.b, %11
  br i1 %12, label %.lr.ph.us, label %._crit_edge3366, !llvm.loop !112

._crit_edge3366:                                  ; preds = %._crit_edge.us
  %i.djn = icmp ugt i16 %.2.us, 1
  br i1 %i.djn, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3366
  %wide.trip.count.i = zext i16 %.2.us to i64
  %i.djo = add nsw i64 %wide.trip.count.i, -1     ; 3 uses
  %xtraiter = and i64 %i.djo, 1
  %i.djp = icmp eq i16 %.2.us, 2
  br i1 %i.djp, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.djo, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.qy, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.qy ] ; 5 uses
  %.01517.i = phi i16 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.qy ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.qy ]
  %i.djq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i ; 2 uses
  %i.djr = load i16, ptr %i.djq, align 2, !tbaa !54
  %i.djs = zext i16 %i.djr to i64                 ; 2 uses
  %i.djt = icmp samesign ugt i64 %indvars.iv.i, %i.djs
  br i1 %i.djt, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %.lr.ph.i
  %i.dju = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.djs
  %i.djv = load i16, ptr %i.dju, align 2, !tbaa !54
  br label %.lr.ph.i.1

bb.qv:                                            ; preds = %.lr.ph.i
  %i.djw = add i16 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.qv, %bb.qu
  %.01517.sink.i = phi i16 [ %i.djv, %bb.qu ], [ %.01517.i, %bb.qv ]
  %.1.i = phi i16 [ %.01517.i, %bb.qu ], [ %i.djw, %bb.qv ] ; 3 uses
  store i16 %.01517.sink.i, ptr %i.djq, align 2, !tbaa !54
  %i.djx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djx, i64 2 ; 2 uses
  %i.djz = load i16, ptr %i.djy, align 2, !tbaa !54
  %i.dka = zext i16 %i.djz to i64                 ; 2 uses
  %.not4301 = icmp samesign ult i64 %indvars.iv.i, %i.dka
  br i1 %.not4301, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %.lr.ph.i.1
  %i.dkb = add i16 %.1.i, 1
  br label %bb.qy

bb.qx:                                            ; preds = %.lr.ph.i.1
  %i.dkc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dka
  %i.dkd = load i16, ptr %i.dkc, align 2, !tbaa !54
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw
  %.01517.sink.i.1 = phi i16 [ %i.dkd, %bb.qx ], [ %.1.i, %bb.qw ]
  %.1.i.1 = phi i16 [ %.1.i, %bb.qx ], [ %i.dkb, %bb.qw ] ; 3 uses
  store i16 %.01517.sink.i.1, ptr %i.djy, align 2, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.qy
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i16 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4300 = trunc i64 %i.djo to i1
  tail call void @llvm.assume(i1 %lcmp.mod4300)
  %i.dke = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dkf = load i16, ptr %i.dke, align 2, !tbaa !54
  %i.dkg = zext i16 %i.dkf to i64                 ; 2 uses
  %i.dkh = icmp samesign ugt i64 %indvars.iv.i.epil.init, %i.dkg
  br i1 %i.dkh, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.dki = add i16 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.ra:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.dkj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dkg
  %i.dkk = load i16, ptr %i.dkj, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.ra, %bb.qz
  %.01517.sink.i.epil = phi i16 [ %i.dkk, %bb.ra ], [ %.01517.i.epil.init, %bb.qz ]
  %.1.i.epil = phi i16 [ %.01517.i.epil.init, %bb.ra ], [ %i.dki, %bb.qz ]
  store i16 %.01517.sink.i.epil, ptr %i.dke, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph3365, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, %._crit_edge3366
  %.015.lcssa.i = phi i16 [ 1, %._crit_edge3366 ], [ 1, %.lr.ph3365 ], [ 1, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa ]
  %i.dkl = load i32, ptr %i.c, align 8, !tbaa !32 ; 6 uses
  %i.dkm = and i32 %i.dkl, 1
  %.not = icmp eq i32 %i.dkm, 0
  %i.dkn = load i32, ptr %i.o, align 4, !tbaa !53 ; 9 uses
  %i.dko = and i32 %i.dkn, 1
  %.not1855 = icmp eq i32 %i.dko, 0               ; 2 uses
  %i.dkp = icmp sgt i32 %i.dkl, 0                 ; 4 uses
  br i1 %.not, label %bb.sa, label %bb.rb

.thread:                                          ; preds = %.split3377.us.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.dkq = ptrtoint ptr %.sroa.03089.0 to i64
  %i.dkr = sub i64 %.sroa.10.0, %i.dkq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03089.0, i64 noundef %i.dkr) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.split3377.us.invoke:                             ; preds = %bb.qs, %bb.qp, %.critedge2060.us, %bb.pt, %.thread3100.us, %.thread3098.us
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_E15__cv_check__269) #16
          to label %.split3377.us.cont unwind label %.thread

.split3377.us.cont:                               ; preds = %.split3377.us.invoke
  unreachable

bb.rb:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  br i1 %.not1855, label %.preheader3129, label %.preheader3131

.preheader3131:                                   ; preds = %bb.rb
  br i1 %i.dkp, label %.lr.ph3380, label %.loopexit

.lr.ph3380:                                       ; preds = %.preheader3131
  %i.dks = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !56
  %i.dku = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dkv = load i64, ptr %i.dku, align 8, !tbaa !34 ; 2 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dkx = load ptr, ptr %i.dkw, align 8, !tbaa !56
  %i.dky = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dkz = load i64, ptr %i.dky, align 8, !tbaa !34 ; 2 uses
  %i.dla = icmp sgt i32 %i.dkn, 0
  br i1 %i.dla, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph3380
  %i.dlb = zext nneg i32 %i.dkn to i64            ; 3 uses
  %i.dlc = zext nneg i32 %i.dkl to i64            ; 2 uses
  br label %.lr.ph

.preheader3129:                                   ; preds = %bb.rb
  br i1 %i.dkp, label %.lr.ph3386, label %.loopexit

.lr.ph3386:                                       ; preds = %.preheader3129
  %i.dld = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dle = load ptr, ptr %i.dld, align 8, !tbaa !56
  %i.dlf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dlg = load i64, ptr %i.dlf, align 8, !tbaa !34 ; 2 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dli = load ptr, ptr %i.dlh, align 8, !tbaa !56
  %i.dlj = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dlk = load i64, ptr %i.dlj, align 8, !tbaa !34 ; 2 uses
  %i.dll = icmp sgt i32 %i.dkn, 0
  br i1 %i.dll, label %.lr.ph3383.preheader, label %.loopexit

.lr.ph3383.preheader:                             ; preds = %.lr.ph3386
  %i.dlm = zext nneg i32 %i.dkn to i64            ; 2 uses
  %i.dln = zext nneg i32 %i.dkl to i64            ; 2 uses
  br label %.lr.ph3383

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv3552 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next3553, %._crit_edge ] ; 4 uses
  %i.dlo = mul i64 %i.dkv, %indvars.iv3552
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dkt, i64 %i.dlo ; 3 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %i.dkv ; 3 uses
  %i.dlr = mul i64 %i.dkz, %indvars.iv3552
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dkx, i64 %i.dlr ; 4 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dls, i64 %i.dkz ; 6 uses
  %i.dlu = or disjoint i64 %indvars.iv3552, 1
  %i.dlv = icmp samesign ult i64 %i.dlu, %i.dlc   ; 4 uses
  br label %bb.rc

._crit_edge:                                      ; preds = %bb.rr
  %indvars.iv.next3553 = add nuw nsw i64 %indvars.iv3552, 2 ; 2 uses
  %i.dlw = icmp samesign ult i64 %indvars.iv.next3553, %i.dlc
  br i1 %i.dlw, label %.lr.ph, label %.loopexit, !llvm.loop !113

bb.rc:                                            ; preds = %.lr.ph, %bb.rr
  %indvars.iv3549 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3550, %bb.rr ] ; 11 uses
  %i.dlx = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3549 ; 2 uses
  %i.dly = load i16, ptr %i.dlx, align 2, !tbaa !54 ; 2 uses
  %.not1872 = icmp eq i16 %i.dly, 0
  br i1 %.not1872, label %bb.rm, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.dlz = zext i16 %i.dly to i64
  %i.dma = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dlz
  %i.dmb = load i16, ptr %i.dma, align 2, !tbaa !54 ; 5 uses
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %indvars.iv3549
  %i.dmd = load i8, ptr %i.dmc, align 1, !tbaa !23
  %.not1873 = icmp eq i8 %i.dmd, 0
  %. = select i1 %.not1873, i16 0, i16 %i.dmb
  store i16 %., ptr %i.dlx, align 2, !tbaa !54
  %i.dme = or disjoint i64 %indvars.iv3549, 1     ; 5 uses
  %i.dmf = icmp samesign ult i64 %i.dme, %i.dlb
  br i1 %i.dmf, label %bb.re, label %bb.ri

end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %i.doz, label %.lr.ph3389.preheader, label %.loopexit

.lr.ph3389.preheader:                             ; preds = %.lr.ph3392
  %i.dpa = zext nneg i32 %i.dkn to i64            ; 3 uses
  %i.dpb = zext nneg i32 %i.dkl to i64
  br label %.lr.ph3389

.preheader:                                       ; preds = %bb.sa
  br i1 %i.dkp, label %.lr.ph3398, label %.loopexit

.lr.ph3398:                                       ; preds = %.preheader
  %i.dpc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dpd = load ptr, ptr %i.dpc, align 8, !tbaa !56
  %i.dpe = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dpf = load i64, ptr %i.dpe, align 8, !tbaa !34 ; 2 uses
  %i.dpg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dph = load ptr, ptr %i.dpg, align 8, !tbaa !56
  %i.dpi = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dpj = load i64, ptr %i.dpi, align 8, !tbaa !34 ; 2 uses
  %i.dpk = icmp sgt i32 %i.dkn, 0
  br i1 %i.dpk, label %.lr.ph3395.preheader, label %.loopexit

.lr.ph3395.preheader:                             ; preds = %.lr.ph3398
  %i.dpl = zext nneg i32 %i.dkn to i64
  %i.dpm = zext nneg i32 %i.dkl to i64
  br label %.lr.ph3395

.lr.ph3389:                                       ; preds = %.lr.ph3389.preheader, %._crit_edge3390
  %indvars.iv3567 = phi i64 [ 0, %.lr.ph3389.preheader ], [ %indvars.iv.next3568, %._crit_edge3390 ] ; 3 uses
  %i.dpn = mul i64 %i.dou, %indvars.iv3567
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dos, i64 %i.dpn ; 3 uses
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpo, i64 %i.dou ; 2 uses
  %i.dpq = mul i64 %i.doy, %indvars.iv3567
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dow, i64 %i.dpq ; 4 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpr, i64 %i.doy ; 3 uses
  br label %bb.sb

._crit_edge3390:                                  ; preds = %bb.sg
  %indvars.iv.next3568 = add nuw nsw i64 %indvars.iv3567, 2 ; 2 uses
  %i.dpt = icmp samesign ult i64 %indvars.iv.next3568, %i.dpb
  br i1 %i.dpt, label %.lr.ph3389, label %.loopexit, !llvm.loop !117

bb.sb:                                            ; preds = %.lr.ph3389, %bb.sg
  %indvars.iv3564 = phi i64 [ 0, %.lr.ph3389 ], [ %indvars.iv.next3565, %bb.sg ] ; 8 uses
  %i.dpu = getelementptr inbounds nuw [2 x i8], ptr %i.dpr, i64 %indvars.iv3564 ; 2 uses
  %i.dpv = load i16, ptr %i.dpu, align 2, !tbaa !54 ; 2 uses
  %.not1861 = icmp eq i16 %i.dpv, 0
  br i1 %.not1861, label %bb.se, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.dpw = zext i16 %i.dpv to i64
  %i.dpx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dpw
  %i.dpy = load i16, ptr %i.dpx, align 2, !tbaa !54 ; 4 uses
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpo, i64 %indvars.iv3564
  %i.dqa = load i8, ptr %i.dpz, align 1, !tbaa !23
  %.not1862 = icmp eq i8 %i.dqa, 0
  %.3125 = select i1 %.not1862, i16 0, i16 %i.dpy
  store i16 %.3125, ptr %i.dpu, align 2, !tbaa !54
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dpp, i64 %indvars.iv3564
  %i.dqc = load i8, ptr %i.dqb, align 1, !tbaa !23
  %.not1863 = icmp eq i8 %i.dqc, 0
  %spec.select3993 = select i1 %.not1863, i16 0, i16 %i.dpy
  %i.dqd = getelementptr inbounds nuw [2 x i8], ptr %i.dps, i64 %indvars.iv3564
  store i16 %spec.select3993, ptr %i.dqd, align 2, !tbaa !54
  %i.dqe = or disjoint i64 %indvars.iv3564, 1     ; 5 uses
  %i.dqf = icmp samesign ult i64 %i.dqe, %i.dpa
  br i1 %i.dqf, label %bb.sd, label %bb.sg

bb.sd:                                            ; preds = %bb.sc
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dpo, i64 %i.dqe
  %i.dqh = load i8, ptr %i.dqg, align 1, !tbaa !23
  %.not1864 = icmp eq i8 %i.dqh, 0
  %spec.select3994 = select i1 %.not1864, i16 0, i16 %i.dpy
  %i.dqi = getelementptr inbounds nuw [2 x i8], ptr %i.dpr, i64 %i.dqe
  store i16 %spec.select3994, ptr %i.dqi, align 2, !tbaa !54
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dpp, i64 %i.dqe
  %i.dqk = load i8, ptr %i.dqj, align 1, !tbaa !23
  %.not1865 = icmp eq i8 %i.dqk, 0
  %.4002 = select i1 %.not1865, i16 0, i16 %i.dpy
  br label %.sink.split

bb.se:                                            ; preds = %bb.sb
  %i.dql = getelementptr inbounds nuw [2 x i8], ptr %i.dps, i64 %indvars.iv3564
  store i16 0, ptr %i.dql, align 2, !tbaa !54
  %i.dqm = or disjoint i64 %indvars.iv3564, 1     ; 3 uses
  %i.dqn = icmp samesign ult i64 %i.dqm, %i.dpa
  br i1 %i.dqn, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  %i.dqo = getelementptr inbounds nuw [2 x i8], ptr %i.dpr, i64 %i.dqm
  store i16 0, ptr %i.dqo, align 2, !tbaa !54
  br label %.sink.split

.sink.split:                                      ; preds = %bb.sd, %bb.sf
  %.sink3997 = phi i64 [ %i.dqm, %bb.sf ], [ %i.dqe, %bb.sd ]
  %.sink3995 = phi i16 [ 0, %bb.sf ], [ %.4002, %bb.sd ]
  %i.dqp = getelementptr inbounds nuw [2 x i8], ptr %i.dps, i64 %.sink3997
  store i16 %.sink3995, ptr %i.dqp, align 2, !tbaa !54
  br label %bb.sg

bb.sg:                                            ; preds = %.sink.split, %bb.se, %bb.sc
  %indvars.iv.next3565 = add nuw nsw i64 %indvars.iv3564, 2 ; 2 uses
  %i.dqq = icmp samesign ult i64 %indvars.iv.next3565, %i.dpa
  br i1 %i.dqq, label %bb.sb, label %._crit_edge3390, !llvm.loop !118

.lr.ph3395:                                       ; preds = %.lr.ph3395.preheader, %._crit_edge3396
  %indvars.iv3573 = phi i64 [ 0, %.lr.ph3395.preheader ], [ %indvars.iv.next3574, %._crit_edge3396 ] ; 3 uses
  %i.dqr = mul i64 %i.dpf, %indvars.iv3573
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dpd, i64 %i.dqr ; 3 uses
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqs, i64 %i.dpf ; 2 uses
  %i.dqu = mul i64 %i.dpj, %indvars.iv3573
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dph, i64 %i.dqu ; 4 uses
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dqv, i64 %i.dpj ; 3 uses
  br label %bb.sh

._crit_edge3396:                                  ; preds = %bb.sk
  %indvars.iv.next3574 = add nuw nsw i64 %indvars.iv3573, 2 ; 2 uses
  %i.dqx = icmp samesign ult i64 %indvars.iv.next3574, %i.dpm
  br i1 %i.dqx, label %.lr.ph3395, label %.loopexit, !llvm.loop !119

bb.sh:                                            ; preds = %.lr.ph3395, %bb.sk
  %indvars.iv3570 = phi i64 [ 0, %.lr.ph3395 ], [ %indvars.iv.next3571, %bb.sk ] ; 8 uses
  %i.dqy = getelementptr inbounds nuw [2 x i8], ptr %i.dqv, i64 %indvars.iv3570 ; 2 uses
  %i.dqz = load i16, ptr %i.dqy, align 2, !tbaa !54 ; 2 uses
  %.not1856 = icmp eq i16 %i.dqz, 0
  br i1 %.not1856, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.dra = zext i16 %i.dqz to i64
  %i.drb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dra
  %i.drc = load i16, ptr %i.drb, align 2, !tbaa !54 ; 4 uses
  %i.drd = getelementptr inbounds nuw i8, ptr %i.dqs, i64 %indvars.iv3570
  %i.dre = load i8, ptr %i.drd, align 1, !tbaa !23
  %.not1857 = icmp eq i8 %i.dre, 0
  %.3126 = select i1 %.not1857, i16 0, i16 %i.drc
  store i16 %.3126, ptr %i.dqy, align 2, !tbaa !54
  %i.drf = or disjoint i64 %indvars.iv3570, 1     ; 4 uses
  %i.drg = getelementptr inbounds nuw i8, ptr %i.dqs, i64 %i.drf
  %i.drh = load i8, ptr %i.drg, align 1, !tbaa !23
  %.not1858 = icmp eq i8 %i.drh, 0
  %spec.select3998 = select i1 %.not1858, i16 0, i16 %i.drc
  %i.dri = getelementptr inbounds nuw [2 x i8], ptr %i.dqv, i64 %i.drf
  store i16 %spec.select3998, ptr %i.dri, align 2, !tbaa !54
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %indvars.iv3570
  %i.drk = load i8, ptr %i.drj, align 1, !tbaa !23
  %.not1859 = icmp eq i8 %i.drk, 0
  %.sink3582 = select i1 %.not1859, i16 0, i16 %i.drc
  %i.drl = getelementptr inbounds nuw [2 x i8], ptr %i.dqw, i64 %indvars.iv3570
  store i16 %.sink3582, ptr %i.drl, align 2, !tbaa !54
  %i.drm = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.drf
  %i.drn = load i8, ptr %i.drm, align 1, !tbaa !23
  %.not1860 = icmp eq i8 %i.drn, 0
  %spec.select4004 = select i1 %.not1860, i16 0, i16 %i.drc
  br label %bb.sk

bb.sj:                                            ; preds = %bb.sh
  %i.dro = or disjoint i64 %indvars.iv3570, 1     ; 2 uses
  %i.drp = getelementptr inbounds nuw [2 x i8], ptr %i.dqv, i64 %i.dro
  store i16 0, ptr %i.drp, align 2, !tbaa !54
  %i.drq = getelementptr inbounds nuw [2 x i8], ptr %i.dqw, i64 %indvars.iv3570
  store i16 0, ptr %i.drq, align 2, !tbaa !54
  br label %bb.sk

bb.sk:                                            ; preds = %bb.si, %bb.sj
  %.sink4001 = phi i64 [ %i.dro, %bb.sj ], [ %i.drf, %bb.si ]
  %.sink3999 = phi i16 [ 0, %bb.sj ], [ %spec.select4004, %bb.si ]
  %i.drr = getelementptr inbounds nuw [2 x i8], ptr %i.dqw, i64 %.sink4001
  store i16 %.sink3999, ptr %i.drr, align 2, !tbaa !54
  %indvars.iv.next3571 = add nuw nsw i64 %indvars.iv3570, 2 ; 2 uses
  %i.drs = icmp samesign ult i64 %indvars.iv.next3571, %i.dpl
  br i1 %i.drs, label %bb.sh, label %._crit_edge3396, !llvm.loop !120

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge3384, %._crit_edge3390, %._crit_edge3396, %.preheader3131, %.lr.ph3380, %.preheader3129, %.lr.ph3386, %.preheader3127, %.lr.ph3392, %.preheader, %.lr.ph3398
  %.not.i.i.i3087 = icmp eq ptr %.sroa.03089.0, null
  br i1 %.not.i.i.i3087, label %_ZNSt6vectorItSaItEED2Ev.exit3088, label %bb.sl

bb.sl:                                            ; preds = %.loopexit
  %i.drt = ptrtoint ptr %.sroa.03089.0 to i64
  %i.dru = sub i64 %.sroa.10.0, %i.drt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03089.0, i64 noundef %i.dru) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit3088

_ZNSt6vectorItSaItEED2Ev.exit3088:                ; preds = %.loopexit, %bb.sl
  ret i16 %.015.lcssa.i

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2040.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1853, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073 ], [ %.pn1851, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070 ], [ %lpad.thr_comm, %.thread ]
  resume { ptr, i32 } %.pn2040.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents13LabelingGranaIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068, %bb.k
  %.pn1855 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071, %bb.q
  %.pn1857 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc2074

.noexc2074:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !72
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc2074, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2074 ] ; 2 uses
  %.sroa.03089.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2074 ] ; 460 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3365, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph3365:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  br i1 %i.ay, label %.lr.ph.us.preheader, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph.us.preheader:                              ; preds = %.lr.ph3365
  %i.az = zext nneg i32 %i.n to i64               ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv3549 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next3550, %._crit_edge.us ] ; 5 uses
  %.017903363.us = phi i32 [ 1, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !34 ; 3 uses
  %i.bd = mul i64 %i.bc, %indvars.iv3549
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = sub i64 0, %i.bc                        ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 73 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf ; 39 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.bl = mul i64 %i.bk, %indvars.iv3549
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 221 uses
  %i.bn = sub i64 0, %i.bk                        ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bn ; 101 uses
  %.not2024.us = icmp eq i64 %indvars.iv3549, 0   ; 15 uses
  %i.bq = or disjoint i64 %indvars.iv3549, 1
  %i.br = icmp samesign ult i64 %i.bq, %i.ba      ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us, %bb.qt
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qt ] ; 265 uses
  %.13360.us = phi i32 [ %.017903363.us, %.lr.ph.us ], [ %.2.us, %bb.qt ] ; 161 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %.not1878.us = icmp eq i8 %i.bt, 0
  br i1 %.not1878.us, label %bb.jw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1952.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1952.us, label %.critedge.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %.not1953.us = icmp eq i8 %i.bw, 0
  br i1 %.not1953.us, label %bb.bq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.by = icmp samesign uge i64 %i.bx, %i.az      ; 2 uses
  %or.cond.us = or i1 %.not2024.us, %i.by
  br i1 %or.cond.us, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %.not2025.us = icmp eq i8 %i.ca, 0
  br i1 %.not2025.us, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %.not2035.us = icmp eq i8 %i.cc, 0
  br i1 %.not2035.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !72
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !72
  br label %bb.qt

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %.not2036.us = icmp eq i8 %i.ch, 0
  br i1 %.not2036.us, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %.not2037.us = icmp eq i8 %i.cj, 0
  br i1 %.not2037.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !72
  br label %bb.qt

bb.ad:                                            ; preds = %bb.ab
  %i.cn = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %.not2038.us = icmp eq i8 %i.cp, 0
  br i1 %.not2038.us, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %.not2039.us = icmp eq i8 %i.cr, 0
  br i1 %.not2039.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !72
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !72
  br label %bb.qt

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72 ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cn
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.us = phi i32 [ %i.cw, %bb.ag ], [ %i.db, %bb.ah ] ; 4 uses
  %i.cz = sext i32 %.0.i.i.us to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !72 ; 2 uses
  %i.dc = icmp slt i32 %i.db, %.0.i.i.us
  br i1 %i.dc, label %bb.ah, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %bb.ah
  %.not.i.us = icmp eq i32 %i.cw, %i.cy
  br i1 %.not.i.us, label %bb.ai, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.df, %.preheader.i.us ], [ %i.cy, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dd = sext i32 %.0.i18.i.us to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !72 ; 2 uses
  %i.dg = icmp slt i32 %i.df, %.0.i18.i.us
  br i1 %i.dg, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.dh = sext i32 %i.cy to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dh ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !72 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.cy
  br i1 %i.dk, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.dl = phi i32 [ %i.dp, %.lr.ph.i.i.us ], [ %i.dj, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i.us ], [ %i.di, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.dm, align 4, !tbaa !72
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dn ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !72 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.dl
  br i1 %i.dq, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !74

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.di, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.do, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !72
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i2075.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dr = sext i32 %i.cw to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dr ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !72 ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.cw
  br i1 %i.du, label %.lr.ph.i21.i.us, label %.loopexit3204.us

.lr.ph.i21.i.us:                                  ; preds = %bb.ai, %.lr.ph.i21.i.us
  %i.dv = phi i32 [ %i.dz, %.lr.ph.i21.i.us ], [ %i.dt, %bb.ai ] ; 2 uses
  %i.dw = phi ptr [ %i.dy, %.lr.ph.i21.i.us ], [ %i.ds, %bb.ai ]
  store i32 %.1.i2075.us, ptr %i.dw, align 4, !tbaa !72
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !72 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %i.dv
  br i1 %i.ea, label %.lr.ph.i21.i.us, label %.loopexit3204.us, !llvm.loop !74

.loopexit3204.us:                                 ; preds = %.lr.ph.i21.i.us, %bb.ai
  %.lcssa.i20.i.us = phi ptr [ %i.ds, %bb.ai ], [ %i.dy, %.lr.ph.i21.i.us ]
  store i32 %.1.i2075.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !72
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2075.us, ptr %i.eb, align 4, !tbaa !72
  br label %bb.qt

bb.aj:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !72 ; 4 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cn
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !72 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i2076.us = phi i32 [ %i.ed, %bb.aj ], [ %i.ei, %bb.ak ] ; 4 uses
  %i.eg = sext i32 %.0.i.i2076.us to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !72 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %.0.i.i2076.us
  br i1 %i.ej, label %bb.ak, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us: ; preds = %bb.ak
  %.not.i2078.us = icmp eq i32 %i.ed, %i.ef
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.pz:                                            ; preds = %bb.jx, %bb.jw
  %i.dgt = or disjoint i64 %indvars.iv, 1         ; 5 uses
  %i.dgu = icmp samesign ult i64 %i.dgt, %i.az
  br i1 %i.dgu, label %bb.qa, label %.critedge2063.us

bb.qa:                                            ; preds = %bb.pz
  %i.dgv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dgt
  %i.dgw = load i8, ptr %i.dgv, align 1, !tbaa !23
  %.not1880.us = icmp eq i8 %i.dgw, 0
  br i1 %.not1880.us, label %bb.qq, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  br i1 %.not2024.us, label %bb.qp, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dgt
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !23
  %.not1883.us = icmp eq i8 %i.dgy, 0
  br i1 %.not1883.us, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.dgz = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.dha = load i32, ptr %i.dgz, align 4, !tbaa !72
  %i.dhb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.dha, ptr %i.dhb, align 4, !tbaa !72
  br label %bb.qt

bb.qe:                                            ; preds = %bb.qc
  %i.dhc = add nuw nsw i64 %indvars.iv, 2         ; 5 uses
  %.not3122.us = icmp samesign ult i64 %i.dhc, %i.az
  br i1 %.not3122.us, label %bb.qf, label %bb.qn

bb.qf:                                            ; preds = %bb.qe
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dhc
  %i.dhe = load i8, ptr %i.dhd, align 1, !tbaa !23
  %.not1885.us = icmp eq i8 %i.dhe, 0
  br i1 %.not1885.us, label %bb.qn, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.dhg = load i8, ptr %i.dhf, align 1, !tbaa !23
  %.not1888.us = icmp eq i8 %i.dhg, 0
  br i1 %.not1888.us, label %bb.qm, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dgt
  %i.dhi = load i8, ptr %i.dhh, align 1, !tbaa !23
  %.not1889.us = icmp eq i8 %i.dhi, 0
  br i1 %.not1889.us, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dhj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dhc
  %i.dhk = load i32, ptr %i.dhj, align 4, !tbaa !72
  %i.dhl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.dhk, ptr %i.dhl, align 4, !tbaa !72
  br label %bb.qt

bb.qj:                                            ; preds = %bb.qh
  %i.dhm = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.dhn = load i32, ptr %i.dhm, align 4, !tbaa !72 ; 4 uses
  %i.dho = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dhc
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !72 ; 4 uses
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qk, %bb.qj
  %.0.i.i3067.us = phi i32 [ %i.dhn, %bb.qj ], [ %i.dhs, %bb.qk ] ; 4 uses
  %i.dhq = sext i32 %.0.i.i3067.us to i64
  %i.dhr = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dhq
  %i.dhs = load i32, ptr %i.dhr, align 4, !tbaa !72 ; 2 uses
  %i.dht = icmp slt i32 %i.dhs, %.0.i.i3067.us
  br i1 %i.dht, label %bb.qk, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us: ; preds = %bb.qk
  %.not.i3069.us = icmp eq i32 %i.dhn, %i.dhp
  br i1 %.not.i3069.us, label %bb.ql, label %.preheader.i3070.us

.preheader.i3070.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us, %.preheader.i3070.us
  %.0.i18.i3071.us = phi i32 [ %i.dhw, %.preheader.i3070.us ], [ %i.dhp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us ] ; 3 uses
  %i.dhu = sext i32 %.0.i18.i3071.us to i64
  %i.dhv = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dhu
  %i.dhw = load i32, ptr %i.dhv, align 4, !tbaa !72 ; 2 uses
  %i.dhx = icmp slt i32 %i.dhw, %.0.i18.i3071.us
  br i1 %i.dhx, label %.preheader.i3070.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us: ; preds = %.preheader.i3070.us
  %spec.select.i3073.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i3067.us, i32 %.0.i18.i3071.us) ; 3 uses
  %i.dhy = sext i32 %i.dhp to i64
  %i.dhz = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dhy ; 3 uses
  %i.dia = load i32, ptr %i.dhz, align 4, !tbaa !72 ; 2 uses
  %i.dib = icmp slt i32 %i.dia, %i.dhp
  br i1 %i.dib, label %.lr.ph.i.i3079.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i3074.us

.lr.ph.i.i3079.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us, %.lr.ph.i.i3079.us
  %i.dic = phi i32 [ %i.dig, %.lr.ph.i.i3079.us ], [ %i.dia, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us ] ; 2 uses
  %i.did = phi ptr [ %i.dif, %.lr.ph.i.i3079.us ], [ %i.dhz, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us ]
  store i32 %spec.select.i3073.us, ptr %i.did, align 4, !tbaa !72
  %i.die = sext i32 %i.dic to i64
  %i.dif = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.die ; 3 uses
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !72 ; 2 uses
  %i.dih = icmp slt i32 %i.dig, %i.dic
  br i1 %i.dih, label %.lr.ph.i.i3079.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i3074.us, !llvm.loop !74

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i3074.us: ; preds = %.lr.ph.i.i3079.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us
  %.lcssa.i.i3075.us = phi ptr [ %i.dhz, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i3072.us ], [ %i.dif, %.lr.ph.i.i3079.us ]
  store i32 %spec.select.i3073.us, ptr %.lcssa.i.i3075.us, align 4, !tbaa !72
  br label %bb.ql

bb.ql:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i3074.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us
  %.1.i3076.us = phi i32 [ %spec.select.i3073.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i3074.us ], [ %.0.i.i3067.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i3068.us ] ; 3 uses
  %i.dii = sext i32 %i.dhn to i64
  %i.dij = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dii ; 3 uses
  %i.dik = load i32, ptr %i.dij, align 4, !tbaa !72 ; 2 uses
  %i.dil = icmp slt i32 %i.dik, %i.dhn
  br i1 %i.dil, label %.lr.ph.i21.i3078.us, label %.loopexit3133.us

.lr.ph.i21.i3078.us:                              ; preds = %bb.ql, %.lr.ph.i21.i3078.us
  %i.dim = phi i32 [ %i.diq, %.lr.ph.i21.i3078.us ], [ %i.dik, %bb.ql ] ; 2 uses
  %i.din = phi ptr [ %i.dip, %.lr.ph.i21.i3078.us ], [ %i.dij, %bb.ql ]
  store i32 %.1.i3076.us, ptr %i.din, align 4, !tbaa !72
  %i.dio = sext i32 %i.dim to i64
  %i.dip = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dio ; 3 uses
  %i.diq = load i32, ptr %i.dip, align 4, !tbaa !72 ; 2 uses
  %i.dir = icmp slt i32 %i.diq, %i.dim
  br i1 %i.dir, label %.lr.ph.i21.i3078.us, label %.loopexit3133.us, !llvm.loop !74

.loopexit3133.us:                                 ; preds = %.lr.ph.i21.i3078.us, %bb.ql
  %.lcssa.i20.i3077.us = phi ptr [ %i.dij, %bb.ql ], [ %i.dip, %.lr.ph.i21.i3078.us ]
  store i32 %.1.i3076.us, ptr %.lcssa.i20.i3077.us, align 4, !tbaa !72
  %i.dis = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i3076.us, ptr %i.dis, align 4, !tbaa !72
  br label %bb.qt

bb.qm:                                            ; preds = %bb.qg
  %i.dit = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dhc
  %i.diu = load i32, ptr %i.dit, align 4, !tbaa !72
  %i.div = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.diu, ptr %i.div, align 4, !tbaa !72
  br label %bb.qt

bb.qn:                                            ; preds = %bb.qf, %bb.qe
  %i.diw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.dix = load i8, ptr %i.diw, align 1, !tbaa !23
  %.not1887.us = icmp eq i8 %i.dix, 0
  br i1 %.not1887.us, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.diy = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.diz = load i32, ptr %i.diy, align 4, !tbaa !72
  %i.dja = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.diz, ptr %i.dja, align 4, !tbaa !72
  br label %bb.qt

bb.qp:                                            ; preds = %bb.qn, %bb.qb
  %i.djb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.13360.us, ptr %i.djb, align 4, !tbaa !72
  %i.djc = sext i32 %.13360.us to i64
  %i.djd = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.djc
  store i32 %.13360.us, ptr %i.djd, align 4, !tbaa !72
  %.not.i3081.us = icmp eq i32 %.13360.us, 2147483647
  br i1 %.not.i3081.us, label %.split3377.us.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3083.us

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3083.us: ; preds = %bb.qp
  %i.dje = add nsw i32 %.13360.us, 1
  br label %bb.qt

bb.qq:                                            ; preds = %bb.qa
  br i1 %i.br, label %bb.qr, label %.critedge2063.us

bb.qr:                                            ; preds = %bb.qq
  %i.djf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dgt
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !23
  %.not1881.us = icmp eq i8 %i.djg, 0
  br i1 %.not1881.us, label %.critedge2063.us, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.djh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.13360.us, ptr %i.djh, align 4, !tbaa !72
  %i.dji = sext i32 %.13360.us to i64
  %i.djj = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dji
  store i32 %.13360.us, ptr %i.djj, align 4, !tbaa !72
  %.not.i3084.us = icmp eq i32 %.13360.us, 2147483647
  br i1 %.not.i3084.us, label %.split3377.us.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3086.us

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3086.us: ; preds = %bb.qs
  %i.djk = add nsw i32 %.13360.us, 1
  br label %bb.qt

.critedge2063.us:                                 ; preds = %bb.qr, %bb.qq, %bb.pz
  %i.djl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 0, ptr %i.djl, align 4, !tbaa !72
  br label %bb.qt

bb.qt:                                            ; preds = %.critedge2063.us, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3086.us, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3083.us, %bb.qo, %bb.qm, %.loopexit3133.us, %bb.qi, %bb.qd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3066.us, %bb.py, %bb.pw, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3063.us, %bb.ps, %bb.pq, %.loopexit3134.us, %bb.pm, %bb.ph, %bb.pf, %.loopexit3135.us, %.loopexit3136.us, %.loopexit3137.us, %bb.ov, %bb.os, %.loopexit3138.us, %.loopexit3139.us, %bb.og, %bb.of, %bb.oe, %.loopexit3141.us, %.loopexit3142.us, %.loopexit3143.us, %.loopexit3144.us, %bb.nm, %bb.nl, %bb.nj, %.loopexit3145.us, %bb.nc, %bb.na, %.loopexit3146.us, %.loopexit3147.us, %.loopexit3148.us, %bb.mk, %bb.mj, %bb.mh, %.loopexit3149.us, %bb.ma, %bb.ly, %.thread3102.us, %.loopexit3150.us, %.loopexit3151.us, %.loopexit3152.us, %.loopexit3153.us, %bb.lf, %bb.lc, %bb.kz, %.loopexit3154.us, %.loopexit3155.us, %.loopexit3156.us, %bb.kl, %bb.ki, %bb.kf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit2738.us, %bb.jv, %bb.js, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.us, %bb.jp, %bb.jm, %bb.jk, %.loopexit3157.us, %.loopexit3158.us, %bb.jd, %.loopexit3159.us, %bb.iv, %bb.io, %.loopexit3160.us, %bb.ik, %bb.ig, %bb.id, %.loopexit3161.us, %.loopexit3162.us, %.loopexit3163.us, %bb.ht, %.loopexit3164.us, %bb.hl, %bb.hh, %.loopexit3165.us, %.loopexit3166.us, %.loopexit3167.us, %bb.gx, %.loopexit3168.us, %bb.gp, %.loopexit3169.us, %.loopexit3170.us, %.loopexit3172.us, %.loopexit3174.us, %.loopexit3175.us, %.loopexit3177.us, %.loopexit3178.us, %.loopexit3179.us, %.loopexit3181.us, %.loopexit3183.us, %.loopexit3184.us, %.loopexit3185.us, %.loopexit3186.us, %bb.eg, %bb.ee, %.loopexit3187.us, %.loopexit3188.us, %bb.dt, %bb.dr, %.loopexit3189.us, %.loopexit3190.us, %.loopexit3192.us, %.loopexit3193.us, %.loopexit3194.us, %.loopexit3195.us, %.loopexit3196.us, %bb.ci, %bb.cg, %.loopexit3197.us, %bb.bz, %bb.bx, %bb.bp, %bb.bo, %.loopexit3198.us, %.loopexit3199.us, %.loopexit3200.us, %.loopexit3201.us, %bb.bb, %bb.ay, %bb.av, %.loopexit3202.us, %.loopexit3203.us, %.loopexit3204.us, %bb.af, %bb.ac, %bb.z
  %.2.us = phi i32 [ %.13360.us, %bb.z ], [ %.13360.us, %bb.ac ], [ %.13360.us, %bb.af ], [ %.13360.us, %.loopexit3204.us ], [ %.13360.us, %.loopexit3203.us ], [ %.13360.us, %.loopexit3202.us ], [ %.13360.us, %bb.av ], [ %.13360.us, %bb.ay ], [ %.13360.us, %bb.bb ], [ %.13360.us, %.loopexit3201.us ], [ %.13360.us, %.loopexit3200.us ], [ %.13360.us, %.loopexit3199.us ], [ %.13360.us, %.loopexit3198.us ], [ %.13360.us, %bb.bo ], [ %.13360.us, %bb.bp ], [ %.13360.us, %bb.bx ], [ %.13360.us, %bb.bz ], [ %.13360.us, %.loopexit3197.us ], [ %.13360.us, %bb.cg ], [ %.13360.us, %bb.ci ], [ %.13360.us, %.loopexit3196.us ], [ %.13360.us, %.loopexit3195.us ], [ %.13360.us, %.loopexit3194.us ], [ %.13360.us, %.loopexit3193.us ], [ %.13360.us, %.loopexit3192.us ], [ %.13360.us, %.loopexit3190.us ], [ %.13360.us, %.loopexit3189.us ], [ %.13360.us, %bb.dr ], [ %.13360.us, %bb.dt ], [ %.13360.us, %.loopexit3188.us ], [ %.13360.us, %.loopexit3187.us ], [ %.13360.us, %bb.ee ], [ %.13360.us, %bb.eg ], [ %.13360.us, %.loopexit3186.us ], [ %.13360.us, %.loopexit3185.us ], [ %.13360.us, %.loopexit3184.us ], [ %.13360.us, %.loopexit3183.us ], [ %.13360.us, %.loopexit3181.us ], [ %.13360.us, %.loopexit3179.us ], [ %.13360.us, %.loopexit3178.us ], [ %.13360.us, %.loopexit3177.us ], [ %.13360.us, %.loopexit3175.us ], [ %.13360.us, %.loopexit3174.us ], [ %.13360.us, %.loopexit3172.us ], [ %.13360.us, %.loopexit3170.us ], [ %.13360.us, %.loopexit3169.us ], [ %.13360.us, %bb.gp ], [ %.13360.us, %.loopexit3168.us ], [ %.13360.us, %bb.gx ], [ %.13360.us, %.loopexit3167.us ], [ %.13360.us, %.loopexit3166.us ], [ %.13360.us, %.loopexit3165.us ], [ %.13360.us, %bb.hh ], [ %.13360.us, %bb.hl ], [ %.13360.us, %.loopexit3164.us ], [ %.13360.us, %bb.ht ], [ %.13360.us, %.loopexit3163.us ], [ %.13360.us, %.loopexit3162.us ], [ %.13360.us, %.loopexit3161.us ], [ %.13360.us, %bb.id ], [ %.13360.us, %bb.ig ], [ %.13360.us, %bb.ik ], [ %.13360.us, %.loopexit3160.us ], [ %.13360.us, %bb.io ], [ %.13360.us, %bb.iv ], [ %.13360.us, %.loopexit3159.us ], [ %.13360.us, %bb.jd ], [ %.13360.us, %.loopexit3158.us ], [ %.13360.us, %.loopexit3157.us ], [ %.13360.us, %bb.jk ], [ %.13360.us, %bb.jm ], [ %.13360.us, %bb.jp ], [ %i.bua, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit.us ], [ %.13360.us, %bb.js ], [ %.13360.us, %bb.jv ], [ %i.bup, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit2738.us ], [ %.13360.us, %bb.kf ], [ %.13360.us, %bb.ki ], [ %.13360.us, %bb.kl ], [ %.13360.us, %.loopexit3156.us ], [ %.13360.us, %.loopexit3155.us ], [ %.13360.us, %.loopexit3154.us ], [ %.13360.us, %bb.kz ], [ %.13360.us, %bb.lc ], [ %.13360.us, %bb.lf ], [ %.13360.us, %.loopexit3153.us ], [ %.13360.us, %.loopexit3152.us ], [ %.13360.us, %.loopexit3151.us ], [ %.13360.us, %.loopexit3150.us ], [ %.13360.us, %.thread3102.us ], [ %.13360.us, %bb.ly ], [ %.13360.us, %bb.ma ], [ %.13360.us, %.loopexit3149.us ], [ %.13360.us, %bb.mh ], [ %.13360.us, %bb.mj ], [ %.13360.us, %bb.mk ], [ %.13360.us, %.loopexit3148.us ], [ %.13360.us, %.loopexit3147.us ], [ %.13360.us, %.loopexit3146.us ], [ %.13360.us, %bb.na ], [ %.13360.us, %bb.nc ], [ %.13360.us, %.loopexit3145.us ], [ %.13360.us, %bb.nj ], [ %.13360.us, %bb.nl ], [ %.13360.us, %bb.nm ], [ %.13360.us, %.loopexit3144.us ], [ %.13360.us, %.loopexit3143.us ], [ %.13360.us, %.loopexit3142.us ], [ %.13360.us, %.loopexit3141.us ], [ %.13360.us, %bb.oe ], [ %.13360.us, %bb.of ], [ %.13360.us, %bb.og ], [ %.13360.us, %.loopexit3139.us ], [ %.13360.us, %.loopexit3138.us ], [ %.13360.us, %bb.os ], [ %.13360.us, %bb.ov ], [ %.13360.us, %.loopexit3137.us ], [ %.13360.us, %.loopexit3136.us ], [ %.13360.us, %.loopexit3135.us ], [ %.13360.us, %bb.pf ], [ %.13360.us, %bb.ph ], [ %.13360.us, %bb.pm ], [ %.13360.us, %.loopexit3134.us ], [ %.13360.us, %bb.pq ], [ %.13360.us, %bb.ps ], [ %i.dgd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3063.us ], [ %.13360.us, %bb.pw ], [ %.13360.us, %bb.py ], [ %i.dgs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3066.us ], [ %.13360.us, %bb.qd ], [ %.13360.us, %bb.qi ], [ %.13360.us, %.loopexit3133.us ], [ %.13360.us, %bb.qm ], [ %.13360.us, %bb.qo ], [ %i.dje, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3083.us ], [ %i.djk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3086.us ], [ %.13360.us, %.critedge2063.us ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.djm = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.djm, label %bb.t, label %._crit_edge.us, !llvm.loop !121

._crit_edge.us:                                   ; preds = %bb.qt
  %indvars.iv.next3550 = add nuw nsw i64 %indvars.iv3549, 2 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next3550 to i32
  %12 = icmp sgt i32 %i.b, %11
  br i1 %12, label %.lr.ph.us, label %._crit_edge3366, !llvm.loop !122

._crit_edge3366:                                  ; preds = %._crit_edge.us
  %i.djn = icmp sgt i32 %.2.us, 1
  br i1 %i.djn, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3366
  %wide.trip.count.i = zext nneg i32 %.2.us to i64
  %i.djo = add nsw i64 %wide.trip.count.i, -1     ; 3 uses
  %xtraiter = and i64 %i.djo, 1
  %i.djp = icmp eq i32 %.2.us, 2
  br i1 %i.djp, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.djo, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.qy, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.qy ] ; 5 uses
  %.01517.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.qy ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.qy ]
  %i.djq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i ; 2 uses
  %i.djr = load i32, ptr %i.djq, align 4, !tbaa !72
  %i.djs = sext i32 %i.djr to i64                 ; 2 uses
  %i.djt = icmp sgt i64 %indvars.iv.i, %i.djs
  br i1 %i.djt, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %.lr.ph.i
  %i.dju = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.djs
  %i.djv = load i32, ptr %i.dju, align 4, !tbaa !72
  br label %.lr.ph.i.1

bb.qv:                                            ; preds = %.lr.ph.i
  %i.djw = add nsw i32 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.qv, %bb.qu
  %.01517.sink.i = phi i32 [ %i.djv, %bb.qu ], [ %.01517.i, %bb.qv ]
  %.1.i = phi i32 [ %.01517.i, %bb.qu ], [ %i.djw, %bb.qv ] ; 3 uses
  store i32 %.01517.sink.i, ptr %i.djq, align 4, !tbaa !72
  %i.djx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djx, i64 4 ; 2 uses
  %i.djz = load i32, ptr %i.djy, align 4, !tbaa !72
  %i.dka = sext i32 %i.djz to i64                 ; 2 uses
  %.not4316 = icmp slt i64 %indvars.iv.i, %i.dka
  br i1 %.not4316, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %.lr.ph.i.1
  %i.dkb = add nsw i32 %.1.i, 1
  br label %bb.qy

bb.qx:                                            ; preds = %.lr.ph.i.1
  %i.dkc = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dka
  %i.dkd = load i32, ptr %i.dkc, align 4, !tbaa !72
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw
  %.01517.sink.i.1 = phi i32 [ %i.dkd, %bb.qx ], [ %.1.i, %bb.qw ]
  %.1.i.1 = phi i32 [ %.1.i, %bb.qx ], [ %i.dkb, %bb.qw ] ; 3 uses
  store i32 %.01517.sink.i.1, ptr %i.djy, align 4, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !81

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.qy
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4315 = trunc i64 %i.djo to i1
  tail call void @llvm.assume(i1 %lcmp.mod4315)
  %i.dke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03089.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dkf = load i32, ptr %i.dke, align 4, !tbaa !72
  %i.dkg = sext i32 %i.dkf to i64                 ; 2 uses
  %i.dkh = icmp sgt i64 %indvars.iv.i.epil.init, %i.dkg
  br i1 %i.dkh, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.dki = add nsw i32 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.ra:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.dkj = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dkg
  %i.dkk = load i32, ptr %i.dkj, align 4, !tbaa !72
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.ra, %bb.qz
  %.01517.sink.i.epil = phi i32 [ %i.dkk, %bb.ra ], [ %.01517.i.epil.init, %bb.qz ]
  %.1.i.epil = phi i32 [ %.01517.i.epil.init, %bb.ra ], [ %i.dki, %bb.qz ]
  store i32 %.01517.sink.i.epil, ptr %i.dke, align 4, !tbaa !72
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph3365, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %._crit_edge3366
  %.015.lcssa.i = phi i32 [ 1, %._crit_edge3366 ], [ 1, %.lr.ph3365 ], [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa ]
  %i.dkl = load i32, ptr %i.c, align 8, !tbaa !32 ; 6 uses
  %i.dkm = and i32 %i.dkl, 1
  %.not = icmp eq i32 %i.dkm, 0
  %i.dkn = load i32, ptr %i.o, align 4, !tbaa !53 ; 7 uses
  %i.dko = and i32 %i.dkn, 1
  %.not1859 = icmp eq i32 %i.dko, 0               ; 2 uses
  %i.dkp = icmp sgt i32 %i.dkl, 0                 ; 4 uses
  br i1 %.not, label %bb.ry, label %bb.rb

.thread:                                          ; preds = %.split3377.us.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.dkq = ptrtoint ptr %.sroa.03089.0 to i64
  %i.dkr = sub i64 %.sroa.10.0, %i.dkq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03089.0, i64 noundef %i.dkr) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.split3377.us.invoke:                             ; preds = %bb.qs, %bb.qp, %.critedge2060.us, %bb.pt, %.thread3100.us, %.thread3098.us
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
          to label %.split3377.us.cont unwind label %.thread

.split3377.us.cont:                               ; preds = %.split3377.us.invoke
  unreachable

bb.rb:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit
  br i1 %.not1859, label %.preheader3129, label %.preheader3131

.preheader3131:                                   ; preds = %bb.rb
  br i1 %i.dkp, label %.lr.ph3380, label %.loopexit

.lr.ph3380:                                       ; preds = %.preheader3131
  %i.dks = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !56
  %i.dku = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dkv = load i64, ptr %i.dku, align 8, !tbaa !34 ; 2 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dkx = load ptr, ptr %i.dkw, align 8, !tbaa !56
  %i.dky = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dkz = load i64, ptr %i.dky, align 8, !tbaa !34 ; 2 uses
  %i.dla = icmp sgt i32 %i.dkn, 0
  br i1 %i.dla, label %.lr.ph3380.split, label %.loopexit

.preheader3129:                                   ; preds = %bb.rb
  br i1 %i.dkp, label %.lr.ph3386, label %.loopexit

.lr.ph3386:                                       ; preds = %.preheader3129
  %i.dlb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dlc = load ptr, ptr %i.dlb, align 8, !tbaa !56
  %i.dld = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dle = load i64, ptr %i.dld, align 8, !tbaa !34 ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dlg = load ptr, ptr %i.dlf, align 8, !tbaa !56
  %i.dlh = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dli = load i64, ptr %i.dlh, align 8, !tbaa !34 ; 2 uses
  %i.dlj = icmp sgt i32 %i.dkn, 0
  br i1 %i.dlj, label %.lr.ph3386.split, label %.loopexit

.lr.ph3380.split:                                 ; preds = %.lr.ph3380, %._crit_edge
  %i.dlk = phi i32 [ %i.dlu, %._crit_edge ], [ %i.dkl, %.lr.ph3380 ]
  %i.dll = phi i32 [ %i.dlv, %._crit_edge ], [ %i.dkn, %.lr.ph3380 ] ; 2 uses
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556, %._crit_edge ], [ 0, %.lr.ph3380 ] ; 4 uses
  %i.dlm = mul i64 %i.dkv, %indvars.iv3555
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dkt, i64 %i.dlm ; 3 uses
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.dkv ; 3 uses
  %i.dlp = mul i64 %i.dkz, %indvars.iv3555
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dkx, i64 %i.dlp ; 4 uses
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.dlq, i64 %i.dkz ; 6 uses
  %i.dls = icmp sgt i32 %i.dll, 0
  br i1 %i.dls, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph3380.split
  %i.dlt = or disjoint i64 %indvars.iv3555, 1     ; 4 uses
  br label %bb.rc

._crit_edge.loopexit:                             ; preds = %bb.rr
  %.pre = load i32, ptr %i.c, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph3380.split
  %i.dlu = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.dlk, %.lr.ph3380.split ] ; 2 uses
  %i.dlv = phi i32 [ %i.dnq, %._crit_edge.loopexit ], [ %i.dll, %.lr.ph3380.split ]
  %indvars.iv.next3556 = add nuw nsw i64 %indvars.iv3555, 2 ; 2 uses
  %i.dlw = sext i32 %i.dlu to i64
  %i.dlx = icmp slt i64 %indvars.iv.next3556, %i.dlw
  br i1 %i.dlx, label %.lr.ph3380.split, label %.loopexit, !llvm.loop !123

bb.rc:                                            ; preds = %.lr.ph, %bb.rr
  %indvars.iv3552 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3553, %bb.rr ] ; 11 uses
  %i.dly = getelementptr inbounds nuw [4 x i8], ptr %i.dlq, i64 %indvars.iv3552 ; 3 uses
  %i.dlz = load i32, ptr %i.dly, align 4, !tbaa !72 ; 2 uses
  %i.dma = icmp sgt i32 %i.dlz, 0
  br i1 %i.dma, label %bb.rd, label %bb.rm

bb.rd:                                            ; preds = %bb.rc
  %i.dmb = zext nneg i32 %i.dlz to i64
  %i.dmc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03089.0, i64 %i.dmb
  %i.dmd = load i32, ptr %i.dmc, align 4, !tbaa !72 ; 5 uses
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dln, i64 %indvars.iv3552
  %i.dmf = load i8, ptr %i.dme, align 1, !tbaa !23
  %.not1873 = icmp eq i8 %i.dmf, 0
  %. = select i1 %.not1873, i32 0, i32 %i.dmd
  store i32 %., ptr %i.dly, align 4, !tbaa !72
  %i.dmg = or disjoint i64 %indvars.iv3552, 1     ; 5 uses
  %i.dmh = load i32, ptr %i.o, align 4, !tbaa !53
end_hunk_3
begin_hunk_4_@_ZN2cv19connectedcomponents18LabelingWuParallelIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.iy = phi i32 [ %.pre.i, %bb.ax ], [ %i.hl, %bb.aw ] ; 4 uses
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next.i109, %i.iz
  br i1 %i.ja, label %bb.aw, label %._crit_edge.i, !llvm.loop !292

_ZN2cv19connectedcomponents9CCStatsOp10mergeStatsERKNS_3MatEPS1_RS1_RKi.exit: ; preds = %._crit_edge.i, %bb.av, %.preheader.lr.ph.i
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !255
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.i112, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i112:                                      ; preds = %_ZN2cv19connectedcomponents9CCStatsOp10mergeStatsERKNS_3MatEPS1_RS1_RKi.exit
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !56
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !56
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.jn = load ptr, ptr %i.jm, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.lr.ph.i112
  %indvars.iv.i113 = phi i64 [ 0, %.lr.ph.i112 ], [ %indvars.iv.next.i114, %bb.bc ] ; 4 uses
  %i.jo = load i32, ptr %i.je, align 4, !tbaa !256
  %i.jp = icmp slt i32 %i.jo, 2
  %i.jq = load i64, ptr %i.jh, align 8
  %i.jr = mul i64 %i.jq, %indvars.iv.i113
  %.sink.idx.i.i = select i1 %i.jp, i64 0, i64 %i.jr
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink.idx.i.i ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !72 ; 2 uses
  %i.ju = load i32, ptr %i.ji, align 4, !tbaa !256
  %i.jv = icmp slt i32 %i.ju, 2
  %i.jw = load i64, ptr %i.jl, align 8
  %i.jx = mul i64 %i.jw, %indvars.iv.i113
  %.sink.idx.i25.i = select i1 %i.jv, i64 0, i64 %i.jx
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sink.idx.i25.i
  %.not.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jy = uitofp i32 %i.jt to double
  %i.jz = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.ka = load <2 x i32>, ptr %i.jz, align 4, !tbaa !72
  %i.kb = load <2 x i32>, ptr %.sink.i.i, align 4, !tbaa !72
  %i.kc = add <2 x i32> %i.ka, splat (i32 1)
  %i.kd = sub <2 x i32> %i.kc, %i.kb
  store <2 x i32> %i.kd, ptr %i.jz, align 4, !tbaa !72
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.i113
  %i.kf = load <2 x i64>, ptr %i.ke, align 8, !tbaa !34
  %i.kg = uitofp <2 x i64> %i.kf to <2 x double>
  %i.kh = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = fdiv <2 x double> %i.kg, %i.ki
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.kk = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store i32 0, ptr %i.kk, align 4, !tbaa !72
  %i.kl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 12
  store i32 0, ptr %i.kl, align 4, !tbaa !72
  store i32 -1, ptr %.sink.i.i, align 4, !tbaa !72
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.km = phi <2 x double> [ splat (double +qnan), %bb.bb ], [ %i.kj, %bb.ba ]
  store <2 x double> %i.km, ptr %.sink.i26.i, align 8, !tbaa !257
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %i.kn = load i32, ptr %i.jb, align 8, !tbaa !255
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp slt i64 %indvars.iv.next.i114, %i.ko
  br i1 %i.kp, label %bb.az, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !259

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.bc, %_ZN2cv19connectedcomponents9CCStatsOp10mergeStatsERKNS_3MatEPS1_RS1_RKi.exit
  %i.kq = load i32, ptr %i.a, align 4, !tbaa !72
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.gg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv19connectedcomponents9CCStatsOpES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.la, %_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit ] ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 432
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 448
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !52
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #17
  br label %_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i: ; preds = %bb.bd, %.lr.ph.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ky) #15
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.kz) #15
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 464 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.la, %i.gg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv19connectedcomponents9CCStatsOpES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPN2cv19connectedcomponents9CCStatsOpES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN2cv19connectedcomponents9CCStatsOpEEvPT_.exit.i.i.i, %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPN2cv19connectedcomponents9CCStatsOpES2_EvT_S4_RSaIT0_E.exit.i
  %i.lb = ptrtoint ptr %.pr.i to i64
  %i.lc = sub i64 %i.ge, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.lc) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPN2cv19connectedcomponents9CCStatsOpES2_EvT_S4_RSaIT0_E.exit.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ax) #17
  %.not.i.i.i116 = icmp eq ptr %.sroa.0132.0, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ld = ptrtoint ptr %.sroa.0132.0 to i64
  %i.le = sub i64 %.sroa.17.0, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0, i64 noundef %i.le) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bf
  ret i32 %i.kq

bb.bg:                                            ; preds = %_ZNSt12_Vector_baseIN2cv19connectedcomponents9CCStatsOpESaIS2_EEC2EmRKS3_.exit.i, %bb.at
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %.loopexit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.au
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn71 = phi { ptr, i32 } [ %i.lg, %bb.bh ], [ %i.lh, %bb.bi ]
  call void @_ZNSt6vectorIN2cv19connectedcomponents9CCStatsOpESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #15
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.bj ], [ %i.lf, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.as, %bb.an, %bb.ag, %bb.aa, %bb.z
  %.pn74 = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %.pn71.pn, %bb.bk ], [ %i.bq, %bb.aa ], [ %i.bp, %bb.z ], [ %i.fp, %bb.as ], [ %i.er, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

_ZNSt6vectorIiSaIiEED2Ev.exit119:                 ; preds = %bb.bl, %bb.y
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.bl ], [ %i.bo, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ax) #17
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit119, %bb.x
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit119 ], [ %i.bn, %bb.x ] ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %.sroa.0132.0, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIiSaIiEED2Ev.exit121, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.li = ptrtoint ptr %.sroa.0132.0 to i64
  %i.lj = sub i64 %.sroa.17.0, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0, i64 noundef %i.lj) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

_ZNSt6vectorIiSaIiEED2Ev.exit121:                 ; preds = %bb.bm, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn74.pn.pn, %bb.bn ], [ %.pn74.pn.pn, %bb.bm ]
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074, %bb.k
  %.pn1854 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077, %bb.q
  %.pn1856 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 4611686018427387903
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc2080

.noexc2080:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc2080, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2080 ] ; 2 uses
  %.sroa.03251.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2080 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3516, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph3516:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  %i.az = sext i32 %i.n to i64                    ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %bb.aa

._crit_edge3517:                                  ; preds = %._crit_edge
  %i.bb = icmp ugt i16 %.1.lcssa, 1
  br i1 %i.bb, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3517
  %wide.trip.count.i = zext i16 %.1.lcssa to i64
  %i.bc = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bd = icmp eq i16 %.1.lcssa, 2
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 5 uses
  %.01517.i = phi i16 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.x ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !54
  %i.bg = zext i16 %i.bf to i64                   ; 2 uses
  %i.bh = icmp samesign ugt i64 %indvars.iv.i, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !54
  br label %.lr.ph.i.1

bb.u:                                             ; preds = %.lr.ph.i
  %i.bk = add i16 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.u, %bb.t
  %.01517.sink.i = phi i16 [ %i.bj, %bb.t ], [ %.01517.i, %bb.u ]
  %.1.i = phi i16 [ %.01517.i, %bb.t ], [ %i.bk, %bb.u ] ; 3 uses
  store i16 %.01517.sink.i, ptr %i.be, align 2, !tbaa !54
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !54
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %.not4502 = icmp samesign ult i64 %indvars.iv.i, %i.bo
  br i1 %.not4502, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.1
  %i.bp = add i16 %.1.i, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bo
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.01517.sink.i.1 = phi i16 [ %i.br, %bb.w ], [ %.1.i, %bb.v ]
  %.1.i.1 = phi i16 [ %.1.i, %bb.w ], [ %i.bp, %bb.v ] ; 3 uses
  store i16 %.01517.sink.i.1, ptr %i.bm, align 2, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i16 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4501 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod4501)
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !54
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %i.bv = icmp samesign ugt i64 %indvars.iv.i.epil.init, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bw = add i16 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bu
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.z, %bb.y
  %.01517.sink.i.epil = phi i16 [ %i.by, %bb.z ], [ %.01517.i.epil.init, %bb.y ]
  %.1.i.epil = phi i16 [ %.01517.i.epil.init, %bb.z ], [ %i.bw, %bb.y ]
  store i16 %.01517.sink.i.epil, ptr %i.bs, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, %._crit_edge3517
  %.015.lcssa.i = phi i16 [ 1, %._crit_edge3517 ], [ 1, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  %i.bz = zext i16 %.015.lcssa.i to i32
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %i.bz)
          to label %bb.rc unwind label %bb.uk

bb.aa:                                            ; preds = %.lr.ph3516, %._crit_edge
  %indvars.iv3692 = phi i64 [ 0, %.lr.ph3516 ], [ %indvars.iv.next3693, %._crit_edge ] ; 5 uses
  %.017903514 = phi i16 [ 1, %.lr.ph3516 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.cb = load i64, ptr %i.av, align 8, !tbaa !34 ; 3 uses
  %i.cc = mul i64 %i.cb, %indvars.iv3692
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc ; 21 uses
  %i.ce = sub i64 0, %i.cb                        ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce ; 73 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.ce ; 39 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb ; 5 uses
  %i.ci = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.cj = load i64, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.ck = mul i64 %i.cj, %indvars.iv3692
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 221 uses
  %i.cm = sub i64 0, %i.cj                        ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cm ; 101 uses
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %.not2029 = icmp eq i64 %indvars.iv3692, 0      ; 15 uses
  %i.cp = or disjoint i64 %indvars.iv3692, 1
  %i.cq = icmp samesign ult i64 %i.cp, %i.ba      ; 3 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.rb, %bb.aa
  %.1.lcssa = phi i16 [ %.017903514, %bb.aa ], [ %.2, %bb.rb ] ; 4 uses
  %indvars.iv.next3693 = add nuw nsw i64 %indvars.iv3692, 2 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next3693 to i32
  %12 = icmp sgt i32 %i.b, %11
  br i1 %12, label %bb.aa, label %._crit_edge3517, !llvm.loop !294

bb.ab:                                            ; preds = %.lr.ph, %bb.rb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.rb ] ; 265 uses
  %.13511 = phi i16 [ %.017903514, %.lr.ph ], [ %.2, %bb.rb ] ; 161 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !23
  %.not1883 = icmp eq i8 %i.cs, 0
  br i1 %.not1883, label %bb.ke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1957 = icmp eq i64 %indvars.iv, 0          ; 5 uses
  br i1 %.not1957, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %.not1958 = icmp eq i8 %i.cv, 0
  br i1 %.not1958, label %bb.by, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.cx = icmp sge i64 %i.cw, %i.az               ; 2 uses
  %or.cond = or i1 %.not2029, %i.cx
  br i1 %or.cond, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %.not2030 = icmp eq i8 %i.cz, 0
  br i1 %.not2030, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %.not2040 = icmp eq i8 %i.db, 0
  br i1 %.not2040, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !54
  store i16 %i.de, ptr %i.dc, align 2, !tbaa !54
  br label %bb.rb

bb.ai:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %.not2041 = icmp eq i8 %i.dg, 0
  br i1 %.not2041, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ct
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !23
  %.not2042 = icmp eq i8 %i.di, 0
  br i1 %.not2042, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !54
  store i16 %i.dl, ptr %i.dj, align 2, !tbaa !54
  br label %bb.rb

bb.al:                                            ; preds = %bb.aj
  %i.dm = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %.not2043 = icmp eq i8 %i.do, 0
  br i1 %.not2043, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ct
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  %.not2044 = icmp eq i8 %i.dq, 0
  br i1 %.not2044, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.dm
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !54
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !54
  br label %bb.rb

bb.ao:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !54 ; 4 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.dm
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !54 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i = phi i16 [ %i.dv, %bb.ao ], [ %i.ea, %bb.ap ] ; 4 uses
  %i.dy = zext i16 %.0.i.i to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !54 ; 2 uses
  %i.eb = icmp ult i16 %i.ea, %.0.i.i
  br i1 %i.eb, label %bb.ap, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i: ; preds = %bb.ap
  %.not.i = icmp eq i16 %i.dv, %i.dx
  br i1 %.not.i, label %bb.aq, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i15.i = phi i16 [ %i.ee, %.preheader.i ], [ %i.dx, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ec = zext i16 %.0.i15.i to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !54 ; 2 uses
  %i.ef = icmp ult i16 %i.ee, %.0.i15.i
  br i1 %i.ef, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i: ; preds = %.preheader.i
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %.0.i.i, i16 %.0.i15.i) ; 3 uses
  %i.eg = zext i16 %i.dx to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.eg ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !54 ; 2 uses
  %i.ej = icmp ult i16 %i.ei, %i.dx
  br i1 %i.ej, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, %.lr.ph.i.i
  %i.ek = phi i16 [ %i.eo, %.lr.ph.i.i ], [ %i.ei, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ] ; 2 uses
  %i.el = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ]
  store i16 %spec.select.i, ptr %i.el, align 2, !tbaa !54
  %i.em = zext i16 %i.ek to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !54 ; 2 uses
  %i.ep = icmp ult i16 %i.eo, %i.ek
  br i1 %i.ep, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, !llvm.loop !59

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i
  %.lcssa.i.i = phi ptr [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ], [ %i.en, %.lr.ph.i.i ]
  store i16 %spec.select.i, ptr %.lcssa.i.i, align 2, !tbaa !54
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i
  %.1.i2081 = phi i16 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.eq = zext i16 %i.dv to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.eq ; 3 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !54 ; 2 uses
  %i.et = icmp ult i16 %i.es, %i.dv
  br i1 %i.et, label %.lr.ph.i18.i, label %.loopexit3355

.lr.ph.i18.i:                                     ; preds = %bb.aq, %.lr.ph.i18.i
  %i.eu = phi i16 [ %i.ey, %.lr.ph.i18.i ], [ %i.es, %bb.aq ] ; 2 uses
  %i.ev = phi ptr [ %i.ex, %.lr.ph.i18.i ], [ %i.er, %bb.aq ]
  store i16 %.1.i2081, ptr %i.ev, align 2, !tbaa !54
  %i.ew = zext i16 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ew ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !54 ; 2 uses
  %i.ez = icmp ult i16 %i.ey, %i.eu
  br i1 %i.ez, label %.lr.ph.i18.i, label %.loopexit3355, !llvm.loop !59

.loopexit3355:                                    ; preds = %.lr.ph.i18.i, %bb.aq
  %.lcssa.i17.i = phi ptr [ %i.er, %bb.aq ], [ %i.ex, %.lr.ph.i18.i ]
  store i16 %.1.i2081, ptr %.lcssa.i17.i, align 2, !tbaa !54
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2081, ptr %i.fa, align 2, !tbaa !54
  br label %bb.rb

.thread3993:                                      ; preds = %.invoke
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

bb.ar:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !54 ; 4 uses
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dm
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !54 ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i2082 = phi i16 [ %i.fd, %bb.ar ], [ %i.fi, %bb.as ] ; 4 uses
  %i.fg = zext i16 %.0.i.i2082 to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !54 ; 2 uses
  %i.fj = icmp ult i16 %i.fi, %.0.i.i2082
  br i1 %i.fj, label %bb.as, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083: ; preds = %bb.as
  %.not.i2084 = icmp eq i16 %i.fd, %i.ff
  br i1 %.not.i2084, label %bb.at, label %.preheader.i2085

.preheader.i2085:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083, %.preheader.i2085
  %.0.i15.i2086 = phi i16 [ %i.fm, %.preheader.i2085 ], [ %i.ff, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083 ] ; 3 uses
  %i.fk = zext i16 %.0.i15.i2086 to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !54 ; 2 uses
  %i.fn = icmp ult i16 %i.fm, %.0.i15.i2086
  br i1 %i.fn, label %.preheader.i2085, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2087, !llvm.loop !57

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2087: ; preds = %.preheader.i2085
  %spec.select.i2088 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2082, i16 %.0.i15.i2086) ; 3 uses
  %i.fo = zext i16 %i.ff to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.fo ; 3 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !54 ; 2 uses
  %i.fr = icmp ult i16 %i.fq, %i.ff
  br i1 %i.fr, label %.lr.ph.i.i2094, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2089

.lr.ph.i.i2094:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2087, %.lr.ph.i.i2094
end_hunk_4
begin_hunk_5_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br label %bb.ue

bb.uc:                                            ; preds = %bb.ua
  store i16 0, ptr %i.eyt, align 2, !tbaa !54
  %i.ezr = load i32, ptr %i.evc, align 4, !tbaa !72
  %i.ezs = trunc nuw nsw i64 %i.evg to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.ezr, i32 %i.ezs)
  store i32 %..i3230, ptr %i.evc, align 4, !tbaa !72
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.evc, i64 8 ; 2 uses
  %i.ezu = load i32, ptr %i.ezt, align 4, !tbaa !72
  %i.ezv = tail call i32 @llvm.smax.i32(i32 %i.ezu, i32 %i.ezs)
  store i32 %i.ezv, ptr %i.ezt, align 4, !tbaa !72
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.evc, i64 4 ; 2 uses
  %i.ezx = load i32, ptr %i.ezw, align 4, !tbaa !72
  %i.ezy = tail call i32 @llvm.smin.i32(i32 %i.ezx, i32 %i.esw)
  store i32 %i.ezy, ptr %i.ezw, align 4, !tbaa !72
  %i.ezz = getelementptr inbounds nuw i8, ptr %i.evc, i64 12 ; 2 uses
  %i.faa = load i32, ptr %i.ezz, align 4, !tbaa !72
  %i.fab = tail call i32 @llvm.smax.i32(i32 %i.faa, i32 %i.esw)
  store i32 %i.fab, ptr %i.ezz, align 4, !tbaa !72
  %i.fac = getelementptr inbounds nuw i8, ptr %i.evc, i64 16 ; 2 uses
  %i.fad = load i32, ptr %i.fac, align 4, !tbaa !72
  %i.fae = add nsw i32 %i.fad, 1
  store i32 %i.fae, ptr %i.fac, align 4, !tbaa !72
  %i.faf = load <2 x i64>, ptr %i.evb, align 8, !tbaa !34
  %i.fag = insertelement <2 x i64> %i.esz, i64 %i.evg, i64 0
  %i.fah = add <2 x i64> %i.faf, %i.fag
  store <2 x i64> %i.fah, ptr %i.evb, align 8, !tbaa !34
  br label %bb.ue

bb.ud:                                            ; preds = %bb.tq
  %i.fai = or disjoint i64 %indvars.iv3712, 1     ; 5 uses
  %i.faj = getelementptr inbounds nuw [2 x i8], ptr %i.esl, i64 %i.fai
  store i16 0, ptr %i.faj, align 2, !tbaa !54
  %i.fak = getelementptr inbounds nuw [2 x i8], ptr %i.esm, i64 %indvars.iv3712
  store i16 0, ptr %i.fak, align 2, !tbaa !54
  %i.fal = getelementptr inbounds nuw [2 x i8], ptr %i.esm, i64 %i.fai
  store i16 0, ptr %i.fal, align 2, !tbaa !54
  %i.fam = load ptr, ptr %i.eie, align 8, !tbaa !56 ; 6 uses
  %i.fan = load i32, ptr %i.fam, align 4, !tbaa !72
  %i.fao = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fan, i32 %i.fao)
  %i.fap = getelementptr inbounds nuw i8, ptr %i.fam, i64 8 ; 2 uses
  %i.faq = load i32, ptr %i.fap, align 4, !tbaa !72
  %i.far = tail call i32 @llvm.smax.i32(i32 %i.faq, i32 %i.fao)
  %i.fas = getelementptr inbounds nuw i8, ptr %i.fam, i64 4 ; 2 uses
  %i.fat = load i32, ptr %i.fas, align 4, !tbaa !72
  %i.fau = tail call i32 @llvm.smin.i32(i32 %i.fat, i32 %i.esx)
  %i.fav = getelementptr inbounds nuw i8, ptr %i.fam, i64 12 ; 2 uses
  %i.faw = load i32, ptr %i.fav, align 4, !tbaa !72
  %i.fax = tail call i32 @llvm.smax.i32(i32 %i.faw, i32 %i.esx)
  %i.fay = getelementptr inbounds nuw i8, ptr %i.fam, i64 16 ; 2 uses
  %i.faz = load i32, ptr %i.fay, align 4, !tbaa !72
  %i.fba = load ptr, ptr %i.eig, align 8, !tbaa !51 ; 3 uses
  %i.fbb = load i64, ptr %i.fba, align 8, !tbaa !297
  %i.fbc = add i64 %i.fbb, %indvars.iv3712
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.fba, i64 8 ; 2 uses
  %i.fbe = load i64, ptr %i.fbd, align 8, !tbaa !299
  %i.fbf = trunc nuw nsw i64 %i.fai to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fbf)
  %i.fbg = tail call i32 @llvm.smax.i32(i32 %i.far, i32 %i.fbf)
  %i.fbh = add i64 %i.fbc, %i.fai
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fao)
  %i.fbi = tail call i32 @llvm.umax.i32(i32 %i.fbg, i32 %i.fao)
  %i.fbj = tail call i32 @llvm.smin.i32(i32 %i.fau, i32 %i.esy)
  %i.fbk = tail call i32 @llvm.smax.i32(i32 %i.fax, i32 %i.esy)
  %i.fbl = add i64 %i.fbh, %indvars.iv3712
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fbf)
  store i32 %..i3242, ptr %i.fam, align 4, !tbaa !72
  %i.fbm = tail call i32 @llvm.smax.i32(i32 %i.fbi, i32 %i.fbf)
  store i32 %i.fbm, ptr %i.fap, align 4, !tbaa !72
  store i32 %i.fbj, ptr %i.fas, align 4, !tbaa !72
  store i32 %i.fbk, ptr %i.fav, align 4, !tbaa !72
  %i.fbn = add nsw i32 %i.faz, 4
  store i32 %i.fbn, ptr %i.fay, align 4, !tbaa !72
  %i.fbo = add i64 %i.fbl, %i.fai
  store i64 %i.fbo, ptr %i.fba, align 8, !tbaa !297
  %.reass4160 = add i64 %i.fbe, %invariant.op4159
  store i64 %.reass4160, ptr %i.fbd, align 8, !tbaa !299
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.uc, %bb.ub
  %indvars.iv.next3713 = add nuw nsw i64 %indvars.iv3712, 2 ; 2 uses
  %i.fbp = load i32, ptr %i.o, align 4, !tbaa !53 ; 2 uses
  %i.fbq = sext i32 %i.fbp to i64
  %i.fbr = icmp slt i64 %indvars.iv.next3713, %i.fbq
  br i1 %i.fbr, label %bb.tq, label %._crit_edge3543.loopexit, !llvm.loop !306

.loopexit:                                        ; preds = %._crit_edge3523, %._crit_edge3530, %._crit_edge3536, %._crit_edge3543, %.preheader3282, %.preheader3280, %.preheader3278, %.preheader
  %i.fbs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fbt = load i32, ptr %i.fbs, align 8, !tbaa !255
  %i.fbu = icmp sgt i32 %i.fbt, 0
  br i1 %i.fbu, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fbv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fbw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fbx = load ptr, ptr %i.fbw, align 8, !tbaa !56
  %i.fby = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fbz = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fca = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fcb = load ptr, ptr %i.fca, align 8, !tbaa !56
  %i.fcc = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fcd = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fce = load ptr, ptr %i.fcd, align 8
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ui, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.ui ] ; 4 uses
  %i.fcf = load i32, ptr %i.fbv, align 4, !tbaa !256
  %i.fcg = icmp slt i32 %i.fcf, 2
  %i.fch = load i64, ptr %i.fby, align 8
  %i.fci = mul i64 %i.fch, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fcg, i64 0, i64 %i.fci
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fbx, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fcj = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fck = load i32, ptr %i.fcj, align 4, !tbaa !72 ; 2 uses
  %i.fcl = load i32, ptr %i.fbz, align 4, !tbaa !256
  %i.fcm = icmp slt i32 %i.fcl, 2
  %i.fcn = load i64, ptr %i.fcc, align 8
  %i.fco = mul i64 %i.fcn, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fcm, i64 0, i64 %i.fco
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fcb, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fck, 0
  br i1 %.not.i3247, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.fcp = uitofp i32 %i.fck to double
  %i.fcq = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fcr = load <2 x i32>, ptr %i.fcq, align 4, !tbaa !72
  %i.fcs = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !72
  %i.fct = add <2 x i32> %i.fcr, splat (i32 1)
  %i.fcu = sub <2 x i32> %i.fct, %i.fcs
  store <2 x i32> %i.fcu, ptr %i.fcq, align 4, !tbaa !72
  %i.fcv = getelementptr inbounds nuw [16 x i8], ptr %i.fce, i64 %indvars.iv.i3244
  %i.fcw = load <2 x i64>, ptr %i.fcv, align 8, !tbaa !34
  %i.fcx = uitofp <2 x i64> %i.fcw to <2 x double>
  %i.fcy = insertelement <2 x double> poison, double %i.fcp, i64 0
  %i.fcz = shufflevector <2 x double> %i.fcy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fda = fdiv <2 x double> %i.fcx, %i.fcz
  br label %bb.ui

bb.uh:                                            ; preds = %bb.uf
  %i.fdb = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fdb, align 4, !tbaa !72
  %i.fdc = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fdc, align 4, !tbaa !72
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !72
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  %i.fdd = phi <2 x double> [ splat (double +qnan), %bb.uh ], [ %i.fda, %bb.ug ]
  store <2 x double> %i.fdd, ptr %.sink.i26.i, align 8, !tbaa !257
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.fde = load i32, ptr %i.fbs, align 8, !tbaa !255
  %i.fdf = sext i32 %i.fde to i64
  %i.fdg = icmp slt i64 %indvars.iv.next.i3248, %i.fdf
  br i1 %i.fdg, label %bb.uf, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !259

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.ui, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.uj

bb.uj:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fdh = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fdi = sub i64 %.sroa.10.0, %i.fdh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fdi) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %bb.uj
  ret i16 %.015.lcssa.i

bb.uk:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.fdj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorItSaItEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %.thread3993, %bb.uk
  %.pn20453996 = phi { ptr, i32 } [ %i.fb, %.thread3993 ], [ %i.fdj, %bb.uk ]
  %i.fdk = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fdl = sub i64 %.sroa.10.0, %i.fdk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fdl) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

_ZNSt6vectorItSaItEED2Ev.exit3250:                ; preds = %bb.uk, %bb.ul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2045.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079 ], [ %.pn1854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076 ], [ %.pn20453996, %bb.ul ], [ %i.fdj, %bb.uk ]
  resume { ptr, i32 } %.pn2045.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074, %bb.k
  %.pn1858 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077, %bb.q
  %.pn1860 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc2080

.noexc2080:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !72
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc2080, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2080 ] ; 2 uses
  %.sroa.03251.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2080 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3516, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph3516:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  %i.az = sext i32 %i.n to i64                    ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %bb.aa

._crit_edge3517:                                  ; preds = %._crit_edge
  %i.bb = icmp sgt i32 %.1.lcssa, 1
  br i1 %i.bb, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3517
  %wide.trip.count.i = zext nneg i32 %.1.lcssa to i64
  %i.bc = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bd = icmp eq i32 %.1.lcssa, 2
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 5 uses
  %.01517.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.x ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !72
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp sgt i64 %indvars.iv.i, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  br label %.lr.ph.i.1

bb.u:                                             ; preds = %.lr.ph.i
  %i.bk = add nsw i32 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.u, %bb.t
  %.01517.sink.i = phi i32 [ %i.bj, %bb.t ], [ %.01517.i, %bb.u ]
  %.1.i = phi i32 [ %.01517.i, %bb.t ], [ %i.bk, %bb.u ] ; 3 uses
  store i32 %.01517.sink.i, ptr %i.be, align 4, !tbaa !72
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !72
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %.not4504 = icmp slt i64 %indvars.iv.i, %i.bo
  br i1 %.not4504, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.1
  %i.bp = add nsw i32 %.1.i, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.01517.sink.i.1 = phi i32 [ %i.br, %bb.w ], [ %.1.i, %bb.v ]
  %.1.i.1 = phi i32 [ %.1.i, %bb.w ], [ %i.bp, %bb.v ] ; 3 uses
  store i32 %.01517.sink.i.1, ptr %i.bm, align 4, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !81

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4503 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod4503)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !72
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = icmp sgt i64 %indvars.iv.i.epil.init, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bw = add nsw i32 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bx = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !72
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.z, %bb.y
  %.01517.sink.i.epil = phi i32 [ %i.by, %bb.z ], [ %.01517.i.epil.init, %bb.y ]
  %.1.i.epil = phi i32 [ %.01517.i.epil.init, %bb.z ], [ %i.bw, %bb.y ]
  store i32 %.01517.sink.i.epil, ptr %i.bs, align 4, !tbaa !72
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %._crit_edge3517
  %.015.lcssa.i = phi i32 [ 1, %._crit_edge3517 ], [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %.015.lcssa.i)
          to label %bb.rc unwind label %bb.uk

bb.aa:                                            ; preds = %.lr.ph3516, %._crit_edge
  %indvars.iv3693 = phi i64 [ 0, %.lr.ph3516 ], [ %indvars.iv.next3694, %._crit_edge ] ; 5 uses
  %.017903514 = phi i32 [ 1, %.lr.ph3516 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.ca = load i64, ptr %i.av, align 8, !tbaa !34 ; 3 uses
  %i.cb = mul i64 %i.ca, %indvars.iv3693
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb ; 21 uses
  %i.cd = sub i64 0, %i.ca                        ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 73 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cd ; 39 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 5 uses
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ci = load i64, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.cj = mul i64 %i.ci, %indvars.iv3693
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 221 uses
  %i.cl = sub i64 0, %i.ci                        ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.cl ; 101 uses
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %.not2029 = icmp eq i64 %indvars.iv3693, 0      ; 15 uses
  %i.co = or disjoint i64 %indvars.iv3693, 1
  %i.cp = icmp samesign ult i64 %i.co, %i.ba      ; 3 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.rb, %bb.aa
  %.1.lcssa = phi i32 [ %.017903514, %bb.aa ], [ %.2, %bb.rb ] ; 4 uses
  %indvars.iv.next3694 = add nuw nsw i64 %indvars.iv3693, 2 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next3694 to i32
  %12 = icmp sgt i32 %i.b, %11
  br i1 %12, label %bb.aa, label %._crit_edge3517, !llvm.loop !307

bb.ab:                                            ; preds = %.lr.ph, %bb.rb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.rb ] ; 265 uses
  %.13511 = phi i32 [ %.017903514, %.lr.ph ], [ %.2, %bb.rb ] ; 161 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %.not1883 = icmp eq i8 %i.cr, 0
  br i1 %.not1883, label %bb.ke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1957 = icmp eq i64 %indvars.iv, 0          ; 5 uses
  br i1 %.not1957, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !23
  %.not1958 = icmp eq i8 %i.cu, 0
  br i1 %.not1958, label %bb.by, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.cw = icmp sge i64 %i.cv, %i.az               ; 2 uses
  %or.cond = or i1 %.not2029, %i.cw
  br i1 %or.cond, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !23
  %.not2030 = icmp eq i8 %i.cy, 0
  br i1 %.not2030, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !23
  %.not2040 = icmp eq i8 %i.da, 0
  br i1 %.not2040, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !72
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !72
  br label %bb.rb

bb.ai:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !23
  %.not2041 = icmp eq i8 %i.df, 0
  br i1 %.not2041, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cs
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %.not2042 = icmp eq i8 %i.dh, 0
  br i1 %.not2042, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !72
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !72
  br label %bb.rb

bb.al:                                            ; preds = %bb.aj
  %i.dl = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23
  %.not2043 = icmp eq i8 %i.dn, 0
  br i1 %.not2043, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cs
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %.not2044 = icmp eq i8 %i.dp, 0
  br i1 %.not2044, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !72
  br label %bb.rb

bb.ao:                                            ; preds = %bb.am
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !72 ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !72 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i = phi i32 [ %i.du, %bb.ao ], [ %i.dz, %bb.ap ] ; 4 uses
  %i.dx = sext i32 %.0.i.i to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !72 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %.0.i.i
  br i1 %i.ea, label %bb.ap, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.ap
  %.not.i = icmp eq i32 %i.du, %i.dw
  br i1 %.not.i, label %bb.aq, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.ed, %.preheader.i ], [ %i.dw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.eb = sext i32 %.0.i18.i to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !72 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %.0.i18.i
  br i1 %i.ee, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.ef = sext i32 %i.dw to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ef ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !72 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %i.dw
  br i1 %i.ei, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.ej = phi i32 [ %i.en, %.lr.ph.i.i ], [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.ek = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.eg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.ek, align 4, !tbaa !72
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.el ; 3 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !72 ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.ej
  br i1 %i.eo, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !74

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.eg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.em, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !72
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i2081 = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ep = sext i32 %i.du to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !72 ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.du
  br i1 %i.es, label %.lr.ph.i21.i, label %.loopexit3355

.lr.ph.i21.i:                                     ; preds = %bb.aq, %.lr.ph.i21.i
  %i.et = phi i32 [ %i.ex, %.lr.ph.i21.i ], [ %i.er, %bb.aq ] ; 2 uses
  %i.eu = phi ptr [ %i.ew, %.lr.ph.i21.i ], [ %i.eq, %bb.aq ]
  store i32 %.1.i2081, ptr %i.eu, align 4, !tbaa !72
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ev ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !72 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %i.et
  br i1 %i.ey, label %.lr.ph.i21.i, label %.loopexit3355, !llvm.loop !74

.loopexit3355:                                    ; preds = %.lr.ph.i21.i, %bb.aq
  %.lcssa.i20.i = phi ptr [ %i.eq, %bb.aq ], [ %i.ew, %.lr.ph.i21.i ]
  store i32 %.1.i2081, ptr %.lcssa.i20.i, align 4, !tbaa !72
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2081, ptr %i.ez, align 4, !tbaa !72
  br label %bb.rb

.thread3995:                                      ; preds = %.invoke
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

bb.ar:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !72 ; 4 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.dl
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !72 ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i2082 = phi i32 [ %i.fc, %bb.ar ], [ %i.fh, %bb.as ] ; 4 uses
  %i.ff = sext i32 %.0.i.i2082 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !72 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, %.0.i.i2082
  br i1 %i.fi, label %bb.as, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083: ; preds = %bb.as
  %.not.i2084 = icmp eq i32 %i.fc, %i.fe
  br i1 %.not.i2084, label %bb.at, label %.preheader.i2085

.preheader.i2085:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083, %.preheader.i2085
  %.0.i18.i2086 = phi i32 [ %i.fl, %.preheader.i2085 ], [ %i.fe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083 ] ; 3 uses
  %i.fj = sext i32 %.0.i18.i2086 to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !72 ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %.0.i18.i2086
  br i1 %i.fm, label %.preheader.i2085, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2087, !llvm.loop !73

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2087: ; preds = %.preheader.i2085
  %spec.select.i2088 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2082, i32 %.0.i18.i2086) ; 3 uses
  %i.fn = sext i32 %i.fe to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.fn ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !72 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, %i.fe
  br i1 %i.fq, label %.lr.ph.i.i2094, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2089

.lr.ph.i.i2094:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2087, %.lr.ph.i.i2094
end_hunk_5
