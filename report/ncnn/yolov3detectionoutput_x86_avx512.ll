Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolov3detectionoutput_x86_avx512?download=true
inline.NumInlined: 257
inline.NumDeleted: 138
begin_hunk_0_@_ZNK4ncnn32Yolov3DetectionOutput_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ct, ptr align 4 %i.bp, i64 %i.bx, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cv = icmp eq i64 %i.bx, 28
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ct, ptr noundef nonnull align 4 dereferenceable(28) %i.bp, i64 28, i1 false), !tbaa.struct !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.bx ; 2 uses
  %.not.i55.i = icmp eq ptr %i.bl, null
  br i1 %.not.i55.i, label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cz) #19
  br label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.v, %bb.u
  store ptr %i.cq, ptr %4, align 8, !tbaa !47
  store ptr %i.cw, ptr %i.q, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw [28 x i8], ptr %i.cq, i64 %i.cn
  store ptr %i.da, ptr %i.r, align 8, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i, %.lr.ph, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.db = phi ptr [ %i.cf, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i ], [ %i.bl, %.lr.ph ], [ %i.cq, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.dc = phi ptr [ %i.cg, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.i ], [ %i.bm, %.lr.ph ], [ %i.cw, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.k, align 4, !tbaa !32
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !llvm.loop !55

.loopexit129:                                     ; preds = %bb.m
  %lpad.loopexit131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp130:                            ; preds = %bb.l
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp130, %.loopexit129
  %lpad.phi133 = phi { ptr, i32 } [ %lpad.loopexit131, %.loopexit129 ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.z

bb.y:                                             ; preds = %bb.f, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.dg = add nuw i64 %.056155, 1                 ; 2 uses
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.di = load ptr, ptr %1, align 8, !tbaa !60
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 72
  %.not72 = icmp ult i64 %i.dg, %i.dm
  br i1 %.not72, label %bb.b, label %.critedge78, !llvm.loop !56

bb.z:                                             ; preds = %.loopexit134, %.loopexit.split-lp135, %bb.x
  %.pn = phi { ptr, i32 } [ %lpad.phi133, %bb.x ], [ %lpad.loopexit136, %.loopexit134 ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp135 ]
  call void @_ZNSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.av

.critedge:                                        ; preds = %.noexc108
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %.critedge, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.05.i.i.i82 = phi ptr [ %i.du, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84 ], [ %i.w, %.critedge ] ; 3 uses
  %i.do = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i83, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i81
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #19
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84: ; preds = %bb.aa, %.lr.ph.i.i.i81
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 24 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.du, %i.dn
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86, label %.lr.ph.i.i.i81, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.pr.i87 = load ptr, ptr %5, align 8, !tbaa !35 ; 3 uses
  %.not.i.i1.i89 = icmp eq ptr %.pr.i87, null
  br i1 %.not.i.i1.i89, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %.pr.i87 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i87, i64 noundef %i.dy) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.at

.critedge78:                                      ; preds = %bb.y, %bb.a
  invoke void @_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.critedge78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !67
  invoke void @_ZNK4ncnn21Yolov3DetectionOutput17nms_sorted_bboxesERSt6vectorINS0_8BBoxRectESaIS2_EERS1_ImSaImEEf(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, float noundef nofpclass(nan inf) %i.ea)
          to label %.preheader128 unwind label %bb.af

.preheader128:                                    ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70 ; 2 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %.not168 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not168, label %._crit_edge163, label %.lr.ph162

._crit_edge163.loopexit:                          ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit
  %i.ee = ptrtoint ptr %.sroa.10.1 to i64
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge163.loopexit, %.preheader128
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader128 ], [ %.sroa.0.1, %._crit_edge163.loopexit ] ; 5 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %.preheader128 ], [ %i.ee, %._crit_edge163.loopexit ]
  %.sroa.15.0.lcssa = phi ptr [ null, %.preheader128 ], [ %.sroa.15.1, %._crit_edge163.loopexit ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.eg = sub i64 %.sroa.10.0.lcssa, %i.ef
  %i.eh = sdiv exact i64 %i.eg, 28                ; 2 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 3 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.al

bb.ae:                                            ; preds = %.critedge78
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.af:                                            ; preds = %bb.ad
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97

.lr.ph162:                                        ; preds = %.preheader128, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit
  %i.em = phi ptr [ %i.ff, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ %i.ed, %.preheader128 ] ; 2 uses
  %i.en = phi ptr [ %i.fg, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ %i.ec, %.preheader128 ]
  %.060161 = phi i64 [ %i.fh, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ 0, %.preheader128 ] ; 2 uses
  %.sroa.15.0160 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader128 ] ; 5 uses
  %.sroa.10.0159 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader128 ] ; 3 uses
  %.sroa.0.0158 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader128 ] ; 7 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.060161
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !42
  %i.eq = load ptr, ptr %4, align 8, !tbaa !47
  %i.er = getelementptr inbounds nuw [28 x i8], ptr %i.eq, i64 %i.ep ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0159, %.sroa.15.0160
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.0159, ptr noundef nonnull align 4 dereferenceable(28) %i.er, i64 28, i1 false), !tbaa.struct !66
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit

bb.ah:                                            ; preds = %.lr.ph162
  %i.es = ptrtoint ptr %.sroa.15.0160 to i64
  %i.et = ptrtoint ptr %.sroa.0.0158 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 6 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775800
  br i1 %i.ev, label %bb.ai, label %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
          to label %.noexc92.a unwind label %.loopexit.split-lp

.noexc92.a:                                       ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.ew = sdiv exact i64 %i.eu, 28                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i, %i.ew ; 2 uses
  %i.ex = icmp ult i64 %7, %i.ew
  %i.ey = call i64 @llvm.umin.i64(i64 %7, i64 329406144173384850)
  %i.ez = select i1 %i.ex, i64 329406144173384850, i64 %i.ey ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i91)
  %i.fa = mul nuw nsw i64 %i.ez, 28
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #21
          to label %.noexc93 unwind label %.loopexit ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.eu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fc, ptr noundef nonnull align 4 dereferenceable(28) %i.er, i64 28, i1 false), !tbaa.struct !66
  %i.fd = icmp sgt i64 %i.eu, 0
  br i1 %i.fd, label %bb.aj, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.aj:                                            ; preds = %.noexc93
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr align 4 %.sroa.0.0158, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.aj, %.noexc93
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0158, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0158, i64 noundef %i.eu) #19
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.fe = getelementptr inbounds nuw [28 x i8], ptr %i.fb, i64 %i.ez
  %.pre182.a = load ptr, ptr %i.eb, align 8, !tbaa !70
  %.pre183 = load ptr, ptr %6, align 8, !tbaa !71
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ag
  %i.ff = phi ptr [ %.pre183, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.em, %bb.ag ] ; 2 uses
  %i.fg = phi ptr [ %.pre182.a, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.en, %bb.ag ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.fb, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0.0158, %bb.ag ] ; 2 uses
  %.pn126 = phi ptr [ %i.fc, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.0159, %bb.ag ]
  %.sroa.15.1 = phi ptr [ %i.fe, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0160, %bb.ag ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn126, i64 28 ; 2 uses
  %i.fh = add nuw i64 %.060161, 1                 ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = icmp ult i64 %i.fh, %i.fl
  br i1 %i.fm, label %.lr.ph162, label %._crit_edge163.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %._crit_edge163
  %i.fn = load ptr, ptr %2, align 8, !tbaa !60    ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !72
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, i32 noundef 6, i32 noundef %i.ei, i64 noundef 4, ptr noundef %i.fp)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !43 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !61
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul i64 %i.ft, %i.fw
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.fz = icmp sgt i32 %i.ei, 0
  br i1 %i.fz, label %.lr.ph167, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph167:                                        ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !38
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !52
  %factor.op.mul = mul i64 %i.ge, %i.gc
  %wide.trip.count = and i64 %i.eh, 2147483647
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph167, %bb.ao
  %indvars.iv174 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next175, %bb.ao ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [28 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv174 ; 6 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !74
  %.reass = mul i64 %factor.op.mul, %indvars.iv174
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.reass ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !75
  %i.gl = sitofp fast i32 %i.gk to float
  %i.gm = fadd fast float %i.gl, 1.000000e+00
  store float %i.gm, ptr %i.gi, align 4, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store float %i.gh, ptr %i.gn, align 4, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !76
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.gp, ptr %i.gq, align 4, !tbaa !44
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store float %i.gs, ptr %i.gt, align 4, !tbaa !44
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !78
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float %i.gv, ptr %i.gw, align 4, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !79
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store float %i.gy, ptr %i.gz, align 4, !tbaa !44
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.thread, label %bb.ao, !llvm.loop !58

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %.preheader, %bb.am, %_ZNK4ncnn3Mat5emptyEv.exit, %._crit_edge163
  %.4 = phi i32 [ 0, %._crit_edge163 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.am ], [ 0, %.preheader ] ; 2 uses
  %.not.i.i.i94.a = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i94.a, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread.thread:         ; preds = %bb.ao, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.4217.a = phi i32 [ %.4, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %bb.ao ]
  %i.ha = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.hb = sub i64 %i.ha, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.hb) #19
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit.thread.thread
  %.4218 = phi i32 [ %.4, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ %.4217.a, %_ZNK4ncnn3Mat5emptyEv.exit.thread.thread ]
  %i.hc = load ptr, ptr %6, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i95.a = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i95.a, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !80
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.at

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.an
  %.sroa.0.0147 = phi ptr [ %.sroa.0.0.lcssa, %bb.an ], [ %.sroa.0.0158, %.loopexit ], [ %.sroa.0.0158, %.loopexit.split-lp ] ; 3 uses
  %.sroa.15.0141 = phi ptr [ %.sroa.15.0.lcssa, %bb.an ], [ %.sroa.15.0160, %.loopexit ], [ %.sroa.15.0160, %.loopexit.split-lp ]
  %.pn73 = phi { ptr, i32 } [ %i.gf, %bb.an ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %.sroa.0.0147, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = ptrtoint ptr %.sroa.15.0141 to i64
  %i.hj = ptrtoint ptr %.sroa.0.0147 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0147, i64 noundef %i.hk) #19
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97: ; preds = %bb.ar, %bb.aq, %bb.af
  %.pn73.pn = phi { ptr, i32 } [ %i.el, %bb.af ], [ %.pn73, %bb.aq ], [ %.pn73, %bb.ar ]
  %i.hl = load ptr, ptr %6, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorImSaImEED2Ev.exit99, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !80
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit99

_ZNSt6vectorImSaImEED2Ev.exit99:                  ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit97, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.av

bb.at:                                            ; preds = %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit
  %.5 = phi i32 [ %.4218, %_ZNSt6vectorImSaImEED2Ev.exit ], [ -1, %bb.ac ]
  %i.hr = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EED2Ev.exit101, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@_ZNK4ncnn32Yolov3DetectionOutput_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge322
  %.pre349 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader290.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %.noexc149
  %i.dc = phi i32 [ %i.w, %.noexc149 ], [ %.pre349, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.preheader290.lr.ph ] ; 2 uses
  %i.dd = phi i32 [ %i.x, %.noexc149 ], [ %i.dg, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.x, %.preheader290.lr.ph ]
  %i.de = phi i32 [ %i.y, %.noexc149 ], [ %i.dg, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.y, %.preheader290.lr.ph ]
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, 1
  %i.df = sext i32 %i.dc to i64
  %.not.not = icmp slt i64 %indvars.iv345, %i.df
  br i1 %.not.not, label %.noexc149, label %._crit_edge336

._crit_edge322.loopexit:                          ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit
  %.pre348 = load i32, ptr %6, align 4, !tbaa !39
  br label %._crit_edge322

._crit_edge322:                                   ; preds = %._crit_edge322.loopexit, %.preheader290
  %i.dg = phi i32 [ %i.cx, %.preheader290 ], [ %.pre348, %._crit_edge322.loopexit ] ; 4 uses
  %i.dh = phi i32 [ %i.cy, %.preheader290 ], [ %i.hw, %._crit_edge322.loopexit ]
  %.1137.lcssa = phi ptr [ %.0136328, %.preheader290 ], [ %i.hr, %._crit_edge322.loopexit ]
  %.1135.lcssa = phi ptr [ %.0134329, %.preheader290 ], [ %i.hs, %._crit_edge322.loopexit ]
  %.1133.lcssa = phi ptr [ %.0132330, %.preheader290 ], [ %i.ht, %._crit_edge322.loopexit ]
  %.1131.lcssa = phi ptr [ %.0130331, %.preheader290 ], [ %i.hu, %._crit_edge322.loopexit ]
  %.1129.lcssa = phi ptr [ %.0128332, %.preheader290 ], [ %i.hv, %._crit_edge322.loopexit ]
  %i.di = add nuw nsw i32 %.0127333, 1            ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.dg
  br i1 %i.dj, label %.preheader290, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !85

bb.c:                                             ; preds = %.lr.ph321, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.dk = phi i32 [ %i.cy, %.lr.ph321 ], [ %i.hw, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.1129319 = phi ptr [ %.0128332, %.lr.ph321 ], [ %i.hv, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.1131318 = phi ptr [ %.0130331, %.lr.ph321 ], [ %i.hu, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.1133317 = phi ptr [ %.0132330, %.lr.ph321 ], [ %i.ht, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.1135316 = phi ptr [ %.0134329, %.lr.ph321 ], [ %i.hs, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.1137315 = phi ptr [ %.0136328, %.lr.ph321 ], [ %i.hr, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.dl = mul nuw nsw i32 %i.dk, %.0127333
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv ; 4 uses
  %i.dp = load i32, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.dq = mul nsw i32 %i.dp, %i.bh
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = and i32 %i.dp, -8
  %i.du = mul nsw i32 %i.dt, %i.bh                ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %.idx = shl nsw i64 %i.dv, 2
  %i.dw = getelementptr inbounds i8, ptr %i.do, i64 %.idx
  %i.dx = icmp sgt i32 %i.du, 0
  br i1 %i.dx, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.c
  %.0122.lcssa = phi i32 [ 0, %bb.c ], [ %.1123, %bb.e ] ; 2 uses
  %.0120.lcssa = phi float [ f0xFF7FFFFF, %bb.c ], [ %.1121, %bb.e ] ; 2 uses
  %.0118.lcssa = phi ptr [ %i.do, %bb.c ], [ %i.em, %bb.e ] ; 2 uses
  %.0117.lcssa = phi i32 [ 0, %bb.c ], [ %i.en, %bb.e ]
  %i.dy = icmp ult ptr %.0118.lcssa, %i.ds
  br i1 %i.dy, label %.lr.ph312, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.0117304 = phi i32 [ %i.en, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.0118303 = phi ptr [ %i.em, %bb.e ], [ %i.do, %bb.c ] ; 2 uses
  %.0120302 = phi float [ %.1121, %bb.e ], [ f0xFF7FFFFF, %bb.c ] ; 2 uses
  %.0122301 = phi i32 [ %.1123, %bb.e ], [ 0, %bb.c ]
  %i.dz = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.0118303, <8 x i32> %i.bs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 3 uses
  %i.ea = shufflevector <8 x float> %i.dz, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.ec = shufflevector <8 x float> %i.eb, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ec) ; 2 uses
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.eg = extractelement <8 x float> %i.ef, i64 0 ; 2 uses
  %i.eh = fcmp fast ogt float %i.eg, %.0120302
  br i1 %i.eh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ei = fcmp fast oeq <8 x float> %i.dz, %i.ef
  %i.ej = bitcast <8 x i1> %i.ei to i8
  %i.ek = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.ej, i1 true)
  %i.el = zext nneg i8 %i.ek to i32
  %narrow = or disjoint i32 %.0117304, %i.el
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1123 = phi i32 [ %narrow, %bb.d ], [ %.0122301, %.lr.ph ] ; 2 uses
  %.1121 = phi nsz float [ %i.eg, %bb.d ], [ %.0120302, %.lr.ph ] ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %.0118303, i64 %i.bv ; 3 uses
  %i.en = add nuw nsw i32 %.0117304, 8            ; 2 uses
  %i.eo = icmp ult ptr %i.em, %i.dw
  br i1 %i.eo, label %.lr.ph, label %.preheader, !llvm.loop !86

.lr.ph312:                                        ; preds = %.preheader, %.lr.ph312
  %.1311 = phi i32 [ %i.es, %.lr.ph312 ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1119310 = phi ptr [ %i.er, %.lr.ph312 ], [ %.0118.lcssa, %.preheader ] ; 2 uses
  %.2309 = phi float [ %spec.select142, %.lr.ph312 ], [ %.0120.lcssa, %.preheader ] ; 2 uses
  %.2124308 = phi i32 [ %spec.select, %.lr.ph312 ], [ %.0122.lcssa, %.preheader ]
  %i.ep = load float, ptr %.1119310, align 4, !tbaa !44 ; 2 uses
  %i.eq = fcmp fast ogt float %i.ep, %.2309
  %spec.select = select i1 %i.eq, i32 %.1311, i32 %.2124308 ; 2 uses
  %spec.select142 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ep, float %.2309) ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.1119310, i64 %i.bw ; 2 uses
  %i.es = add nuw nsw i32 %.1311, 1
  %i.et = icmp ult ptr %i.er, %i.ds
  br i1 %i.et, label %.lr.ph312, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph312, %.preheader
  %.2124.lcssa = phi i32 [ %.0122.lcssa, %.preheader ], [ %spec.select, %.lr.ph312 ] ; 2 uses
  %.2.lcssa = phi float [ %.0120.lcssa, %.preheader ], [ %spec.select142, %.lr.ph312 ]
  %i.eu = load float, ptr %.1129319, align 4, !tbaa !44
  %i.ev = fneg fast float %i.eu
  %i.ew = call fast float @llvm.exp.f32(float %i.ev)
  %i.ex = fneg fast float %.2.lcssa
  %i.ey = call fast float @llvm.exp.f32(float %i.ex)
  %i.ez = fadd fast float %i.ey, 1.000000e+00
  %i.fa = fmul fast float %i.ew, %i.ez
  %i.fb = fadd fast float %i.fa, 1.000000e+00
  %i.fc = fdiv fast float 1.000000e+00, %i.fb     ; 3 uses
  %i.fd = load float, ptr %i.u, align 8, !tbaa !92
  %i.fe = fcmp fast ult float %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ff = trunc nuw nsw i64 %indvars.iv to i32
  %i.fg = uitofp ninf nsz nneg i32 %i.ff to float
  %i.fh = load float, ptr %.1137315, align 4, !tbaa !44
  %i.fi = load float, ptr %.1135316, align 4, !tbaa !44
  %i.fj = load i32, ptr %6, align 4, !tbaa !39
  %i.fk = load float, ptr %.1133317, align 4, !tbaa !44
  %i.fl = load i32, ptr %8, align 4, !tbaa !39
  %i.fm = load float, ptr %.1131318, align 4, !tbaa !44
  %i.fn = load i32, ptr %9, align 4, !tbaa !39
  %i.fo = fneg fast float %i.fi
  %i.fp = fneg fast float %i.fh
  %i.fq = call fast float @llvm.exp.f32(float %i.fo)
  %i.fr = call fast float @llvm.exp.f32(float %i.fp)
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fq, i64 1
  %i.fu = fadd fast <2 x float> %i.ft, splat (float 1.000000e+00)
  %i.fv = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fu
  %i.fw = insertelement <2 x float> %i.db, float %i.fg, i64 0
  %i.fx = fadd fast <2 x float> %i.fv, %i.fw
  %i.fy = sitofp fast i32 %i.fj to float
  %i.fz = sitofp fast i32 %i.dk to float
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fy, i64 1
  %i.gc = fdiv fast <2 x float> %i.fx, %i.gb      ; 2 uses
  %i.gd = call fast float @llvm.exp.f32(float %i.fm)
  %i.ge = call fast float @llvm.exp.f32(float %i.fk)
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gd, i64 1
  %i.gh = fmul fast <2 x float> %i.gg, %i.am
  %i.gi = sitofp fast i32 %i.fn to float
  %i.gj = sitofp fast i32 %i.fl to float
  %i.gk = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gi, i64 1
  %i.gm = fdiv fast <2 x float> %i.gh, %i.gl      ; 2 uses
  %i.gn = fmul fast <2 x float> %i.gm, splat (float 5.000000e-01) ; 2 uses
  %i.go = fsub fast <2 x float> %i.gc, %i.gn      ; 2 uses
  %i.gp = fadd fast <2 x float> %i.gn, %i.gc      ; 2 uses
  %i.gq = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.gm) ; 2 uses
  %i.gr = load ptr, ptr %10, align 8, !tbaa !35
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %indvars.iv345 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !50 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !48
  %.not.i188 = icmp eq ptr %i.gu, %i.gw
  br i1 %.not.i188, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.fc, ptr %i.gu, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gx = shufflevector <2 x float> %i.go, <2 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.gx, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  store float %i.gq, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !44
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 %.2124.lcssa, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  store ptr %i.gy, ptr %i.gt, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.gz = load ptr, ptr %i.gs, align 8, !tbaa !47 ; 4 uses
  %i.ha = ptrtoint ptr %i.gu to i64
  %i.hb = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hc = sub i64 %i.ha, %i.hb                    ; 5 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.i, label %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
          to label %.noexc189 unwind label %.loopexit.split-lp

.noexc189:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.he = sdiv exact i64 %i.hc, 28                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %11 = add nsw i64 %.sroa.speculated.i.i.i, %i.he ; 2 uses
  %i.hf = icmp ult i64 %11, %i.he
  %i.hg = call i64 @llvm.umin.i64(i64 %11, i64 329406144173384850)
  %i.hh = select i1 %i.hf, i64 329406144173384850, i64 %i.hg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hi = mul nuw nsw i64 %i.hh, 28
  %i.hj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #21
          to label %.noexc190 unwind label %.loopexit ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 %i.hc ; 6 uses
  store float %i.fc, ptr %i.hk, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store <2 x float> %i.go, ptr %.sroa.5.0..sroa_idx192, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store <2 x float> %i.gp, ptr %.sroa.7.0..sroa_idx196, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  store float %i.gq, ptr %.sroa.9.0..sroa_idx200, align 4, !tbaa !44
  %.sroa.10.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store i32 %.2124.lcssa, ptr %.sroa.10.0..sroa_idx202, align 4, !tbaa !39
  %i.hl = icmp sgt i64 %i.hc, 0
  br i1 %i.hl, label %bb.j, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.j:                                             ; preds = %.noexc190
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hj, ptr align 4 %i.gz, i64 %i.hc, i1 false)
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.j, %.noexc190
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  %.not.i17.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !48
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hp) #19
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.hj, ptr %i.gs, align 8, !tbaa !47
  store ptr %i.hm, ptr %i.gt, align 8, !tbaa !50
  %i.hq = getelementptr inbounds nuw [28 x i8], ptr %i.hj, i64 %i.hh
  store ptr %i.hq, ptr %i.gv, align 8, !tbaa !48
  br label %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %._crit_edge
  %i.hr = getelementptr inbounds nuw i8, ptr %.1137315, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1135316, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1133317, i64 4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1131318, i64 4 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.1129319, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hw = load i32, ptr %7, align 4, !tbaa !39    ; 3 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next, %i.hx
  br i1 %i.hy, label %bb.c, label %._crit_edge322.loopexit, !llvm.loop !88

._crit_edge336:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge336, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.hz = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.hz) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !54 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4ncnn21Yolov3DetectionOutput17nms_sorted_bboxesERSt6vectorINS0_8BBoxRectESaIS2_EERS1_ImSaImEEf(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), float noundef nofpclass(nan inf)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
