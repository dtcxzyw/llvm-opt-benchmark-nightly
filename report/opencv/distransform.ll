inline.NumInlined: 181
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv5utils5trace7details6RegionD2Ev:bb.a
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [256 x i8], align 16              ; 24 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 18 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %20 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiiiE26__cv_trace_location_fn1192)
  %i.b = icmp eq i32 %2, 1
  %i.c = icmp eq i32 %4, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.bq

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayEE25__cv_trace_location_fn998)
          to label %.noexc unwind label %bb.bp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.d = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.noexc
  %i.e = icmp eq i32 %i.d, 65536
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8, !noalias !112
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.g)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.noexc.i
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.e

_ZNK2cv11_InputArray6getMatEi.exit.i:             ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr %16, align 8, !tbaa !15
  %i.i = and i32 %i.h, 4095
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 1002) #19
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %17, align 8, !tbaa !23    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.q = load i64, ptr %i.o, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.m, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.body.i

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 6 uses
  %i.u = icmp slt i32 %i.t, 3
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc15.i unwind label %bb.bk

.noexc15.i:                                       ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc15.i
  unreachable

bb.n:                                             ; preds = %.noexc15.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %13, align 8, !tbaa !23    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.z = load i64, ptr %i.x, align 8, !tbaa !27
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body.i

bb.o:                                             ; preds = %bb.k
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %bb.p, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.o
  %i.ac = icmp eq i32 %i.t, 0
  %i.ad = zext i1 %i.ac to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.af = icmp eq i32 %i.t, 2
  %.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep30.val.i = load i32, ptr %.sroa.gep30.i, align 8
  %.val.i = load i32, ptr %i.ae, align 4          ; 2 uses
  %i.ag = select i1 %i.af, i32 %.sroa.gep30.val.i, i32 %.val.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, 1
  br i1 %.not.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %i.ah = phi i32 [ %i.ad, %.thread.i.i ], [ %i.ag, %bb.p ]
  %i.ai = icmp sgt i32 %i.t, -1
  %i.aj = zext i1 %i.ai to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ak = phi i32 [ %i.ah, %bb.q ], [ %i.ag, %bb.p ]
  %i.al = phi i32 [ %i.aj, %bb.q ], [ %.val.i, %bb.p ]
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.al to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ak to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.s unwind label %bb.bk

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.am = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc16.i unwind label %bb.bl

.noexc16.i:                                       ; preds = %bb.s
  %i.an = icmp eq i32 %i.am, 65536
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc16.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8, !noalias !115
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.ap)
          to label %_ZNK2cv11_InputArray6getMatEi.exit19.i unwind label %bb.bl

bb.u:                                             ; preds = %.noexc16.i
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit19.i unwind label %bb.bl

_ZNK2cv11_InputArray6getMatEi.exit19.i:           ; preds = %bb.u, %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !35 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71 ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !72 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !72 ; 7 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr %16, align 8, !tbaa !15
  %i.be = and i32 %i.bd, 4095
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit19.i
  %i.bg = load i32, ptr %19, align 8, !tbaa !15
  %i.bh = and i32 %i.bg, 4095
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK2cv11_InputArray6getMatEi.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 931) #19
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

bb.aa:                                            ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %bb.aa
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !27
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.bj, %bb.z ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %i.bk, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bh

bb.ab:                                            ; preds = %bb.v
  %i.bq = load i32, ptr %i.s, align 8, !tbaa !28  ; 6 uses
  %i.br = icmp slt i32 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc24.i unwind label %bb.bm

.noexc24.i:                                       ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc24.i
  unreachable

bb.ae:                                            ; preds = %.noexc24.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !27
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body25.i

bb.af:                                            ; preds = %bb.ab
  %i.by = icmp sgt i32 %i.bq, 0
  br i1 %i.by, label %bb.ag, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.af
  %i.bz = icmp eq i32 %i.bq, 0
  %i.ca = zext i1 %i.bz to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.cc = icmp eq i32 %i.bq, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep33.val.i = load i32, ptr %.sroa.gep33.i, align 8
  %.val36.i = load i32, ptr %i.cb, align 4        ; 2 uses
  %i.cd = select i1 %i.cc, i32 %.sroa.gep33.val.i, i32 %.val36.i ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i.i, label %bb.ah, label %_ZNK2cv8MatShapeclEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i
  %i.ce = phi i32 [ %i.ca, %.thread.i.i.i ], [ %i.cd, %bb.ag ]
  %i.cf = icmp sgt i32 %i.bq, -1
  %i.cg = zext i1 %i.cf to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i.i

_ZNK2cv8MatShapeclEv.exit.i.i:                    ; preds = %bb.ah, %bb.ag
  %i.ch = phi i32 [ %i.ce, %bb.ah ], [ %i.cd, %bb.ag ]
  %i.ci = phi i32 [ %i.cg, %bb.ah ], [ %.val36.i, %bb.ag ]
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !28 ; 6 uses
  %i.cl = icmp slt i32 %i.ck, 3
  br i1 %i.cl, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc27.i unwind label %bb.bm

.noexc27.i:                                       ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc27.i
  unreachable

bb.ak:                                            ; preds = %.noexc27.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i: ; preds = %bb.ak
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body25.i

bb.al:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  %i.cs = icmp sgt i32 %i.ck, 0
  br i1 %i.cs, label %bb.am, label %.thread.i144.i.i

.thread.i144.i.i:                                 ; preds = %bb.al
  %i.ct = icmp eq i32 %i.ck, 0
  %i.cu = zext i1 %i.ct to i32
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 84
  %i.cw = icmp eq i32 %i.ck, 2
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %19, i64 88
  %.sroa.gep.val.i = load i32, ptr %.sroa.gep.i, align 8
  %.val37.i = load i32, ptr %i.cv, align 4        ; 2 uses
  %i.cx = select i1 %i.cw, i32 %.sroa.gep.val.i, i32 %.val37.i ; 2 uses
  %.not.i149.i.i = icmp eq i32 %i.ck, 1
  br i1 %.not.i149.i.i, label %bb.an, label %_ZNK2cv8MatShapeclEv.exit150.i.i

bb.an:                                            ; preds = %bb.am, %.thread.i144.i.i
  %i.cy = phi i32 [ %i.cu, %.thread.i144.i.i ], [ %i.cx, %bb.am ]
  %i.cz = icmp sgt i32 %i.ck, -1
  %i.da = zext i1 %i.cz to i32
  br label %_ZNK2cv8MatShapeclEv.exit150.i.i

_ZNK2cv8MatShapeclEv.exit150.i.i:                 ; preds = %bb.an, %bb.am
  %i.db = phi i32 [ %i.cy, %bb.an ], [ %i.cx, %bb.am ]
  %i.dc = phi i32 [ %i.da, %bb.an ], [ %.val37.i, %bb.am ]
  %i.dd = icmp eq i32 %i.ch, %i.db
  %i.de = icmp eq i32 %i.ci, %i.dc
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %vector.body, label %bb.ao

vector.body:                                      ; preds = %_ZNK2cv8MatShapeclEv.exit150.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNK2cv8MatShapeclEv.exit150.i.i ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %_ZNK2cv8MatShapeclEv.exit150.i.i ] ; 2 uses
  %i.dg = trunc <16 x i64> %vec.ind to <16 x i32>
  %i.dh = add <16 x i32> %i.dg, splat (i32 1)
  %i.di = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.dh, <16 x i32> splat (i32 255))
  %i.dj = trunc nuw <16 x i32> %i.di to <16 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.dj, ptr %i.dk, align 16, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.dl = icmp eq i64 %index.next, 256
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !118

bb.ao:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit150.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 932) #19
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i

bb.as:                                            ; preds = %bb.ap
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i: ; preds = %bb.as
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !27
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i, %bb.ar
  %.pn130.i.i = phi { ptr, i32 } [ %i.dm, %bb.ar ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i ], [ %i.dn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bh

middle.block:                                     ; preds = %vector.body
  %i.dt = load i8, ptr %i.av, align 1, !tbaa !27
  %i.du = icmp ne i8 %i.dt, 0
  %i.dv = sext i1 %i.du to i8
  store i8 %i.dv, ptr %i.ay, align 1, !tbaa !27
  %i.dw = icmp sgt i32 %i.ar, 1                   ; 3 uses
  br i1 %i.dw, label %.lr.ph.preheader.i.i, label %.preheader.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %middle.block
  %wide.trip.count.i.i = zext nneg i32 %i.ar to i64 ; 2 uses
  %i.dx = add nsw i64 %wide.trip.count.i.i, -1    ; 6 uses
  %i.dy = add nsw i64 %wide.trip.count.i.i, -2    ; 2 uses
  %xtraiter45 = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter48 = and i64 %i.dx, -2
  br label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.bc
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv184.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next185.i.i.1, %.preheader.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod47 = trunc i64 %i.dx to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv184.i.i.epil.init
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !27
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %.preheader.i.i.epilog-lcssa, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.ed = getelementptr i8, ptr %i.ay, i64 %indvars.iv184.i.i.epil.init
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !27
  br label %.preheader.i.i.epilog-lcssa

.preheader.i.i.epilog-lcssa:                      ; preds = %bb.at, %.lr.ph.i.i.epil.preheader
  %i.ej = phi i8 [ %i.ei, %bb.at ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv184.i.i.epil.init
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !27
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.preheader.i.i.epilog-lcssa
  %i.el = icmp sgt i32 %i.at, 1
  br i1 %i.el, label %.lr.ph165.i.i, label %._crit_edge166.thread.i.i

.preheader.thread.i.i:                            ; preds = %middle.block
  %i.em = icmp sgt i32 %i.at, 1
  br i1 %i.em, label %.lr.ph165.thread.i.i, label %.loopexit.i

.lr.ph165.thread.i.i:                             ; preds = %.preheader.thread.i.i
  %sext134222.i.i = shl i64 %i.ba, 32
  %i.en = ashr exact i64 %sext134222.i.i, 32      ; 3 uses
  %sext135223.i.i = shl i64 %i.bb, 32
  %i.eo = ashr exact i64 %sext135223.i.i, 32      ; 3 uses
  %.neg224.i.i = mul i64 %i.bb, -4294967296
  %i.ep = ashr exact i64 %.neg224.i.i, 32         ; 3 uses
  %i.eq = add nsw i32 %i.at, -1                   ; 3 uses
  %xtraiter = and i32 %i.eq, 1
  %i.er = icmp eq i32 %i.at, 2
  br i1 %i.er, label %.lr.ph165.split.i.i.epil.preheader, label %.lr.ph165.thread.i.i.new

.lr.ph165.thread.i.i.new:                         ; preds = %.lr.ph165.thread.i.i
  %unroll_iter = and i32 %i.eq, -2
  br label %.lr.ph165.split.i.i

.lr.ph165.i.i:                                    ; preds = %.preheader.i.i
  %sext134.i.i = shl i64 %i.ba, 32
  %i.es = ashr exact i64 %sext134.i.i, 32
  %sext135.i.i = shl i64 %i.bb, 32
  %i.et = ashr exact i64 %sext135.i.i, 32
  %.neg.i.i = mul i64 %i.bb, -4294967296
  %i.eu = ashr exact i64 %.neg.i.i, 32
  %xtraiter50 = and i64 %i.dx, 1
  %i.ev = icmp eq i64 %i.dy, 0
  %unroll_iter53 = and i64 %i.dx, -2
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  %lcmp.mod52 = trunc i64 %i.dx to i1
  br label %.lr.ph165.split.us.i.i

.lr.ph165.split.us.i.i:                           ; preds = %._crit_edge.us.i.i, %.lr.ph165.i.i
  %.0110164.us.i.i = phi ptr [ %i.ex, %._crit_edge.us.i.i ], [ %i.ay, %.lr.ph165.i.i ] ; 4 uses
  %.0112163.us.i.i = phi ptr [ %i.ew, %._crit_edge.us.i.i ], [ %i.av, %.lr.ph165.i.i ]
  %.0113162.us.i.i = phi i32 [ %i.gt, %._crit_edge.us.i.i ], [ 1, %.lr.ph165.i.i ]
  %i.ew = getelementptr inbounds i8, ptr %.0112163.us.i.i, i64 %i.es ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %.0110164.us.i.i, i64 %i.et ; 7 uses
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !27
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %.lr.ph161.us.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph165.split.us.i.i
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %i.eu
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !27
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !27
  %i.ff = zext i8 %i.fe to i32
  br label %.lr.ph161.us.i.i

.lr.ph161.us.i.i:                                 ; preds = %bb.au, %.lr.ph165.split.us.i.i
  %i.fg = phi i32 [ %i.ff, %bb.au ], [ 0, %.lr.ph165.split.us.i.i ] ; 3 uses
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.ex, align 1, !tbaa !27
  br i1 %i.ev, label %.epil.preheader, label %.lr.ph161.us.i.i.new

.lr.ph161.us.i.i.new:                             ; preds = %.lr.ph161.us.i.i, %bb.ay
  %indvars.iv189.i.i = phi i64 [ %indvars.iv.next190.i.i.1, %bb.ay ], [ 1, %.lr.ph161.us.i.i ] ; 5 uses
  %.0118159.us.i.i = phi i32 [ %i.gf, %bb.ay ], [ %i.fg, %.lr.ph161.us.i.i ]
  %niter54 = phi i64 [ %niter54.next.1, %bb.ay ], [ 0, %.lr.ph161.us.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv189.i.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !27
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph161.us.i.i.new
  %i.fl = getelementptr inbounds nuw i8, ptr %.0110164.us.i.i, i64 %indvars.iv189.i.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = zext i8 %i.fm to i32
  %..0118.us.i.i = call i32 @llvm.umin.i32(i32 %.0118159.us.i.i, i32 %i.fn)
  %i.fo = zext nneg i32 %..0118.us.i.i to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = zext i8 %i.fq to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph161.us.i.i.new
  %i.fs = phi i32 [ %i.fr, %bb.av ], [ 0, %.lr.ph161.us.i.i.new ] ; 2 uses
  %i.ft = trunc nuw i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv189.i.i
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !27
  %indvars.iv.next190.i.i = add nuw nsw i64 %indvars.iv189.i.i, 1 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next190.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !27
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %.0110164.us.i.i, i64 %indvars.iv.next190.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !27
  %i.ga = zext i8 %i.fz to i32
  %..0118.us.i.i.1 = call i32 @llvm.umin.i32(i32 %i.fs, i32 %i.ga)
  %i.gb = zext nneg i32 %..0118.us.i.i.1 to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !27
  %i.ge = zext i8 %i.gd to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gf = phi i32 [ %i.ge, %bb.ax ], [ 0, %bb.aw ] ; 3 uses
  %i.gg = trunc nuw i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv.next190.i.i
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !27
  %indvars.iv.next190.i.i.1 = add nuw nsw i64 %indvars.iv189.i.i, 2 ; 2 uses
  %niter54.next.1 = add i64 %niter54, 2           ; 2 uses
  %niter54.ncmp.1 = icmp eq i64 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.lr.ph161.us.i.i.new, !llvm.loop !119

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.ay
  br i1 %lcmp.mod51.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.lr.ph161.us.i.i
  %indvars.iv189.i.i.epil.init = phi i64 [ 1, %.lr.ph161.us.i.i ], [ %indvars.iv.next190.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  %.0118159.us.i.i.epil.init = phi i32 [ %i.fg, %.lr.ph161.us.i.i ], [ %i.gf, %._crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod52)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv189.i.i.epil.init
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !27
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %._crit_edge.us.i.i.epilog-lcssa, label %bb.az

bb.az:                                            ; preds = %.epil.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.0110164.us.i.i, i64 %indvars.iv189.i.i.epil.init
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !27
  %i.gn = zext i8 %i.gm to i32
  %..0118.us.i.i.epil = call i32 @llvm.umin.i32(i32 %.0118159.us.i.i.epil.init, i32 %i.gn)
  %i.go = zext nneg i32 %..0118.us.i.i.epil to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !27
  br label %._crit_edge.us.i.i.epilog-lcssa

._crit_edge.us.i.i.epilog-lcssa:                  ; preds = %bb.az, %.epil.preheader
  %i.gr = phi i8 [ %i.gq, %bb.az ], [ 0, %.epil.preheader ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv189.i.i.epil.init
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !27
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %._crit_edge.us.i.i.epilog-lcssa
  %i.gt = add nuw nsw i32 %.0113162.us.i.i, 1     ; 2 uses
  %exitcond194.not.i.i = icmp eq i32 %i.gt, %i.at
  br i1 %exitcond194.not.i.i, label %._crit_edge166.i.i, label %.lr.ph165.split.us.i.i, !llvm.loop !120

.lr.ph.i.i:                                       ; preds = %bb.bc, %.lr.ph.preheader.i.i.new
  %indvars.iv184.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next185.i.i.1, %bb.bc ] ; 6 uses
  %niter49 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter49.next.1, %bb.bc ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv184.i.i
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !27
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %.lr.ph.i.i.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i
  %i.gx = getelementptr i8, ptr %i.ay, i64 %indvars.iv184.i.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 -1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !27
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !27
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.ba, %.lr.ph.i.i
  %i.hd = phi i8 [ %i.hc, %bb.ba ], [ 0, %.lr.ph.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv184.i.i
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !27
  %indvars.iv.next185.i.i = add nuw nsw i64 %indvars.iv184.i.i, 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.next185.i.i
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !27
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.1
  %i.hi = getelementptr i8, ptr %i.ay, i64 %indvars.iv184.i.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !27
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.i.1
  %i.hn = phi i8 [ %i.hm, %bb.bb ], [ 0, %.lr.ph.i.i.1 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.next185.i.i
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !27
  %indvars.iv.next185.i.i.1 = add nuw nsw i64 %indvars.iv184.i.i, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !121

.lr.ph165.split.i.i:                              ; preds = %bb.bf, %.lr.ph165.thread.i.i.new
  %.0110164.i.i = phi ptr [ %i.ay, %.lr.ph165.thread.i.i.new ], [ %i.ia, %bb.bf ]
  %.0112163.i.i = phi ptr [ %i.av, %.lr.ph165.thread.i.i.new ], [ %i.hz, %bb.bf ]
  %niter = phi i32 [ 0, %.lr.ph165.thread.i.i.new ], [ %niter.next.1, %bb.bf ]
  %i.hp = getelementptr inbounds i8, ptr %.0112163.i.i, i64 %i.en ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.0110164.i.i, i64 %i.eo ; 3 uses
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !27
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %.lr.ph165.split.i.i.1, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph165.split.i.i
  %i.ht = getelementptr inbounds i8, ptr %i.hq, i64 %i.ep
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !27
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !27
  br label %.lr.ph165.split.i.i.1

.lr.ph165.split.i.i.1:                            ; preds = %bb.bd, %.lr.ph165.split.i.i
  %i.hy = phi i8 [ %i.hx, %bb.bd ], [ 0, %.lr.ph165.split.i.i ]
  store i8 %i.hy, ptr %i.hq, align 1, !tbaa !27
  %i.hz = getelementptr inbounds i8, ptr %i.hp, i64 %i.en ; 3 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hq, i64 %i.eo ; 5 uses
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !27
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph165.split.i.i.1
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 %i.ep
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !27
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph165.split.i.i.1
  %i.ii = phi i8 [ %i.ih, %bb.be ], [ 0, %.lr.ph165.split.i.i.1 ]
  store i8 %i.ii, ptr %i.ia, align 1, !tbaa !27
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge166.i.i.loopexit41.unr-lcssa, label %.lr.ph165.split.i.i, !llvm.loop !120

._crit_edge166.i.i.loopexit41.unr-lcssa:          ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge166.i.i, label %.lr.ph165.split.i.i.epil.preheader

.lr.ph165.split.i.i.epil.preheader:               ; preds = %._crit_edge166.i.i.loopexit41.unr-lcssa, %.lr.ph165.thread.i.i
  %.0110164.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph165.thread.i.i ], [ %i.ia, %._crit_edge166.i.i.loopexit41.unr-lcssa ]
  %.0112163.i.i.epil.init = phi ptr [ %i.av, %.lr.ph165.thread.i.i ], [ %i.hz, %._crit_edge166.i.i.loopexit41.unr-lcssa ]
  %lcmp.mod44 = trunc i32 %i.eq to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.ij = getelementptr inbounds i8, ptr %.0112163.i.i.epil.init, i64 %i.en
  %i.ik = getelementptr inbounds i8, ptr %.0110164.i.i.epil.init, i64 %i.eo ; 3 uses
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !27
  %i.im = icmp eq i8 %i.il, 0
  br i1 %i.im, label %._crit_edge166.i.i.loopexit41.epilog-lcssa, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph165.split.i.i.epil.preheader
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 %i.ep
  %i.io = load i8, ptr %i.in, align 1, !tbaa !27
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !27
  br label %._crit_edge166.i.i.loopexit41.epilog-lcssa

._crit_edge166.i.i.loopexit41.epilog-lcssa:       ; preds = %bb.bg, %.lr.ph165.split.i.i.epil.preheader
  %i.is = phi i8 [ %i.ir, %bb.bg ], [ 0, %.lr.ph165.split.i.i.epil.preheader ]
  store i8 %i.is, ptr %i.ik, align 1, !tbaa !27
  br label %._crit_edge166.i.i

._crit_edge166.i.i:                               ; preds = %._crit_edge166.i.i.loopexit41.epilog-lcssa, %._crit_edge166.i.i.loopexit41.unr-lcssa, %._crit_edge.us.i.i
  %.0110.lcssa.i.i = phi ptr [ %i.ex, %._crit_edge.us.i.i ], [ %i.ia, %._crit_edge166.i.i.loopexit41.unr-lcssa ], [ %i.ik, %._crit_edge166.i.i.loopexit41.epilog-lcssa ] ; 2 uses
  %i.it = add nsw i32 %i.ar, -1                   ; 3 uses
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  br i1 %i.dw, label %.lr.ph169.preheader.i.i, label %._crit_edge.thread.i.i

._crit_edge166.thread.i.i:                        ; preds = %.preheader.i.i
  %i.iv = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  br label %.lr.ph169.preheader.i.i

.lr.ph169.preheader.i.i:                          ; preds = %._crit_edge166.thread.i.i, %._crit_edge166.i.i
  %i.ix = phi i1 [ false, %._crit_edge166.thread.i.i ], [ true, %._crit_edge166.i.i ]
  %i.iy = phi i64 [ %i.iw, %._crit_edge166.thread.i.i ], [ %i.iu, %._crit_edge166.i.i ] ; 3 uses
  %i.iz = phi i32 [ %i.iv, %._crit_edge166.thread.i.i ], [ %i.it, %._crit_edge166.i.i ]
  %.0110.lcssa218.i.i = phi ptr [ %i.ay, %._crit_edge166.thread.i.i ], [ %.0110.lcssa.i.i, %._crit_edge166.i.i ] ; 6 uses
  %i.ja = add i32 %i.ar, -2                       ; 3 uses
  %i.jb = getelementptr inbounds i8, ptr %.0110.lcssa218.i.i, i64 %i.iy
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !27  ; 2 uses
  %i.jd = zext i8 %i.jc to i32
  %i.je = zext i32 %i.ja to i64                   ; 9 uses
  %i.jf = and i64 %i.je, 1
  %lcmp.mod56.not.not.a = icmp eq i64 %i.jf, 0
  br i1 %lcmp.mod56.not.not.a, label %.lr.ph169.i.i.prol, label %.lr.ph169.i.i.prol.loopexit

.lr.ph169.i.i.prol:                               ; preds = %.lr.ph169.preheader.i.i
  %i.jg = zext i8 %i.jc to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !27
  %i.jj = zext i8 %i.ji to i32                    ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0110.lcssa218.i.i, i64 %i.je ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !27
  %i.jm = zext i8 %i.jl to i32
  %i.jn = sub nsw i32 %i.jj, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 256
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !27
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub nsw i32 %i.jj, %i.js                ; 2 uses
  %i.ju = trunc i32 %i.jt to i8
  store i8 %i.ju, ptr %i.jk, align 1, !tbaa !27
  %indvars.iv.next196.i.i.prol = add nsw i64 %i.je, -1
  br label %.lr.ph169.i.i.prol.loopexit

.lr.ph169.i.i.prol.loopexit:                      ; preds = %.lr.ph169.i.i.prol, %.lr.ph169.preheader.i.i
  %indvars.iv195.i.i.unr = phi i64 [ %i.je, %.lr.ph169.preheader.i.i ], [ %indvars.iv.next196.i.i.prol, %.lr.ph169.i.i.prol ]
  %.1119167.i.i.unr = phi i32 [ %i.jd, %.lr.ph169.preheader.i.i ], [ %i.jt, %.lr.ph169.i.i.prol ]
  %i.jv = icmp eq i32 %i.ja, 0
  br i1 %i.jv, label %._crit_edge.i.i, label %.lr.ph169.i.i

.lr.ph169.i.i:                                    ; preds = %.lr.ph169.i.i.prol.loopexit, %.lr.ph169.i.i
  %indvars.iv195.i.i = phi i64 [ %indvars.iv.next196.i.i.1, %.lr.ph169.i.i ], [ %indvars.iv195.i.i.unr, %.lr.ph169.i.i.prol.loopexit ] ; 3 uses
  %.1119167.i.i = phi i32 [ %i.ky, %.lr.ph169.i.i ], [ %.1119167.i.i.unr, %.lr.ph169.i.i.prol.loopexit ]
  %i.jw = sext i32 %.1119167.i.i to i64
  %i.jx = getelementptr inbounds i8, ptr %i.a, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !27
  %i.jz = zext i8 %i.jy to i32                    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0110.lcssa218.i.i, i64 %indvars.iv195.i.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !27
  %i.kc = zext i8 %i.kb to i32
  %i.kd = sub nsw i32 %i.jz, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 256
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !27
  %i.ki = zext i8 %i.kh to i32
  %i.kj = sub nsw i32 %i.jz, %i.ki                ; 2 uses
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %i.ka, align 1, !tbaa !27
  %indvars.iv.next196.i.i = add nsw i64 %indvars.iv195.i.i, -1 ; 2 uses
  %i.kl = sext i32 %i.kj to i64
  %i.km = getelementptr inbounds i8, ptr %i.a, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !27
  %i.ko = zext i8 %i.kn to i32                    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0110.lcssa218.i.i, i64 %indvars.iv.next196.i.i ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !27
  %i.kr = zext i8 %i.kq to i32
  %i.ks = sub nsw i32 %i.ko, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 256
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !27
  %i.kx = zext i8 %i.kw to i32
  %i.ky = sub nsw i32 %i.ko, %i.kx                ; 2 uses
  %i.kz = trunc i32 %i.ky to i8
  store i8 %i.kz, ptr %i.kp, align 1, !tbaa !27
  %indvars.iv.next196.i.i.1 = add nsw i64 %indvars.iv195.i.i, -2
  %.not.i23.i.1 = icmp eq i64 %indvars.iv.next196.i.i, 0
  br i1 %.not.i23.i.1, label %._crit_edge.i.i, label %.lr.ph169.i.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %.lr.ph169.i.i, %.lr.ph169.i.i.prol.loopexit
  br i1 %i.ix, label %.lr.ph178.i.i.a, label %.loopexit.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge166.i.i
  %i.la = add i32 %i.at, -2
  %sext216.i.i = shl i64 %i.bb, 32
  %i.lb = ashr exact i64 %sext216.i.i, 32
  %i.lc = sub nsw i64 0, %i.lb
  %i.ld = add nsw i32 %i.it, %i.bc
  %i.le = sext i32 %i.ld to i64
  br label %.lr.ph178.split.preheader.i.i

.lr.ph178.i.i.a:                                  ; preds = %._crit_edge.i.i
  %21 = add i32 %i.at, -2                         ; 2 uses
  %sext.i.i = shl i64 %i.bb, 32
  %22 = ashr exact i64 %sext.i.i, 32
  %23 = sub nsw i64 0, %22                        ; 2 uses
  %24 = add nsw i32 %i.iz, %i.bc
  %25 = sext i32 %24 to i64                       ; 2 uses
  br i1 %i.dw, label %.lr.ph173.us.i.i.preheader, label %.lr.ph178.split.preheader.i.i

.lr.ph173.us.i.i.preheader:                       ; preds = %.lr.ph178.i.i.a
  %26 = and i64 %i.je, 1
  %lcmp.mod60.not.not = icmp eq i64 %26, 0
  %indvars.iv.next199.i.i.prol = add nsw i64 %i.je, -1
  %27 = icmp eq i32 %i.ja, 0
  br label %.lr.ph173.us.i.i

.lr.ph178.split.preheader.i.i:                    ; preds = %.lr.ph178.i.i.a, %._crit_edge.thread.i.i
  %28 = phi i64 [ %i.iu, %._crit_edge.thread.i.i ], [ %i.iy, %.lr.ph178.i.i.a ] ; 3 uses
  %.0110.lcssa219.i.i = phi ptr [ %.0110.lcssa.i.i, %._crit_edge.thread.i.i ], [ %.0110.lcssa218.i.i, %.lr.ph178.i.i.a ] ; 2 uses
  %29 = phi i64 [ %i.le, %._crit_edge.thread.i.i ], [ %25, %.lr.ph178.i.i.a ] ; 3 uses
  %30 = phi i64 [ %i.lc, %._crit_edge.thread.i.i ], [ %23, %.lr.ph178.i.i.a ] ; 3 uses
  %i.lf = phi i32 [ %i.la, %._crit_edge.thread.i.i ], [ %21, %.lr.ph178.i.i.a ] ; 3 uses
  %31 = and i32 %i.at, 1
  %lcmp.mod58.not.not = icmp eq i32 %31, 0
  br i1 %lcmp.mod58.not.not, label %.lr.ph178.split.i.i.prol, label %.lr.ph178.split.i.i.prol.loopexit

.lr.ph178.split.i.i.prol:                         ; preds = %.lr.ph178.split.preheader.i.i
  %32 = getelementptr inbounds i8, ptr %.0110.lcssa219.i.i, i64 %30 ; 3 uses
  %33 = getelementptr inbounds i8, ptr %32, i64 %29
  %34 = load i8, ptr %33, align 1, !tbaa !27
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw i8, ptr %i.a, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !27
  %38 = getelementptr inbounds i8, ptr %32, i64 %28 ; 2 uses
  %39 = load i8, ptr %38, align 1, !tbaa !27
  %..i.i.prol = call i8 @llvm.umin.i8(i8 %37, i8 %39)
  store i8 %..i.i.prol, ptr %38, align 1, !tbaa !27
  %40 = add nsw i32 %i.lf, -1
  br label %.lr.ph178.split.i.i.prol.loopexit

.lr.ph178.split.i.i.prol.loopexit:                ; preds = %.lr.ph178.split.i.i.prol, %.lr.ph178.split.preheader.i.i
  %.1111176.i.i.unr = phi ptr [ %.0110.lcssa219.i.i, %.lr.ph178.split.preheader.i.i ], [ %32, %.lr.ph178.split.i.i.prol ]
  %.1114175.i.i.unr = phi i32 [ %i.lf, %.lr.ph178.split.preheader.i.i ], [ %40, %.lr.ph178.split.i.i.prol ]
  %41 = icmp eq i32 %i.lf, 0
  br i1 %41, label %.loopexit.i, label %.lr.ph178.split.i.i

.lr.ph173.us.i.i:                                 ; preds = %.lr.ph173.us.i.i.preheader, %._crit_edge174.us.i.i
  %.1111176.us.i.i = phi ptr [ %i.lg, %._crit_edge174.us.i.i ], [ %.0110.lcssa218.i.i, %.lr.ph173.us.i.i.preheader ] ; 4 uses
  %.1114175.us.i.i = phi i32 [ %i.mk, %._crit_edge174.us.i.i ], [ %21, %.lr.ph173.us.i.i.preheader ] ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %.1111176.us.i.i, i64 %23 ; 6 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %25
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !27
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !27
  %i.lm = getelementptr inbounds i8, ptr %i.lg, i64 %i.iy ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !27
  %..us.i.i = call i8 @llvm.umin.i8(i8 %i.ll, i8 %i.ln) ; 3 uses
  store i8 %..us.i.i, ptr %i.lm, align 1, !tbaa !27
  br i1 %lcmp.mod60.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph173.us.i.i
  %gep.i.i.prol = getelementptr i8, ptr %.1111176.us.i.i, i64 %i.je
  %i.lo = load i8, ptr %gep.i.i.prol, align 1, !tbaa !27
  %i.lp = call i8 @llvm.umin.i8(i8 %..us.i.i, i8 %i.lo)
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !27
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.je ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !27
  %.137.us.i.i.prol = call i8 @llvm.umin.i8(i8 %i.ls, i8 %i.lu) ; 2 uses
  store i8 %.137.us.i.i.prol, ptr %i.lt, align 1, !tbaa !27
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph173.us.i.i
  %indvars.iv198.i.i.unr = phi i64 [ %i.je, %.lr.ph173.us.i.i ], [ %indvars.iv.next199.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.2120.in170.us.i.i.unr = phi i8 [ %..us.i.i, %.lr.ph173.us.i.i ], [ %.137.us.i.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %27, label %._crit_edge174.us.i.i, label %.lr.ph173.us.i.i.new

.lr.ph173.us.i.i.new:                             ; preds = %.prol.loopexit, %.lr.ph173.us.i.i.new
  %indvars.iv198.i.i = phi i64 [ %indvars.iv.next199.i.i.1, %.lr.ph173.us.i.i.new ], [ %indvars.iv198.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.2120.in170.us.i.i = phi i8 [ %.137.us.i.i.1, %.lr.ph173.us.i.i.new ], [ %.2120.in170.us.i.i.unr, %.prol.loopexit ]
  %gep.i.i = getelementptr i8, ptr %.1111176.us.i.i, i64 %indvars.iv198.i.i
  %i.lv = load i8, ptr %gep.i.i, align 1, !tbaa !27
  %i.lw = call i8 @llvm.umin.i8(i8 %.2120.in170.us.i.i, i8 %i.lv)
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv198.i.i ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !27
  %.137.us.i.i = call i8 @llvm.umin.i8(i8 %i.lz, i8 %i.mb) ; 2 uses
  store i8 %.137.us.i.i, ptr %i.ma, align 1, !tbaa !27
  %indvars.iv.next199.i.i = add nsw i64 %indvars.iv198.i.i, -1 ; 2 uses
  %gep.i.i.1 = getelementptr i8, ptr %.1111176.us.i.i, i64 %indvars.iv.next199.i.i
  %i.mc = load i8, ptr %gep.i.i.1, align 1, !tbaa !27
  %i.md = call i8 @llvm.umin.i8(i8 %.137.us.i.i, i8 %i.mc)
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !27
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.next199.i.i ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !27
  %.137.us.i.i.1 = call i8 @llvm.umin.i8(i8 %i.mg, i8 %i.mi) ; 2 uses
  store i8 %.137.us.i.i.1, ptr %i.mh, align 1, !tbaa !27
  %indvars.iv.next199.i.i.1 = add nsw i64 %indvars.iv198.i.i, -2
  %i.mj = icmp sgt i64 %indvars.iv198.i.i, 1
  br i1 %i.mj, label %.lr.ph173.us.i.i.new, label %._crit_edge174.us.i.i, !llvm.loop !123

._crit_edge174.us.i.i:                            ; preds = %.lr.ph173.us.i.i.new, %.prol.loopexit
  %i.mk = add nsw i32 %.1114175.us.i.i, -1
  %i.ml = icmp sgt i32 %.1114175.us.i.i, 0
  br i1 %i.ml, label %.lr.ph173.us.i.i, label %.loopexit.i, !llvm.loop !124

.lr.ph178.split.i.i:                              ; preds = %.lr.ph178.split.i.i.prol.loopexit, %.lr.ph178.split.i.i
  %.1111176.i.i = phi ptr [ %i.mu, %.lr.ph178.split.i.i ], [ %.1111176.i.i.unr, %.lr.ph178.split.i.i.prol.loopexit ]
  %.1114175.i.i = phi i32 [ %i.nc, %.lr.ph178.split.i.i ], [ %.1114175.i.i.unr, %.lr.ph178.split.i.i.prol.loopexit ] ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.1111176.i.i, i64 %30 ; 3 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %29
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !27
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !27
  %i.ms = getelementptr inbounds i8, ptr %i.mm, i64 %28 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !27
  %..i.i = call i8 @llvm.umin.i8(i8 %i.mr, i8 %i.mt)
  store i8 %..i.i, ptr %i.ms, align 1, !tbaa !27
  %i.mu = getelementptr inbounds i8, ptr %i.mm, i64 %30 ; 3 uses
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 %29
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !27
  %i.mx = zext i8 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !27
  %i.na = getelementptr inbounds i8, ptr %i.mu, i64 %28 ; 2 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !27
  %..i.i.1 = call i8 @llvm.umin.i8(i8 %i.mz, i8 %i.nb)
  store i8 %..i.i.1, ptr %i.na, align 1, !tbaa !27
  %i.nc = add nsw i32 %.1114175.i.i, -2
  %.not228.i.i.1 = icmp eq i32 %.1114175.i.i, 1
  br i1 %.not228.i.i.1, label %.loopexit.i, label %.lr.ph178.split.i.i, !llvm.loop !124

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i
  %.pn130.pn.i.i = phi { ptr, i32 } [ %.pn130.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.body25.i

.loopexit.i:                                      ; preds = %.lr.ph178.split.i.i.prol.loopexit, %.lr.ph178.split.i.i, %._crit_edge174.us.i.i, %._crit_edge.i.i, %.preheader.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.nd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !107
  %.not.i28.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i28.i, label %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #22
  unreachable

bb.bk:                                            ; preds = %bb.r, %bb.l
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bl:                                            ; preds = %bb.u, %bb.t, %bb.s
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ai, %bb.ac
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

.body25.i:                                        ; preds = %bb.bm, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.nj, %bb.bm ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i ], [ %.pn130.pn.i.i, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #18
  br label %bb.bn

bb.bn:                                            ; preds = %.body25.i, %bb.bl
  %.pn9.i = phi { ptr, i32 } [ %eh.lpad-body26.i, %.body25.i ], [ %i.ni, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.bn, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn9.pn.i = phi { ptr, i32 } [ %.pn9.i, %bb.bn ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.nh, %bb.bk ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  br label %bb.bo

bb.bo:                                            ; preds = %.body.i, %bb.e
  %.pn9.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.i, %.body.i ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.body

_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit: ; preds = %.loopexit.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bs

bb.bp:                                            ; preds = %bb.b, %bb.br, %bb.bq
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bo, %bb.bp
  %eh.lpad-body = phi { ptr, i32 } [ %i.nk, %bb.bp ], [ %.pn9.pn.pn.i, %bb.bo ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  resume { ptr, i32 } %eh.lpad-body

bb.bq:                                            ; preds = %bb.a
  %i.nl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayES5_iii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.nl, i32 noundef %2, i32 noundef %3, i32 noundef 1)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %_ZN2cvL23distanceTransform_L1_8UERKNS_11_InputArrayERKNS_12_OutputArrayE.exit, %bb.br
  %i.nm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.nn, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %20)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15DTColumnInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15DTColumnInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.0", align 8  ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.o = sext i32 %i.g to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.g, 264
  store i64 %i.o, ptr %i.q, align 8, !tbaa !127
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.g, 0
  %i.s = shl nuw nsw i64 %i.o, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #21 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !125
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.p, %bb.a ], [ %i.u, %bb.b ] ; 8 uses
  %i.w = icmp slt i32 %i.a, %i.c
  br i1 %i.w, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.x = add i32 %i.g, -1                         ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.aa = sext i32 %i.x to i64
  %i.ab = mul i64 %i.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.af = icmp sgt i32 %i.g, 0
  %i.ag = sub i64 0, %i.i                         ; 3 uses
  br i1 %i.af, label %.lr.ph.us.us.preheader, label %._crit_edge51

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !61 ; 3 uses
  %i.al = zext i32 %i.x to i64                    ; 3 uses
  %i.am = sext i32 %i.a to i64
  %wide.trip.count79 = sext i32 %i.c to i64
  %wide.trip.count74 = zext nneg i32 %i.g to i64  ; 2 uses
  %i.an = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.al
  %indvars.iv.next69.prol = add nsw i64 %i.al, -1
  %i.ap = icmp eq i32 %i.x, 0
  %xtraiter84 = and i64 %wide.trip.count74, 1
  %i.aq = icmp eq i32 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count74, 2147483646
end_hunk_0
