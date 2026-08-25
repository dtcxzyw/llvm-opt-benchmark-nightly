Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cuda_gpu_mat_nd?download=true
inline.NumInlined: 432
inline.NumDeleted: 241
begin_hunk_0_@_ZN2cv4cuda8GpuMatND9setFieldsENS_8MatShapeEiSt6vectorImSaImEE:bb.a
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = icmp eq i64 %i.dq, %spec.select.i27
  br i1 %i.dr, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv4cuda8GpuMatND9setFieldsENS_8MatShapeEiSt6vectorImSaImEE, ptr noundef nonnull @.str.1, i32 noundef 128) #20
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !18
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.t ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %common.resume

bb.v:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !43
  %i.eb = lshr i32 %storemerge, 5
  %i.ec = and i32 %i.eb, 127
  %i.ed = add nuw nsw i32 %i.ec, 1
  %i.ee = shl i32 %storemerge, 2
  %i.ef = and i32 %i.ee, 124
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 1275511473185297, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 15
  %i.ek = mul nuw nsw i32 %i.ej, %i.ed
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = icmp eq i64 %i.ea, %i.el
  br i1 %i.em, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4cuda8GpuMatND9setFieldsENS_8MatShapeEiSt6vectorImSaImEE, ptr noundef nonnull @.str.1, i32 noundef 129) #20
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.aa:                                            ; preds = %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.aa
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !18
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.z
  %.pn15 = phi { ptr, i32 } [ %i.en, %bb.z ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.eo, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume

bb.ab:                                            ; preds = %bb.v
  ret void
}

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4cuda8GpuMatNDclERKSt6vectorINS_5RangeESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.cv::cuda::GpuMatND") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = zext nneg i32 %narrow.i to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv4cuda8GpuMatNDclERKSt6vectorINS_5RangeESaIS3_EE, ptr noundef nonnull @.str.1, i32 noundef 23) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !44     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %common.resume

._crit_edge:                                      ; preds = %.critedge37, %.preheader
  tail call void @_ZN2cv4cuda8GpuMatNDC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.x = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  %.promoted = load i32, ptr %0, align 8          ; 2 uses
  br i1 %i.y, label %.lr.ph80, label %._crit_edge.._crit_edge81_crit_edge

._crit_edge.._crit_edge81_crit_edge:              ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre89 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %i.z = load ptr, ptr %2, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %narrow.i54 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = zext nneg i32 %narrow.i54 to i64
  %wide.trip.count87 = zext nneg i32 %i.x to i64
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %.critedge37
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge37 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 4            ; 2 uses
  %.sroa.075.0.extract.trunc = trunc i64 %i.ai to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.ai, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.aj = icmp eq i32 %.sroa.075.0.extract.trunc, -2147483648
  %i.ak = icmp eq i64 %.sroa.6.0.extract.shift, 2147483647
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %.critedge37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp sgt i32 %.sroa.075.0.extract.trunc, -1
  %i.an = icmp slt i32 %.sroa.075.0.extract.trunc, %.sroa.6.0.extract.trunc
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge39

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp samesign ult i64 %indvars.iv, %i.p
  br i1 %i.ao, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.11, i32 noundef 103) #20
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn30.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19
  %.not = icmp slt i32 %i.aw, %.sroa.6.0.extract.trunc
  br i1 %.not, label %.critedge39, label %.critedge37

.critedge39:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge39
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv4cuda8GpuMatNDclERKSt6vectorINS_5RangeESaIS3_EE, ptr noundef nonnull @.str.1, i32 noundef 28) #20
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge39
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.o
  %.pn33 = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.ay, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

.critedge37:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !56

._crit_edge81:                                    ; preds = %.critedge, %._crit_edge.._crit_edge81_crit_edge
  %i.be = phi ptr [ %.pre89, %._crit_edge.._crit_edge81_crit_edge ], [ %i.ae, %.critedge ]
  %i.bf = phi i32 [ %.promoted, %._crit_edge.._crit_edge81_crit_edge ], [ %i.ch, %.critedge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = invoke noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.bf, i32 noundef %i.x, ptr noundef nonnull %i.bg, ptr noundef %i.be)
          to label %bb.y unwind label %bb.z

bb.q:                                             ; preds = %.lr.ph80, %.critedge
  %i.bi = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next85, %.critedge ] ; 5 uses
  %i.bj = phi i32 [ %.promoted, %.lr.ph80 ], [ %i.ch, %.critedge ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 4            ; 3 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.bl to i32 ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.bl, 32   ; 2 uses
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 2 uses
  %i.bm = icmp ne i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.bn = icmp ne i64 %.sroa.8.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.bm, %i.bn
  br i1 %.not6.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp samesign ult i64 %i.bi, %i.ag
  br i1 %i.bo, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.11, i32 noundef 97) #20
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc
  unreachable

bb.u:                                             ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.u
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !18
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bi ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !19
  %i.bx = icmp ne i32 %.sroa.071.0.extract.trunc, 0
  %i.by = icmp ne i32 %i.bw, %.sroa.8.0.extract.trunc
  %.not6.i59 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %.not6.i59, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %sext = shl i64 %i.bl, 32
  %i.bz = ashr exact i64 %sext, 32
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bi
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !43
  %i.cc = mul i64 %i.cb, %i.bz
  %11 = load i64, ptr %i.af, align 8, !tbaa !40
  %i.cd = add i64 %11, %i.cc
  store i64 %i.cd, ptr %i.af, align 8, !tbaa !40
  %i.ce = sub nsw i32 %.sroa.8.0.extract.trunc, %.sroa.071.0.extract.trunc
  store i32 %i.ce, ptr %i.bv, align 4, !tbaa !19
  %i.cf = or i32 %i.bj, 32768                     ; 2 uses
  store i32 %i.cf, ptr %0, align 8, !tbaa !26
  br label %.critedge

bb.x:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.q, %bb.w, %bb.v
  %i.ch = phi i32 [ %i.bj, %bb.q ], [ %i.cf, %bb.w ], [ %i.bj, %bb.v ] ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %i.bi, 1   ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge81, label %bb.q, !llvm.loop !57

bb.y:                                             ; preds = %._crit_edge81
  store i32 %i.bh, ptr %0, align 8, !tbaa !26
  ret void

bb.z:                                             ; preds = %._crit_edge81
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %i.ci, %bb.z ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ], [ %i.cg, %bb.x ]
  call void @_ZN2cv4cuda8GpuMatNDD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #18
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4cuda8GpuMatNDC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.b, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #21
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.p, ptr %i.q, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.r, align 8, !tbaa !43
  store i64 %i.y, ptr %i.n, align 8, !tbaa !43
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

_ZNSt6vectorImSaImEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 %i.v
  store ptr %i.z, ptr %i.o, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !59
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !59
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2cv4cuda7GpuDataEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !19
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !19
  br label %_ZNSt10shared_ptrIN2cv4cuda7GpuDataEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2cv4cuda7GpuDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIN2cv4cuda7GpuDataEEC2ERKS3_.exit: ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit, %bb.h, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  ret void
}

declare noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4cuda8GpuMatND18createGpuMatHeaderESt6vectorIiSaIiEENS_5RangeES5_(ptr dead_on_unwind noalias writable sret(%"class.cv::cuda::GpuMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef readonly align 8 captures(none) %2, i64 %3, i64 %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 18 uses
  %8 = alloca %"class.cv::cuda::GpuMatND", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !63     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = add nsw i32 %i.j, -2
  %i.l = icmp eq i32 %i.k, %i.h
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv4cuda8GpuMatND18createGpuMatHeaderESt6vectorIiSaIiEENS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 51) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !44     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not61 = icmp eq ptr %i.c, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv5RangeESaIS1_EE12emplace_backIJRiiEEERS1_DpOT_.exit
  store ptr %i.cu, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store i64 %3, ptr %i.ct, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !64
  br label %_ZNSt6vectorIN2cv5RangeESaIS1_EE9push_backERKS1_.exit

end_hunk_0
