Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/gtest-all?download=true
inline.NumInlined: 9417
inline.NumDeleted: 2443
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd:bb.a
  %i.ty = load ptr, ptr %9, align 8, !tbaa !596   ; 3 uses
  %.not.i.i3.i383 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i3.i383, label %_ZN7testing7MessageD2Ev.exit5.i385, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i384

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i384: ; preds = %bb.ea
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !598
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(128) %i.ty) #55, !call_target !607, !inline_history !15463
  br label %_ZN7testing7MessageD2Ev.exit5.i385

_ZN7testing7MessageD2Ev.exit5.i385:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i384, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  br label %.body202

bb.eb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i388, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc399 unwind label %bb.ek

.noexc399:                                        ; preds = %bb.eb
  %i.uc = load ptr, ptr %8, align 8, !tbaa !596
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, double noundef %6)
          to label %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i396 unwind label %bb.ed ; 0 uses

_ZN7testing7MessagelsIdEERS0_RKT_.exit.i396:      ; preds = %.noexc399
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i396
  %i.uf = load ptr, ptr %8, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i397 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i397, label %bb.ee, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i398

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i398: ; preds = %bb.ec
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !598
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8
  call void %i.ui(ptr noundef nonnull align 8 dereferenceable(128) %i.uf) #55, !call_target !607, !inline_history !15461
  br label %bb.ee

bb.ed:                                            ; preds = %_ZN7testing7MessagelsIdEERS0_RKT_.exit.i396, %.noexc399
  %i.uj = landingpad { ptr, i32 }
          cleanup
  %i.uk = load ptr, ptr %8, align 8, !tbaa !596   ; 3 uses
  %.not.i.i3.i393 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i3.i393, label %_ZN7testing7MessageD2Ev.exit5.i395, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i394

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i394: ; preds = %bb.ed
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !598
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(128) %i.uk) #55, !call_target !607, !inline_history !15461
  br label %_ZN7testing7MessageD2Ev.exit5.i395

_ZN7testing7MessageD2Ev.exit5.i395:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i394, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  br label %.body202

bb.ee:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i398, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc408 unwind label %bb.ek

.noexc408:                                        ; preds = %bb.ee
  %i.uo = load ptr, ptr %7, align 8, !tbaa !596
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.up, ptr noundef nonnull align 1 dereferenceable(2) @.str.40, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i unwind label %bb.eg ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i:      ; preds = %.noexc408
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i
  %i.ur = load ptr, ptr %7, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i406 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i406, label %bb.eh, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i407

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i407: ; preds = %bb.ef
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !598
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(128) %i.ur) #55, !call_target !607, !inline_history !514
  br label %bb.eh

bb.eg:                                            ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit.i, %.noexc408
  %i.uv = landingpad { ptr, i32 }
          cleanup
  %i.uw = load ptr, ptr %7, align 8, !tbaa !596   ; 3 uses
  %.not.i.i3.i403 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i3.i403, label %_ZN7testing7MessageD2Ev.exit5.i405, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i404

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i404: ; preds = %bb.eg
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !598
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(128) %i.uw) #55, !call_target !607, !inline_history !514
  br label %_ZN7testing7MessageD2Ev.exit5.i405

_ZN7testing7MessageD2Ev.exit5.i405:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i404, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %.body202

bb.eh:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i407, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %50)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.va = load ptr, ptr %i.km, align 8, !tbaa !583 ; 4 uses
  %.not.i.i411 = icmp eq ptr %i.va, null
  br i1 %.not.i.i411, label %_ZN7testing15AssertionResultD2Ev.exit415, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !589 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 16 ; 2 uses
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i412: ; preds = %bb.ej
  %i.ve = load i64, ptr %i.vc, align 8, !tbaa !592
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.vf) #56
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i412
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef 32) #56
  br label %_ZN7testing15AssertionResultD2Ev.exit415

_ZN7testing15AssertionResultD2Ev.exit415:         ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #55
  br label %bb.em

bb.ek:                                            ; preds = %bb.ee, %bb.eb, %bb.dy, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.eh
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.body202

.body202:                                         ; preds = %_ZN7testing7MessageD2Ev.exit6.i209, %_ZN7testing7MessageD2Ev.exit6.i231, %_ZN7testing7MessageD2Ev.exit5.i251, %_ZN7testing7MessageD2Ev.exit6.i271, %_ZN7testing7MessageD2Ev.exit6.i293, %_ZN7testing7MessageD2Ev.exit5.i313, %_ZN7testing7MessageD2Ev.exit6.i335, %_ZN7testing7MessageD2Ev.exit5.i355, %_ZN7testing7MessageD2Ev.exit6.i375, %_ZN7testing7MessageD2Ev.exit5.i395, %_ZN7testing7MessageD2Ev.exit5.i405, %bb.ek, %_ZN7testing7MessageD2Ev.exit5.i385, %_ZN7testing7MessageD2Ev.exit5.i365, %_ZN7testing7MessageD2Ev.exit5.i345, %_ZN7testing7MessageD2Ev.exit5.i323, %_ZN7testing7MessageD2Ev.exit5.i303, %_ZN7testing7MessageD2Ev.exit5.i281, %_ZN7testing7MessageD2Ev.exit5.i261, %_ZN7testing7MessageD2Ev.exit5.i241, %_ZN7testing7MessageD2Ev.exit5.i219, %_ZN7testing7MessageD2Ev.exit5.i197
  %eh.lpad-body203 = phi { ptr, i32 } [ %i.ku, %_ZN7testing7MessageD2Ev.exit5.i197 ], [ %i.lk, %_ZN7testing7MessageD2Ev.exit6.i209 ], [ %i.lw, %_ZN7testing7MessageD2Ev.exit5.i219 ], [ %i.mm, %_ZN7testing7MessageD2Ev.exit6.i231 ], [ %i.my, %_ZN7testing7MessageD2Ev.exit5.i241 ], [ %i.nk, %_ZN7testing7MessageD2Ev.exit5.i251 ], [ %i.nw, %_ZN7testing7MessageD2Ev.exit5.i261 ], [ %i.om, %_ZN7testing7MessageD2Ev.exit6.i271 ], [ %i.oy, %_ZN7testing7MessageD2Ev.exit5.i281 ], [ %i.pn, %_ZN7testing7MessageD2Ev.exit6.i293 ], [ %i.pz, %_ZN7testing7MessageD2Ev.exit5.i303 ], [ %i.ql, %_ZN7testing7MessageD2Ev.exit5.i313 ], [ %i.qx, %_ZN7testing7MessageD2Ev.exit5.i323 ], [ %i.rm, %_ZN7testing7MessageD2Ev.exit6.i335 ], [ %i.ry, %_ZN7testing7MessageD2Ev.exit5.i345 ], [ %i.sk, %_ZN7testing7MessageD2Ev.exit5.i355 ], [ %i.sw, %_ZN7testing7MessageD2Ev.exit5.i365 ], [ %i.tl, %_ZN7testing7MessageD2Ev.exit6.i375 ], [ %i.tx, %_ZN7testing7MessageD2Ev.exit5.i385 ], [ %i.uj, %_ZN7testing7MessageD2Ev.exit5.i395 ], [ %i.vg, %bb.ek ], [ %i.uv, %_ZN7testing7MessageD2Ev.exit5.i405 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #55
  br label %bb.el

bb.el:                                            ; preds = %.body202, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body203, %.body202 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn

bb.em:                                            ; preds = %bb.e, %_ZN7testing15AssertionResultD2Ev.exit415, %_ZN7testing15AssertionResultD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #31

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7FloatLEEPKcS1_ff(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = fcmp olt float %3, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !580, !alias.scope !15480
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !594, !alias.scope !15480
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp uno float %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit: ; preds = %bb.c
  %19 = bitcast float %3 to i32                   ; 2 uses
  %20 = bitcast float %4 to i32                   ; 3 uses
  %21 = sub i32 0, %19
  %22 = tail call float @llvm.fabs.f32(float %3)
  %23 = fneg float %22
  %24 = bitcast float %23 to i32
  %.not3.i.i.i = icmp slt i32 %19, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i32 %21, i32 %24
  %.neg.i = sub nuw i32 -2147483648, %20
  %.not3.i9.i.i = icmp slt i32 %20, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i32 %20, i32 %.neg.i
  %25 = add i32 %.0.i.i.i, 4
  %26 = add i32 %25, %.0.i10.i.neg4.i
  %i.c = icmp ult i32 %26, 9
  br i1 %i.c, label %bb.d, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.d:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  store i8 1, ptr %0, align 8, !tbaa !580, !alias.scope !15481
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !594, !alias.scope !15481
  br label %bb.aw

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.c, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14)
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 8, ptr %i.j, align 8, !tbaa !14215
  %i.k = fpext float %3 to double
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, double noundef %i.k)
          to label %_ZNSolsEf.exit unwind label %bb.al ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #55
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.e unwind label %bb.am

bb.e:                                             ; preds = %_ZNSolsEf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !598
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 8, ptr %i.r, align 8, !tbaa !14215
  %i.s = fpext float %4 to double
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.s)
          to label %bb.f unwind label %bb.an      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #55
  store i8 0, ptr %16, align 8, !tbaa !580, !alias.scope !15482
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !594, !alias.scope !15482
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.f
  %i.v = load ptr, ptr %13, align 8, !tbaa !596
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @.str.181, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.h ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.y = load ptr, ptr %13, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #55, !call_target !607, !inline_history !515
  br label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %13, align 8, !tbaa !596  ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !598
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #55, !call_target !607, !inline_history !515
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  br label %.body

bb.i:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc21 unwind label %bb.ao

.noexc21:                                         ; preds = %bb.i
  %i.ah = icmp eq ptr %1, null
  %i.ai = load ptr, ptr %12, align 8, !tbaa !596
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br i1 %i.ah, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc21
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc21
  %i.al = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.188, %.noexc21 ]
  %i.am = phi i64 [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc21 ]
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.al, i64 noundef %i.am)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.ao = load ptr, ptr %12, align 8, !tbaa !596  ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i19, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20: ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #55, !call_target !607, !inline_history !510
  br label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %12, align 8, !tbaa !596  ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !598
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #55, !call_target !607, !inline_history !510
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  br label %.body

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc29 unwind label %bb.ao

.noexc29:                                         ; preds = %bb.l
  %i.ax = load ptr, ptr %11, align 8, !tbaa !596
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 1 dereferenceable(7) @.str.545, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i:      ; preds = %.noexc29
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i
  %i.ba = load ptr, ptr %11, align 8, !tbaa !596  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i27, label %bb.o, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !598
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #55, !call_target !607, !inline_history !513
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i, %.noexc29
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %11, align 8, !tbaa !596  ; 3 uses
  %.not.i.i3.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i3.i24, label %_ZN7testing7MessageD2Ev.exit5.i26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25: ; preds = %bb.n
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !598
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #55, !call_target !607, !inline_history !513
  br label %_ZN7testing7MessageD2Ev.exit5.i26

_ZN7testing7MessageD2Ev.exit5.i26:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  br label %.body

bb.o:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc40 unwind label %bb.ao

.noexc40:                                         ; preds = %bb.o
  %i.bj = icmp eq ptr %2, null
  %i.bk = load ptr, ptr %10, align 8, !tbaa !596
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
end_hunk_0
begin_hunk_1_@_ZN7testing8internal15FloatingPointLEIfEENS_15AssertionResultEPKcS4_T_S5_:bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !592
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fj, align 8, !tbaa !598
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fq) #55
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.fr, ptr %15, align 8, !tbaa !598
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fr, i64 -24    ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds i8, ptr %15, i64 %i.fu
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !598
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.fw, align 8, !tbaa !14249
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fx) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #55
  store ptr %i.fd, ptr %14, align 8, !tbaa !598
  %i.fy = load i64, ptr %i.ff, align 8
  %i.fz = getelementptr inbounds i8, ptr %14, i64 %i.fy
  store ptr %i.fe, ptr %i.fz, align 8, !tbaa !598
  store ptr %i.fi, ptr %i.e, align 8, !tbaa !598
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ga, align 8, !tbaa !598
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !589 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !592
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit94

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit94: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i92
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ga, align 8, !tbaa !598
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gh) #55
  store ptr %i.fr, ptr %14, align 8, !tbaa !598
  %i.gi = load i64, ptr %i.ft, align 8
  %i.gj = getelementptr inbounds i8, ptr %14, i64 %i.gi
  store ptr %i.fs, ptr %i.gj, align 8, !tbaa !598
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.gk, align 8, !tbaa !14249
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gl) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  br label %bb.aw

bb.al:                                            ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.am:                                            ; preds = %_ZNSolsEf.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.an:                                            ; preds = %bb.e
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.x
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aq:                                            ; preds = %bb.ab, %bb.y
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.ar:                                            ; preds = %bb.ae
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.as:                                            ; preds = %bb.af, %bb.ai
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.body83:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i78, %bb.as
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.gt, %bb.as ], [ %i.ei, %_ZN7testing7MessageD2Ev.exit5.i78 ] ; 2 uses
  %i.gu = load ptr, ptr %18, align 8, !tbaa !589  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %.body83
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !592
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %.body83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gs, %bb.ar ], [ %eh.lpad-body84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %eh.lpad-body84, %.body83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #55
  br label %.body66

.body66:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit5.i70, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.dh, %_ZN7testing7MessageD2Ev.exit5.i62 ], [ %i.gr, %bb.aq ], [ %i.dt, %_ZN7testing7MessageD2Ev.exit5.i70 ] ; 2 uses
  %i.gz = load ptr, ptr %17, align 8, !tbaa !589  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body66
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !592
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.body66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.ap ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn, %.body66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #55
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i26, %_ZN7testing7MessageD2Ev.exit5.i46, %_ZN7testing7MessageD2Ev.exit5.i54, %bb.ao, %_ZN7testing7MessageD2Ev.exit6.i36, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ac, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.as, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.be, %_ZN7testing7MessageD2Ev.exit5.i26 ], [ %i.bu, %_ZN7testing7MessageD2Ev.exit6.i36 ], [ %i.cg, %_ZN7testing7MessageD2Ev.exit5.i46 ], [ %i.gp, %bb.ao ], [ %i.cs, %_ZN7testing7MessageD2Ev.exit5.i54 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #55
  br label %bb.at

bb.at:                                            ; preds = %.body, %bb.an
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.go, %bb.an ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15) #55
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.at ], [ %i.gn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #55
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.al
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.au ], [ %i.gm, %bb.al ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn

bb.aw:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit94, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8DoubleLEEPKcS1_dd(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal15FloatingPointLEIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal15FloatingPointLEIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = fcmp olt double %3, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !580, !alias.scope !15489
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !594, !alias.scope !15489
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %or.cond = fcmp uno double %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.c
  %19 = bitcast double %3 to i64                  ; 2 uses
  %20 = bitcast double %4 to i64                  ; 3 uses
  %21 = sub i64 0, %19
  %22 = tail call double @llvm.fabs.f64(double %3)
  %23 = fneg double %22
  %24 = bitcast double %23 to i64
  %.not3.i.i.i = icmp slt i64 %19, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i64 %21, i64 %24
  %.neg.i = sub nuw i64 -9223372036854775808, %20
  %.not3.i9.i.i = icmp slt i64 %20, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i64 %20, i64 %.neg.i
  %25 = add i64 %.0.i.i.i, 4
  %26 = add i64 %25, %.0.i10.i.neg4.i
  %i.c = icmp ult i64 %26, 9
  br i1 %i.c, label %bb.d, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread

bb.d:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  store i8 1, ptr %0, align 8, !tbaa !580, !alias.scope !15490
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !594, !alias.scope !15490
  br label %bb.aw

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.c, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14)
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 17, ptr %i.j, align 8, !tbaa !14215
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.al ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #55
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.e unwind label %bb.am

bb.e:                                             ; preds = %_ZNSolsEd.exit
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !598
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 17, ptr %i.q, align 8, !tbaa !14215
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, double noundef %4)
          to label %bb.f unwind label %bb.an      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #55
  store i8 0, ptr %16, align 8, !tbaa !580, !alias.scope !15491
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !594, !alias.scope !15491
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.f
  %i.t = load ptr, ptr %13, align 8, !tbaa !596
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @.str.181, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.h ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.w = load ptr, ptr %13, align 8, !tbaa !596   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !598
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #55, !call_target !607, !inline_history !515
  br label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %13, align 8, !tbaa !596  ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !598
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #55, !call_target !607, !inline_history !515
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  br label %.body

bb.i:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc21 unwind label %bb.ao

.noexc21:                                         ; preds = %bb.i
  %i.af = icmp eq ptr %1, null
  %i.ag = load ptr, ptr %12, align 8, !tbaa !596
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br i1 %i.af, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc21
  %i.ai = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc21
  %i.aj = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.188, %.noexc21 ]
  %i.ak = phi i64 [ %i.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc21 ]
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.aj, i64 noundef %i.ak)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.am = load ptr, ptr %12, align 8, !tbaa !596  ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i19, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20: ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !598
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #55, !call_target !607, !inline_history !510
  br label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %12, align 8, !tbaa !596  ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.k
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !598
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #55, !call_target !607, !inline_history !510
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  br label %.body

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i20, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc29 unwind label %bb.ao

.noexc29:                                         ; preds = %bb.l
  %i.av = load ptr, ptr %11, align 8, !tbaa !596
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.545, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i:      ; preds = %.noexc29
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i
  %i.ay = load ptr, ptr %11, align 8, !tbaa !596  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i27, label %bb.o, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28: ; preds = %bb.m
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !598
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #55, !call_target !607, !inline_history !513
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit.i, %.noexc29
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %11, align 8, !tbaa !596  ; 3 uses
  %.not.i.i3.i24 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i3.i24, label %_ZN7testing7MessageD2Ev.exit5.i26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25: ; preds = %bb.n
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !598
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #55, !call_target !607, !inline_history !513
  br label %_ZN7testing7MessageD2Ev.exit5.i26

_ZN7testing7MessageD2Ev.exit5.i26:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i25, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  br label %.body

bb.o:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i28, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc40 unwind label %bb.ao

.noexc40:                                         ; preds = %bb.o
  %i.bh = icmp eq ptr %2, null
  %i.bi = load ptr, ptr %10, align 8, !tbaa !596
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  br i1 %i.bh, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i33, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i32

end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_gtest_all.cc:bb.a
  %i.is = phi i8 [ 0, %__cxx_global_var_init.125.exit ], [ 1, %sub_0.i.i79 ], [ %i.ir, %sub_1.i.i84 ]
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.ik, %i.it
  br i1 %i.iu, label %__cxx_global_var_init.127.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82: ; preds = %.tail.i.i81
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !592
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.iw) #56
  br label %__cxx_global_var_init.127.exit

__cxx_global_var_init.127.exit:                   ; preds = %.tail.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  store i8 %i.is, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !593
  %i.ix = call noundef i32 @_ZN7testing8internal17Int32FromGTestEnvEPKci(ptr noundef nonnull @.str.130, i32 noundef 100)
  store i32 %i.ix, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull @.str.132)
  %i.iy = load ptr, ptr %2, align 8, !tbaa !589   ; 3 uses
  %i.iz = call noundef ptr @getenv(ptr noundef %i.iy) #55 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %__cxx_global_var_init.127.exit
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !592
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jd) #56
  br label %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86

_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86: ; preds = %__cxx_global_var_init.127.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  %i.je = icmp eq ptr %i.iz, null
  %i.jf = select i1 %i.je, ptr @.str.4, ptr %i.iz ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 16), ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !586
  %i.jg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jf) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.jg, ptr %i.b, align 8, !tbaa !591
  %i.jh = icmp ugt i64 %i.jg, 15
  br i1 %i.jh, label %.noexc.i.i88, label %._crit_edge.i.i.i87

.noexc.i.i88:                                     ; preds = %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86
  %i.ji = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ji, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !589
  %i.jj = load i64, ptr %i.b, align 8, !tbaa !591
  store i64 %i.jj, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 16), align 8, !tbaa !592
  br label %._crit_edge.i.i.i87

._crit_edge.i.i.i87:                              ; preds = %.noexc.i.i88, %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86
  %i.jk = phi ptr [ %i.ji, %.noexc.i.i88 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 16), %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i86 ] ; 2 uses
  switch i64 %i.jg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %__cxx_global_var_init.131.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i87
  %i.jl = load i8, ptr %i.jf, align 1, !tbaa !592
  store i8 %i.jl, ptr %i.jk, align 1, !tbaa !592
  br label %__cxx_global_var_init.131.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr nonnull align 1 %i.jf, i64 %i.jg, i1 false)
  br label %__cxx_global_var_init.131.exit

__cxx_global_var_init.131.exit:                   ; preds = %._crit_edge.i.i.i87, %bb.n, %bb.o
  %i.jm = load i64, ptr %i.b, align 8, !tbaa !591 ; 2 uses
  store i64 %i.jm, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !590
  %i.jn = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !589
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm
  store i8 0, ptr %i.jo, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.jp = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, ptr nonnull @__dso_handle) #55 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull @.str.134)
  %i.jq = load ptr, ptr %1, align 8, !tbaa !589   ; 3 uses
  %i.jr = call noundef ptr @getenv(ptr noundef %i.jq) #55 ; 3 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %.tail.i.i92, label %sub_0.i.i90

sub_0.i.i90:                                      ; preds = %__cxx_global_var_init.131.exit
  %i.jt = load i8, ptr %i.jr, align 1
  %.not.i.i91 = icmp eq i8 %i.jt, 48
  br i1 %.not.i.i91, label %sub_1.i.i95, label %.tail.i.i92

sub_1.i.i95:                                      ; preds = %sub_0.i.i90
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = icmp ne i8 %i.jv, 0
  %i.jx = zext i1 %i.jw to i8
  br label %.tail.i.i92

.tail.i.i92:                                      ; preds = %sub_1.i.i95, %sub_0.i.i90, %__cxx_global_var_init.131.exit
  %i.jy = phi i8 [ 0, %__cxx_global_var_init.131.exit ], [ 1, %sub_0.i.i90 ], [ %i.jx, %sub_1.i.i95 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jq, %i.jz
  br i1 %i.ka, label %__cxx_global_var_init.133.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93: ; preds = %.tail.i.i92
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !592
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.kc) #56
  br label %__cxx_global_var_init.133.exit

__cxx_global_var_init.133.exit:                   ; preds = %.tail.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  store i8 %i.jy, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !593
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.136)
  %i.kd = load ptr, ptr %0, align 8, !tbaa !589   ; 3 uses
  %i.ke = call noundef ptr @getenv(ptr noundef %i.kd) #55 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br i1 %i.kg, label %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96: ; preds = %__cxx_global_var_init.133.exit
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !592
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.ki) #56
  br label %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97

_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97: ; preds = %__cxx_global_var_init.133.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i96
  %i.kj = icmp eq ptr %i.ke, null
  %i.kk = select i1 %i.kj, ptr @.str.4, ptr %i.ke ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, i64 16), ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, align 8, !tbaa !586
  %i.kl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kk) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.kl, ptr %i.a, align 8, !tbaa !591
  %i.km = icmp ugt i64 %i.kl, 15
  br i1 %i.km, label %.noexc.i.i99, label %._crit_edge.i.i.i98

.noexc.i.i99:                                     ; preds = %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97
  %i.kn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kn, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, align 8, !tbaa !589
  %i.ko = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.ko, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, i64 16), align 8, !tbaa !592
  br label %._crit_edge.i.i.i98

._crit_edge.i.i.i98:                              ; preds = %.noexc.i.i99, %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97
  %i.kp = phi ptr [ %i.kn, %.noexc.i.i99 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, i64 16), %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i97 ] ; 2 uses
  switch i64 %i.kl, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %__cxx_global_var_init.135.exit
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i98
  %i.kq = load i8, ptr %i.kk, align 1, !tbaa !592
  store i8 %i.kq, ptr %i.kp, align 1, !tbaa !592
  br label %__cxx_global_var_init.135.exit

bb.q:                                             ; preds = %._crit_edge.i.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr nonnull align 1 %i.kk, i64 %i.kl, i1 false)
  br label %__cxx_global_var_init.135.exit

__cxx_global_var_init.135.exit:                   ; preds = %._crit_edge.i.i.i98, %bb.p, %bb.q
  %i.kr = load i64, ptr %i.a, align 8, !tbaa !591 ; 2 uses
  store i64 %i.kr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, i64 8), align 8, !tbaa !590
  %i.ks = load ptr, ptr @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, align 8, !tbaa !589
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kr
  store i8 0, ptr %i.kt, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ku = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing20FLAGS_gtest_flagfileB5cxx11E, ptr nonnull @__dso_handle) #55 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, i8 0, i64 24, i1 false)
  %i.kv = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN7testing8internalL7g_argvsB5cxx11E, ptr nonnull @__dso_handle) #55 ; 0 uses
  store ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E, ptr @_ZN7testing8internal23kTestTypeIdInGoogleTestE, align 8, !tbaa !14791
  %i.kw = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN7testing8internal23kTestTypeIdInGoogleTestE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #51

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #26 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold nofree noreturn }
attributes #28 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #29 = { mustprogress noinline uwtable "disable-tail-calls"="true" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #33 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #35 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #37 = { cold noreturn }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #39 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #42 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn }
attributes #46 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #47 = { nounwind memory(none) }
attributes #48 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #50 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #53 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #54 = { builtin allocsize(0) }
attributes #55 = { nounwind }
attributes #56 = { builtin nounwind }
attributes #57 = { noreturn }
attributes #58 = { nounwind willreturn memory(none) }
attributes #59 = { cold noreturn nounwind }
attributes #60 = { cold }
attributes #61 = { noreturn nounwind }
attributes #62 = { nounwind willreturn memory(read) }
attributes #63 = { cold nounwind }
attributes #64 = { nounwind allocsize(0) }

!llvm.module.flags = !{!559, !560, !561, !562, !563}
!llvm.ident = !{!564}
!llvm.errno.tbaa = !{!569}

!0 = distinct !{null, null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, ptr @_ZN7testing8UnitTest11GetInstanceEv}
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "AbortReason", scope: !25, file: !725, line: 134, baseType: !785, size: 32, elements: !789, identifier: "_ZTSN7testing8internal9DeathTest11AbortReasonE")
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TestRole", scope: !25, file: !725, line: 131, baseType: !785, size: 32, elements: !792, identifier: "_ZTSN7testing8internal9DeathTest8TestRoleE")
!5 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !601, file: !1215, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !601, file: !1227, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !1270, identifier: "_ZTSSt15iterator_traitsIPKcE")
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !1216, file: !1214, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1268, templateParams: !1272, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !601, file: !1227, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !1323, identifier: "_ZTSSt15iterator_traitsIPcE")
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !1216, file: !1214, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1321, templateParams: !1324, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !24, file: !794, line: 160, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1330, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!13 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !601, file: !1466, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !1514, templateParams: !1515, identifier: "_ZTSSt11char_traitsIcE")
!15 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !601, file: !1331, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1462, templateParams: !1465, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char *>", scope: !601, file: !1533, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1611, templateParams: !1613, identifier: "_ZTSSt15__new_allocatorIPcE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !601, file: !1533, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1572, templateParams: !1615, identifier: "_ZTSSt15__new_allocatorIcE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !601, file: !1516, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1532, templateParams: !1615, identifier: "_ZTSSaIcE")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !23, file: !795, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !1615, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !24, file: !794, line: 204, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !1621, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !24, file: !794, line: 181, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1632, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !601, file: !796, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !1654, templateParams: !1656, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !1216, file: !795, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !1671, templateParams: !1673, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !602, file: !793, line: 969, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1213, templateParams: !1675, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DeathTest", scope: !738, file: !725, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !784, vtableHolder: !25, identifier: "_ZTSN7testing8internal9DeathTestE")
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherInterface<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !737, file: !1676, line: 140, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatchResultListener", scope: !737, file: !1676, line: 78, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1776, vtableHolder: !27, identifier: "_ZTSN7testing19MatchResultListenerE")
!28 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !601, file: !1826, line: 79, baseType: !785, size: 32, elements: !1953, identifier: "_ZTSSt12memory_order")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int>", scope: !601, file: !1826, line: 341, size: 32, flags: DIFlagTypePassByReference, elements: !1946, templateParams: !1955, identifier: "_ZTSSt13__atomic_baseIiE")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !601, file: !1798, line: 822, size: 32, flags: DIFlagTypePassByReference, elements: !1825, templateParams: !1957, identifier: "_ZTSSt6atomicIiE")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SharedPayloadBase", scope: !738, file: !1676, line: 206, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1797, identifier: "_ZTSN7testing8internal17SharedPayloadBaseE")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Buffer", scope: !35, file: !1676, line: 380, size: 64, flags: DIFlagTypePassByValue, elements: !1788, identifier: "_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6BufferE")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VTable", scope: !35, file: !1676, line: 316, size: 256, flags: DIFlagTypePassByValue, elements: !1974, identifier: "_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE")
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherDescriberInterface", scope: !737, file: !1676, line: 114, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1985, vtableHolder: !34, identifier: "_ZTSN7testing25MatcherDescriberInterfaceE")
!35 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherBase<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !738, file: !1676, line: 228, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1749, vtableHolder: !34, templateParams: !1987, identifier: "_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matcher<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !737, file: !1676, line: 494, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1693, vtableHolder: !34, templateParams: !1987, identifier: "_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!37 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DeathTestFactory", scope: !738, file: !725, line: 175, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1992, vtableHolder: !37, identifier: "_ZTSN7testing8internal16DeathTestFactoryE")
!38 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!39 = distinct !{ptr @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_, null, null, null}
!40 = distinct !{!40, !2001}
!41 = distinct !{!41, !2001}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !601, file: !2091, line: 689, size: 4608, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt5ctypeIcE")
!47 = distinct !{null, null, null, null}
!48 = distinct !{null, null}
!49 = distinct !{!49, !2001}
!50 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type", scope: !51, file: !2128, line: 58, baseType: !785, size: 32, elements: !2171, identifier: "_ZTSN7testing14TestPartResult4TypeE")
!51 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestPartResult", scope: !737, file: !2128, line: 54, size: 896, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2166, identifier: "_ZTSN7testing14TestPartResultE")
!52 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestPartResultReporterInterface", scope: !737, file: !2128, line: 155, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2176, vtableHolder: !52, identifier: "_ZTSN7testing31TestPartResultReporterInterfaceE")
!53 = distinct !{!53, !2001}
!54 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "OsStackTraceGetterInterface", scope: !738, file: !2199, line: 409, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2220, vtableHolder: !54, identifier: "_ZTSN7testing8internal27OsStackTraceGetterInterfaceE")
!55 = distinct !{!55, !2001}
!56 = distinct !{!56, !2001}
!57 = distinct !{!57, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!58 = distinct !{!58, !57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!59 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestProperty", scope: !737, file: !2246, line: 369, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2444, identifier: "_ZTSN7testing12TestPropertyE")
!60 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const testing::TestProperty *, std::vector<testing::TestProperty, std::allocator<testing::TestProperty> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEEE")
!61 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<testing::TestProperty *, std::vector<testing::TestProperty, std::allocator<testing::TestProperty> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEEE")
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const testing::TestProperty *, std::vector<testing::TestProperty, std::allocator<testing::TestProperty> > >", scope: !1216, file: !1214, line: 1047, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKN7testing12TestPropertyESt6vectorIS2_SaIS2_EEEE")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<testing::TestProperty *>", scope: !601, file: !1227, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !2733, identifier: "_ZTSSt15iterator_traitsIPN7testing12TestPropertyEE")
!64 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<testing::TestProperty *, std::vector<testing::TestProperty, std::allocator<testing::TestProperty> > >", scope: !1216, file: !1214, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2731, templateParams: !2735, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS2_SaIS2_EEEE")
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<testing::TestProperty>", scope: !601, file: !1215, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIN7testing12TestPropertyEE")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<testing::TestProperty> >", scope: !601, file: !2447, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !2737, identifier: "_ZTSSt15__type_identityISaIN7testing12TestPropertyEEE")
!67 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<testing::TestProperty>", scope: !601, file: !1533, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2790, templateParams: !2792, identifier: "_ZTSSt15__new_allocatorIN7testing12TestPropertyEE")
!68 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<testing::TestProperty>", scope: !601, file: !1516, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2754, templateParams: !2792, identifier: "_ZTSSaIN7testing12TestPropertyEE")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<testing::TestProperty>", scope: !71, file: !795, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !2792, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN7testing12TestPropertyEES2_E6rebindIS2_EE")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<testing::TestProperty> >", scope: !601, file: !796, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !2813, templateParams: !2815, identifier: "_ZTSSt16allocator_traitsISaIN7testing12TestPropertyEEE")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<testing::TestProperty>, testing::TestProperty>", scope: !1216, file: !795, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !2828, templateParams: !2830, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN7testing12TestPropertyEES2_EE")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !601, file: !2447, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2839, templateParams: !2842, identifier: "_ZTSSt17integral_constantIbLb0EE")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !601, file: !2447, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2851, templateParams: !2853, identifier: "_ZTSSt17integral_constantIbLb1EE")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !76, file: !2445, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2948, identifier: "_ZTSNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE17_Vector_impl_dataE")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !76, file: !2445, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2927, identifier: "_ZTSNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE12_Vector_implE")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<testing::TestProperty, std::allocator<testing::TestProperty> >", scope: !601, file: !2445, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2907, templateParams: !2949, identifier: "_ZTSSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE")
!77 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<testing::TestProperty, std::allocator<testing::TestProperty> >", scope: !601, file: !2445, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2682, templateParams: !2951, identifier: "_ZTSSt6vectorIN7testing12TestPropertyESaIS1_EE")
!78 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const testing::TestPartResult *, std::vector<testing::TestPartResult, std::allocator<testing::TestPartResult> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKN7testing14TestPartResultESt6vectorIS3_SaIS3_EEEEE")
!79 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<testing::TestPartResult *, std::vector<testing::TestPartResult, std::allocator<testing::TestPartResult> > > >", scope: !601, file: !1214, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN7testing14TestPartResultESt6vectorIS3_SaIS3_EEEEE")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const testing::TestPartResult *>", scope: !601, file: !1227, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3230, identifier: "_ZTSSt15iterator_traitsIPKN7testing14TestPartResultEE")
!81 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const testing::TestPartResult *, std::vector<testing::TestPartResult, std::allocator<testing::TestPartResult> > >", scope: !1216, file: !1214, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3228, templateParams: !3232, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKN7testing14TestPartResultESt6vectorIS2_SaIS2_EEEE")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<testing::TestPartResult *>", scope: !601, file: !1227, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3283, identifier: "_ZTSSt15iterator_traitsIPN7testing14TestPartResultEE")
!83 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<testing::TestPartResult *, std::vector<testing::TestPartResult, std::allocator<testing::TestPartResult> > >", scope: !1216, file: !1214, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3281, templateParams: !3284, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPN7testing14TestPartResultESt6vectorIS2_SaIS2_EEEE")
!84 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<testing::TestPartResult>", scope: !601, file: !1215, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIN7testing14TestPartResultEE")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<testing::TestPartResult> >", scope: !601, file: !2447, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3286, identifier: "_ZTSSt15__type_identityISaIN7testing14TestPartResultEEE")
!86 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<testing::TestPartResult>", scope: !601, file: !1533, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3339, templateParams: !3341, identifier: "_ZTSSt15__new_allocatorIN7testing14TestPartResultEE")
!87 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<testing::TestPartResult>", scope: !601, file: !1516, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3303, templateParams: !3341, identifier: "_ZTSSaIN7testing14TestPartResultEE")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<testing::TestPartResult>", scope: !90, file: !795, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3341, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN7testing14TestPartResultEES2_E6rebindIS2_EE")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<testing::TestPartResult> >", scope: !601, file: !796, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !3362, templateParams: !3364, identifier: "_ZTSSt16allocator_traitsISaIN7testing14TestPartResultEEE")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<testing::TestPartResult>, testing::TestPartResult>", scope: !1216, file: !795, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !3377, templateParams: !3379, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIN7testing14TestPartResultEES2_EE")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !93, file: !2445, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3474, identifier: "_ZTSNSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE17_Vector_impl_dataE")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !93, file: !2445, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3453, identifier: "_ZTSNSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE12_Vector_implE")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<testing::TestPartResult, std::allocator<testing::TestPartResult> >", scope: !601, file: !2445, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3433, templateParams: !3475, identifier: "_ZTSSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE")
!94 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<testing::TestPartResult, std::allocator<testing::TestPartResult> >", scope: !601, file: !2445, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3180, templateParams: !3477, identifier: "_ZTSSt6vectorIN7testing14TestPartResultESaIS1_EE")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !3527, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !3534, identifier: "_ZTS23__pthread_internal_list")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !3518, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !3530, identifier: "_ZTS17__pthread_mutex_s")
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3494, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !3517, identifier: "_ZTS15pthread_mutex_t")
!98 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexBase", scope: !738, file: !2358, line: 1650, size: 448, flags: DIFlagTypePassByValue, elements: !3510, identifier: "_ZTSN7testing8internal9MutexBaseE")
!99 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Mutex", scope: !738, file: !2358, line: 1708, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3493, identifier: "_ZTSN7testing8internal5MutexE")
!100 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestResult", scope: !737, file: !2246, line: 399, size: 1024, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2429, identifier: "_ZTSN7testing10TestResultE")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Setup_should_be_spelled_SetUp", scope: !120, file: !2246, line: 355, size: 8, flags: DIFlagFwdDecl, identifier: "_ZTSN7testing4Test29Setup_should_be_spelled_SetUpE")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<testing::internal::GTestFlagSaver>", scope: !601, file: !3596, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !3670, templateParams: !3672, identifier: "_ZTSSt14default_deleteIN7testing8internal14GTestFlagSaverEE")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<testing::internal::GTestFlagSaver, std::default_delete<testing::internal::GTestFlagSaver>, void>", scope: !114, file: !3596, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3676, identifier: "_ZTSNSt15__uniq_ptr_implIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EE4_PtrIS2_S4_vEE")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !601, file: !2447, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3747, identifier: "_ZTSSt13__conditionalILb1EE")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !107, file: !3821, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !3829, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !601, file: !3821, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !582, identifier: "_ZTSSt17__uses_alloc_base")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !601, file: !3821, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !3824, identifier: "_ZTSSt13__uses_alloc0")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !601, file: !3821, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !3834, identifier: "_ZTSSt15allocator_arg_t")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, testing::internal::GTestFlagSaver *, false>", scope: !601, file: !3718, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3820, templateParams: !3838, identifier: "_ZTSSt10_Head_baseILm0EPN7testing8internal14GTestFlagSaverELb0EE")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<testing::internal::GTestFlagSaver>, true>", scope: !601, file: !3718, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3897, templateParams: !3901, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteIN7testing8internal14GTestFlagSaverEELb1EE")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<testing::internal::GTestFlagSaver> >", scope: !601, file: !3718, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3869, templateParams: !3905, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteIN7testing8internal14GTestFlagSaverEEEE")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, testing::internal::GTestFlagSaver *, std::default_delete<testing::internal::GTestFlagSaver> >", scope: !601, file: !3718, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3792, templateParams: !3909, identifier: "_ZTSSt11_Tuple_implILm0EJPN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EEE")
!113 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<testing::internal::GTestFlagSaver *, std::default_delete<testing::internal::GTestFlagSaver> >", scope: !601, file: !3718, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3745, templateParams: !3910, identifier: "_ZTSSt5tupleIJPN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EEE")
!114 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<testing::internal::GTestFlagSaver, std::default_delete<testing::internal::GTestFlagSaver> >", scope: !601, file: !3596, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3717, templateParams: !3912, identifier: "_ZTSSt15__uniq_ptr_implIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EE")
!115 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "GTestFlagSaver", scope: !738, file: !2199, line: 141, size: 1984, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3941, identifier: "_ZTSN7testing8internal14GTestFlagSaverE")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<testing::internal::GTestFlagSaver, void>", scope: !601, file: !2447, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3942, identifier: "_ZTSSt29__add_lvalue_reference_helperIN7testing8internal14GTestFlagSaverEvE")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<testing::internal::GTestFlagSaver>", scope: !601, file: !2447, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !3672, identifier: "_ZTSSt20add_lvalue_referenceIN7testing8internal14GTestFlagSaverEE")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<testing::internal::GTestFlagSaver, std::default_delete<testing::internal::GTestFlagSaver>, true, true>", scope: !601, file: !3596, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3953, templateParams: !3954, identifier: "_ZTSSt15__uniq_ptr_dataIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_ELb1ELb1EE")
!119 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<testing::internal::GTestFlagSaver, std::default_delete<testing::internal::GTestFlagSaver> >", scope: !601, file: !3596, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3660, templateParams: !3956, identifier: "_ZTSSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EE")
!120 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Test", scope: !737, file: !2246, line: 242, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3595, vtableHolder: !120)
!121 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestFactoryBase", scope: !738, file: !2296, line: 435, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3554, vtableHolder: !121, identifier: "_ZTSN7testing8internal15TestFactoryBaseE")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CodeLocation", scope: !738, file: !2296, line: 476, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3963, identifier: "_ZTSN7testing8internal12CodeLocationE")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !601, file: !3596, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !4034, templateParams: !4036, identifier: "_ZTSSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::default_delete<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, void>", scope: !130, file: !3596, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !582, templateParams: !4039, identifier: "_ZTSNSt15__uniq_ptr_implIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EE4_PtrIS6_S8_vEE")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > *, false>", scope: !601, file: !3718, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !4180, templateParams: !4182, identifier: "_ZTSSt10_Head_baseILm0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, true>", scope: !601, file: !3718, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !4241, templateParams: !4243, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !601, file: !3718, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4213, templateParams: !4247, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > *, std::default_delete<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !601, file: !3718, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !4152, templateParams: !4251, identifier: "_ZTSSt11_Tuple_implILm0EJPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEE")
end_hunk_2
