inline.NumInlined: 659
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2cv3dnn15Split2LayerImpl12getOutShapesERKNS_8MatShapeEiRKSt6vectorIiSaIiEERS5_IS2_SaIS2_EE:bb.a
  br i1 %i.az, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv3dnn15Split2LayerImpl12getOutShapesERKNS_8MatShapeEiRKSt6vectorIiSaIiEERS5_IS2_SaIS2_EE, ptr noundef nonnull @.str.11, i32 noundef 126) #21
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.v:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.u
  %.pn42 = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.aj

bb.w:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %1, align 4, !tbaa !64
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %i.bi = icmp samesign ult i32 %2, %narrow.i
  br i1 %i.bi, label %_ZNK2cv8MatShapeixEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 103) #21
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !22
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn44.pn, %bb.aj ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.w
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !67
  %i.bq = sub nsw i32 %i.bp, %.02764
  %.not = icmp sgt i32 %i.ay, %i.bq
  br i1 %.not, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3dnn15Split2LayerImpl12getOutShapesERKNS_8MatShapeEiRKSt6vectorIiSaIiEERS5_IS2_SaIS2_EE, ptr noundef nonnull @.str.11, i32 noundef 127) #21
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.ae:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ae
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !22
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.ad
  %.pn44 = phi { ptr, i32 } [ %i.br, %bb.ad ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.bs, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.aj

bb.af:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.by = load i32, ptr %13, align 4, !tbaa !64
  %narrow.i58 = call i32 @llvm.smax.i32(i32 %i.by, i32 1)
  %i.bz = icmp samesign ult i32 %2, %narrow.i58
  br i1 %i.bz, label %_ZN2cv8MatShapeixEm.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.ai
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !22
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.af
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !67
  %i.cg = load ptr, ptr %4, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw [52 x i8], ptr %i.cg, i64 %.065
  %i.ci = call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ch, ptr noundef nonnull align 4 dereferenceable(52) %13) ; 0 uses
  %i.cj = add nuw nsw i32 %i.ay, %.02764
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ck = add nuw i64 %.065, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !113

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #3

declare void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15Split2LayerImpl5runOpERKNS_3MatERSt6vectorIS2_SaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 12 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
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
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %27 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %38 = alloca %"class.std::vector.37", align 8   ; 12 uses
  %39 = alloca %"class.std::vector.37", align 8   ; 13 uses
  %40 = alloca %"class.cv::Range", align 4        ; 6 uses
  %41 = alloca %"class.std::function", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  %i.c = load i32, ptr %1, align 8, !tbaa !114
  %i.d = and i32 %i.c, 16384
  %.not205.i = icmp eq i32 %i.d, 0
  br i1 %.not205.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 33) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %20, align 8, !tbaa !28    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %common.resume.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull align 4 dereferenceable(52) %i.l)
  %i.m = load i32, ptr %22, align 4, !tbaa !64
  %.fr269.i = freeze i32 %i.m                     ; 6 uses
  %i.n = icmp sgt i32 %3, -1
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 38) #21
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %23, align 8, !tbaa !28    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.l
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i, %bb.k
  %.pn91.i = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.cr

bb.m:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !119
  %.not.i = icmp sgt i32 %3, %i.w
  br i1 %.not.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 38) #21
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

bb.r:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %25, align 8, !tbaa !28    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i: ; preds = %bb.r
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i, %bb.q
  %.pn93.i = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i ], [ %i.y, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.cr

bb.s:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %1, align 8, !tbaa !114   ; 4 uses
  %i.af = lshr i32 %i.ae, 5
  %i.ag = and i32 %i.af, 127
  %i.ah = add nuw nsw i32 %i.ag, 1
  %i.ai = shl i32 %i.ae, 2
  %i.aj = and i32 %i.ai, 124
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 1275511473185297, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 15
  %i.ao = mul nuw nsw i32 %i.an, %i.ah
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !57
  %.064229.i = add nsw i32 %.fr269.i, -1          ; 2 uses
  %i.aq = icmp sgt i32 %.064229.i, %3
  %narrow.i121.i = call i32 @llvm.smax.i32(i32 %.fr269.i, i32 1) ; 3 uses
  br i1 %i.aq, label %.lr.ph.i.a, label %._crit_edge.i

.lr.ph.i.a:                                       ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 12
  br label %42

._crit_edge.i:                                    ; preds = %_ZN2cv8MatShapeixEm.exit126.i, %bb.s
  %.066.lcssa.i = phi i64 [ %i.ap, %bb.s ], [ %i.bp, %_ZN2cv8MatShapeixEm.exit126.i ] ; 2 uses
  %i.as = zext nneg i32 %3 to i64                 ; 8 uses
  %i.at = icmp ult i32 %3, %narrow.i121.i
  br i1 %i.at, label %_ZN2cv8MatShapeixEm.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %19)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume.i:                                  ; preds = %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136.i ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151.i ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163.i ], [ %.pn109.pn.pn.pn.i, %bb.cr ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit.i:                       ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %.066.lcssa.i, %i.bd
  store i64 %i.be, ptr %i.a, align 8, !tbaa !57
  %.not267.i = icmp eq i32 %3, 0
  br i1 %.not267.i, label %._crit_edge234.i, label %_ZN2cv8MatShapeixEm.exit132.i.preheader

_ZN2cv8MatShapeixEm.exit132.i.preheader:          ; preds = %_ZN2cv8MatShapeixEm.exit.i
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %_ZN2cv8MatShapeixEm.exit132.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv8MatShapeixEm.exit132.i.preheader
  %n.vec = and i64 %i.as, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi105 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bi, %vector.body ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !67
  %wide.load106 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !67
  %i.bh = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bi = mul <4 x i32> %wide.load106, %vec.phi105 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.bi, %i.bh
  %i.bk = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %._crit_edge234.i, label %_ZN2cv8MatShapeixEm.exit132.i.preheader121

_ZN2cv8MatShapeixEm.exit132.i.preheader121:       ; preds = %_ZN2cv8MatShapeixEm.exit132.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit132.i.preheader ], [ %n.vec, %middle.block ]
  %.067232.i.ph = phi i32 [ 1, %_ZN2cv8MatShapeixEm.exit132.i.preheader ], [ %i.bk, %middle.block ]
  br label %_ZN2cv8MatShapeixEm.exit132.i

42:                                               ; preds = %_ZN2cv8MatShapeixEm.exit126.i, %.lr.ph.i.a
  %.064231.i = phi i32 [ %.064229.i, %.lr.ph.i.a ], [ %.064.i, %_ZN2cv8MatShapeixEm.exit126.i ] ; 3 uses
  %.066230.i = phi i64 [ %i.ap, %.lr.ph.i.a ], [ %i.bp, %_ZN2cv8MatShapeixEm.exit126.i ]
  %43 = icmp ult i32 %.064231.i, %narrow.i121.i
  br i1 %43, label %_ZN2cv8MatShapeixEm.exit126.i, label %44

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %17)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %45 unwind label %46

45:                                               ; preds = %44
  unreachable

46:                                               ; preds = %44
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %16, align 8, !tbaa !28     ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i: ; preds = %46
  %51 = load i64, ptr %49, align 8, !tbaa !22
  %52 = add i64 %51, 1
  call void @_ZdlPvm(ptr noundef %48, i64 noundef %52) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i: ; preds = %46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit126.i:                    ; preds = %42
  %i.bl = zext nneg i32 %.064231.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !67
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %.066230.i, %i.bo               ; 2 uses
  %.064.i = add nsw i32 %.064231.i, -1            ; 2 uses
  %53 = icmp sgt i32 %.064.i, %3
  br i1 %53, label %42, label %._crit_edge.i, !llvm.loop !123

._crit_edge234.i:                                 ; preds = %_ZN2cv8MatShapeixEm.exit132.i, %middle.block, %_ZN2cv8MatShapeixEm.exit.i
  %.067.lcssa.i = phi i32 [ 1, %_ZN2cv8MatShapeixEm.exit.i ], [ %i.bk, %middle.block ], [ %i.dk, %_ZN2cv8MatShapeixEm.exit132.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !80    ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 208
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !57
  %.not268.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not268.i, label %._crit_edge245.i, label %.lr.ph244.i

.lr.ph244.i:                                      ; preds = %._crit_edge234.i
  %i.bx = icmp sgt i32 %.fr269.i, 0
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 3 uses
  br i1 %i.bx, label %.lr.ph244.split.us.preheader.i, label %.lr.ph244.split.i

.lr.ph244.split.us.preheader.i:                   ; preds = %.lr.ph244.i
  %wide.trip.count282.i = zext nneg i32 %.fr269.i to i64 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.as
  br label %.lr.ph244.split.us.i

.lr.ph244.split.us.i:                             ; preds = %._crit_edge239.us.i, %.lr.ph244.split.us.preheader.i
  %.062242.us.i = phi i64 [ %i.dg, %._crit_edge239.us.i ], [ 0, %.lr.ph244.split.us.preheader.i ] ; 2 uses
  %.065241.us.i = phi i32 [ %.us-phi.i, %._crit_edge239.us.i ], [ 0, %.lr.ph244.split.us.preheader.i ] ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [208 x i8], ptr %i.ca, i64 %.062242.us.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %27, ptr noundef nonnull align 4 dereferenceable(52) %i.cc)
  %i.cd = load i32, ptr %i.cb, align 8, !tbaa !114 ; 2 uses
  %i.ce = and i32 %i.cd, 16384
  %.not206.us.i = icmp eq i32 %i.ce, 0
  br i1 %.not206.us.i, label %.split.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph244.split.us.i
  %i.cf = xor i32 %i.cd, %i.ae
  %i.cg = and i32 %i.cf, 4095
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %.split249.us.i

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !119
  %i.ck = icmp eq i32 %i.cj, %.fr269.i
  br i1 %i.ck, label %.preheader.us.i, label %.split251.us.i

.preheader.us.split.i:                            ; preds = %.preheader.us.i, %bb.z
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %bb.z ], [ 0, %.preheader.us.i ] ; 6 uses
  %i.cl = icmp eq i64 %indvars.iv279.i, %i.as
  br i1 %i.cl, label %.split259.us.i, label %bb.y

bb.y:                                             ; preds = %.preheader.us.split.i
  %exitcond.not421.i = icmp eq i64 %indvars.iv279.i, %i.ct
  br i1 %exitcond.not421.i, label %.split253.us.i, label %_ZN2cv8MatShapeixEm.exit159.us.i

_ZN2cv8MatShapeixEm.exit159.us.i:                 ; preds = %bb.y
  %exitcond372.not.i = icmp eq i64 %indvars.iv279.i, %i.cu
  br i1 %exitcond372.not.i, label %.split255.us.i, label %_ZN2cv8MatShapeixEm.exit165.us.i

_ZN2cv8MatShapeixEm.exit165.us.i:                 ; preds = %_ZN2cv8MatShapeixEm.exit159.us.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv279.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv279.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.z, label %.split257.us.i

bb.z:                                             ; preds = %_ZN2cv8MatShapeixEm.exit165.us.i
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond283.not.i = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count282.i
  br i1 %exitcond283.not.i, label %._crit_edge239.us.i, label %.preheader.us.split.i, !llvm.loop !124

.preheader.us.i:                                  ; preds = %bb.x
  %i.cr = load i32, ptr %22, align 4
  %narrow.i154.us.i = call i32 @llvm.smax.i32(i32 %i.cr, i32 1) ; 2 uses
  %i.cs = load i32, ptr %27, align 4
  %.fr.i = freeze i32 %i.cs
  %narrow.i160.us.i = call i32 @llvm.smax.i32(i32 %.fr.i, i32 1) ; 2 uses
  %i.ct = zext nneg i32 %narrow.i154.us.i to i64  ; 2 uses
  %i.cu = zext nneg i32 %narrow.i160.us.i to i64  ; 2 uses
  %i.cv = icmp ult i32 %3, %narrow.i160.us.i
  br i1 %i.cv, label %.preheader.us.split.us.i, label %.preheader.us.split.i

.preheader.us.split.us.i:                         ; preds = %.preheader.us.i, %bb.ab
  %indvars.iv279.us.i = phi i64 [ %indvars.iv.next280.us.i, %bb.ab ], [ 0, %.preheader.us.i ] ; 6 uses
  %.1236.us.us.i = phi i32 [ %.2.us.us.i, %bb.ab ], [ %.065241.us.i, %.preheader.us.i ] ; 2 uses
  %i.cw = icmp eq i64 %indvars.iv279.us.i, %i.as
  br i1 %i.cw, label %_ZN2cv8MatShapeixEm.exit153.us.us.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.us.split.us.i
  %i.cx = icmp samesign ult i64 %indvars.iv279.us.i, %i.ct
  br i1 %i.cx, label %_ZN2cv8MatShapeixEm.exit159.us.us.i, label %.split253.us.i

_ZN2cv8MatShapeixEm.exit159.us.us.i:              ; preds = %bb.aa
  %i.cy = icmp samesign ult i64 %indvars.iv279.us.i, %i.cu
  br i1 %i.cy, label %_ZN2cv8MatShapeixEm.exit165.us.us.i, label %.split255.us.i

_ZN2cv8MatShapeixEm.exit165.us.us.i:              ; preds = %_ZN2cv8MatShapeixEm.exit159.us.us.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv279.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !67
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv279.us.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !67
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.ab, label %.split257.us.i

_ZN2cv8MatShapeixEm.exit153.us.us.i:              ; preds = %.preheader.us.split.us.i
  %i.de = load i32, ptr %i.bz, align 4, !tbaa !67
  %i.df = add nsw i32 %i.de, %.1236.us.us.i
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv8MatShapeixEm.exit153.us.us.i, %_ZN2cv8MatShapeixEm.exit165.us.us.i
  %.2.us.us.i = phi i32 [ %i.df, %_ZN2cv8MatShapeixEm.exit153.us.us.i ], [ %.1236.us.us.i, %_ZN2cv8MatShapeixEm.exit165.us.us.i ] ; 2 uses
  %indvars.iv.next280.us.i = add nuw nsw i64 %indvars.iv279.us.i, 1 ; 2 uses
  %exitcond283.not.us.i = icmp eq i64 %indvars.iv.next280.us.i, %wide.trip.count282.i
  br i1 %exitcond283.not.us.i, label %._crit_edge239.us.i, label %.preheader.us.split.us.i, !llvm.loop !124

._crit_edge239.us.i:                              ; preds = %bb.z, %bb.ab
  %.us-phi.i = phi i32 [ %.2.us.us.i, %bb.ab ], [ %.065241.us.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.dg = add nuw i64 %.062242.us.i, 1            ; 2 uses
  %.pr.us.i = load i64, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %.pr.us.i
  br i1 %i.dh, label %.lr.ph244.split.us.i, label %._crit_edge245.i, !llvm.loop !125

_ZN2cv8MatShapeixEm.exit132.i:                    ; preds = %_ZN2cv8MatShapeixEm.exit132.i.preheader121, %_ZN2cv8MatShapeixEm.exit132.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2cv8MatShapeixEm.exit132.i ], [ %indvars.iv.i.ph, %_ZN2cv8MatShapeixEm.exit132.i.preheader121 ] ; 2 uses
  %.067232.i = phi i32 [ %i.dk, %_ZN2cv8MatShapeixEm.exit132.i ], [ %.067232.i.ph, %_ZN2cv8MatShapeixEm.exit132.i.preheader121 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !67
  %i.dk = mul nsw i32 %i.dj, %.067232.i           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge234.i, label %_ZN2cv8MatShapeixEm.exit132.i, !llvm.loop !126

._crit_edge245.loopexit274.i:                     ; preds = %.preheader.i
  %.pre.i = load i32, ptr %22, align 4, !tbaa !64
  %.pre375.i = call i32 @llvm.smax.i32(i32 %.pre.i, i32 1)
  br label %._crit_edge245.i

._crit_edge245.i:                                 ; preds = %._crit_edge239.us.i, %._crit_edge245.loopexit274.i, %._crit_edge234.i
  %narrow.i133.pre-phi.i = phi i32 [ %narrow.i121.i, %._crit_edge234.i ], [ %.pre375.i, %._crit_edge245.loopexit274.i ], [ %narrow.i154.us.i, %._crit_edge239.us.i ]
  %i.dl = phi i64 [ 0, %._crit_edge234.i ], [ %.pr.i, %._crit_edge245.loopexit274.i ], [ %.pr.us.i, %._crit_edge239.us.i ] ; 8 uses
  %.065.lcssa.i = phi i32 [ 0, %._crit_edge234.i ], [ 0, %._crit_edge245.loopexit274.i ], [ %.us-phi.i, %._crit_edge239.us.i ]
  %i.dm = icmp ult i32 %3, %narrow.i133.pre-phi.i
  br i1 %i.dm, label %_ZN2cv8MatShapeixEm.exit138.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge245.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %15)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135.i: ; preds = %bb.ae
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit138.i:                    ; preds = %._crit_edge245.i
  %i.dt = load i32, ptr %i.bb, align 4, !tbaa !67
  %i.du = icmp eq i32 %.065.lcssa.i, %i.dt
  br i1 %i.du, label %bb.bj, label %bb.be

.lr.ph244.split.i:                                ; preds = %.lr.ph244.i, %.preheader.i
  %.062242.i = phi i64 [ %i.eu, %.preheader.i ], [ 0, %.lr.ph244.i ] ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !80
  %i.dw = getelementptr inbounds nuw [208 x i8], ptr %i.dv, i64 %.062242.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %27, ptr noundef nonnull align 4 dereferenceable(52) %i.dx)
  %i.dy = load i32, ptr %i.dw, align 8, !tbaa !114 ; 2 uses
  %i.dz = and i32 %i.dy, 16384
  %.not206.i = icmp eq i32 %i.dz, 0
  br i1 %.not206.i, label %.split.us.i, label %bb.aj

.split.us.i:                                      ; preds = %.lr.ph244.split.i, %.lr.ph244.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.split.us.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 56) #21
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %.split.us.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

bb.ai:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %28, align 8, !tbaa !28   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i: ; preds = %bb.ai
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !22
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i, %bb.ah
  %.pn103.i = phi { ptr, i32 } [ %i.ea, %bb.ah ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i ], [ %i.eb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.bd

bb.aj:                                            ; preds = %.lr.ph244.split.i
  %i.eh = xor i32 %i.dy, %i.ae
  %i.ei = and i32 %i.eh, 4095
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ao, label %.split249.us.i

.split249.us.i:                                   ; preds = %bb.aj, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %.split249.us.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 57) #21
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %.split249.us.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i

bb.an:                                            ; preds = %bb.ak
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %30, align 8, !tbaa !28   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i: ; preds = %bb.an
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !22
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i, %bb.am
  %.pn105.i = phi { ptr, i32 } [ %i.ek, %bb.am ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i ], [ %i.el, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.bd

bb.ao:                                            ; preds = %bb.aj
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !119
  %i.et = icmp eq i32 %i.es, %.fr269.i
  br i1 %i.et, label %.preheader.i, label %.split251.us.i

.preheader.i:                                     ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.eu = add nuw i64 %.062242.i, 1               ; 2 uses
  %.pr.i = load i64, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.pr.i
  br i1 %i.ev, label %.lr.ph244.split.i, label %._crit_edge245.loopexit274.i, !llvm.loop !125

.split251.us.i:                                   ; preds = %bb.ao, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %.split251.us.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 58) #21
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %.split251.us.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i

bb.as:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %32, align 8, !tbaa !28   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i: ; preds = %bb.as
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !22
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i, %bb.ar
  %.pn107.i = phi { ptr, i32 } [ %i.ew, %bb.ar ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.i ], [ %i.ex, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.bd

.split259.us.i:                                   ; preds = %.preheader.us.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %13)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.split259.us.i
  unreachable

bb.au:                                            ; preds = %.split259.us.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150.i: ; preds = %bb.au
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !22
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume.i

.split253.us.i:                                   ; preds = %bb.y, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.split253.us.i
  unreachable

bb.aw:                                            ; preds = %.split253.us.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156.i: ; preds = %bb.aw
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !22
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume.i

.split255.us.i:                                   ; preds = %_ZN2cv8MatShapeixEm.exit159.us.i, %_ZN2cv8MatShapeixEm.exit159.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.split255.us.i
  unreachable

bb.ay:                                            ; preds = %.split255.us.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162.i: ; preds = %bb.ay
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !22
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume.i

.split257.us.i:                                   ; preds = %_ZN2cv8MatShapeixEm.exit165.us.i, %_ZN2cv8MatShapeixEm.exit165.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.split257.us.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 63) #21
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.split257.us.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

bb.bc:                                            ; preds = %bb.az
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %34, align 8, !tbaa !28   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %bb.bc
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !22
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i, %bb.bb
  %.pn109.i = phi { ptr, i32 } [ %i.fv, %bb.bb ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i ], [ %i.fw, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i
  %.pn109.pn.i = phi { ptr, i32 } [ %.pn109.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i ], [ %.pn107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i ], [ %.pn105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i ], [ %.pn103.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.cq

bb.be:                                            ; preds = %_ZN2cv8MatShapeixEm.exit138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 68) #21
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i

bb.bi:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %36, align 8, !tbaa !28   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i: ; preds = %bb.bi
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !22
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i, %bb.bh
  %.pn95.i = phi { ptr, i32 } [ %i.gc, %bb.bh ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i ], [ %i.gd, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.cq

bb.bj:                                            ; preds = %_ZN2cv8MatShapeixEm.exit138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.gj = icmp ugt i64 %i.dl, 1152921504606846975
  br i1 %i.gj, label %bb.bk, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
          to label %.noexc.i unwind label %bb.bo

.noexc.i:                                         ; preds = %bb.bk
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.bj
  %.not.i.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.gk = shl nuw nsw i64 %i.dl, 3                ; 2 uses
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #18
          to label %.noexc172.i unwind label %bb.bo ; 5 uses

.noexc172.i:                                      ; preds = %bb.bl
  store ptr %i.gl, ptr %38, align 8, !tbaa !127
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.dl
  %i.gn = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !129
  store i64 0, ptr %i.gl, align 8, !tbaa !57
  %i.go = getelementptr i8, ptr %i.gl, i64 8      ; 3 uses
  %i.gp = add nsw i64 %i.dl, -1                   ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 0                    ; 2 uses
  br i1 %i.gq, label %bb.bm, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc172.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gp, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.go, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !57
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.bm

bb.bm:                                            ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc172.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.gr, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.go, %.noexc172.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.gs, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #18
          to label %.noexc180.i unwind label %bb.bp ; 5 uses

.noexc180.i:                                      ; preds = %bb.bm
  store ptr %i.gt, ptr %39, align 8, !tbaa !127
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.dl
  %i.gv = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !129
  store i64 0, ptr %i.gt, align 8, !tbaa !57
  %i.gw = getelementptr i8, ptr %i.gt, i64 8      ; 3 uses
  br i1 %i.gq, label %.lr.ph264.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i175.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i175.i: ; preds = %.noexc180.i
  %.idx.i.i.i.i.i.i.i176.i = shl nuw nsw i64 %i.gp, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.gw, i8 0, i64 %.idx.i.i.i.i.i.i.i176.i, i1 false), !tbaa !57
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx.i.i.i.i.i.i.i176.i
  br label %.lr.ph264.i

bb.bn:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  br label %._crit_edge265.i

.lr.ph264.i:                                      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i175.i, %.noexc180.i
  %.0.i.i.i.i.i177.ph.i = phi ptr [ %i.gx, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i175.i ], [ %i.gw, %.noexc180.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %.0.i.i.i.i.i177.ph.i, ptr %i.gy, align 8, !tbaa !130
  %i.gz = load ptr, ptr %2, align 8, !tbaa !80
  br label %bb.bq

._crit_edge265.loopexit.i:                        ; preds = %bb.bu
  %i.ha = trunc i64 %i.dl to i32
  %i.hb = mul i32 %.067.lcssa.i, %i.ha
  br label %._crit_edge265.i

._crit_edge265.i:                                 ; preds = %._crit_edge265.loopexit.i, %bb.bn
  %.lcssa.i = phi i32 [ 0, %bb.bn ], [ %i.hb, %._crit_edge265.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  store i32 0, ptr %40, align 4, !tbaa !131
  %i.hc = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i32 %.lcssa.i, ptr %i.hc, align 4, !tbaa !133
  %i.hd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 32, i1 false)
  %i.he = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %bb.bw unwind label %bb.cl     ; 9 uses

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit201.i

bb.bp:                                            ; preds = %bb.bm
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit199.i

bb.bq:                                            ; preds = %bb.bu, %.lr.ph264.i
  %.0262.i = phi i64 [ 0, %.lr.ph264.i ], [ %i.hz, %bb.bu ] ; 4 uses
  %.060261.i = phi i64 [ 0, %.lr.ph264.i ], [ %i.hy, %bb.bu ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [208 x i8], ptr %i.gz, i64 %.0262.i ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !64
  %narrow.i183.i = call i32 @llvm.smax.i32(i32 %i.hj, i32 1)
  %i.hk = icmp samesign ult i32 %3, %narrow.i183.i
  br i1 %i.hk, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc188.i unwind label %bb.bv

.noexc188.i:                                      ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.23, i32 noundef 97) #21
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc188.i
  unreachable

bb.bt:                                            ; preds = %.noexc188.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185.i: ; preds = %bb.bt
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !22
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body.i

bb.bu:                                            ; preds = %bb.bq
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 84
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.as
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !67
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.0262.i
  store i64 %.060261.i, ptr %i.hu, align 8, !tbaa !57
  %i.hv = sext i32 %i.ht to i64
  %i.hw = mul i64 %.066.lcssa.i, %i.hv            ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.0262.i
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !57
  %i.hy = add i64 %i.hw, %.060261.i
  %i.hz = add nuw i64 %.0262.i, 1                 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %i.hz, %i.dl
  br i1 %exitcond373.not.i, label %._crit_edge265.loopexit.i, label %bb.bq, !llvm.loop !134

bb.bv:                                            ; preds = %bb.br
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bw:                                            ; preds = %._crit_edge265.i
  %i.ib = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %i.b, ptr %i.he, align 16, !tbaa !135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !138
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %38, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !139
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store ptr %39, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !139
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  store ptr %i.a, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !135
  store ptr %i.he, ptr %41, align 8, !tbaa !141
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.ib, align 8, !tbaa !142
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.hd, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.id = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %bb.bx unwind label %.body191.thread.i ; 2 uses

.body191.thread.i:                                ; preds = %bb.bw
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bx:                                            ; preds = %bb.bw
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.id, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.he, i64 48, i1 false), !tbaa.struct !146
  store ptr %i.id, ptr %5, align 8, !tbaa !141
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.if, align 8, !tbaa !142
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ic, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %4, align 8, !tbaa !14
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ig, i8 0, i64 32, i1 false)
  %i.ii = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i.i unwind label %.body.i.i.i ; 2 uses

.body.i.i.i:                                      ; preds = %bb.bx
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %4) #20
  br label %.body.i.i

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i.i: ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ii, ptr noundef nonnull align 8 dereferenceable(48) %i.he, i64 48, i1 false)
  store ptr %i.ii, ptr %i.ig, align 8, !tbaa !141
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.ik, align 8, !tbaa !142
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ih, align 8, !tbaa !145
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef -1.000000e+00)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %4, align 8, !tbaa !14
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !145 ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i5.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.im = invoke noundef zeroext i1 %i.il(ptr noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %i.ig, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i.i unwind label %bb.ca, !inline_history !147 ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #22, !inline_history !147
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i.i: ; preds = %bb.bz, %bb.by
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %4) #20, !inline_history !147
  %i.ip = load ptr, ptr %i.ic, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i.i
  %i.iq = invoke noundef zeroext i1 %i.ip(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.cg unwind label %bb.cc     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #22
  unreachable

bb.cd:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cd, %.body.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.it, %bb.cd ], [ %i.ij, %.body.i.i.i ] ; 2 uses
  %i.iu = load ptr, ptr %i.ic, align 8, !tbaa !145 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i7.i.i, label %.body191.i, label %bb.ce

bb.ce:                                            ; preds = %.body.i.i
  %i.iv = invoke noundef zeroext i1 %i.iu(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body191.i unwind label %bb.cf ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #22
  unreachable

bb.cg:                                            ; preds = %bb.cb, %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.iy = load ptr, ptr %i.hd, align 8, !tbaa !145 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iz = invoke noundef zeroext i1 %i.iy(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.ci ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.jc = load ptr, ptr %39, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i193.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i193.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !129
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.cj, %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.ji = load ptr, ptr %38, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i194.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i194.i, label %_ZN2cv3dnnL5splitERKNS_3MatERSt6vectorIS1_SaIS1_EEi.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !129
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.ji to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jn) #19
  br label %_ZN2cv3dnnL5splitERKNS_3MatERSt6vectorIS1_SaIS1_EEi.exit

bb.cl:                                            ; preds = %._crit_edge265.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit197.i

.body191.i:                                       ; preds = %bb.ce, %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre374.i = load ptr, ptr %i.hd, align 8, !tbaa !145 ; 2 uses
  %.not.i196.i = icmp eq ptr %.pre374.i, null
  br i1 %.not.i196.i, label %_ZNSt14_Function_baseD2Ev.exit197.i, label %bb.cm

bb.cm:                                            ; preds = %.body191.i, %.body191.thread.i
  %eh.lpad-body192424.i = phi { ptr, i32 } [ %i.ie, %.body191.thread.i ], [ %.pn.i.i, %.body191.i ]
  %i.jp = phi ptr [ @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL5splitERKNS0_3MatERSt6vectorIS6_SaIS6_EEiE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", %.body191.thread.i ], [ %.pre374.i, %.body191.i ]
  %i.jq = invoke noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit197.i unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit197.i:              ; preds = %bb.cm, %.body191.i, %bb.cl
  %.pn97.i = phi { ptr, i32 } [ %i.jo, %bb.cl ], [ %.pn.i.i, %.body191.i ], [ %eh.lpad-body192424.i, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt14_Function_baseD2Ev.exit197.i, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186.i
  %.pn99.i = phi { ptr, i32 } [ %.pn97.i, %_ZNSt14_Function_baseD2Ev.exit197.i ], [ %i.ia, %bb.bv ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186.i ] ; 2 uses
  %i.jt = load ptr, ptr %39, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i198.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i198.i, label %_ZNSt6vectorImSaImEED2Ev.exit199.i, label %bb.co

bb.co:                                            ; preds = %.body.i
  %i.ju = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !129
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit199.i

_ZNSt6vectorImSaImEED2Ev.exit199.i:               ; preds = %bb.co, %.body.i, %bb.bp
  %.pn99.pn.i = phi { ptr, i32 } [ %i.hg, %bb.bp ], [ %.pn99.i, %.body.i ], [ %.pn99.i, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.jz = load ptr, ptr %38, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i200.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i200.i, label %_ZNSt6vectorImSaImEED2Ev.exit201.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit199.i
  %i.ka = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !129
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit201.i

_ZNSt6vectorImSaImEED2Ev.exit201.i:               ; preds = %bb.cp, %_ZNSt6vectorImSaImEED2Ev.exit199.i, %bb.bo
  %.pn99.pn.pn.i = phi { ptr, i32 } [ %i.hf, %bb.bo ], [ %.pn99.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit199.i ], [ %.pn99.pn.i, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit201.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i, %bb.bd
  %.pn109.pn.pn.i = phi { ptr, i32 } [ %.pn109.pn.i, %bb.bd ], [ %.pn99.pn.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit201.i ], [ %.pn95.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i
  %.pn109.pn.pn.pn.i = phi { ptr, i32 } [ %.pn109.pn.pn.i, %bb.cq ], [ %.pn93.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i ], [ %.pn91.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %common.resume.i

_ZN2cv3dnnL5splitERKNS_3MatERSt6vectorIS1_SaIS1_EEi.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  ret void
}

declare void @_ZN2cv4UMat3fitERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !81

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !80
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
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
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #11

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 52                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 52                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 177372539170284151
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 177372539170284150, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %.014.i.i.i)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv8MatShapeEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !148

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #20 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.q, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.at, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt27__uninitialized_default_n_aIPN2cv8MatShapeEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !72
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN2cv8MatShapeESaIS1_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
  unreachable

_ZNKSt6vectorIN2cv8MatShapeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 177372539170284150) ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 52                ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNKSt6vectorIN2cv8MatShapeESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i43
  %.014.i.i.i41 = phi ptr [ %i.ae, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i43 ], [ %i.ac, %_ZNKSt6vectorIN2cv8MatShapeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.01013.i.i.i42 = phi i64 [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i43 ], [ %1, %_ZNKSt6vectorIN2cv8MatShapeESaIS1_EE12_M_check_lenEmPKc.exit ]
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %.014.i.i.i41)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i43 unwind label %bb.i

_ZSt10_ConstructIN2cv8MatShapeEJEEvPT_DpOT0_.exit.i.i.i43: ; preds = %.lr.ph.i.i.i40
  %i.ad = add nsw i64 %.01013.i.i.i42, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i41, i64 52
  %.not.i.i.i44 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i44, label %_ZSt27__uninitialized_default_n_aIPN2cv8MatShapeEmS1_ET_S3_T0_RSaIT1_E.exit46, label %.lr.ph.i.i.i40, !llvm.loop !148

bb.i:                                             ; preds = %.lr.ph.i.i.i40
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #20 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
