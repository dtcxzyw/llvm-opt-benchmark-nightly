Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/slice_layer?download=true
inline.NumInlined: 2038
inline.NumDeleted: 693
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv3dnn13CropLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a

bb.ar:                                            ; preds = %.noexc97
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %bb.ar
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !31
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body80.thread

bb.as:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv153
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !22
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv153
  %i.gf = add nsw i32 %i.gd, %i.fj                ; 2 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !22
  %i.gh = icmp sgt i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.at, label %_ZNK2cv8MatShapeixEm.exit112

bb.at:                                            ; preds = %bb.as, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv3dnn14SliceLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 1073) #20
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.ae, %bb.ap, %bb.al, %bb.aa, %bb.w
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ax:                                            ; preds = %bb.at
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ay:                                            ; preds = %bb.au
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ay
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !31
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ax
  %.pn58 = phi { ptr, i32 } [ %i.gj, %bb.ax ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.gk, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body80.thread

_ZNK2cv8MatShapeixEm.exit112:                     ; preds = %bb.as
  %i.gq = load ptr, ptr %i.cv, align 8, !tbaa !42
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !34
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv153
  %.sroa.5.0.insert.ext = zext i32 %i.gf to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.fj to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.gs, align 4, !tbaa !22
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next154 to i32
  %exitcond156.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond156.not, label %._crit_edge.thread, label %bb.aj, !llvm.loop !362

.body80:                                          ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn61 = phi { ptr, i32 } [ %i.gi, %bb.aw ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77 ] ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %.sroa.0118.0, null
  br i1 %.not.i.i.i113, label %.body, label %.body80.thread

.body80.thread:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, %.body80
  %.pn61129 = phi { ptr, i32 } [ %.pn61, %.body80 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i95 ]
  %i.gt = ptrtoint ptr %.sroa.0118.0 to i64
  %i.gu = sub i64 %.sroa.15.0, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0, i64 noundef %i.gu) #21
  br label %.body

.body:                                            ; preds = %bb.o, %.body80, %.body80.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn61129, %.body80.thread ], [ %i.bb, %bb.o ], [ %.pn61, %.body80 ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  resume { ptr, i32 } %.pn61.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn13CropLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 104
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3dnn14SliceLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.1, i32 noundef 1006) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %9, align 8, !tbaa !30     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !31
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load i32, ptr %i.o, align 8, !tbaa !94   ; 8 uses
  %.val = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %.val, i32 0) ; 7 uses
  %i.q = sub nsw i32 0, %narrow.i.i
  %.not.i.i = icmp slt i32 %i.p, %i.q
  %.not20.i.i = icmp sgt i32 %i.p, %narrow.i.i
  %or.cond.i.i = or i1 %.not.i.i, %.not20.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.r = icmp ult i32 %i.p, %narrow.i.i
  br i1 %i.r, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp slt i32 %i.p, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %narrow.i.i, %i.p
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit

bb.l:                                             ; preds = %bb.j
  %i.u = sub nuw nsw i32 %i.p, %narrow.i.i
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit: ; preds = %bb.i, %bb.k, %bb.l
  %i.v = phi i32 [ %i.u, %bb.l ], [ %i.t, %bb.k ], [ %i.p, %bb.i ] ; 3 uses
  %i.w = icmp ugt i32 %narrow.i.i, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %narrow.i18 = call i32 @llvm.smax.i32(i32 %.val, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ab = zext nneg i32 %i.v to i64
  %umax = call i32 @llvm.umax.i32(i32 %i.v, i32 %narrow.i18)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN2cv8MatShapeixEm.exit, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !123 ; 4 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !124   ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 52                ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.ak = sub nuw nsw i64 1, %i.ai
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ad, i64 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(52) %11)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.al = icmp ugt i64 %i.ai, 1
  br i1 %i.al, label %bb.o, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i15, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.o
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !123
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  ret i1 false

bb.p:                                             ; preds = %.lr.ph, %_ZN2cv8MatShapeixEm.exit
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit ] ; 5 uses
  %i.an = load i32, ptr %i.y, align 4, !tbaa !25
  %narrow.i16 = call i32 @llvm.smax.i32(i32 %i.an, i32 1)
  %12 = zext nneg i32 %narrow.i16 to i64
  %13 = icmp samesign ult i64 %indvars.iv, %12
  br i1 %13, label %_ZNK2cv8MatShapeixEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.3, i32 noundef 103) #20
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.p
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.t, label %_ZN2cv8MatShapeixEm.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.3, i32 noundef 97) #20
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.v
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc nuw nsw i64 %indvars.iv.next to i32
  %exitcond.not.a = icmp eq i32 %narrow.i.i, %lftr.wideiv
  br i1 %exitcond.not.a, label %._crit_edge, label %bb.p, !llvm.loop !363
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn13CropLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 8
  br i1 %i.g, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i32, ptr %i.h, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.b
  %.sroa.041.045.us = phi ptr [ %i.l, %bb.b ], [ %i.c, %.preheader ] ; 2 uses
  %i.k = load i32, ptr %.sroa.041.045.us, align 4, !tbaa !22 ; 2 uses
  switch i32 %i.k, label %.split.us [
    i32 11, label %bb.b
    i32 9, label %bb.b
    i32 7, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader.split.us, %.preheader.split.us, %.preheader.split.us, %.preheader.split.us, %.preheader.split.us, %.preheader.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.041.045.us, i64 4 ; 2 uses
  %.not.us = icmp eq ptr %i.l, %i.b
  br i1 %.not.us, label %.split47.us, label %.preheader.split.us

bb.c:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.f, 2
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.m, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13CropLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E16__cv_check__1024) #20
  unreachable

.split47.us:                                      ; preds = %bb.e, %bb.b
  %i.n = sext i32 %2 to i64
  tail call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  ret void

.preheader.split:                                 ; preds = %.preheader, %bb.e
  %.sroa.041.045 = phi ptr [ %i.p, %bb.e ], [ %i.c, %.preheader ] ; 2 uses
  %i.o = load i32, ptr %.sroa.041.045, align 4, !tbaa !22 ; 2 uses
  switch i32 %i.o, label %bb.d [
    i32 11, label %bb.e
    i32 9, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 1, label %bb.e
    i32 0, label %bb.e
  ]

.split.us:                                        ; preds = %.preheader.split.us
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13CropLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E16__cv_check__1028) #20
  unreachable

bb.d:                                             ; preds = %.preheader.split
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn13CropLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E16__cv_check__1030) #20
  unreachable

bb.e:                                             ; preds = %.preheader.split, %.preheader.split, %.preheader.split, %.preheader.split, %.preheader.split, %.preheader.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.041.045, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %.split47.us, label %.preheader.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  tail call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !364

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !100
  switch i32 %i.a, label %bb.m [
    i32 0, label %bb.b
    i32 3, label %bb.e
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.not.i.i = icmp eq ptr %i.e, %i.f
  %i.g = icmp eq ptr %i.e, null
  %or.cond.i = or i1 %.not.i.i, %i.g
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIlLm1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #21
  br label %_ZN2cv10AutoBufferIlLm1EED2Ev.exit

_ZN2cv10AutoBufferIlLm1EED2Ev.exit:               ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #21
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !135  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i3, label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.o, 5                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.r = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.q, %.preheader.preheader.i.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !31
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = icmp eq ptr %i.s, %i.k
  br i1 %i.y, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %i.z = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.n, i64 noundef %i.z) #21
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i, %bb.g
  store ptr %i.l, ptr %i.i, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.aa, align 8, !tbaa !367
  br label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i

_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i: ; preds = %bb.i, %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt15_Sp_counted_ptrIPN2cv3dnn14SliceLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn13CropLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn13CropLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !193
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #19 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn13CropLayerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %1) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 296) #21
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
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn13CropLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn13CropLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTVN2cv3dnn14SliceLayerImplE, i64 16), ptr %i.b, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #21, !inline_history !110
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.s, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21, !inline_history !110
  br label %_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv5RangeESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.ac = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i, label %_ZN2cv3dnn13CropLayerImplD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #21, !inline_history !110
  br label %_ZN2cv3dnn13CropLayerImplD2Ev.exit

_ZN2cv3dnn13CropLayerImplD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv5RangeESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.f
  tail call void @_ZN2cv3dnn14dnn5_v2026060510SliceLayerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(296) %i.b) #19, !inline_history !110
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 296) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv3dnn13CropLayerImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn13CropLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn13CropLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!"p1 int", !14, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!19, !18, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !23, i64 4, !11, i64 8, !10, i64 12}
!25 = !{!24, !11, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !10, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !10, i64 16}
!30 = !{!29, !26, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!"p1 _ZTSN2cv5RangeE", !14, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN2cv5RangeESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 0}
!35 = !{!"_ZTSN2cv5RangeE", !11, i64 0, !11, i64 4}
!36 = !{!35, !11, i64 4}
!37 = !{!35, !11, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"p1 _ZTSSt6vectorIN2cv5RangeESaIS1_EE", !14, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv5RangeESaIS2_EESaIS4_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !39, i64 0}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!39, !39, i64 0}
!45 = !{!40, !39, i64 16}
!46 = !{!32, !32, i64 0}
!47 = !{!33, !32, i64 8}
!48 = !{!27, !26, i64 0}
!49 = !{!28, !28, i64 0}
!50 = !{!29, !28, i64 8}
!51 = !{!33, !32, i64 16}
!52 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!53 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0}
!54 = !{!53, !52, i64 0}
!55 = !{!"vtable pointer", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!58 = !{!57, !11, i64 8}
!59 = !{!57, !11, i64 12}
!60 = !{!"p1 _ZTSN2cv3dnn14SliceLayerImplE", !14, i64 0}
!61 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn14SliceLayerImplELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !60, i64 16}
!62 = !{!61, !60, i64 16}
!63 = !{!"_ZTSN2cv9AlgorithmE"}
!64 = !{!"p1 _ZTSN2cv3MatE", !14, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !67, i64 0}
!69 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !14, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !70, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !63, i64 0, !68, i64 8, !73, i64 32, !73, i64 56, !14, i64 80, !29, i64 88, !29, i64 120, !11, i64 152}
!75 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv5RangeESaIS2_EESaIS4_EE12_Vector_implE", !40, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseISt6vectorIN2cv5RangeESaIS2_EESaIS4_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIS_IN2cv5RangeESaIS1_EESaIS3_EE", !76, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !16, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !79, i64 0}
!81 = !{!"_ZTSN2cv3dnn14dnn5_v2026060510SliceLayerE", !74, i64 0, !77, i64 160, !80, i64 184, !11, i64 208, !11, i64 212}
!82 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !19, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIiSaIiEE", !83, i64 0}
!85 = !{!"bool", !10, i64 0}
!86 = !{!"_ZTSN2cv3dnn14SliceLayerImplE", !81, i64 0, !77, i64 216, !84, i64 240, !85, i64 264, !85, i64 265, !85, i64 266}
!87 = !{!86, !85, i64 266}
!88 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!89 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!90 = !{!"_ZTSSt18_Rb_tree_node_base", !88, i64 0, !89, i64 8, !89, i64 16, !89, i64 24}
!91 = !{!"_ZTSSt15_Rb_tree_header", !90, i64 0, !28, i64 32}
!92 = !{!91, !89, i64 8}
!93 = !{!89, !89, i64 0}
!94 = !{!81, !11, i64 208}
!95 = !{!81, !11, i64 212}
!96 = !{i8 0, i8 2}
!97 = !{!86, !85, i64 265}
!98 = !{!"_ZTSN2cv5ParamE", !10, i64 0}
!99 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !98, i64 0, !10, i64 8}
!100 = !{!99, !98, i64 0}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!16, !15, i64 8}
!104 = !{!19, !18, i64 16}
!105 = !{}
!106 = !{!18, !18, i64 0}
!107 = !{!65, !64, i64 0}
!108 = !{!65, !64, i64 8}
!109 = !{!65, !64, i64 16}
!110 = !{ptr @_ZN2cv3dnn14SliceLayerImplD2Ev}
!111 = !{!15, !15, i64 0}
!112 = !{!"p1 _ZTSN2cv12MatAllocatorE", !14, i64 0}
!113 = !{!"p1 _ZTSN2cv8UMatDataE", !14, i64 0}
!114 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!115 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !112, i64 56, !113, i64 64, !24, i64 72, !114, i64 128}
!116 = !{!115, !11, i64 4}
!117 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !14, i64 0}
!118 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !117, i64 0, !11, i64 8}
!119 = !{!115, !11, i64 0}
!120 = !{!118, !11, i64 8}
!121 = !{!"p1 _ZTSN2cv8MatShapeE", !14, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!122, !121, i64 8}
!124 = !{!122, !121, i64 0}
!125 = !{!16, !15, i64 16}
!126 = !{!74, !11, i64 152}
!127 = !{!"p1 long", !14, i64 0}
!128 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !127, i64 0, !28, i64 8, !10, i64 16}
!129 = !{!128, !127, i64 0}
!130 = !{!"p1 double", !14, i64 0}
!131 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !130, i64 0, !28, i64 8, !10, i64 16}
!132 = !{!131, !130, i64 0}
!133 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!134 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !133, i64 0, !28, i64 8, !10, i64 16}
!135 = !{!134, !133, i64 0}
!136 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!139 = !{!138, !127, i64 0}
!140 = !{!138, !127, i64 16}
!141 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIiED2Ev}
!142 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIlED2Ev}
!143 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIsED2Ev}
!144 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIaED2Ev}
!145 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIhED2Ev}
!146 = !{ptr @_ZN2cv3dnn14SliceLayerImpl13ParallelSliceIfED2Ev}
!147 = !{!64, !64, i64 0}
!148 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!149 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !138, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseImSaImEE", !149, i64 0}
!151 = !{!"_ZTSSt6vectorImSaImEE", !150, i64 0}
!152 = !{!"_ZTSN2cv3dnn14SliceLayerImpl13ParallelSliceIiEE", !148, i64 0, !64, i64 8, !64, i64 16, !39, i64 24, !15, i64 32, !11, i64 40, !28, i64 48, !151, i64 56, !151, i64 80}
!153 = !{!152, !11, i64 40}
!154 = !{!152, !28, i64 48}
!155 = !{!138, !127, i64 8}
!156 = !{!152, !64, i64 8}
!157 = !{i64 8}
!158 = !{!115, !26, i64 24}
!159 = !{!152, !15, i64 32}
!160 = !{!152, !39, i64 24}
!161 = !{!"_ZTSN2cv3dnn14SliceLayerImpl13ParallelSliceIlEE", !148, i64 0, !64, i64 8, !64, i64 16, !39, i64 24, !15, i64 32, !11, i64 40, !28, i64 48, !151, i64 56, !151, i64 80}
!162 = !{!161, !11, i64 40}
!163 = !{!161, !28, i64 48}
!164 = !{!161, !64, i64 8}
!165 = !{!161, !15, i64 32}
!166 = !{!161, !39, i64 24}
!167 = !{!"_ZTSN2cv3dnn14SliceLayerImpl13ParallelSliceIsEE", !148, i64 0, !64, i64 8, !64, i64 16, !39, i64 24, !15, i64 32, !11, i64 40, !28, i64 48, !151, i64 56, !151, i64 80}
!168 = !{!167, !11, i64 40}
!169 = !{!167, !28, i64 48}
!170 = !{!167, !64, i64 8}
end_hunk_1
