Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_graph_simplifier?download=true
inline.NumInlined: 5501
inline.NumDeleted: 1607
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060517LayerNormSubGraph11extractAxisERKNS_3PtrINS0_18ImportGraphWrapperEEEi:bb.a
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit, !llvm.loop !605

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bm, ptr %0, align 8
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11opencv_onnx14AttributeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #23
  br label %bb.t

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit: ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.cm = phi ptr [ %i.ap, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader ], [ %i.ch, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %i.cn = phi ptr [ %i.aq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader ], [ %i.ci, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader ], [ %i.cj, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit, %bb.l, %.split
  %i.co = phi ptr [ %i.cm, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit ], [ %i.ap, %bb.l ], [ %i.ap, %.split ]
  %i.cp = phi ptr [ %i.cn, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit ], [ %i.aq, %bb.l ], [ %i.aq, %.split ]
  %.promoted47 = phi ptr [ %.lcssa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.loopexit ], [ %.promoted, %bb.l ], [ %.promoted, %.split ]
  call void @_ZN11opencv_onnx14AttributeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.cq = load i32, ptr %i.ag, align 8, !tbaa !342
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next44, %i.cr
  br i1 %i.cs, label %bb.k, label %._crit_edge, !llvm.loop !606

bb.t:                                             ; preds = %bb.s, %bb.m
  %i.ct = phi ptr [ %i.bk, %bb.s ], [ %i.ap, %bb.m ]
  %i.cu = phi ptr [ %i.bm, %bb.s ], [ %.promoted, %bb.m ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.s ], [ %i.bi, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i.i.i24 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cx) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  call void @_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ONNXNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !24  ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cz, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !15
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #23, !inline_history !495
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #23, !inline_history !495
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i26 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i26, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.z:                                             ; preds = %bb.x
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i28 = phi i32 [ %i.dc, %bb.y ], [ %i.dm, %bb.z ]
  %i.dn = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.dn, label %bb.aa, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #23
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv3dnn14dnn5_v2026060516ONNXGraphWrapper18getTensorShapeSizeEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::Ptr.157", align 8      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.opencv_onnx::ValueInfoProto", align 8 ; 10 uses
  %6 = alloca %"class.opencv_onnx::ValueInfoProto", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.157") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.d = load ptr, ptr %3, align 8, !tbaa !451    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %2)
          to label %.preheader72 unwind label %bb.b

.preheader72:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333, !nonnull !336, !align !337 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load i32, ptr %i.j, align 8, !tbaa !342
  %.not75 = icmp sgt i32 %i.k, 0
  br i1 %.not75, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader72
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62, %.preheader72
  %i.n = phi ptr [ %i.i, %.preheader72 ], [ %i.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load i32, ptr %i.o, align 8, !tbaa !342
  %.not4577 = icmp sgt i32 %i.p, 0
  br i1 %.not4577, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62 ] ; 2 uses
  %i.t = phi ptr [ %i.i, %.lr.ph ], [ %i.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !441
  invoke void @_ZN11opencv_onnx14ValueInfoProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !350
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -2
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !330 ; 3 uses
  %i.af = load i64, ptr %i.m, align 8, !tbaa !330
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.ai = load ptr, ptr %4, align 8, !tbaa !348
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !348
  %bcmp.i = call i32 @bcmp(ptr %i.aj, ptr %i.ai, i64 %i.ae)
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !34
  %i.an = and i32 %i.am, 4
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %.thread64, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %8 = load ptr, ptr %7, align 8                  ; 2 uses
  %.not.i.i = icmp eq ptr %8, null
  %i.ao = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %.thread64

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.thread64

bb.h:                                             ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %10 = load ptr, ptr %9, align 8                 ; 2 uses
  %.not.i.i49 = icmp eq ptr %10, null
  %i.ax = select i1 %.not.i.i49, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !342
  br label %.thread64

bb.i:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.w

.thread64:                                        ; preds = %bb.f, %bb.g, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.133.ph = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ %i.az, %bb.h ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  call void @_ZN11opencv_onnx14ValueInfoProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZN11opencv_onnx14ValueInfoProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !333, !nonnull !336, !align !337 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !342
  %i.be = sext i32 %i.bd to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !607

bb.j:                                             ; preds = %.lr.ph79, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66
  %indvars.iv81 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next82, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66 ] ; 2 uses
  %i.bf = phi ptr [ %i.n, %.lr.ph79 ], [ %i.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !338
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv81
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !441
  invoke void @_ZN11opencv_onnx14ValueInfoProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bk)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !350
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !330 ; 3 uses
  %i.br = load i64, ptr %i.r, align 8, !tbaa !330
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51: ; preds = %bb.l
  %i.bu = load ptr, ptr %4, align 8, !tbaa !348
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !348
  %bcmp.i50 = call i32 @bcmp(ptr %i.bv, ptr %i.bu, i64 %i.bq)
  %i.bw = icmp eq i32 %bcmp.i50, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !34
  %i.bz = and i32 %i.by, 4
  %.not70 = icmp eq i32 %i.bz, 0
  br i1 %.not70, label %.thread68, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %.not.i.i53 = icmp eq ptr %12, null
  %i.ca = select i1 %.not.i.i53, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !34
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.n, label %.thread68

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %bb.o, label %.thread68

bb.o:                                             ; preds = %bb.n
  %13 = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %14 = load ptr, ptr %13, align 8                ; 2 uses
  %.not.i.i57 = icmp eq ptr %14, null
  %i.cj = select i1 %.not.i.i57, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !342
  br label %.thread68

bb.p:                                             ; preds = %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.w

.thread68:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread, %bb.o, %bb.n, %bb.m
  %.436.ph = phi i32 [ -1, %bb.m ], [ -1, %bb.n ], [ %i.cl, %bb.o ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread ]
  call void @_ZN11opencv_onnx14ValueInfoProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66: ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51
  call void @_ZN11opencv_onnx14ValueInfoProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !333, !nonnull !336, !align !337 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !342
  %i.cq = sext i32 %i.cp to i64
  %.not45 = icmp slt i64 %indvars.iv.next82, %i.cq
  br i1 %.not45, label %bb.j, label %.loopexit, !llvm.loop !608

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66, %.preheader, %.thread68, %.thread64
  %.6 = phi i32 [ %.133.ph, %.thread64 ], [ %.436.ph, %.thread68 ], [ -1, %.preheader ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit51.thread66 ]
  %i.cr = load ptr, ptr %4, align 8, !tbaa !348   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !33
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 8 uses
  %.not.i.i58 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i58, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cy, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !15
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !495
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !495
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.db, %bb.t ], [ %i.dl, %bb.u ]
  %i.dm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dm, label %bb.v, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.6

bb.w:                                             ; preds = %bb.p, %bb.i
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.ba, %bb.i ]
  %i.dn = load ptr, ptr %4, align 8, !tbaa !348   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.w
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.b
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.s, %bb.b ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn40.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv3dnn14dnn5_v20260605L12getInputNameB5cxx11ERKNS_3PtrINS0_18ImportGraphWrapperEEEii(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.cv::Ptr.194", align 8      ; 6 uses
  %5 = alloca %"struct.cv::Ptr.157", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.b = load ptr, ptr %1, align 8, !tbaa !312, !noalias !612, !nonnull !336, !noundef !336
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN2cv3dnn18ImportGraphWrapperE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060516ONNXGraphWrapperE, i64 0) #23, !noalias !612 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24, !noalias !612 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNK2cv3PtrINS_3dnn18ImportGraphWrapperEE11dynamicCastINS1_14dnn5_v2026060516ONNXGraphWrapperEEENS0_IT_EEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !612
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !34, !noalias !612
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !34, !noalias !612
  br label %_ZNK2cv3PtrINS_3dnn18ImportGraphWrapperEE11dynamicCastINS1_14dnn5_v2026060516ONNXGraphWrapperEEENS0_IT_EEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !612 ; 0 uses
  br label %_ZNK2cv3PtrINS_3dnn18ImportGraphWrapperEE11dynamicCastINS1_14dnn5_v2026060516ONNXGraphWrapperEEENS0_IT_EEv.exit

_ZNK2cv3PtrINS_3dnn18ImportGraphWrapperEE11dynamicCastINS1_14dnn5_v2026060516ONNXGraphWrapperEEENS0_IT_EEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr %i.c, ptr %4, align 8, !tbaa !493, !alias.scope !609
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !24, !alias.scope !609
  %i.l = invoke noundef i32 @_ZN2cv3dnn14dnn5_v2026060516ONNXGraphWrapper21getInputInitializerIdEii(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i32 noundef %2, i32 noundef %3)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %_ZNK2cv3PtrINS_3dnn18ImportGraphWrapperEE11dynamicCastINS1_14dnn5_v2026060516ONNXGraphWrapperEEENS0_IT_EEv.exit
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !333, !noalias !615, !nonnull !336, !align !337
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !338, !noalias !615
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = sext i32 %i.l to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !441, !noalias !615
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !350, !noalias !615
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -2
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !327, !alias.scope !615
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !348 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !330 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !615
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !373, !noalias !615
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ae, ptr %0, align 8, !tbaa !348, !alias.scope !615
  %i.af = load i64, ptr %i.a, align 8, !tbaa !373, !noalias !615
  store i64 %i.af, ptr %i.z, align 8, !tbaa !33, !alias.scope !615
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.f
  %i.ag = phi ptr [ %i.ae, %.noexc ], [ %i.z, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.h [
end_hunk_0
