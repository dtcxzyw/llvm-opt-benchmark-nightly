inline.NumInlined: 868
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayE:bb.a
.loopexit:                                        ; preds = %bb.bi, %_ZN2cv10AutoBufferImLm136EED2Ev.exit, %bb.bb
  %.not.i.i.i384 = icmp eq ptr %.sroa.0439.0, null
  br i1 %.not.i.i.i384, label %_ZNSt6vectorIiSaIiEED2Ev.exit386, label %bb.ds

bb.ds:                                            ; preds = %.loopexit
  %i.aea = ptrtoint ptr %.sroa.0439.0 to i64
  %i.aeb = sub i64 %.sroa.13.0, %i.aea
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.0, i64 noundef %i.aeb) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit386

_ZNSt6vectorIiSaIiEED2Ev.exit386:                 ; preds = %bb.ds, %.loopexit, %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.aec = load ptr, ptr %6, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i387 = icmp eq ptr %i.aec, null
  br i1 %.not.i.i.i387, label %_ZNSt6vectorIiSaIiEED2Ev.exit389, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit386
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !143
  %i.aef = ptrtoint ptr %i.aee to i64
  %i.aeg = ptrtoint ptr %i.aec to i64
  %i.aeh = sub i64 %i.aef, %i.aeg
  call void @_ZdlPvm(ptr noundef nonnull %i.aec, i64 noundef %i.aeh) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit389

_ZNSt6vectorIiSaIiEED2Ev.exit389:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit386, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !62
  %.not.i390 = icmp eq i32 %i.aej, 0
  br i1 %.not.i390, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit389
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aek = landingpad { ptr, i32 }
          catch ptr null
  %i.ael = extractvalue { ptr, i32 } %i.aek, 0
  call void @__clang_call_terminate(ptr %i.ael) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit389, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.cq, %.body359
  %.pn308.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body359 ], [ %.pn304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %i.qc, %bb.cq ] ; 2 uses
  %i.aem = load ptr, ptr %8, align 8, !tbaa !153  ; 3 uses
  %.not.i.i391 = icmp eq ptr %i.aem, %i.hc
  %i.aen = icmp eq ptr %i.aem, null
  %or.cond.i392 = or i1 %.not.i.i391, %i.aen
  br i1 %or.cond.i392, label %_ZN2cv10AutoBufferImLm136EED2Ev.exit393, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZdaPv(ptr noundef nonnull %i.aem) #21
  br label %_ZN2cv10AutoBufferImLm136EED2Ev.exit393

_ZN2cv10AutoBufferImLm136EED2Ev.exit393:          ; preds = %bb.dx, %bb.dw, %bb.cb
  %.pn308.pn.pn.pn.pn = phi { ptr, i32 } [ %i.od, %bb.cb ], [ %.pn308.pn.pn.pn, %bb.dw ], [ %.pn308.pn.pn.pn, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.bj, %bb.bk, %_ZN2cv10AutoBufferImLm136EED2Ev.exit393, %bb.bc
  %.pn316 = phi { ptr, i32 } [ %i.fv, %bb.bc ], [ %i.gr, %bb.bj ], [ %i.gs, %bb.bk ], [ %.pn308.pn.pn.pn.pn, %_ZN2cv10AutoBufferImLm136EED2Ev.exit393 ] ; 2 uses
  %.not.i.i.i394 = icmp eq ptr %.sroa.0439.0, null
  br i1 %.not.i.i.i394, label %_ZNSt6vectorIiSaIiEED2Ev.exit396, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aeo = ptrtoint ptr %.sroa.0439.0 to i64
  %i.aep = sub i64 %.sroa.13.0, %i.aeo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.0, i64 noundef %i.aep) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit396

_ZNSt6vectorIiSaIiEED2Ev.exit396:                 ; preds = %bb.ax, %bb.dy, %bb.dz, %bb.as
  %.pn316.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.as ], [ %i.eq, %bb.ax ], [ %.pn316, %bb.dy ], [ %.pn316, %bb.dz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit396, %bb.ar
  %.pn316.pn.pn.pn = phi { ptr, i32 } [ %.pn316.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit396 ], [ %i.bw, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.aq, %bb.ak, %bb.af
  %.pn322 = phi { ptr, i32 } [ %i.bo, %bb.ak ], [ %.pn316.pn.pn.pn, %bb.ea ], [ %i.bv, %bb.aq ], [ %i.bb, %bb.af ] ; 2 uses
  %i.aeq = load ptr, ptr %6, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i397 = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i.i397, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.eb, %bb.ab
  %.sink788 = phi ptr [ %i.aq, %bb.ab ], [ %i.aeq, %bb.eb ] ; 2 uses
  %.pn322.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.ab ], [ %.pn322, %bb.eb ]
  %i.aer = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !143
  %i.aet = ptrtoint ptr %i.aes to i64
  %i.aeu = ptrtoint ptr %.sink788 to i64
  %i.aev = sub i64 %i.aet, %i.aeu
  call void @_ZdlPvm(ptr noundef nonnull %.sink788, i64 noundef %i.aev) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.eb, %bb.ab
  %.pn322.pn = phi { ptr, i32 } [ %i.ap, %bb.ab ], [ %.pn322, %bb.eb ], [ %.pn322.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.t, %.body, %bb.w, %bb.o
  %.pn322.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.ad, %bb.t ], [ %.pn322.pn, %.body ], [ %i.ae, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.n
  %.pn322.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn322.pn.pn.pn.pn, %bb.ec ], [ %i.u, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.e
  %.pn322.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn322.pn.pn.pn.pn.pn, %bb.ed ], [ %i.i, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.d
  %.pn322.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn322.pn.pn.pn.pn.pn.pn, %bb.ee ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn322.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmRKNS0_12CheckContextE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9broadcastERKNS_11_InputArrayERKNS_8MatShapeERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef %i.a, i32 noundef 4, ptr noundef nonnull %i.c, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !228
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !229
  store i32 16842752, ptr %4, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !41
  invoke void @_ZN2cv9broadcastERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d, %bb.b
  ret void
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6rotateERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 18 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 10 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6rotateERKNS_11_InputArrayERKNS_12_OutputArrayEi, ptr noundef nonnull @.str.1, i32 noundef 1371) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.k = icmp eq i32 %i.j, 655360
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
  br label %_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  br label %_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !230
  %i.m = icmp eq i32 %i.l, 65536
  br i1 %i.m, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41, !noalias !230
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.o)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.n:                                             ; preds = %bb.l
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.m, %bb.n
  %i.p = load i32, ptr %5, align 8, !tbaa !55
  %i.q = and i32 %i.p, 4095
  %i.r = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  br i1 %i.r, label %bb.p, label %8

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ab unwind label %bb.q

bb.q:                                             ; preds = %.invoke, %bb.p, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

8:                                                ; preds = %bb.o
  switch i32 %2, label %bb.t [
    i32 0, label %9
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !47
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !54
  br label %.invoke

bb.r:                                             ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !47
  br label %.invoke

bb.s:                                             ; preds = %8
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !54
  br label %.invoke

bb.t:                                             ; preds = %8
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %24, align 4, !tbaa !47
  br label %.invoke

.invoke:                                          ; preds = %9, %bb.r, %bb.s, %bb.t
  %25 = phi i32 [ %23, %bb.t ], [ %19, %bb.s ], [ %15, %bb.r ], [ %11, %9 ]
  %26 = phi i32 [ %i.t, %bb.t ], [ %21, %bb.s ], [ %17, %bb.r ], [ %13, %9 ]
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %25, i32 noundef %26, i32 noundef %i.q, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.u = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.u
  %i.v = icmp eq i32 %i.u, 65536
  br i1 %i.v, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41, !noalias !233
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !228
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !229
  store i32 16842752, ptr %7, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ab, align 8, !tbaa !41
  switch i32 %2, label %.critedge [
    i32 0, label %bb.z
    i32 1, label %.noexc57.invoke
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc57.invoke unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc57.invoke unwind label %bb.ac

.noexc57.invoke:                                  ; preds = %bb.aa, %bb.y, %bb.z
  %i.ac = phi ptr [ %7, %bb.y ], [ %1, %bb.z ], [ %1, %bb.aa ]
  %i.ad = phi i32 [ -1, %bb.y ], [ 1, %bb.z ], [ 0, %bb.aa ]
  invoke void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ad)
          to label %.critedge unwind label %bb.ac

.critedge:                                        ; preds = %.noexc57.invoke, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.p, %.critedge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit

_ZN2cvL10rotateImplERKNS_11_InputArrayERKNS_12_OutputArrayEi.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.ab
  ret void

bb.ac:                                            ; preds = %.noexc57.invoke, %bb.aa, %bb.z
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.ac ], [ %i.y, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.q
  %.pn45 = phi { ptr, i32 } [ %i.s, %bb.q ], [ %.pn41.pn.pn, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.ae ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn45.pn
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !35 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19, !inline_history !35
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #17, !inline_history !35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !236
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cvL13transposeI_8uEPhmi(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph20.preheader.i, label %_ZN2cvL11transposeI_IhEEvPhmi.exit
end_hunk_0
