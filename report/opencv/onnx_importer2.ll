Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer2?download=true
inline.NumInlined: 6221
inline.NumDeleted: 1408
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter28addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi:bb.a
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !130
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !130
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !123
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bi = phi ptr [ %i.ax, %bb.p ], [ %i.ax, %bb.r ], [ %.pre.i, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.aw, align 8, !tbaa !123
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.t:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 376
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, %bb.t, %_ZN2cv3dnn14dnn5_v2026060513ONNXImporter217rememberMissingOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bn, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !127
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24, !inline_history !620
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24, !inline_history !620
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bq, %bb.x ], [ %i.ca, %bb.y ]
  %i.cb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cb, label %bb.z, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !131

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #24
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.aa:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %bb.i ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn11.pn
}

declare void @_ZN2cv3dnn14dnn5_v2026060512LayerFactory19createLayerInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_11LayerParamsE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.170") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !303    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.i = load ptr, ptr %0, align 8, !tbaa !303    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, !prof !131

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !130
  %i.t = load ptr, ptr %0, align 8, !tbaa !303    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #27
  br label %_ZNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !303
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !302
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !301 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 4
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !329

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !303
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 4
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.c, align 4, !tbaa !130
  store i32 %i.af, ptr %i.i, align 4, !tbaa !130
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 4
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !329

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !303
  %.pre25 = load ptr, ptr %i.z, align 8, !tbaa !301 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !303 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !301
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 4
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !130
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !130
  br label %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.ac, %bb.m ], [ 4, %bb.n ] ; 3 uses
  %i.aj = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.ak = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.al = phi ptr [ %.pre25, %bb.l ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ] ; 5 uses
  %i.am = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.am to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit
  %i.aq = ptrtoaddr ptr %i.aj to i64
  %i.ar = add i64 %i.aq, -4
  %i.as = add i64 %.pre-phi33, %i.ao
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = add nuw i64 %.pre-phi33, %i.ao
  %i.ax = sub i64 %i.aw, %i.an
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bb ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !130
  %wide.load42 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !130
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load42, ptr %i.bd, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bf, ptr %.011.i.i.i.i, align 4, !tbaa !130
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !626

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.bi = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %i.ak, %_ZSt4copyIPN2cv3dnn14dnn5_v202606053ArgES4_ET0_T_S6_S5_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !301
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3dnn14dnn5_v202606053ArgESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !131

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter28parseNegERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull @.str.91, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.92, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !130
  %i.i = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.f, align 8, !tbaa !43
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter28addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull align 8 poison, i32 noundef 2147483647)
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.n
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060512LayerFactory17isLayerRegisteredERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter217parseSimpleLayersERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter28addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull align 8 poison, i32 noundef 2147483647)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter214parseArgMinMaxERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -2
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.97, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !39
  store i16 28783, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter211addQuantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_3ArgERKSt6vectorISB_SaISB_EESI_RKN11opencv_onnx9NodeProtoE:bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !288
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #27
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i:        ; preds = %bb.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef %i.bq)
          to label %_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.k:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEaSESt16initializer_listIS3_E.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.k ], [ %i.bu, %bb.l ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQConvERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::vector.11", align 8   ; 12 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::vector.11", align 8   ; 12 uses
  %20 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 21 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %22 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %23 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::vector.11", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq i32 %i.c, 9                     ; 2 uses
  %i.d = and i32 %i.c, -2
  %or.cond = icmp eq i32 %i.d, 8
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.364, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQConvERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2276) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !121    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !43
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.di

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !121  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.p, ptr %i.a, align 8, !tbaa !120
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !121
  %i.s = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.s, ptr %i.m, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.t = phi ptr [ %i.r, %.noexc.i ], [ %i.m, %bb.g ] ; 2 uses
  switch i64 %i.p, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !43
  store i8 %i.u, ptr %i.t, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !42
  %i.x = load ptr, ptr %6, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !301 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !303 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %.noexc121, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge unwind label %bb.ao

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !331
  %.pre381 = load ptr, ptr %i.aa, align 8, !tbaa !331
  br label %.noexc121

.noexc121:                                        ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre381, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge ] ; 3 uses
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge ] ; 5 uses
  %i.ak = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc121_crit_edge ] ; 16 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc121
  %i.al = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.ai to i64
  %i.ao = add i64 %i.an, -4
  %i.ap = sub i64 %i.ao, %i.al                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 44
  %i.as = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond515 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond515, label %.lr.ph.i.i.i.i.i.preheader535, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.aj, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep493, align 4, !tbaa !130
  %wide.load494 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !130
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load494, ptr %i.ay, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !688

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader535

.lr.ph.i.i.i.i.i.preheader535:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader535, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader535 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader535 ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.ba, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !689

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !301 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !303 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i122 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i122, label %.noexc132, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bk = icmp ugt i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %.noexc.i.i130, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123, !prof !131

.noexc.i.i130:                                    ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc131 unwind label %bb.ap

.noexc131:                                        ; preds = %.noexc.i.i130
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123: ; preds = %bb.k
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge unwind label %bb.ap

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123
  %.pre382 = load ptr, ptr %i.bd, align 8, !tbaa !331
  %.pre383 = load ptr, ptr %i.be, align 8, !tbaa !331
  br label %.noexc132

.noexc132:                                        ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bm = phi ptr [ %i.bf, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre383, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge ] ; 3 uses
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre382, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge ] ; 5 uses
  %i.bo = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bl, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i123..noexc132_crit_edge ] ; 7 uses
  store ptr %i.bo, ptr %7, align 8, !tbaa !303
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bj
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !302
  %.not7.i.i.i.i.i124 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not7.i.i.i.i.i124, label %.loopexit374, label %.lr.ph.i.i.i.i.i125.preheader

.lr.ph.i.i.i.i.i125.preheader:                    ; preds = %.noexc132
  %i.bs = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bo to i64
  %i.bu = ptrtoaddr ptr %i.bm to i64
  %i.bv = add i64 %i.bu, -4
  %i.bw = sub i64 %i.bv, %i.bs                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.bw, 44
  %i.bz = sub i64 %i.bs, %i.bt
  %diff.check501 = icmp ugt i64 %i.bz, -32
  %or.cond516 = or i1 %min.iters.check499, %diff.check501
  br i1 %or.cond516, label %.lr.ph.i.i.i.i.i125.preheader534, label %vector.ph502

vector.ph502:                                     ; preds = %.lr.ph.i.i.i.i.i125.preheader
  %n.vec503 = and i64 %i.by, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec503, 2                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bo, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bn, i64 %i.ca
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph502
  %index505 = phi i64 [ 0, %vector.ph502 ], [ %index.next510, %vector.body504 ] ; 2 uses
  %i.cd = shl i64 %index505, 2                    ; 2 uses
  %next.gep506 = getelementptr i8, ptr %i.bo, i64 %i.cd ; 2 uses
  %next.gep507 = getelementptr i8, ptr %i.bn, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep507, i64 16
  %wide.load508 = load <4 x i32>, ptr %next.gep507, align 4, !tbaa !130
  %wide.load509 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !130
  %i.cf = getelementptr i8, ptr %next.gep506, i64 16
  store <4 x i32> %wide.load508, ptr %next.gep506, align 4, !tbaa !130
  store <4 x i32> %wide.load509, ptr %i.cf, align 4, !tbaa !130
  %index.next510 = add nuw i64 %index505, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next510, %n.vec503
  br i1 %i.cg, label %middle.block511, label %vector.body504, !llvm.loop !690

middle.block511:                                  ; preds = %vector.body504
  %cmp.n512 = icmp eq i64 %i.by, %n.vec503
  br i1 %cmp.n512, label %.loopexit374, label %.lr.ph.i.i.i.i.i125.preheader534

.lr.ph.i.i.i.i.i125.preheader534:                 ; preds = %.lr.ph.i.i.i.i.i125.preheader, %middle.block511
  %.09.i.i.i.i.i126.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i125.preheader ], [ %i.cb, %middle.block511 ]
  %.sroa.04.08.i.i.i.i.i127.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i125.preheader ], [ %i.cc, %middle.block511 ]
  br label %.lr.ph.i.i.i.i.i125

.lr.ph.i.i.i.i.i125:                              ; preds = %.lr.ph.i.i.i.i.i125.preheader534, %.lr.ph.i.i.i.i.i125
  %.09.i.i.i.i.i126 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i125 ], [ %.09.i.i.i.i.i126.ph, %.lr.ph.i.i.i.i.i125.preheader534 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i127 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i125 ], [ %.sroa.04.08.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i125.preheader534 ] ; 2 uses
  %i.ch = load i32, ptr %.sroa.04.08.i.i.i.i.i127, align 4, !tbaa !130
  store i32 %i.ch, ptr %.09.i.i.i.i.i126, align 4, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i127, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i126, i64 4 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq ptr %i.ci, %i.bm
  br i1 %.not.i.i.i.i.i128, label %.loopexit374, label %.lr.ph.i.i.i.i.i125, !llvm.loop !691

.loopexit374:                                     ; preds = %.lr.ph.i.i.i.i.i125, %middle.block511, %.noexc132
  %.0.lcssa.i.i.i.i.i129 = phi ptr [ %i.bo, %.noexc132 ], [ %i.cb, %middle.block511 ], [ %i.cj, %.lr.ph.i.i.i.i.i125 ]
  store ptr %.0.lcssa.i.i.i.i.i129, ptr %i.bp, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ck = load ptr, ptr %6, align 8, !tbaa !121, !noalias !717
  %i.cl = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !717 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !39, !alias.scope !718
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !42, !alias.scope !718
  store i8 0, ptr %i.cm, align 8, !tbaa !43, !alias.scope !718
  %i.co = add i64 %i.cl, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.co)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit374
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !42, !alias.scope !718
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.cl
  br i1 %i.cr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !42, !alias.scope !718
  %i.cu = add i64 %i.ct, -4611686018427387894
  %i.cv = icmp ult i64 %i.cu, 10
  br i1 %i.cv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.365, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit374
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %8, align 8, !tbaa !121, !alias.scope !718 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cz, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 3 uses
  %i.db = load <2 x i32>, ptr %i.ak, align 4, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.de = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %9, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i4.i, label %.body134, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !302
  br label %.body134.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.de, ptr %9, align 8, !tbaa !303
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !302
  store <2 x i32> %i.db, ptr %i.de, align 4, !tbaa !130
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dd, ptr %.sroa.6339.0..sroa_idx, align 4, !tbaa !130
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !301
  %i.dm = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.aq      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %9, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !302
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ds = load ptr, ptr %8, align 8, !tbaa !121   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cm
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.du = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.dw = load ptr, ptr %6, align 8, !tbaa !121, !noalias !719
  %i.dx = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !719 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.dy, ptr %10, align 8, !tbaa !39, !alias.scope !720
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !42, !alias.scope !720
  store i8 0, ptr %i.dy, align 8, !tbaa !43, !alias.scope !720
  %i.ea = add i64 %i.dx, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ea)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !720
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dx
  br i1 %i.ed, label %.invoke.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i143: ; preds = %bb.s
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i144 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i143
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !720
  %i.eg = add i64 %i.ef, -4611686018427387894
  %i.eh = icmp ult i64 %i.eg, 10
  br i1 %i.eh, label %.invoke.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i145

.invoke.i.i146:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i144, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i147 unwind label %bb.t

.cont.i.i147:                                     ; preds = %.invoke.i.i146
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i144
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.366, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit150 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i145, %.invoke.i.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQConvERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
.critedge118:                                     ; preds = %.body269, %bb.de, %bb.dd
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %.body269 ], [ %i.sz, %bb.dd ], [ %i.ta, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge118, %.body237
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %.critedge118 ], [ %i.nx, %.body237 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.df

bb.df:                                            ; preds = %bb.au, %bb.bu, %.body209, %.loopexit.split-lp, %.body148, %.body
  %.pn104.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %.body ], [ %.pn87.pn, %.body148 ], [ %.pn104.pn.pn.pn, %.loopexit.split-lp ], [ %.pn95.pn.pn.pn.pn.pn, %bb.bu ], [ %.pn90.pn, %.body209 ], [ %i.hn, %bb.au ] ; 2 uses
  %i.tg = load ptr, ptr %7, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i299 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i299, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.th = load ptr, ptr %i.br, align 8, !tbaa !302
  %i.ti = ptrtoint ptr %i.th to i64
  %i.tj = ptrtoint ptr %i.tg to i64
  %i.tk = sub i64 %i.ti, %i.tj
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef %i.tk) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301: ; preds = %bb.dg, %bb.df, %bb.ap
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.ap ], [ %.pn104.pn.pn.pn.pn.pn, %bb.df ], [ %.pn104.pn.pn.pn.pn.pn, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not.i.i.i302 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i302, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit304, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit304

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit304: ; preds = %bb.dh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301, %bb.ao
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.ao ], [ %.pn104.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit301 ], [ %.pn104.pn.pn.pn.pn.pn.pn, %bb.dh ]
  %i.tl = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.m
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit304
  %i.tn = load i64, ptr %i.m, align 8, !tbaa !43
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.di

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn104.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQMatMulERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.11", align 8   ; 12 uses
  %11 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %14 = alloca [2 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 8 ; 9 uses
  %15 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::vector.11", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !151
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.371, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQMatMulERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2327) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !43
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bo

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !121  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.p, ptr %i.a, align 8, !tbaa !120
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !121
  %i.s = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.s, ptr %i.m, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.t = phi ptr [ %i.r, %.noexc.i ], [ %i.m, %bb.g ] ; 2 uses
  switch i64 %i.p, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !43
  store i8 %i.u, ptr %i.t, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !42
  %i.x = load ptr, ptr %5, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !301 ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !303 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %.noexc47, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge unwind label %bb.az

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !331
  %.pre217 = load ptr, ptr %i.aa, align 8, !tbaa !331
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre217, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge ] ; 3 uses
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge ] ; 5 uses
  %i.ak = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc47_crit_edge ] ; 12 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc47
  %i.al = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoaddr ptr %i.ai to i64
  %i.ao = add i64 %i.an, -4
  %i.ap = sub i64 %i.ao, %i.al                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 44
  %i.as = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader333, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.aj, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep301, align 4, !tbaa !130
  %wide.load302 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !130
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load302, ptr %i.ay, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader333

.lr.ph.i.i.i.i.i.preheader333:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader333, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader333 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader333 ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.ba, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !730

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !301 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !303 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i48 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i48, label %.noexc58, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bk = icmp ugt i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %.noexc.i.i56, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49, !prof !131

.noexc.i.i56:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc57 unwind label %bb.ba

.noexc57:                                         ; preds = %.noexc.i.i56
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49: ; preds = %bb.k
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge unwind label %bb.ba

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49
  %.pre218 = load ptr, ptr %i.bd, align 8, !tbaa !331
  %.pre219 = load ptr, ptr %i.be, align 8, !tbaa !331
  br label %.noexc58

.noexc58:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bm = phi ptr [ %i.bf, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre219, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge ] ; 3 uses
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre218, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge ] ; 5 uses
  %i.bo = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bl, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i49..noexc58_crit_edge ] ; 7 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !303
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bj
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !302
  %.not7.i.i.i.i.i50 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not7.i.i.i.i.i50, label %.loopexit, label %.lr.ph.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %.noexc58
  %i.bs = ptrtoaddr ptr %i.bn to i64              ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bo to i64
  %i.bu = ptrtoaddr ptr %i.bm to i64
  %i.bv = add i64 %i.bu, -4
  %i.bw = sub i64 %i.bv, %i.bs                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check307 = icmp ult i64 %i.bw, 44
  %i.bz = sub i64 %i.bs, %i.bt
  %diff.check309 = icmp ugt i64 %i.bz, -32
  %or.cond323 = or i1 %min.iters.check307, %diff.check309
  br i1 %or.cond323, label %.lr.ph.i.i.i.i.i51.preheader332, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %n.vec311 = and i64 %i.by, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec311, 2                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bo, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bn, i64 %i.ca
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next318, %vector.body312 ] ; 2 uses
  %i.cd = shl i64 %index313, 2                    ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.bo, i64 %i.cd ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.bn, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep315, i64 16
  %wide.load316 = load <4 x i32>, ptr %next.gep315, align 4, !tbaa !130
  %wide.load317 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !130
  %i.cf = getelementptr i8, ptr %next.gep314, i64 16
  store <4 x i32> %wide.load316, ptr %next.gep314, align 4, !tbaa !130
  store <4 x i32> %wide.load317, ptr %i.cf, align 4, !tbaa !130
  %index.next318 = add nuw i64 %index313, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next318, %n.vec311
  br i1 %i.cg, label %middle.block319, label %vector.body312, !llvm.loop !731

middle.block319:                                  ; preds = %vector.body312
  %cmp.n320 = icmp eq i64 %i.by, %n.vec311
  br i1 %cmp.n320, label %.loopexit, label %.lr.ph.i.i.i.i.i51.preheader332

.lr.ph.i.i.i.i.i51.preheader332:                  ; preds = %.lr.ph.i.i.i.i.i51.preheader, %middle.block319
  %.09.i.i.i.i.i52.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.cb, %middle.block319 ]
  %.sroa.04.08.i.i.i.i.i53.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.cc, %middle.block319 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader332, %.lr.ph.i.i.i.i.i51
  %.09.i.i.i.i.i52 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i51 ], [ %.09.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i51.preheader332 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i53 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i51 ], [ %.sroa.04.08.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i51.preheader332 ] ; 2 uses
  %i.ch = load i32, ptr %.sroa.04.08.i.i.i.i.i53, align 4, !tbaa !130
  store i32 %i.ch, ptr %.09.i.i.i.i.i52, align 4, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i53, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i52, i64 4 ; 2 uses
  %.not.i.i.i.i.i54 = icmp eq ptr %i.ci, %i.bm
  br i1 %.not.i.i.i.i.i54, label %.loopexit, label %.lr.ph.i.i.i.i.i51, !llvm.loop !732

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i51, %middle.block319, %.noexc58
  %.0.lcssa.i.i.i.i.i55 = phi ptr [ %i.bo, %.noexc58 ], [ %i.cb, %middle.block319 ], [ %i.cj, %.lr.ph.i.i.i.i.i51 ]
  store ptr %.0.lcssa.i.i.i.i.i55, ptr %i.bp, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ck = load ptr, ptr %5, align 8, !tbaa !121, !noalias !749
  %i.cl = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !749 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cm, ptr %7, align 8, !tbaa !39, !alias.scope !750
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !42, !alias.scope !750
  store i8 0, ptr %i.cm, align 8, !tbaa !43, !alias.scope !750
  %i.co = add i64 %i.cl, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.co)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !42, !alias.scope !750
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.cl
  br i1 %i.cr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !42, !alias.scope !750
  %i.cu = add i64 %i.ct, -4611686018427387894
  %i.cv = icmp ult i64 %i.cu, 10
  br i1 %i.cv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.372, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !750 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cm
  br i1 %i.cz, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.da = load <2 x i32>, ptr %i.ak, align 4, !tbaa !130
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dd = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i4.i, label %.body60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !302
  br label %.body60.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.dd, ptr %8, align 8, !tbaa !303
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !302
  store <2 x i32> %i.da, ptr %i.dd, align 4, !tbaa !130
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.dc, ptr %.sroa.6197.0..sroa_idx, align 4, !tbaa !130
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !301
  %i.dl = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.bb      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dm = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !302
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.dr = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cm
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.dt = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.dv = load ptr, ptr %5, align 8, !tbaa !121, !noalias !751
  %i.dw = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !751 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.dx, ptr %9, align 8, !tbaa !39, !alias.scope !752
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !42, !alias.scope !752
  store i8 0, ptr %i.dx, align 8, !tbaa !43, !alias.scope !752
  %i.dz = add i64 %i.dw, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dz)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !42, !alias.scope !752
  %i.eb = sub i64 4611686018427387903, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dw
  br i1 %i.ec, label %.invoke.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69: ; preds = %bb.s
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dv, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69
  %i.ee = load i64, ptr %i.dy, align 8, !tbaa !42, !alias.scope !752
  %i.ef = add i64 %i.ee, -4611686018427387894
  %i.eg = icmp ult i64 %i.ef, 10
  br i1 %i.eg, label %.invoke.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71

.invoke.i.i72:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i73 unwind label %bb.t

.cont.i.i73:                                      ; preds = %.invoke.i.i72
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.373, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit76 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71, %.invoke.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %9, align 8, !tbaa !121, !alias.scope !752 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQMatMulERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %.body114 ], [ %i.mg, %bb.bg ], [ %i.mi, %bb.bi ], [ %i.mh, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bf, %.body96
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bj ], [ %i.mf, %bb.bf ], [ %i.gf, %.body96 ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.body74, %.body
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bk ], [ %.pn35.pn, %.body74 ], [ %.pn32.pn, %.body ] ; 2 uses
  %i.mo = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mp = load ptr, ptr %i.br, align 8, !tbaa !302
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = sub i64 %i.mq, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.ms) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158: ; preds = %bb.bm, %bb.bl, %bb.ba
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lk, %bb.ba ], [ %.pn38.pn.pn.pn.pn, %bb.bl ], [ %.pn38.pn.pn.pn.pn, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i159 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit161, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit161

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit161: ; preds = %bb.bn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158, %bb.az
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.az ], [ %.pn38.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit158 ], [ %.pn38.pn.pn.pn.pn.pn, %bb.bn ]
  %i.mt = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.m
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit161
  %i.mv = load i64, ptr %i.m, align 8, !tbaa !43
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQGemmERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.11", align 8   ; 12 uses
  %11 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 21 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %14 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %15 = alloca %"class.std::vector.11", align 8   ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %i.d = icmp eq i32 %i.c, 9
  %i.e = and i32 %i.c, -2
  %or.cond = icmp eq i32 %i.e, 8
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.364, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQGemmERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2351) #26
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
  %i.h = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bm

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.q, ptr %i.a, align 8, !tbaa !120
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !121
  %i.t = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.t, ptr %i.n, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !43
  store i8 %i.v, ptr %i.u, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %5, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !301 ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !303 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %.noexc83, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge unwind label %bb.ar

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !331
  %.pre274 = load ptr, ptr %i.ab, align 8, !tbaa !331
  br label %.noexc83

.noexc83:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre274, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge ] ; 3 uses
  %i.ak = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge ] ; 5 uses
  %i.al = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc83_crit_edge ] ; 14 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc83
  %i.am = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.am                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 44
  %i.at = sub i64 %i.am, %i.an
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond381 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond381, label %.lr.ph.i.i.i.i.i.preheader393, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep359, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep359, align 4, !tbaa !130
  %wide.load360 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !130
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load360, ptr %i.az, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader393

.lr.ph.i.i.i.i.i.preheader393:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader393, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader393 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader393 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bb, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !758

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !301 ; 3 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !303 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i84 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i84, label %.noexc94, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bl = icmp ugt i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %.noexc.i.i92, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85, !prof !131

.noexc.i.i92:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc93 unwind label %bb.as

.noexc93:                                         ; preds = %.noexc.i.i92
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85: ; preds = %bb.k
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge unwind label %bb.as

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85
  %.pre275 = load ptr, ptr %i.be, align 8, !tbaa !331
  %.pre276 = load ptr, ptr %i.bf, align 8, !tbaa !331
  br label %.noexc94

.noexc94:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre276, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge ] ; 3 uses
  %i.bo = phi ptr [ %i.bh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre275, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge ] ; 5 uses
  %i.bp = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bm, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i85..noexc94_crit_edge ] ; 7 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !303
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !302
  %.not7.i.i.i.i.i86 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not7.i.i.i.i.i86, label %.loopexit270, label %.lr.ph.i.i.i.i.i87.preheader

.lr.ph.i.i.i.i.i87.preheader:                     ; preds = %.noexc94
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bp to i64
  %i.bv = ptrtoaddr ptr %i.bn to i64
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %i.bt                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check365 = icmp ult i64 %i.bx, 44
  %i.ca = sub i64 %i.bt, %i.bu
  %diff.check367 = icmp ugt i64 %i.ca, -32
  %or.cond382 = or i1 %min.iters.check365, %diff.check367
  br i1 %or.cond382, label %.lr.ph.i.i.i.i.i87.preheader392, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph.i.i.i.i.i87.preheader
  %n.vec369 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cb = shl i64 %n.vec369, 2                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bo, i64 %i.cb
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next376, %vector.body370 ] ; 2 uses
  %i.ce = shl i64 %index371, 2                    ; 2 uses
  %next.gep372 = getelementptr i8, ptr %i.bp, i64 %i.ce ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.bo, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep373, i64 16
  %wide.load374 = load <4 x i32>, ptr %next.gep373, align 4, !tbaa !130
  %wide.load375 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !130
  %i.cg = getelementptr i8, ptr %next.gep372, i64 16
  store <4 x i32> %wide.load374, ptr %next.gep372, align 4, !tbaa !130
  store <4 x i32> %wide.load375, ptr %i.cg, align 4, !tbaa !130
  %index.next376 = add nuw i64 %index371, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next376, %n.vec369
  br i1 %i.ch, label %middle.block377, label %vector.body370, !llvm.loop !759

middle.block377:                                  ; preds = %vector.body370
  %cmp.n378 = icmp eq i64 %i.bz, %n.vec369
  br i1 %cmp.n378, label %.loopexit270, label %.lr.ph.i.i.i.i.i87.preheader392

.lr.ph.i.i.i.i.i87.preheader392:                  ; preds = %.lr.ph.i.i.i.i.i87.preheader, %middle.block377
  %.09.i.i.i.i.i88.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i87.preheader ], [ %i.cc, %middle.block377 ]
  %.sroa.04.08.i.i.i.i.i89.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i87.preheader ], [ %i.cd, %middle.block377 ]
  br label %.lr.ph.i.i.i.i.i87

.lr.ph.i.i.i.i.i87:                               ; preds = %.lr.ph.i.i.i.i.i87.preheader392, %.lr.ph.i.i.i.i.i87
  %.09.i.i.i.i.i88 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i87 ], [ %.09.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i87.preheader392 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i89 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i87 ], [ %.sroa.04.08.i.i.i.i.i89.ph, %.lr.ph.i.i.i.i.i87.preheader392 ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.04.08.i.i.i.i.i89, align 4, !tbaa !130
  store i32 %i.ci, ptr %.09.i.i.i.i.i88, align 4, !tbaa !130
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i89, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i88, i64 4 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.cj, %i.bn
  br i1 %.not.i.i.i.i.i90, label %.loopexit270, label %.lr.ph.i.i.i.i.i87, !llvm.loop !760

.loopexit270:                                     ; preds = %.lr.ph.i.i.i.i.i87, %middle.block377, %.noexc94
  %.0.lcssa.i.i.i.i.i91 = phi ptr [ %i.bp, %.noexc94 ], [ %i.cc, %middle.block377 ], [ %i.ck, %.lr.ph.i.i.i.i.i87 ]
  store ptr %.0.lcssa.i.i.i.i.i91, ptr %i.bq, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.cl = load ptr, ptr %5, align 8, !tbaa !121, !noalias !780
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !780 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cn, ptr %7, align 8, !tbaa !39, !alias.scope !781
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.co, align 8, !tbaa !42, !alias.scope !781
  store i8 0, ptr %i.cn, align 8, !tbaa !43, !alias.scope !781
  %i.cp = add i64 %i.cm, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cp)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit270
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !781
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cm
  br i1 %i.cs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cl, i64 noundef %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !781
  %i.cv = add i64 %i.cu, -4611686018427387894
  %i.cw = icmp ult i64 %i.cv, 10
  br i1 %i.cw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.372, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit270
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !781 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cn
  br i1 %i.da, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.db = load <2 x i32>, ptr %i.al, align 4, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.de = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i4.i, label %.body96, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !302
  br label %.body96.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.de, ptr %8, align 8, !tbaa !303
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !302
  store <2 x i32> %i.db, ptr %i.de, align 4, !tbaa !130
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dd, ptr %.sroa.6248.0..sroa_idx, align 4, !tbaa !130
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !301
  %i.dm = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.at      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !302
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ds = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cn
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.du = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.dw = load ptr, ptr %5, align 8, !tbaa !121, !noalias !782
  %i.dx = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !782 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.dy, ptr %9, align 8, !tbaa !39, !alias.scope !783
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !42, !alias.scope !783
  store i8 0, ptr %i.dy, align 8, !tbaa !43, !alias.scope !783
  %i.ea = add i64 %i.dx, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ea)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !783
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dx
  br i1 %i.ed, label %.invoke.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i105: ; preds = %bb.s
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i106 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i105
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !783
  %i.eg = add i64 %i.ef, -4611686018427387894
  %i.eh = icmp ult i64 %i.eg, 10
  br i1 %i.eh, label %.invoke.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i107

.invoke.i.i108:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i106, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i109 unwind label %bb.t

.cont.i.i109:                                     ; preds = %.invoke.i.i108
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i106
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.373, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit112 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i107, %.invoke.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %9, align 8, !tbaa !121, !alias.scope !783 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter210parseQGemmERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge80, %.body132
  %.pn66.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn, %.critedge80 ], [ %i.gg, %.body132 ], [ %lpad.loopexit.split-lp391, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp, %.body110, %.body
  %.pn66.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn60.pn, %.body110 ], [ %.pn57.pn, %.body ] ; 2 uses
  %i.nl = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i213 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nm = load ptr, ptr %i.bs, align 8, !tbaa !302
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.np) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215: ; preds = %bb.bk, %bb.bj, %bb.as
  %.pn66.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.as ], [ %.pn66.pn.pn.pn.pn.pn, %bb.bj ], [ %.pn66.pn.pn.pn.pn.pn, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i216 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit218, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit218

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit218: ; preds = %bb.bl, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215, %bb.ar
  %.pn66.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jy, %bb.ar ], [ %.pn66.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit215 ], [ %.pn66.pn.pn.pn.pn.pn.pn, %bb.bl ]
  %i.nq = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.n
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit218
  %i.ns = load i64, ptr %i.n, align 8, !tbaa !43
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn66.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn66.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQEltwiseERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.11", align 8   ; 12 uses
  %11 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 21 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %15 = alloca [2 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 8 ; 9 uses
  %16 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %17 = alloca %"class.std::vector.11", align 8   ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %i.d = icmp eq i32 %i.c, 8
  %i.e = add i32 %i.c, -7
  %or.cond = icmp ult i32 %i.e, 2
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.377, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQEltwiseERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2380) #26
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
  %i.h = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bv

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.q, ptr %i.a, align 8, !tbaa !120
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !121
  %i.t = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.t, ptr %i.n, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !43
  store i8 %i.v, ptr %i.u, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %5, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !301 ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !303 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %.noexc57, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge unwind label %bb.av

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !331
  %.pre246 = load ptr, ptr %i.ab, align 8, !tbaa !331
  br label %.noexc57

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre246, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge ] ; 3 uses
  %i.ak = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge ] ; 5 uses
  %i.al = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc57_crit_edge ] ; 13 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc57
  %i.am = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.am                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 44
  %i.at = sub i64 %i.am, %i.an
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond356 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond356, label %.lr.ph.i.i.i.i.i.preheader367, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep334, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep334, align 4, !tbaa !130
  %wide.load335 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !130
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load335, ptr %i.az, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader367

.lr.ph.i.i.i.i.i.preheader367:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader367, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader367 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader367 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bb, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !791

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !301 ; 3 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !303 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i58 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i58, label %.noexc68, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bl = icmp ugt i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %.noexc.i.i66, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59, !prof !131

.noexc.i.i66:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc67 unwind label %bb.aw

.noexc67:                                         ; preds = %.noexc.i.i66
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59: ; preds = %bb.k
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge unwind label %bb.aw

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59
  %.pre247 = load ptr, ptr %i.be, align 8, !tbaa !331
  %.pre248 = load ptr, ptr %i.bf, align 8, !tbaa !331
  br label %.noexc68

.noexc68:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre248, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge ] ; 3 uses
  %i.bo = phi ptr [ %i.bh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre247, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge ] ; 5 uses
  %i.bp = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bm, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i59..noexc68_crit_edge ] ; 7 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !303
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !302
  %.not7.i.i.i.i.i60 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not7.i.i.i.i.i60, label %.loopexit, label %.lr.ph.i.i.i.i.i61.preheader

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %.noexc68
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bp to i64
  %i.bv = ptrtoaddr ptr %i.bn to i64
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %i.bt                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.bx, 44
  %i.ca = sub i64 %i.bt, %i.bu
  %diff.check342 = icmp ugt i64 %i.ca, -32
  %or.cond357 = or i1 %min.iters.check340, %diff.check342
  br i1 %or.cond357, label %.lr.ph.i.i.i.i.i61.preheader366, label %vector.ph343

vector.ph343:                                     ; preds = %.lr.ph.i.i.i.i.i61.preheader
  %n.vec344 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cb = shl i64 %n.vec344, 2                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bo, i64 %i.cb
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph343
  %index346 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %i.ce = shl i64 %index346, 2                    ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.bp, i64 %i.ce ; 2 uses
  %next.gep348 = getelementptr i8, ptr %i.bo, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep348, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !130
  %wide.load350 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !130
  %i.cg = getelementptr i8, ptr %next.gep347, i64 16
  store <4 x i32> %wide.load349, ptr %next.gep347, align 4, !tbaa !130
  store <4 x i32> %wide.load350, ptr %i.cg, align 4, !tbaa !130
  %index.next351 = add nuw i64 %index346, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.ch, label %middle.block352, label %vector.body345, !llvm.loop !792

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %i.bz, %n.vec344
  br i1 %cmp.n353, label %.loopexit, label %.lr.ph.i.i.i.i.i61.preheader366

.lr.ph.i.i.i.i.i61.preheader366:                  ; preds = %.lr.ph.i.i.i.i.i61.preheader, %middle.block352
  %.09.i.i.i.i.i62.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cc, %middle.block352 ]
  %.sroa.04.08.i.i.i.i.i63.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cd, %middle.block352 ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader366, %.lr.ph.i.i.i.i.i61
  %.09.i.i.i.i.i62 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i61 ], [ %.09.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader366 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i63 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i61 ], [ %.sroa.04.08.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader366 ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.04.08.i.i.i.i.i63, align 4, !tbaa !130
  store i32 %i.ci, ptr %.09.i.i.i.i.i62, align 4, !tbaa !130
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i63, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i62, i64 4 ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.cj, %i.bn
  br i1 %.not.i.i.i.i.i64, label %.loopexit, label %.lr.ph.i.i.i.i.i61, !llvm.loop !793

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i61, %middle.block352, %.noexc68
  %.0.lcssa.i.i.i.i.i65 = phi ptr [ %i.bp, %.noexc68 ], [ %i.cc, %middle.block352 ], [ %i.ck, %.lr.ph.i.i.i.i.i61 ]
  store ptr %.0.lcssa.i.i.i.i.i65, ptr %i.bq, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cl = load ptr, ptr %5, align 8, !tbaa !121, !noalias !813
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !813 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cn, ptr %7, align 8, !tbaa !39, !alias.scope !814
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.co, align 8, !tbaa !42, !alias.scope !814
  store i8 0, ptr %i.cn, align 8, !tbaa !43, !alias.scope !814
  %i.cp = add i64 %i.cm, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cp)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !814
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cm
  br i1 %i.cs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cl, i64 noundef %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !814
  %i.cv = add i64 %i.cu, -4611686018427387894
  %i.cw = icmp ult i64 %i.cv, 10
  br i1 %i.cw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.372, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !814 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cn
  br i1 %i.da, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.db = load <2 x i32>, ptr %i.al, align 4, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.de = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i4.i, label %.body70, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !302
  br label %.body70.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.de, ptr %8, align 8, !tbaa !303
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !302
  store <2 x i32> %i.db, ptr %i.de, align 4, !tbaa !130
  %.sroa.6223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dd, ptr %.sroa.6223.0..sroa_idx, align 4, !tbaa !130
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !301
  %i.dm = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.ax      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !302
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ds = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cn
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.du = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.dw = load ptr, ptr %5, align 8, !tbaa !121, !noalias !815
  %i.dx = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !815 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.dy, ptr %9, align 8, !tbaa !39, !alias.scope !816
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !42, !alias.scope !816
  store i8 0, ptr %i.dy, align 8, !tbaa !43, !alias.scope !816
  %i.ea = add i64 %i.dx, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ea)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !816
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dx
  br i1 %i.ed, label %.invoke.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79: ; preds = %bb.s
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !42, !alias.scope !816
  %i.eg = add i64 %i.ef, -4611686018427387894
  %i.eh = icmp ult i64 %i.eg, 10
  br i1 %i.eh, label %.invoke.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i81

.invoke.i.i82:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i83 unwind label %bb.t

.cont.i.i83:                                      ; preds = %.invoke.i.i82
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.373, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit86 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i81, %.invoke.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %9, align 8, !tbaa !121, !alias.scope !816 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQEltwiseERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.bb, %.body106
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %bb.bq ], [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.lp, %bb.bb ], [ %i.gg, %.body106 ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.body84, %.body
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn, %bb.br ], [ %.pn42.pn, %.body84 ], [ %.pn39.pn, %.body ] ; 2 uses
  %i.on = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oo = load ptr, ptr %i.bs, align 8, !tbaa !302
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.on to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.or) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184: ; preds = %bb.bt, %bb.bs, %bb.aw
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ku, %bb.aw ], [ %.pn47.pn.pn.pn.pn.pn, %bb.bs ], [ %.pn47.pn.pn.pn.pn.pn, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i185 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit187, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit187

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit187: ; preds = %bb.bu, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184, %bb.av
  %.pn47.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kt, %bb.av ], [ %.pn47.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit184 ], [ %.pn47.pn.pn.pn.pn.pn.pn, %bb.bu ]
  %i.os = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.n
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit187
  %i.ou = load i64, ptr %i.n, align 8, !tbaa !43
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter215parseQLeakyReluERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 21 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %14 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %15 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %16 = alloca %"class.std::vector.11", align 8   ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = icmp eq i32 %i.d, 5
  %i.f = and i32 %i.d, -2
  %or.cond = icmp eq i32 %i.f, 4
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.382, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter215parseQLeakyReluERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2408) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !43
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bl

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !121  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.r, ptr %i.a, align 8, !tbaa !120
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !121
  %i.u = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.u, ptr %i.o, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.o, %bb.g ] ; 2 uses
  switch i64 %i.r, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !43
  store i8 %i.w, ptr %i.v, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = load ptr, ptr %5, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !301 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !303 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge unwind label %bb.an

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !331
  %.pre212 = load ptr, ptr %i.ac, align 8, !tbaa !331
  br label %.noexc50

.noexc50:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ak = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre212, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge ] ; 3 uses
  %i.al = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge ] ; 5 uses
  %i.am = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.aj, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc50_crit_edge ] ; 11 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc50
  %i.an = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.ak to i64
  %i.aq = add i64 %i.ap, -4
  %i.ar = sub i64 %i.aq, %i.an                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 44
  %i.au = sub i64 %i.an, %i.ao
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond313 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond313, label %.lr.ph.i.i.i.i.i.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep291, align 4, !tbaa !130
  %wide.load292 = load <4 x i32>, ptr %i.az, align 4, !tbaa !130
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load292, ptr %i.ba, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader321

.lr.ph.i.i.i.i.i.preheader321:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader321, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader321 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader321 ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bc, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !824

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !301 ; 3 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !303 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i51, label %.noexc61, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %.noexc.i.i59, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52, !prof !131

.noexc.i.i59:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc60 unwind label %bb.ao

.noexc60:                                         ; preds = %.noexc.i.i59
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.k
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge unwind label %bb.ao

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52
  %.pre213 = load ptr, ptr %i.bf, align 8, !tbaa !331
  %.pre214 = load ptr, ptr %i.bg, align 8, !tbaa !331
  br label %.noexc61

.noexc61:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bo = phi ptr [ %i.bh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre214, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge ] ; 3 uses
  %i.bp = phi ptr [ %i.bi, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre213, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge ] ; 5 uses
  %i.bq = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bn, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i52..noexc61_crit_edge ] ; 7 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !303
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !302
  %.not7.i.i.i.i.i53 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not7.i.i.i.i.i53, label %.loopexit, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %.noexc61
  %i.bu = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bq to i64
  %i.bw = ptrtoaddr ptr %i.bo to i64
  %i.bx = add i64 %i.bw, -4
  %i.by = sub i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check297 = icmp ult i64 %i.by, 44
  %i.cb = sub i64 %i.bu, %i.bv
  %diff.check299 = icmp ugt i64 %i.cb, -32
  %or.cond314 = or i1 %min.iters.check297, %diff.check299
  br i1 %or.cond314, label %.lr.ph.i.i.i.i.i54.preheader320, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec301 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec301, 2                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bq, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bp, i64 %i.cc
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %i.cf = shl i64 %index303, 2                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.bq, i64 %i.cf ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load306 = load <4 x i32>, ptr %next.gep305, align 4, !tbaa !130
  %wide.load307 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !130
  %i.ch = getelementptr i8, ptr %next.gep304, i64 16
  store <4 x i32> %wide.load306, ptr %next.gep304, align 4, !tbaa !130
  store <4 x i32> %wide.load307, ptr %i.ch, align 4, !tbaa !130
  %index.next308 = add nuw i64 %index303, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.ci, label %middle.block309, label %vector.body302, !llvm.loop !825

middle.block309:                                  ; preds = %vector.body302
  %cmp.n310 = icmp eq i64 %i.ca, %n.vec301
  br i1 %cmp.n310, label %.loopexit, label %.lr.ph.i.i.i.i.i54.preheader320

.lr.ph.i.i.i.i.i54.preheader320:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block309
  %.09.i.i.i.i.i55.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cd, %middle.block309 ]
  %.sroa.04.08.i.i.i.i.i56.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.ce, %middle.block309 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader320, %.lr.ph.i.i.i.i.i54
  %.09.i.i.i.i.i55 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i54 ], [ %.09.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader320 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i56 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i54 ], [ %.sroa.04.08.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader320 ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.04.08.i.i.i.i.i56, align 4, !tbaa !130
  store i32 %i.cj, ptr %.09.i.i.i.i.i55, align 4, !tbaa !130
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i56, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i55, i64 4 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.ck, %i.bo
  br i1 %.not.i.i.i.i.i57, label %.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !826

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i54, %middle.block309, %.noexc61
  %.0.lcssa.i.i.i.i.i58 = phi ptr [ %i.bq, %.noexc61 ], [ %i.cd, %middle.block309 ], [ %i.cl, %.lr.ph.i.i.i.i.i54 ]
  store ptr %.0.lcssa.i.i.i.i.i58, ptr %i.br, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.cm = load ptr, ptr %5, align 8, !tbaa !121, !noalias !842
  %i.cn = load i64, ptr %i.y, align 8, !tbaa !42, !noalias !842 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !39, !alias.scope !843
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !42, !alias.scope !843
  store i8 0, ptr %i.co, align 8, !tbaa !43, !alias.scope !843
  %i.cq = add i64 %i.cn, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !42, !alias.scope !843
  %i.cs = sub i64 4611686018427387903, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cn
  br i1 %i.ct, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cm, i64 noundef %i.cn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !42, !alias.scope !843
  %i.cw = add i64 %i.cv, -4611686018427387894
  %i.cx = icmp ult i64 %i.cw, 10
  br i1 %i.cx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.365, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !843 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.co
  br i1 %i.db, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dc = load <2 x i32>, ptr %i.am, align 4, !tbaa !130
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.df = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i4.i, label %.body63, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !302
  br label %.body63.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.df, ptr %8, align 8, !tbaa !303
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !302
  store <2 x i32> %i.dc, ptr %i.df, align 4, !tbaa !130
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.de, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !301
  %i.dn = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.ap      ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !302
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.dt = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.co
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.dv = load i64, ptr %i.co, align 8, !tbaa !43
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !48
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.dy, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false)
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  store i64 0, ptr %i.ee, align 8, !tbaa !42
  store i8 0, ptr %i.ed, align 8, !tbaa !43
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  store i64 0, ptr %i.eh, align 8, !tbaa !42
  store i8 0, ptr %i.eg, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.ei = load ptr, ptr %5, align 8, !tbaa !121, !noalias !844
  %i.ej = load i64, ptr %i.y, align 8, !tbaa !42, !noalias !844 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.ek, ptr %10, align 8, !tbaa !39, !alias.scope !845
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i64 0, ptr %i.el, align 8, !tbaa !42, !alias.scope !845
  store i8 0, ptr %i.ek, align 8, !tbaa !43, !alias.scope !845
  %i.em = add i64 %i.ej, 11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.em)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.en = load i64, ptr %i.el, align 8, !tbaa !42, !alias.scope !845
  %i.eo = sub i64 4611686018427387903, %i.en
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.invoke.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i72: ; preds = %bb.s
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ei, i64 noundef %i.ej)
end_hunk_5
begin_hunk_6_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter215parseQLeakyReluERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
bb.bg:                                            ; preds = %.body104, %bb.av, %bb.au, %bb.at
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %.body104 ], [ %i.kh, %bb.at ], [ %i.kj, %bb.av ], [ %i.ki, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.ar, %.body77
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.bg ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.jx, %bb.ar ], [ %i.ev, %.body77 ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.body
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.bh ], [ %.pn34.pn, %.body ] ; 2 uses
  %i.mz = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.na = load ptr, ptr %i.bt, align 8, !tbaa !302
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.mz to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nd) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162: ; preds = %bb.bj, %bb.bi, %bb.ao
  %.pn40.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.ao ], [ %.pn40.pn.pn.pn.pn.pn, %bb.bi ], [ %.pn40.pn.pn.pn.pn.pn, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i163 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit165, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit165

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit165: ; preds = %bb.bk, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162, %bb.an
  %.pn40.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jl, %bb.an ], [ %.pn40.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit162 ], [ %.pn40.pn.pn.pn.pn.pn.pn, %bb.bk ]
  %i.ne = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.o
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit165
  %i.ng = load i64, ptr %i.o, align 8, !tbaa !43
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQSigmoidERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %12 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %13 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %14 = alloca %"class.std::vector.11", align 8   ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %i.d = icmp eq i32 %i.c, 5
  %i.e = and i32 %i.c, -2
  %or.cond = icmp eq i32 %i.e, 4
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.382, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQSigmoidERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2435) #26
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
  %i.h = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bh

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.q, ptr %i.a, align 8, !tbaa !120
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !121
  %i.t = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.t, ptr %i.n, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !43
  store i8 %i.v, ptr %i.u, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %5, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !301 ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !303 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %.noexc44, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge unwind label %bb.ak

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !331
  %.pre182 = load ptr, ptr %i.ab, align 8, !tbaa !331
  br label %.noexc44

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre182, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge ] ; 3 uses
  %i.ak = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge ] ; 5 uses
  %i.al = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc44_crit_edge ] ; 11 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc44
  %i.am = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.aj to i64
  %i.ap = add i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.am                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 44
  %i.at = sub i64 %i.am, %i.an
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond272 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond272, label %.lr.ph.i.i.i.i.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep250, align 4, !tbaa !130
  %wide.load251 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !130
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load251, ptr %i.az, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !850

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader280

.lr.ph.i.i.i.i.i.preheader280:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader280, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader280 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader280 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bb, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !851

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !301 ; 3 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !303 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i45 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i45, label %.noexc55, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bl = icmp ugt i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %.noexc.i.i53, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46, !prof !131

.noexc.i.i53:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc54 unwind label %bb.al

.noexc54:                                         ; preds = %.noexc.i.i53
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46: ; preds = %bb.k
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge unwind label %bb.al

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46
  %.pre183 = load ptr, ptr %i.be, align 8, !tbaa !331
  %.pre184 = load ptr, ptr %i.bf, align 8, !tbaa !331
  br label %.noexc55

.noexc55:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre184, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge ] ; 3 uses
  %i.bo = phi ptr [ %i.bh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre183, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge ] ; 5 uses
  %i.bp = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bm, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i46..noexc55_crit_edge ] ; 7 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !303
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !302
  %.not7.i.i.i.i.i47 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not7.i.i.i.i.i47, label %.loopexit, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %.noexc55
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bp to i64
  %i.bv = ptrtoaddr ptr %i.bn to i64
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %i.bt                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check256 = icmp ult i64 %i.bx, 44
  %i.ca = sub i64 %i.bt, %i.bu
  %diff.check258 = icmp ugt i64 %i.ca, -32
  %or.cond273 = or i1 %min.iters.check256, %diff.check258
  br i1 %or.cond273, label %.lr.ph.i.i.i.i.i48.preheader279, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %n.vec260 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cb = shl i64 %n.vec260, 2                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bo, i64 %i.cb
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.ce = shl i64 %index262, 2                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.bp, i64 %i.ce ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.bo, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <4 x i32>, ptr %next.gep264, align 4, !tbaa !130
  %wide.load266 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !130
  %i.cg = getelementptr i8, ptr %next.gep263, i64 16
  store <4 x i32> %wide.load265, ptr %next.gep263, align 4, !tbaa !130
  store <4 x i32> %wide.load266, ptr %i.cg, align 4, !tbaa !130
  %index.next267 = add nuw i64 %index262, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.ch, label %middle.block268, label %vector.body261, !llvm.loop !852

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.bz, %n.vec260
  br i1 %cmp.n269, label %.loopexit, label %.lr.ph.i.i.i.i.i48.preheader279

.lr.ph.i.i.i.i.i48.preheader279:                  ; preds = %.lr.ph.i.i.i.i.i48.preheader, %middle.block268
  %.09.i.i.i.i.i49.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cc, %middle.block268 ]
  %.sroa.04.08.i.i.i.i.i50.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cd, %middle.block268 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader279, %.lr.ph.i.i.i.i.i48
  %.09.i.i.i.i.i49 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i48 ], [ %.09.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader279 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i50 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.08.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader279 ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.04.08.i.i.i.i.i50, align 4, !tbaa !130
  store i32 %i.ci, ptr %.09.i.i.i.i.i49, align 4, !tbaa !130
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i50, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i49, i64 4 ; 2 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.cj, %i.bn
  br i1 %.not.i.i.i.i.i51, label %.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !853

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i48, %middle.block268, %.noexc55
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.bp, %.noexc55 ], [ %i.cc, %middle.block268 ], [ %i.ck, %.lr.ph.i.i.i.i.i48 ]
  store ptr %.0.lcssa.i.i.i.i.i52, ptr %i.bq, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.cl = load ptr, ptr %5, align 8, !tbaa !121, !noalias !869
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !869 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cn, ptr %7, align 8, !tbaa !39, !alias.scope !870
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.co, align 8, !tbaa !42, !alias.scope !870
  store i8 0, ptr %i.cn, align 8, !tbaa !43, !alias.scope !870
  %i.cp = add i64 %i.cm, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cp)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !870
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cm
  br i1 %i.cs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cl, i64 noundef %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !42, !alias.scope !870
  %i.cv = add i64 %i.cu, -4611686018427387894
  %i.cw = icmp ult i64 %i.cv, 10
  br i1 %i.cw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.365, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !870 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cn
  br i1 %i.da, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.db = load <2 x i32>, ptr %i.al, align 4, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.de = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i4.i, label %.body57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !302
  br label %.body57.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.de, ptr %8, align 8, !tbaa !303
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !302
  store <2 x i32> %i.db, ptr %i.de, align 4, !tbaa !130
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dd, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !301
  %i.dm = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.am      ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !302
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ds = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cn
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.du = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.dw, align 8, !tbaa !48
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.dx, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i8 0, i64 32, i1 false)
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !39
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  store i64 0, ptr %i.ed, align 8, !tbaa !42
  store i8 0, ptr %i.ec, align 8, !tbaa !43
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !39
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  store i64 0, ptr %i.eg, align 8, !tbaa !42
  store i8 0, ptr %i.ef, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.eh = load ptr, ptr %5, align 8, !tbaa !121, !noalias !871
  %i.ei = load i64, ptr %i.x, align 8, !tbaa !42, !noalias !871 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.ej, ptr %10, align 8, !tbaa !39, !alias.scope !872
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !42, !alias.scope !872
  store i8 0, ptr %i.ej, align 8, !tbaa !43, !alias.scope !872
  %i.el = add i64 %i.ei, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.el)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !42, !alias.scope !872
  %i.en = sub i64 4611686018427387903, %i.em
  %i.eo = icmp ult i64 %i.en, %i.ei
  br i1 %i.eo, label %.invoke.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i66: ; preds = %bb.s
  %i.ep = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.eh, i64 noundef %i.ei)
end_hunk_6
begin_hunk_7_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQSigmoidERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ao, %.body71
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bc ], [ %i.ik, %bb.ao ], [ %i.eu, %.body71 ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.body
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn, %bb.bd ], [ %.pn31.pn, %.body ] ; 2 uses
  %i.ld = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = load ptr, ptr %i.bs, align 8, !tbaa !302
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lh) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134: ; preds = %bb.bf, %bb.be, %bb.al
  %.pn34.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.al ], [ %.pn34.pn.pn.pn.pn.pn, %bb.be ], [ %.pn34.pn.pn.pn.pn.pn, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i135 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit137, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit137

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit137: ; preds = %bb.bg, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134, %bb.ak
  %.pn34.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.ak ], [ %.pn34.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit134 ], [ %.pn34.pn.pn.pn.pn.pn.pn, %bb.bg ]
  %i.li = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.n
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit137
  %i.lk = load i64, ptr %i.n, align 8, !tbaa !43
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQAvgPoolERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %9 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 23 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %13 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %14 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %15 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %16 = alloca %"class.std::vector.11", align 8   ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = icmp eq i32 %i.d, 5
  %i.f = and i32 %i.d, -2
  %or.cond = icmp eq i32 %i.f, 4
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.382, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQAvgPoolERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2461) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !43
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bk

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !121  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.r, ptr %i.a, align 8, !tbaa !120
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !121
  %i.u = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.u, ptr %i.o, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.o, %bb.g ] ; 2 uses
  switch i64 %i.r, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !43
  store i8 %i.w, ptr %i.v, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = load ptr, ptr %5, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !301 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !303 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc52, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge unwind label %bb.an

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !331
  %.pre215 = load ptr, ptr %i.ac, align 8, !tbaa !331
  br label %.noexc52

.noexc52:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ak = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre215, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ] ; 3 uses
  %i.al = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ] ; 5 uses
  %i.am = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.aj, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ] ; 11 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc52
  %i.an = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.ak to i64
  %i.aq = add i64 %i.ap, -4
  %i.ar = sub i64 %i.aq, %i.an                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 44
  %i.au = sub i64 %i.an, %i.ao
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond316 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond316, label %.lr.ph.i.i.i.i.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep294, align 4, !tbaa !130
  %wide.load295 = load <4 x i32>, ptr %i.az, align 4, !tbaa !130
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load295, ptr %i.ba, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !877

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader325

.lr.ph.i.i.i.i.i.preheader325:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader325, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader325 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader325 ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bc, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !878

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !301 ; 3 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !303 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i53 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i53, label %.noexc63, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %.noexc.i.i61, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54, !prof !131

.noexc.i.i61:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc62 unwind label %bb.ao

.noexc62:                                         ; preds = %.noexc.i.i61
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54: ; preds = %bb.k
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge unwind label %bb.ao

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54
  %.pre216 = load ptr, ptr %i.bf, align 8, !tbaa !331
  %.pre217 = load ptr, ptr %i.bg, align 8, !tbaa !331
  br label %.noexc63

.noexc63:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bo = phi ptr [ %i.bh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre217, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge ] ; 3 uses
  %i.bp = phi ptr [ %i.bi, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre216, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge ] ; 5 uses
  %i.bq = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bn, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i54..noexc63_crit_edge ] ; 7 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !303
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !302
  %.not7.i.i.i.i.i55 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not7.i.i.i.i.i55, label %.loopexit208, label %.lr.ph.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %.noexc63
  %i.bu = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bq to i64
  %i.bw = ptrtoaddr ptr %i.bo to i64
  %i.bx = add i64 %i.bw, -4
  %i.by = sub i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.by, 44
  %i.cb = sub i64 %i.bu, %i.bv
  %diff.check302 = icmp ugt i64 %i.cb, -32
  %or.cond317 = or i1 %min.iters.check300, %diff.check302
  br i1 %or.cond317, label %.lr.ph.i.i.i.i.i56.preheader324, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %n.vec304 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec304, 2                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bq, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bp, i64 %i.cc
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.cf = shl i64 %index306, 2                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.bq, i64 %i.cf ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <4 x i32>, ptr %next.gep308, align 4, !tbaa !130
  %wide.load310 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !130
  %i.ch = getelementptr i8, ptr %next.gep307, i64 16
  store <4 x i32> %wide.load309, ptr %next.gep307, align 4, !tbaa !130
  store <4 x i32> %wide.load310, ptr %i.ch, align 4, !tbaa !130
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.ci, label %middle.block312, label %vector.body305, !llvm.loop !879

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.ca, %n.vec304
  br i1 %cmp.n313, label %.loopexit208, label %.lr.ph.i.i.i.i.i56.preheader324

.lr.ph.i.i.i.i.i56.preheader324:                  ; preds = %.lr.ph.i.i.i.i.i56.preheader, %middle.block312
  %.09.i.i.i.i.i57.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.cd, %middle.block312 ]
  %.sroa.04.08.i.i.i.i.i58.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ce, %middle.block312 ]
  br label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.preheader324, %.lr.ph.i.i.i.i.i56
  %.09.i.i.i.i.i57 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i56 ], [ %.09.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i56.preheader324 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i58 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i56 ], [ %.sroa.04.08.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i56.preheader324 ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.04.08.i.i.i.i.i58, align 4, !tbaa !130
  store i32 %i.cj, ptr %.09.i.i.i.i.i57, align 4, !tbaa !130
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i58, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i57, i64 4 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.ck, %i.bo
  br i1 %.not.i.i.i.i.i59, label %.loopexit208, label %.lr.ph.i.i.i.i.i56, !llvm.loop !880

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i56, %middle.block312, %.noexc63
  %.0.lcssa.i.i.i.i.i60 = phi ptr [ %i.bq, %.noexc63 ], [ %i.cd, %middle.block312 ], [ %i.cl, %.lr.ph.i.i.i.i.i56 ]
  store ptr %.0.lcssa.i.i.i.i.i60, ptr %i.br, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.cm = load ptr, ptr %5, align 8, !tbaa !121, !noalias !896
  %i.cn = load i64, ptr %i.y, align 8, !tbaa !42, !noalias !896 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !39, !alias.scope !897
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !42, !alias.scope !897
  store i8 0, ptr %i.co, align 8, !tbaa !43, !alias.scope !897
  %i.cq = add i64 %i.cn, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.loopexit208
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !42, !alias.scope !897
  %i.cs = sub i64 4611686018427387903, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cn
  br i1 %i.ct, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cm, i64 noundef %i.cn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !42, !alias.scope !897
  %i.cw = add i64 %i.cv, -4611686018427387894
  %i.cx = icmp ult i64 %i.cw, 10
  br i1 %i.cx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.365, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit208
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !121, !alias.scope !897 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.co
  br i1 %i.db, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dc = load <2 x i32>, ptr %i.am, align 4, !tbaa !130
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.df = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %8, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i4.i, label %.body65, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !302
  br label %.body65.sink.split

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.df, ptr %8, align 8, !tbaa !303
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !302
  store <2 x i32> %i.dc, ptr %i.df, align 4, !tbaa !130
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.de, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !301
  %i.dn = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.q unwind label %bb.ap      ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %8, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !302
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.dt = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.co
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.dv = load i64, ptr %i.co, align 8, !tbaa !43
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !48
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.dy, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false)
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  store i64 0, ptr %i.ee, align 8, !tbaa !42
  store i8 0, ptr %i.ed, align 8, !tbaa !43
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  store i64 0, ptr %i.eh, align 8, !tbaa !42
  store i8 0, ptr %i.eg, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.ei = load ptr, ptr %5, align 8, !tbaa !121, !noalias !898
  %i.ej = load i64, ptr %i.y, align 8, !tbaa !42, !noalias !898 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.ek, ptr %10, align 8, !tbaa !39, !alias.scope !899
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i64 0, ptr %i.el, align 8, !tbaa !42, !alias.scope !899
  store i8 0, ptr %i.ek, align 8, !tbaa !43, !alias.scope !899
  %i.em = add i64 %i.ej, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.em)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.en = load i64, ptr %i.el, align 8, !tbaa !42, !alias.scope !899
  %i.eo = sub i64 4611686018427387903, %i.en
  %i.ep = icmp ult i64 %i.eo, %i.ej
  br i1 %i.ep, label %.invoke.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i74: ; preds = %bb.s
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ei, i64 noundef %i.ej)
end_hunk_7
begin_hunk_8_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQAvgPoolERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a

bb.bh:                                            ; preds = %.loopexit.split-lp, %.body
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn35.pn, %.body ] ; 2 uses
  %i.no = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.np = load ptr, ptr %i.bt, align 8, !tbaa !302
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.no to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.ns) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163: ; preds = %bb.bi, %bb.bh, %bb.ao
  %.pn42.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.ao ], [ %.pn42.pn.pn.pn.pn.pn, %bb.bh ], [ %.pn42.pn.pn.pn.pn.pn, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i164 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit166, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit166

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit166: ; preds = %bb.bj, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163, %bb.an
  %.pn42.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ka, %bb.an ], [ %.pn42.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit163 ], [ %.pn42.pn.pn.pn.pn.pn.pn, %bb.bj ]
  %i.nt = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.o
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit166
  %i.nv = load i64, ptr %i.o, align 8, !tbaa !43
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn42.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQConcatERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %7 = alloca %"class.std::vector.11", align 8    ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::vector.11", align 8   ; 11 uses
  %12 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 21 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %17 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::vector.11", align 8   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -2                     ; 2 uses
  %i.g = urem i32 %i.f, 3
  %i.h = udiv i32 %i.f, 3
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.389, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQConcatERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.3, i32 noundef 2490) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bv

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !39
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !121  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.u, ptr %i.a, align 8, !tbaa !120
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !121
  %i.x = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.x, ptr %i.r, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.y = phi ptr [ %i.w, %.noexc.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %i.u, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !43
  store i8 %i.z, ptr %i.y, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !42
  %i.ac = load ptr, ptr %5, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !301 ; 3 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i, label %.noexc59, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = icmp ugt i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !331
  %.pre287 = load ptr, ptr %i.af, align 8, !tbaa !331
  br label %.noexc59

.noexc59:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = phi ptr [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre287, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge ] ; 3 uses
  %i.ao = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge ] ; 5 uses
  %i.ap = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.am, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc59_crit_edge ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc59
  %i.aq = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = ptrtoaddr ptr %i.an to i64
  %i.at = add i64 %i.as, -4
  %i.au = sub i64 %i.at, %i.aq                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 44
  %i.ax = sub i64 %i.aq, %i.ar
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader467, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ao, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.ao, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep407, align 4, !tbaa !130
  %wide.load408 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !130
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load408, ptr %i.bd, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !904

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader467

.lr.ph.i.i.i.i.i.preheader467:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader467, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader467 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader467 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.bf, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !905

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc59
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !301 ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !303 ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i60, label %.noexc70, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bp = icmp ugt i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %.noexc.i.i68, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61, !prof !131

.noexc.i.i68:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc69 unwind label %bb.p

.noexc69:                                         ; preds = %.noexc.i.i68
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.l
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge unwind label %bb.p

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61
  %.pre288 = load ptr, ptr %i.bi, align 8, !tbaa !331
  %.pre289 = load ptr, ptr %i.bj, align 8, !tbaa !331
  br label %.noexc70

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.br = phi ptr [ %i.bk, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre289, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre288, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge ] ; 5 uses
  %i.bt = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bq, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61..noexc70_crit_edge ] ; 7 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !303
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !302
  %.not7.i.i.i.i.i62 = icmp eq ptr %i.bs, %i.br
  br i1 %.not7.i.i.i.i.i62, label %.lr.ph, label %.lr.ph.i.i.i.i.i63.preheader

.lr.ph.i.i.i.i.i63.preheader:                     ; preds = %.noexc70
  %i.bx = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.by = ptrtoaddr ptr %i.bt to i64
  %i.bz = ptrtoaddr ptr %i.br to i64
  %i.ca = add i64 %i.bz, -4
  %i.cb = sub i64 %i.ca, %i.bx                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.cb, 44
  %i.ce = sub i64 %i.bx, %i.by
  %diff.check415 = icmp ugt i64 %i.ce, -32
  %or.cond446 = or i1 %min.iters.check413, %diff.check415
  br i1 %or.cond446, label %.lr.ph.i.i.i.i.i63.preheader465, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph.i.i.i.i.i63.preheader
  %n.vec417 = and i64 %i.cd, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec417, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cf
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 2 uses
  %i.ci = shl i64 %index419, 2                    ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.bt, i64 %i.ci ; 2 uses
  %next.gep421 = getelementptr i8, ptr %i.bs, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep421, i64 16
  %wide.load422 = load <4 x i32>, ptr %next.gep421, align 4, !tbaa !130
  %wide.load423 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !130
  %i.ck = getelementptr i8, ptr %next.gep420, i64 16
  store <4 x i32> %wide.load422, ptr %next.gep420, align 4, !tbaa !130
  store <4 x i32> %wide.load423, ptr %i.ck, align 4, !tbaa !130
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.cl, label %middle.block425, label %vector.body418, !llvm.loop !906

middle.block425:                                  ; preds = %vector.body418
  %cmp.n426 = icmp eq i64 %i.cd, %n.vec417
  br i1 %cmp.n426, label %.lr.ph, label %.lr.ph.i.i.i.i.i63.preheader465

.lr.ph.i.i.i.i.i63.preheader465:                  ; preds = %.lr.ph.i.i.i.i.i63.preheader, %middle.block425
  %.09.i.i.i.i.i64.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i63.preheader ], [ %i.cg, %middle.block425 ]
  %.sroa.04.08.i.i.i.i.i65.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i63.preheader ], [ %i.ch, %middle.block425 ]
  br label %.lr.ph.i.i.i.i.i63

.lr.ph.i.i.i.i.i63:                               ; preds = %.lr.ph.i.i.i.i.i63.preheader465, %.lr.ph.i.i.i.i.i63
  %.09.i.i.i.i.i64 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i63 ], [ %.09.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i63.preheader465 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i65 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i63 ], [ %.sroa.04.08.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i63.preheader465 ] ; 2 uses
  %i.cm = load i32, ptr %.sroa.04.08.i.i.i.i.i65, align 4, !tbaa !130
  store i32 %i.cm, ptr %.09.i.i.i.i.i64, align 4, !tbaa !130
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i65, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i64, i64 4 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.cn, %i.br
  br i1 %.not.i.i.i.i.i66, label %.lr.ph, label %.lr.ph.i.i.i.i.i63, !llvm.loop !907

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i63, %middle.block425, %.noexc70
  %.0.lcssa.i.i.i.i.i67 = phi ptr [ %i.bt, %.noexc70 ], [ %i.cg, %middle.block425 ], [ %i.co, %.lr.ph.i.i.i.i.i63 ]
  store ptr %.0.lcssa.i.i.i.i.i67, ptr %i.bu, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 0, i64 32, i1 false)
  store ptr %i.df, ptr %i.de, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 4 uses
  store i64 0, ptr %i.dg, align 8, !tbaa !42
  store i8 0, ptr %i.df, align 8, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 4 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !42
  store i8 0, ptr %i.di, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.dk = load ptr, ptr %5, align 8, !tbaa !121, !noalias !930
  %i.dl = load i64, ptr %i.ab, align 8, !tbaa !42, !noalias !930 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  store ptr %i.dm, ptr %13, align 8, !tbaa !39, !alias.scope !931
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !42, !alias.scope !931
  store i8 0, ptr %i.dm, align 8, !tbaa !43, !alias.scope !931
  %i.do = add i64 %i.dl, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.do)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !42, !alias.scope !931
  %i.dq = sub i64 4611686018427387903, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.dl
  br i1 %i.dr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.dk, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !42, !alias.scope !931
  %i.du = add i64 %i.dt, -4611686018427387897
  %i.dv = icmp ult i64 %i.du, 7
  br i1 %i.dv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.391, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %13, align 8, !tbaa !121, !alias.scope !931 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !43, !alias.scope !931
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #27
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i61, %.noexc.i.i68
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.ee = load ptr, ptr %5, align 8, !tbaa !121, !noalias !932
  %i.ef = load i64, ptr %i.ab, align 8, !tbaa !42, !noalias !932 ; 3 uses
  store ptr %i.cp, ptr %9, align 8, !tbaa !39, !alias.scope !933
  store i64 0, ptr %i.cq, align 8, !tbaa !42, !alias.scope !933
  store i8 0, ptr %i.cp, align 8, !tbaa !43, !alias.scope !933
  %i.eg = add i64 %i.ef, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.eg)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.eh = load i64, ptr %i.cq, align 8, !tbaa !42, !alias.scope !933
  %i.ei = sub i64 4611686018427387903, %i.eh
  %i.ej = icmp ult i64 %i.ei, %i.ef
  br i1 %i.ej, label %.invoke.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i75: ; preds = %bb.r
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ee, i64 noundef %i.ef)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i75
  %i.el = load i64, ptr %i.cq, align 8, !tbaa !42, !alias.scope !933
  %i.em = add i64 %i.el, -4611686018427387895
  %i.en = icmp ult i64 %i.em, 9
  br i1 %i.en, label %.invoke.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i77

.invoke.i.i78:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i76, %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i79:                                      ; preds = %.invoke.i.i78
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i76
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.390, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i75, %bb.q, %.invoke.i.i78
  %lpad.loopexit.split-lp454 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %9, align 8, !tbaa !121, !alias.scope !933 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cp
  br i1 %i.eq, label %.body80, label %.body80.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i77
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
end_hunk_8
begin_hunk_9_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter212parseQConcatERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
.body149.sink.split:                              ; preds = %.body154, %bb.bg
  %.sink450 = phi ptr [ %i.ot, %bb.bg ], [ %i.rd, %.body154 ]
  %.pn44.pn.ph = phi { ptr, i32 } [ %i.os, %bb.bg ], [ %.pn44, %.body154 ]
  %i.rf = load i64, ptr %i.oh, align 8, !tbaa !43
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %.sink450, i64 noundef %i.rg) #27
  br label %.body149

.body149:                                         ; preds = %.body149.sink.split, %.body154, %bb.bg
  %.pn44.pn = phi { ptr, i32 } [ %i.os, %bb.bg ], [ %.pn44, %.body154 ], [ %.pn44.pn.ph, %.body149.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bq

bb.bq:                                            ; preds = %.body149, %bb.bp, %bb.bo
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %.body149 ], [ %i.ra, %bb.bo ], [ %i.rb, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.bm, %.body
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.bq ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.qq, %bb.bm ], [ %i.dx, %.body ]
  call void @_ZN2cv3dnn14dnn5_v2026060511LayerParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.loopexit.split-lp229

.loopexit.split-lp229:                            ; preds = %.loopexit.split-lp229.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body80, %bb.br
  %.pn53.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.br ], [ %.pn49.pn.pn, %.body80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp229.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.rh = load ptr, ptr %7, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191, label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp229
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !302
  %i.rk = ptrtoint ptr %i.rj to i64
  %i.rl = ptrtoint ptr %i.rh to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.rm) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191: ; preds = %.loopexit.split-lp229, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.rn = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191
  %i.ro = load ptr, ptr %i.bw, align 8, !tbaa !302
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rn to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %i.rn, i64 noundef %i.rr) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194: ; preds = %bb.bt, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191, %bb.p
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.p ], [ %.pn53.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit191 ], [ %.pn53.pn, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i195 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.ak) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197: ; preds = %bb.bu, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194, %bb.o
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.o ], [ %.pn53.pn.pn, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit194 ], [ %.pn53.pn.pn, %bb.bu ]
  %i.rs = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.r
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197
  %i.ru = load i64, ptr %i.r, align 8, !tbaa !43
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQSoftmaxERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::vector.11", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %7 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 23 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::Arg", align 4 ; 5 uses
  %17 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %18 = alloca [1 x %"struct.cv::dnn::dnn5_v20260605::Arg"], align 4 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::vector.11", align 8   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.f, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060513ONNXImporter213parseQSoftmaxERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEE16__cv_check__2520) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !39
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.l, ptr %i.a, align 8, !tbaa !120
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !121
  %i.o = load i64, ptr %i.a, align 8, !tbaa !120
  store i64 %i.o, ptr %i.i, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !43
  store i8 %i.q, ptr %i.p, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !42
  %i.t = load ptr, ptr %3, align 8, !tbaa !121
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !301  ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !303  ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i, label %.noexc60, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i, !prof !131

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !331
  %.pre302 = load ptr, ptr %i.w, align 8, !tbaa !331
  br label %.noexc60

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre302, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ] ; 3 uses
  %i.af = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ] ; 5 uses
  %i.ag = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i..noexc60_crit_edge ] ; 10 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc60
  %i.ah = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = ptrtoaddr ptr %i.ae to i64
  %i.ak = add i64 %i.aj, -4
  %i.al = sub i64 %i.ak, %i.ah                    ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 44
  %i.ao = sub i64 %i.ah, %i.ai
  %diff.check = icmp ugt i64 %i.ao, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep398 = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep398, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep398, align 4, !tbaa !130
  %wide.load399 = load <4 x i32>, ptr %i.at, align 4, !tbaa !130
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !130
  store <4 x i32> %wide.load399, ptr %i.au, align 4, !tbaa !130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader427

.lr.ph.i.i.i.i.i.preheader427:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader427, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader427 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader427 ] ; 2 uses
  %i.aw = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !130
  store i32 %i.aw, ptr %.09.i.i.i.i.i, align 4, !tbaa !130
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !941

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !301 ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !303 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i61 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i61, label %.noexc71, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %.noexc.i.i69, label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62, !prof !131

.noexc.i.i69:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc70 unwind label %bb.z

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62: ; preds = %bb.g
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #29
          to label %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge unwind label %bb.z

_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62
  %.pre303 = load ptr, ptr %i.az, align 8, !tbaa !331
  %.pre304 = load ptr, ptr %i.ba, align 8, !tbaa !331
  br label %.noexc71

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit
  %i.bi = phi ptr [ %i.bb, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre304, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge ] ; 3 uses
  %i.bj = phi ptr [ %i.bc, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %.pre303, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge ] ; 5 uses
  %i.bk = phi ptr [ null, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EEC2ERKS5_.exit ], [ %i.bh, %_ZNSt15__new_allocatorIN2cv3dnn14dnn5_v202606053ArgEE8allocateEmPKv.exit.i.i.i.i62..noexc71_crit_edge ] ; 7 uses
  store ptr %i.bk, ptr %4, align 8, !tbaa !303
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !302
  %.not7.i.i.i.i.i63 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not7.i.i.i.i.i63, label %.loopexit, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.noexc71
  %i.bo = ptrtoaddr ptr %i.bj to i64              ; 2 uses
  %i.bp = ptrtoaddr ptr %i.bk to i64
  %i.bq = ptrtoaddr ptr %i.bi to i64
  %i.br = add i64 %i.bq, -4
  %i.bs = sub i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.bs, 44
  %i.bv = sub i64 %i.bo, %i.bp
  %diff.check406 = icmp ugt i64 %i.bv, -32
  %or.cond420 = or i1 %min.iters.check404, %diff.check406
  br i1 %or.cond420, label %.lr.ph.i.i.i.i.i64.preheader426, label %vector.ph407

vector.ph407:                                     ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %n.vec408 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec408, 2                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bk, i64 %i.bw  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bj, i64 %i.bw
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next415, %vector.body409 ] ; 2 uses
  %i.bz = shl i64 %index410, 2                    ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.bk, i64 %i.bz ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.bj, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep412, i64 16
  %wide.load413 = load <4 x i32>, ptr %next.gep412, align 4, !tbaa !130
  %wide.load414 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !130
  %i.cb = getelementptr i8, ptr %next.gep411, i64 16
  store <4 x i32> %wide.load413, ptr %next.gep411, align 4, !tbaa !130
  store <4 x i32> %wide.load414, ptr %i.cb, align 4, !tbaa !130
  %index.next415 = add nuw i64 %index410, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.cc, label %middle.block416, label %vector.body409, !llvm.loop !942

middle.block416:                                  ; preds = %vector.body409
  %cmp.n417 = icmp eq i64 %i.bu, %n.vec408
  br i1 %cmp.n417, label %.loopexit, label %.lr.ph.i.i.i.i.i64.preheader426

.lr.ph.i.i.i.i.i64.preheader426:                  ; preds = %.lr.ph.i.i.i.i.i64.preheader, %middle.block416
  %.09.i.i.i.i.i65.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bx, %middle.block416 ]
  %.sroa.04.08.i.i.i.i.i66.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.by, %middle.block416 ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader426, %.lr.ph.i.i.i.i.i64
  %.09.i.i.i.i.i65 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i64 ], [ %.09.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i64.preheader426 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i66 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i64 ], [ %.sroa.04.08.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i64.preheader426 ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.04.08.i.i.i.i.i66, align 4, !tbaa !130
  store i32 %i.cd, ptr %.09.i.i.i.i.i65, align 4, !tbaa !130
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i66, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i65, i64 4 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ce, %i.bi
  br i1 %.not.i.i.i.i.i67, label %.loopexit, label %.lr.ph.i.i.i.i.i64, !llvm.loop !943

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i64, %middle.block416, %.noexc71
  %.0.lcssa.i.i.i.i.i68 = phi ptr [ %i.bk, %.noexc71 ], [ %i.bx, %middle.block416 ], [ %i.cf, %.lr.ph.i.i.i.i.i64 ]
  store ptr %.0.lcssa.i.i.i.i.i68, ptr %i.bl, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.cg = load ptr, ptr %3, align 8, !tbaa !121, !noalias !956
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !42, !noalias !956 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ci, ptr %5, align 8, !tbaa !39, !alias.scope !957
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !42, !alias.scope !957
  store i8 0, ptr %i.ci, align 8, !tbaa !43, !alias.scope !957
  %i.ck = add i64 %i.ch, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ck)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !42, !alias.scope !957
  %i.cm = sub i64 4611686018427387903, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.ch
  br i1 %i.cn, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !42, !alias.scope !957
  %i.cq = add i64 %i.cp, -4611686018427387894
  %i.cr = icmp ult i64 %i.cq, 10
  br i1 %i.cr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.365, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !121, !alias.scope !957 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ci
  br i1 %i.cv, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cw = load <2 x i32>, ptr %i.ag, align 4, !tbaa !130
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.cz = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #29
          to label %bb.l unwind label %bb.j       ; 4 uses

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !303   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i4.i, label %.body73, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !302
  br label %.body73.sink.split

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr %i.cz, ptr %6, align 8, !tbaa !303
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !302
  store <2 x i32> %i.cw, ptr %i.cz, align 4, !tbaa !130
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.cy, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !301
  %i.dh = invoke i32 @_ZN2cv3dnn14dnn5_v2026060513ONNXImporter213addDequantizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_3ArgESaISC_EERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(761) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull align 8 poison, i32 noundef -1)
          to label %bb.m unwind label %bb.aa      ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %6, align 8, !tbaa !303   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !302
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dn = load ptr, ptr %5, align 8, !tbaa !121   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ci
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.dp = load i64, ptr %i.ci, align 8, !tbaa !43
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.dr, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 32, i1 false)
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !42
  store i8 0, ptr %i.dx, align 8, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  store i64 0, ptr %i.eb, align 8, !tbaa !42
  store i8 0, ptr %i.ea, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.ec = load ptr, ptr %3, align 8, !tbaa !121, !noalias !958
  %i.ed = load i64, ptr %i.s, align 8, !tbaa !42, !noalias !958 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.ee, ptr %8, align 8, !tbaa !39, !alias.scope !959
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  store i64 0, ptr %i.ef, align 8, !tbaa !42, !alias.scope !959
  store i8 0, ptr %i.ee, align 8, !tbaa !43, !alias.scope !959
  %i.eg = add i64 %i.ed, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.eg)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !42, !alias.scope !959
  %i.ei = sub i64 4611686018427387903, %i.eh
  %i.ej = icmp ult i64 %i.ei, %i.ed
  br i1 %i.ej, label %.invoke.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i79: ; preds = %bb.o
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ec, i64 noundef %i.ed)
end_hunk_9
