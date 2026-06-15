inline.NumInlined: 3741
inline.NumDeleted: 859
begin_hunk_0_@_ZN6Assimp15ColladaExporter14WriteMaterialsEv:bb.a
  %i.ajg = load ptr, ptr %i.mk, align 8
  %i.ajh = load i64, ptr %i.mm, align 8
  %i.aji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef %i.ajg, i64 noundef %i.ajh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit807 unwind label %bb.ag ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit807: ; preds = %bb.dt
  %i.ajj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aji, ptr noundef nonnull @.str.196, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit809 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit809: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit807
  %i.ajk = load ptr, ptr %i.mq, align 8
  %i.ajl = load i64, ptr %i.ms, align 8
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aji, ptr noundef %i.ajk, i64 noundef %i.ajl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811 unwind label %bb.ag ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit809
  %.pre2242 = load ptr, ptr %1, align 8           ; 3 uses
  %.pre2243 = load ptr, ptr %i.g, align 8         ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre2242, %.pre2243
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ajn, %.lr.ph.i.i.i ], [ %.pre2242, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811 ] ; 2 uses
  call void @_ZN6Assimp15ColladaExporter8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %.05.i.i.i) #25
  %i.ajn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 568 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ajn, %.pre2243
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !155

_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8
  br label %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit365, %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811
  %i.ajo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.pre2242, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit811 ], [ %i.mg, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit365 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp15ColladaExporter8MaterialESaIS2_EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exit.i
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8
  %i.ajr = ptrtoint ptr %i.ajq to i64
  %i.ajs = ptrtoint ptr %i.ajo to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  call void @_ZdlPvm(ptr noundef nonnull %i.ajo, i64 noundef %i.ajt) #27
  br label %_ZNSt6vectorIN6Assimp15ColladaExporter8MaterialESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp15ColladaExporter8MaterialESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp15ColladaExporter8MaterialES2_EvT_S4_RSaIT0_E.exit.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.dv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit846, %.loopexit.split-lp847, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit682, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %.body, %.body263, %.body277, %.body291, %.body305, %.body319, %.body333, %bb.ag, %bb.x, %bb.w, %bb.v, %bb.c
  %.pn207.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.fp, %bb.ag ], [ %i.cj, %bb.v ], [ %.pn192, %.body ], [ %lpad.loopexit.split-lp849, %.loopexit.split-lp847 ], [ %i.cl, %bb.x ], [ %i.ck, %bb.w ], [ %.pn204, %.body333 ], [ %.pn202, %.body319 ], [ %.pn200, %.body305 ], [ %.pn198, %.body291 ], [ %.pn196, %.body277 ], [ %.pn194, %.body263 ], [ %i.zv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646 ], [ %.pn187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ], [ %i.adl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706 ], [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703 ], [ %.pn177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697 ], [ %i.aco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691 ], [ %.pn172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.pn169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit682 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676 ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %i.aaz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %i.aau, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %i.aap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658 ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655 ], [ %i.aaf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ], [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649 ], [ %lpad.loopexit848, %.loopexit846 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6Assimp15ColladaExporter8MaterialESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn207.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter20WriteGeometryLibraryEv(ptr noundef nonnull align 8 dereferenceable(1248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.235, i64 noundef 20) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  %i.m = load i64, ptr %i.d, align 8
  %i.n = and i64 %i.m, -2
  %i.o = icmp eq i64 %i.n, 4611686018427387902
  br i1 %i.o, label %bb.b, label %_ZN6Assimp15ColladaExporter7PushTagEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
  unreachable

_ZN6Assimp15ColladaExporter7PushTagEv.exit:       ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.349, i64 noundef 2) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6Assimp15ColladaExporter7PushTagEv.exit
  %i.u = load i64, ptr %i.d, align 8              ; 3 uses
  %i.v = add i64 %i.u, -2                         ; 3 uses
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %bb.c, label %_ZN6Assimp15ColladaExporter6PopTagEv.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.v, i64 noundef %i.u) #26
  unreachable

_ZN6Assimp15ColladaExporter6PopTagEv.exit:        ; preds = %._crit_edge
  store i64 %i.v, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.z, i64 noundef %i.aa) ; 2 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.236, i64 noundef 21) ; 0 uses
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load i64, ptr %i.j, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad, i64 noundef %i.ae) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit, %.lr.ph
  %.03 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %_ZN6Assimp15ColladaExporter7PushTagEv.exit ] ; 2 uses
  tail call void @_ZN6Assimp15ColladaExporter13WriteGeometryEm(ptr noundef nonnull align 8 dereferenceable(1248) %0, i64 noundef %.03)
  %i.ag = add nuw nsw i64 %.03, 1                 ; 2 uses
  %i.ah = load ptr, ptr %i.q, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !156
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter22WriteControllerLibraryEv(ptr noundef nonnull align 8 dereferenceable(1248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.197, i64 noundef 21) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  %i.m = load i64, ptr %i.d, align 8
  %i.n = and i64 %i.m, -2
  %i.o = icmp eq i64 %i.n, 4611686018427387902
  br i1 %i.o, label %bb.b, label %_ZN6Assimp15ColladaExporter7PushTagEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
  unreachable

_ZN6Assimp15ColladaExporter7PushTagEv.exit:       ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.349, i64 noundef 2) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6Assimp15ColladaExporter7PushTagEv.exit
  %i.u = load i64, ptr %i.d, align 8              ; 3 uses
  %i.v = add i64 %i.u, -2                         ; 3 uses
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %bb.c, label %_ZN6Assimp15ColladaExporter6PopTagEv.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.v, i64 noundef %i.u) #26
  unreachable

_ZN6Assimp15ColladaExporter6PopTagEv.exit:        ; preds = %._crit_edge
  store i64 %i.v, ptr %i.d, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.z, i64 noundef %i.aa) ; 2 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.198, i64 noundef 22) ; 0 uses
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load i64, ptr %i.j, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad, i64 noundef %i.ae) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit, %.lr.ph
  %.03 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %_ZN6Assimp15ColladaExporter7PushTagEv.exit ] ; 2 uses
  tail call void @_ZN6Assimp15ColladaExporter15WriteControllerEm(ptr noundef nonnull align 8 dereferenceable(1248) %0, i64 noundef %.03)
  %i.ag = add nuw nsw i64 %.03, 1                 ; 2 uses
  %i.ah = load ptr, ptr %i.q, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !157
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter17WriteSceneLibraryEv(ptr noundef nonnull align 8 dereferenceable(1248) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.289, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !63, !noundef !158
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.a, label %bb.j

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  invoke void @_ZN6Assimp12MakeUniqueIdERKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EERKS6_SG_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %3, align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.p, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  switch i64 %i.r, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.n, align 1
  store i8 %i.t, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.u = load i64, ptr %i.q, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.n, ptr %i.j, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.aa, ptr %i.y, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.l, align 8
  store ptr %i.n, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %i.ad, align 8
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.k, ptr %3, align 8
  store i64 %i.ab, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %11 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.k, %bb.f ], [ %i.o, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %11, align 1
  %i.ag = load ptr, ptr %3, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.h
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.h, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.g, ptr %1, align 8
  %i.ap = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.i ; 0 uses

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.h
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.h
  %i.at = load i64, ptr %i.h, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.at

bb.i:                                             ; preds = %.invoke202, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit117, %bb.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, %_ZN6Assimp15ColladaExporter7PushTagEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.ak
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void @_ZN6Assimp15ColladaExporter15GetNodeUniqueIdB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef %i.az)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = load ptr, ptr %5, align 8               ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bg = icmp eq ptr %i.be, %i.bf                ; 2 uses
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32: ; preds = %bb.k
  br i1 %i.bg, label %bb.l, label %.thread.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i26: ; preds = %bb.k
  br i1 %i.bg, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i27

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.bi, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.be, align 1
  store i8 %i.bk, ptr %i.bb, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30: ; preds = %bb.n, %bb.m, %bb.l
  %i.bl = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.ba, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1
  %.pre.i31 = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

.thread.i33:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.be, ptr %i.ba, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load <2 x i64>, ptr %i.bq, align 8
  store <2 x i64> %i.br, ptr %i.bp, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i26
  %i.bs = load i64, ptr %i.bc, align 8
  store ptr %i.be, ptr %i.ba, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bv = load <2 x i64>, ptr %i.bt, align 8
  store <2 x i64> %i.bv, ptr %i.bu, align 8
  %.not.i28 = icmp eq ptr %i.bb, null
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i27
  store ptr %i.bb, ptr %5, align 8
  store i64 %i.bs, ptr %i.bf, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i27, %.thread.i33
  store ptr %i.bf, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30, %bb.o, %bb.p
  %12 = phi ptr [ %.pre.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30 ], [ %i.bb, %bb.o ], [ %i.bf, %bb.p ]
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bw, align 8
  store i8 0, ptr %12, align 1
  %i.bx = load ptr, ptr %5, align 8               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34
  %i.ca = load i64, ptr %i.by, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cc = load ptr, ptr %i.aw, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void @_ZN6Assimp15ColladaExporter11GetNodeNameB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %i.ce)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cf = load ptr, ptr %2, align 8               ; 6 uses
  %i.cg = icmp eq ptr %i.cf, %i.a
  %i.ch = load ptr, ptr %6, align 8               ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci                ; 2 uses
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44: ; preds = %bb.q
  br i1 %i.cj, label %bb.r, label %.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38: ; preds = %bb.q
  br i1 %i.cj, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  switch i64 %i.cl, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.ch, align 1
  store i8 %i.cn, ptr %i.cf, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ch, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42: ; preds = %bb.t, %bb.s, %bb.r
  %i.co = load i64, ptr %i.ck, align 8            ; 2 uses
  store i64 %i.co, ptr %i.b, align 8
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1
  %.pre.i43 = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

.thread.i45:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  store ptr %i.ch, ptr %2, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load <2 x i64>, ptr %i.cr, align 8
  store <2 x i64> %i.cs, ptr %i.b, align 8
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38
  %i.ct = load i64, ptr %i.a, align 8
  store ptr %i.ch, ptr %2, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load <2 x i64>, ptr %i.cu, align 8
  store <2 x i64> %i.cv, ptr %i.b, align 8
  %.not.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39
  store ptr %i.cf, ptr %6, align 8
  store i64 %i.ct, ptr %i.ci, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39, %.thread.i45
  store ptr %i.ci, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42, %bb.u, %bb.v
  %i.cw = phi ptr [ %.pre.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42 ], [ %i.cf, %bb.u ], [ %i.ci, %bb.v ]
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cx, align 8
  store i8 0, ptr %i.cw, align 1
  %i.cy = load ptr, ptr %6, align 8               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.y

bb.w:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.at

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.at

bb.y:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 8 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 10 uses
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dh, i64 noundef %i.dj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.y
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.290, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dr = load i64, ptr %i.di, align 8
  %i.ds = and i64 %i.dr, -2
  %i.dt = icmp eq i64 %i.ds, 4611686018427387902
  br i1 %i.dt, label %.invoke202, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit unwind label %bb.i ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dv = load ptr, ptr %i.dg, align 8
  %i.dw = load i64, ptr %i.di, align 8
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dv, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57 unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57: ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1096
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !159
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !159 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ec, ptr %10, align 8, !alias.scope !162
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.ed, align 8, !alias.scope !162
  store i8 0, ptr %i.ec, align 8, !alias.scope !162
  %i.ee = add i64 %i.eb, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ee)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57
  %i.ef = load i64, ptr %i.ed, align 8, !alias.scope !162
  %i.eg = add i64 %i.ef, -4611686018427387886
  %i.eh = icmp ult i64 %i.eg, 18
  br i1 %i.eh, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.z
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.291, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ej = load i64, ptr %i.ed, align 8, !alias.scope !162
  %i.ek = sub i64 4611686018427387903, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.eb
  br i1 %i.el, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont.i.i unwind label %bb.aa

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.em = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dz, i64 noundef %i.eb)
end_hunk_0
begin_hunk_1_@_ZN6Assimp15ColladaExporter15GetNodeUniqueIdB5cxx11EPK6aiNode:bb.a
  %i.ei = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.ei, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt3mapIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp ult ptr %i.ed, %i.ek
  br i1 %i.el, label %.critedge.i, label %bb.aa

.critedge.i:                                      ; preds = %bb.z, %_ZNSt3mapIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.y
  %.08.lcssa.i.i.i15.i = phi ptr [ %.19.i.i.i.i, %bb.z ], [ %.19.i.i.i.i, %_ZNSt3mapIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ %i.f, %bb.y ]
  %i.em = invoke ptr @_ZNSt8_Rb_treeIPKvSt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJS2_IPK6aiNodeS9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i15.i, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %bb.z, %.critedge.i
  %i.en = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dr
  br i1 %i.eo, label %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.ep = load i64, ptr %i.dr, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #27
  br label %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.af

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %9, align 8               ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cl
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ab
  %i.eu = load i64, ptr %i.cl, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62

bb.ad:                                            ; preds = %.critedge.i
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.dr
  br i1 %i.ez, label %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.ad
  %i.fa = load i64, ptr %i.dr, align 8
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #27
  br label %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62

_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %bb.ac
  %.pn25 = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ %i.ex, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.i
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit62 ], [ %i.br, %bb.i ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fc = load ptr, ptr %0, align 8               ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ab
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ae
  %i.fe = load i64, ptr %i.ab, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  resume { ptr, i32 } %.pn25.pn

bb.af:                                            ; preds = %_ZNSt4pairIPK6aiNodeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter11GetNodeNameB5cxx11EPK6aiNode(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %3, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6Assimp9XMLEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.f, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.x = load i64, ptr %i.f, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.u

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::set", align 8          ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %class.aiMatrix4x4t, align 4        ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %1, align 8                ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = zext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph59.i
  %.01958.i = phi i64 [ 0, %.lr.ph59.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01958.i
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.not60.i = icmp eq i32 %i.p, 0
  br i1 %.not60.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread33.i, %.lr.ph.i
  %.01857.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %.thread33.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01857.i
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread33.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.a, %i.w
  br i1 %i.x, label %_ZNK8aiStringeqERKS_.exit.i, label %.thread33.i

_ZNK8aiStringeqERKS_.exit.i:                      ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.y, i64 %i.k)
  %bcmp.i.fr.i = freeze i32 %bcmp.i.i
  %i.z = icmp eq i32 %bcmp.i.fr.i, 0
  br i1 %i.z, label %_ZNK7aiScene8findBoneERK8aiString.exit, label %.thread33.i

.thread33.i:                                      ; preds = %_ZNK8aiStringeqERKS_.exit.i, %bb.e, %bb.d
  %i.aa = add nuw nsw i64 %.01857.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.q
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.d, !llvm.loop !312

.loopexit.i:                                      ; preds = %.thread33.i, %.preheader.i, %bb.c
  %i.ab = add nuw nsw i64 %.01958.i, 1            ; 2 uses
  %exitcond63.not.i = icmp eq i64 %i.ab, %i.g
  br i1 %exitcond63.not.i, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %bb.c, !llvm.loop !313

_ZNK7aiScene8findBoneERK8aiString.exit:           ; preds = %_ZNK8aiStringeqERKS_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %.lr.ph59.i129

.lr.ph59.i129:                                    ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = zext i32 %i.ae to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i137, %.lr.ph59.i129
  %.01958.i130 = phi i64 [ 0, %.lr.ph59.i129 ], [ %i.ax, %.loopexit.i137 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01958.i130
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit.i137, label %.preheader.i131

.preheader.i131:                                  ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.not60.i132 = icmp eq i32 %i.al, 0
  br i1 %.not60.i132, label %.loopexit.i137, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.preheader.i131
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  %i.ao = load ptr, ptr %i.an, align 8
  br label %bb.g

bb.g:                                             ; preds = %.thread33.i135, %.lr.ph.i133
  %.01857.i134 = phi i64 [ 0, %.lr.ph.i133 ], [ %i.aw, %.thread33.i135 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.01857.i134
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread33.i135, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.ae, %i.as
  br i1 %i.at, label %_ZNK8aiStringeqERKS_.exit.i139, label %.thread33.i135

_ZNK8aiStringeqERKS_.exit.i139:                   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %bcmp.i.i140 = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %i.au, i64 %i.ag)
  %bcmp.i.fr.i141 = freeze i32 %bcmp.i.i140
  %i.av = icmp eq i32 %bcmp.i.fr.i141, 0
  br i1 %i.av, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %.thread33.i135

.thread33.i135:                                   ; preds = %_ZNK8aiStringeqERKS_.exit.i139, %bb.h, %bb.g
  %i.aw = add nuw nsw i64 %.01857.i134, 1         ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.aw, %i.am
  br i1 %exitcond.not.i136, label %.loopexit.i137, label %bb.g, !llvm.loop !312

.loopexit.i137:                                   ; preds = %.thread33.i135, %.preheader.i131, %bb.f
  %i.ax = add nuw nsw i64 %.01958.i130, 1         ; 2 uses
  %exitcond63.not.i138 = icmp eq i64 %i.ax, %i.g
  br i1 %exitcond63.not.i138, label %_ZNK7aiScene8findBoneERK8aiString.exit142, label %bb.f, !llvm.loop !313

_ZNK7aiScene8findBoneERK8aiString.exit142:        ; preds = %.loopexit.i, %.loopexit.i137, %_ZNK8aiStringeqERKS_.exit.i139, %_ZNK7aiScene8findBoneERK8aiString.exit, %bb.b, %bb.a
  %.096 = phi i1 [ false, %bb.a ], [ true, %.loopexit.i137 ], [ true, %_ZNK7aiScene8findBoneERK8aiString.exit ], [ false, %_ZNK8aiStringeqERKS_.exit.i139 ], [ false, %bb.b ], [ false, %.loopexit.i ]
  %.064 = phi i1 [ false, %bb.a ], [ true, %.loopexit.i137 ], [ true, %_ZNK7aiScene8findBoneERK8aiString.exit ], [ true, %_ZNK8aiStringeqERKS_.exit.i139 ], [ false, %bb.b ], [ false, %.loopexit.i ] ; 3 uses
  %.063 = phi ptr [ @.str.314, %bb.a ], [ @.str.315, %.loopexit.i137 ], [ @.str.315, %_ZNK7aiScene8findBoneERK8aiString.exit ], [ @.str.315, %_ZNK8aiStringeqERKS_.exit.i139 ], [ @.str.314, %bb.b ], [ @.str.314, %.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6Assimp15ColladaExporter15GetNodeUniqueIdB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp15ColladaExporter11GetNodeNameB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit142
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 34 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 33 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 38 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.316, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.096, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.l

bb.k:                                             ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit142
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i167, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155, %.critedge124, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit144, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.317, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit144 unwind label %bb.l ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit144: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.255, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br i1 %.064, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.bo = load ptr, ptr %3, align 8, !noalias !314
  %i.bp = load i64, ptr %i.bk, align 8, !noalias !314 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bq, ptr %6, align 8, !alias.scope !317
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.br, align 8, !alias.scope !317
  store i8 0, ptr %i.bq, align 8, !alias.scope !317
  %i.bs = add i64 %i.bp, 5
end_hunk_1
begin_hunk_2_@_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cp

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.v, %_ZNK8aiStringeqERKS_.exit
  %i.ja = add nuw nsw i64 %.068570, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ja, %i.ej
  br i1 %exitcond.not, label %.loopexit530, label %bb.v, !llvm.loop !323

.loopexit530:                                     ; preds = %_ZNK8aiStringeqERKS_.exit.thread, %_ZN6Assimp15ColladaExporter7PushTagEv.exit, %bb.x
  %i.jb = phi <16 x float> [ %i.iy, %bb.x ], [ %i.ee, %_ZN6Assimp15ColladaExporter7PushTagEv.exit ], [ %i.ee, %_ZNK8aiStringeqERKS_.exit.thread ] ; 16 uses
  %i.jc = load ptr, ptr %i.az, align 8
  %i.jd = load i64, ptr %i.bb, align 8
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.jc, i64 noundef %i.jd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178 unwind label %bb.z

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178: ; preds = %.loopexit530
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.321, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178
  %i.jg = extractelement <16 x float> %i.jb, i64 0
  %i.jh = fpext float %i.jg to double
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.jh)
          to label %_ZNSolsEf.exit unwind label %bb.z ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZNSolsEf.exit
  %i.jk = extractelement <16 x float> %i.jb, i64 4
  %i.jl = fpext float %i.jk to double
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, double noundef %i.jl)
          to label %_ZNSolsEf.exit185 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit185:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %_ZNSolsEf.exit185
  %i.jo = extractelement <16 x float> %i.jb, i64 8
  %i.jp = fpext float %i.jo to double
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, double noundef %i.jp)
          to label %_ZNSolsEf.exit189 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit189:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZNSolsEf.exit189
  %i.js = extractelement <16 x float> %i.jb, i64 12
  %i.jt = fpext float %i.js to double
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, double noundef %i.jt)
          to label %_ZNSolsEf.exit193 unwind label %bb.z

_ZNSolsEf.exit193:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZNSolsEf.exit193
  %i.jw = extractelement <16 x float> %i.jb, i64 1
  %i.jx = fpext float %i.jw to double
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.jx)
          to label %_ZNSolsEf.exit197 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit197:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZNSolsEf.exit197
  %i.ka = extractelement <16 x float> %i.jb, i64 5
  %i.kb = fpext float %i.ka to double
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, double noundef %i.kb)
          to label %_ZNSolsEf.exit201 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit201:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZNSolsEf.exit201
  %i.ke = extractelement <16 x float> %i.jb, i64 9
  %i.kf = fpext float %i.ke to double
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, double noundef %i.kf)
          to label %_ZNSolsEf.exit205 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit205:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207: ; preds = %_ZNSolsEf.exit205
  %i.ki = extractelement <16 x float> %i.jb, i64 13
  %i.kj = fpext float %i.ki to double
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, double noundef %i.kj)
          to label %_ZNSolsEf.exit209 unwind label %bb.z

_ZNSolsEf.exit209:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %_ZNSolsEf.exit209
  %i.km = extractelement <16 x float> %i.jb, i64 2
  %i.kn = fpext float %i.km to double
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.kn)
          to label %_ZNSolsEf.exit213 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit213:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZNSolsEf.exit213
  %i.kq = extractelement <16 x float> %i.jb, i64 6
  %i.kr = fpext float %i.kq to double
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, double noundef %i.kr)
          to label %_ZNSolsEf.exit217 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit217:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZNSolsEf.exit217
  %i.ku = extractelement <16 x float> %i.jb, i64 10
  %i.kv = fpext float %i.ku to double
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, double noundef %i.kv)
          to label %_ZNSolsEf.exit221 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit221:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %_ZNSolsEf.exit221
  %i.ky = extractelement <16 x float> %i.jb, i64 14
  %i.kz = fpext float %i.ky to double
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, double noundef %i.kz)
          to label %_ZNSolsEf.exit225 unwind label %bb.z

_ZNSolsEf.exit225:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZNSolsEf.exit225
  %i.lc = extractelement <16 x float> %i.jb, i64 3
  %i.ld = fpext float %i.lc to double
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.ld)
          to label %_ZNSolsEf.exit229 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit229:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231: ; preds = %_ZNSolsEf.exit229
  %i.lg = extractelement <16 x float> %i.jb, i64 7
  %i.lh = fpext float %i.lg to double
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.le, double noundef %i.lh)
          to label %_ZNSolsEf.exit233 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit233:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEf.exit233
  %i.lk = extractelement <16 x float> %i.jb, i64 11
  %i.ll = fpext float %i.lk to double
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.li, double noundef %i.ll)
          to label %_ZNSolsEf.exit237 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit237:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239: ; preds = %_ZNSolsEf.exit237
  %i.lo = extractelement <16 x float> %i.jb, i64 15
  %i.lp = fpext float %i.lo to double
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, double noundef %i.lp)
          to label %_ZNSolsEf.exit241 unwind label %bb.z ; 0 uses

_ZNSolsEf.exit241:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.322, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %_ZNSolsEf.exit241
  %i.ls = load ptr, ptr %i.dt, align 8
  %i.lt = load i64, ptr %i.dv, align 8
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ls, i64 noundef %i.lt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245 unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8            ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %.preheader, label %.lr.ph573

.lr.ph573:                                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.lz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.am

.preheader:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245
  %i.mn = load ptr, ptr %i.ef, align 8            ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 96
  %i.mp = load i32, ptr %i.mo, align 8            ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %.not582 = icmp eq i32 %i.mp, 0
  br i1 %.not582, label %.loopexit525, label %.lr.ph575

.lr.ph575:                                        ; preds = %.preheader
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = load i32, ptr %1, align 8               ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mv = zext i32 %i.mt to i64
  br label %bb.aa

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit435, %bb.co, %bb.ck, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %_ZNSolsEf.exit241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239, %_ZNSolsEf.exit237, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235, %_ZNSolsEf.exit233, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %_ZNSolsEf.exit229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %_ZNSolsEf.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %_ZNSolsEf.exit221, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZNSolsEf.exit217, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZNSolsEf.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211, %_ZNSolsEf.exit209, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207, %_ZNSolsEf.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZNSolsEf.exit201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199, %_ZNSolsEf.exit197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZNSolsEf.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZNSolsEf.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZNSolsEf.exit185, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178, %.loopexit530
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.aa:                                            ; preds = %.lr.ph575, %_ZNK8aiStringeqERKS_.exit248.thread
  %.067574 = phi i64 [ 0, %.lr.ph575 ], [ %i.oc, %_ZNK8aiStringeqERKS_.exit248.thread ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.067574
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4
  %i.na = icmp eq i32 %i.mz, %i.mt
  br i1 %i.na, label %_ZNK8aiStringeqERKS_.exit248, label %_ZNK8aiStringeqERKS_.exit248.thread

_ZNK8aiStringeqERKS_.exit248:                     ; preds = %bb.aa
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %bcmp.i247 = call i32 @bcmp(ptr nonnull %i.nb, ptr nonnull %i.mu, i64 %i.mv)
  %i.nc = icmp eq i32 %bcmp.i247, 0
  br i1 %i.nc, label %bb.ab, label %_ZNK8aiStringeqERKS_.exit248.thread

bb.ab:                                            ; preds = %_ZNK8aiStringeqERKS_.exit248
  %i.nd = load ptr, ptr %i.az, align 8
  %i.ne = load i64, ptr %i.bb, align 8
  %i.nf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.nd, i64 noundef %i.ne)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250 unwind label %bb.ad ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250: ; preds = %bb.ab
  %i.ng = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef nonnull @.str.323, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 4, i64 noundef %.067574)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.nh = load ptr, ptr %8, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef %i.nh, i64 noundef %i.nj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254 unwind label %bb.af ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254: ; preds = %bb.ac
  %i.nl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
  %i.nm = load ptr, ptr %i.dt, align 8
  %i.nn = load i64, ptr %i.dv, align 8
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef %i.nm, i64 noundef %i.nn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258 unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.np = load ptr, ptr %8, align 8               ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258
  %i.ns = load i64, ptr %i.nq, align 8
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre628 = load ptr, ptr %i.ef, align 8
  br label %.loopexit525

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250, %bb.ab
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254, %bb.ac
  %i.nw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nx = load ptr, ptr %8, align 8               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.af
  %i.oa = load i64, ptr %i.ny, align 8
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262, %bb.ae
  %.pn112 = phi { ptr, i32 } [ %i.nv, %bb.ae ], [ %i.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262 ], [ %i.nw, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cp

_ZNK8aiStringeqERKS_.exit248.thread:              ; preds = %bb.aa, %_ZNK8aiStringeqERKS_.exit248
  %i.oc = add nuw nsw i64 %.067574, 1             ; 2 uses
  %exitcond617.not = icmp eq i64 %i.oc, %i.mq
  br i1 %exitcond617.not, label %.loopexit525, label %bb.aa, !llvm.loop !324

.loopexit525:                                     ; preds = %_ZNK8aiStringeqERKS_.exit248.thread, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.od = phi ptr [ %.pre628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.mn, %.preheader ], [ %i.mn, %_ZNK8aiStringeqERKS_.exit248.thread ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 80
  %i.of = load i32, ptr %i.oe, align 8            ; 2 uses
  %i.og = zext i32 %i.of to i64
  %.not583 = icmp eq i32 %i.of, 0
  br i1 %.not583, label %.loopexit, label %.lr.ph577

.lr.ph577:                                        ; preds = %.loopexit525
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 88
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = load i32, ptr %1, align 8               ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = zext i32 %i.oj to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph577, %_ZNK8aiStringeqERKS_.exit267.thread
  %.066576 = phi i64 [ 0, %.lr.ph577 ], [ %i.pr, %_ZNK8aiStringeqERKS_.exit267.thread ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %.066576
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = icmp eq i32 %i.oo, %i.oj
  br i1 %i.op, label %_ZNK8aiStringeqERKS_.exit267, label %_ZNK8aiStringeqERKS_.exit267.thread

_ZNK8aiStringeqERKS_.exit267:                     ; preds = %bb.ag
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %bcmp.i266 = call i32 @bcmp(ptr nonnull %i.oq, ptr nonnull %i.ok, i64 %i.ol)
  %i.or = icmp eq i32 %bcmp.i266, 0
  br i1 %i.or, label %bb.ah, label %_ZNK8aiStringeqERKS_.exit267.thread

bb.ah:                                            ; preds = %_ZNK8aiStringeqERKS_.exit267
  %i.os = load ptr, ptr %i.az, align 8
  %i.ot = load i64, ptr %i.bb, align 8
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.os, i64 noundef %i.ot)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269 unwind label %bb.aj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269: ; preds = %bb.ah
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef nonnull @.str.324, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 3, i64 noundef %.066576)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.ow = load ptr, ptr %9, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef %i.ow, i64 noundef %i.oy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273 unwind label %bb.al ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273: ; preds = %bb.ai
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273
  %i.pb = load ptr, ptr %i.dt, align 8
  %i.pc = load i64, ptr %i.dv, align 8
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef %i.pb, i64 noundef %i.pc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277 unwind label %bb.al ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %i.pe = load ptr, ptr %9, align 8               ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277
  %i.ph = load i64, ptr %i.pf, align 8
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit
end_hunk_2
begin_hunk_3_@_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode:bb.a
  %.not.i.i = icmp eq i32 %i.sb, 0
  br i1 %.not.i.i, label %.critedge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i313
  %i.sd = load ptr, ptr %i.rt, align 8
  br label %.lr.ph59.i.i

_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i: ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sg, i64 1096
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.sf, null
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph59.i.i, !llvm.loop !326

.lr.ph59.i.i:                                     ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, %.lr.ph.split.i
  %i.sg = phi ptr [ %i.sa, %.lr.ph.split.i ], [ %i.sf, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ] ; 5 uses
  %.03847.i = phi ptr [ %i.ry, %.lr.ph.split.i ], [ %i.sg, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ]
  %i.sh = load i32, ptr %i.sg, align 4            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sj = zext i32 %i.sh to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i, %.lr.ph59.i.i
  %.01958.i.i = phi i64 [ 0, %.lr.ph59.i.i ], [ %i.ta, %.loopexit.i.i ] ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.01958.i.i
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 216
  %i.so = load i32, ptr %i.sn, align 8            ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %.not60.i.i = icmp eq i32 %i.so, 0
  br i1 %.not60.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 224
  %i.sr = load ptr, ptr %i.sq, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.thread33.i.i, %.lr.ph.i.i
  %.01857.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.sz, %.thread33.i.i ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.01857.i.i
  %i.st = load ptr, ptr %i.ss, align 8            ; 3 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %.thread33.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sv = load i32, ptr %i.st, align 4
  %i.sw = icmp eq i32 %i.sh, %i.sv
  br i1 %i.sw, label %_ZNK8aiStringeqERKS_.exit.i.i, label %.thread33.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.ay
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.si, ptr nonnull %i.sx, i64 %i.sj)
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.sy = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.sy, label %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, label %.thread33.i.i

.thread33.i.i:                                    ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.ay, %bb.ax
  %i.sz = add nuw nsw i64 %.01857.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.sz, %i.sp
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ax, !llvm.loop !312

.loopexit.i.i:                                    ; preds = %.thread33.i.i, %.preheader.i.i, %bb.aw
  %i.ta = add nuw nsw i64 %.01958.i.i, 1          ; 2 uses
  %exitcond63.not.i.i = icmp eq i64 %i.ta, %i.sc
  br i1 %exitcond63.not.i.i, label %.critedge.i, label %bb.aw, !llvm.loop !313

bb.az:                                            ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, %bb.au
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body316

.critedge.i:                                      ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, %.loopexit.i.i, %.lr.ph.i313, %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i
  %.03844.i = phi ptr [ %.03847.i, %.loopexit.i.i ], [ %i.ry, %.lr.ph.i313 ], [ %i.ry, %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i ], [ %i.sg, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ] ; 4 uses
  %.02022.i.i.i.i = load ptr, ptr %i.mb, align 8  ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %.critedge.i ] ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.td = load ptr, ptr %i.tc, align 8            ; 2 uses
  %i.te = icmp ult ptr %.03844.i, %i.td           ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.te, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !327

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.te, label %._crit_edge.thread.i.i.i.i, label %bb.bb

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %.critedge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ma, %.critedge.i ] ; 4 uses
  %i.tf = load ptr, ptr %i.mc, align 8
  %i.tg = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.tf
  br i1 %i.tg, label %select.unfold.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.th = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #29
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i.i.i.i
  %i.ti = phi ptr [ %.pre.i.i.i, %bb.ba ], [ %i.td, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.ba ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.tj = icmp ult ptr %i.ti, %.03844.i
  br i1 %i.tj, label %select.unfold.i.i.i, label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

select.unfold.i.i.i:                              ; preds = %bb.bb, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.bb ] ; 3 uses
  %i.tk = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ma
  br i1 %i.tk, label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %select.unfold.i.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = icmp ult ptr %.03844.i, %i.tm
  br label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i: ; preds = %bb.bc, %select.unfold.i.i.i
  %i.to = phi i1 [ %i.tn, %bb.bc ], [ true, %select.unfold.i.i.i ]
  %i.tp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc.i315 unwind label %bb.az ; 2 uses

.noexc.i315:                                      ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  store ptr %.03844.i, ptr %i.tq, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.to, ptr noundef nonnull %i.tp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ma) #25
  %i.tr = load i64, ptr %i.me, align 8
  %i.ts = add i64 %i.tr, 1
  store i64 %i.ts, ptr %i.me, align 8
  br label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i: ; preds = %.noexc.i315, %bb.bb, %bb.av
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.tt = load i32, ptr %i.qi, align 8
  %i.tu = zext i32 %i.tt to i64
  %i.tv = icmp samesign ult i64 %indvars.iv.next.i, %i.tu
  br i1 %i.tv, label %bb.au, label %.loopexit.i314, !llvm.loop !328

.loopexit.i314:                                   ; preds = %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i
  %.pr.pre.i = load i64, ptr %i.me, align 8       ; 2 uses
  %i.tw = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.tw, label %.thread.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i314
  %i.tx = load ptr, ptr %i.mc, align 8            ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = load ptr, ptr %i.ty, align 8            ; 2 uses
  %i.ua = icmp eq i64 %.pr.pre.i, 1
  %.not4051.i = icmp eq ptr %i.tx, %i.ma
  %or.cond.i = or i1 %i.ua, %.not4051.i
  br i1 %or.cond.i, label %.thread.i, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.bd, %bb.be
  %.sroa.032.052.i = phi ptr [ %i.uf, %bb.be ], [ %i.tx, %bb.bd ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.032.052.i, i64 32
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 1096
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  %.not28.i = icmp eq ptr %i.ue, null
  br i1 %.not28.i, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %.lr.ph53.i
  %i.uf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.052.i) #29 ; 2 uses
  %.not40.i = icmp eq ptr %i.uf, %i.ma
  br i1 %.not40.i, label %.thread.i, label %.lr.ph53.i

.thread.i:                                        ; preds = %bb.be, %.lr.ph53.i, %bb.bd, %.loopexit.i314, %bb.at
  %.4.i = phi ptr [ null, %.loopexit.i314 ], [ null, %bb.at ], [ %i.tz, %bb.bd ], [ %i.tz, %bb.be ], [ %i.ue, %.lr.ph53.i ] ; 2 uses
  %i.ug = load ptr, ptr %i.mb, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ug)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %.thread.i
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #28
  unreachable

bb.bg:                                            ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not104 = icmp eq ptr %.4.i, null
  br i1 %.not104, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN6Assimp15ColladaExporter15GetNodeUniqueIdB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull %.4.i)
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  %i.uj = load ptr, ptr %i.mf, align 8            ; 6 uses
  %i.uk = icmp eq ptr %i.uj, %i.mg
  %i.ul = load ptr, ptr %11, align 8              ; 5 uses
  %i.um = icmp eq ptr %i.ul, %i.mh                ; 2 uses
  br i1 %i.uk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bi
  br i1 %i.um, label %bb.bj, label %.thread.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bi
  br i1 %i.um, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.un = load i64, ptr %i.mi, align 8            ; 3 uses
  %i.uo = icmp ult i64 %i.un, 16
  call void @llvm.assume(i1 %i.uo)
  switch i64 %i.un, label %bb.bl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.up = load i8, ptr %i.ul, align 1
  store i8 %i.up, ptr %i.uj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uj, ptr align 1 %i.ul, i64 %i.un, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.uq = load i64, ptr %i.mi, align 8            ; 2 uses
  store i64 %i.uq, ptr %i.mj, align 8
  %i.ur = load ptr, ptr %i.mf, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uq
  store i8 0, ptr %i.us, align 1
  %.pre.i319 = load ptr, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i320:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ul, ptr %i.mf, align 8
  %i.ut = load <2 x i64>, ptr %i.mi, align 8
  store <2 x i64> %i.ut, ptr %i.mj, align 8
  br label %bb.bn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.uu = load i64, ptr %i.mg, align 8
  store ptr %i.ul, ptr %i.mf, align 8
  %i.uv = load <2 x i64>, ptr %i.mi, align 8
  store <2 x i64> %i.uv, ptr %i.mj, align 8
  %.not.i318 = icmp eq ptr %i.uj, null
  br i1 %.not.i318, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.uj, ptr %11, align 8
  store i64 %i.uu, ptr %i.mh, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i320
  store ptr %i.mh, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bm, %bb.bn
  %13 = phi ptr [ %.pre.i319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.uj, %bb.bm ], [ %i.mh, %bb.bn ]
  store i64 0, ptr %i.mi, align 8
  store i8 0, ptr %13, align 1
  %i.uw = load ptr, ptr %11, align 8              ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.mh
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.uy = load i64, ptr %i.mh, align 8
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bq

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325, %bb.bq
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.bp:                                            ; preds = %bb.bh
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body316

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %bb.bg
  %i.vc = load ptr, ptr %i.az, align 8
  %i.vd = load i64, ptr %i.bb, align 8
  %i.ve = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.vc, i64 noundef %i.vd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325 unwind label %bb.bo ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325: ; preds = %bb.bq
  %i.vf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ve, ptr noundef nonnull @.str.328, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325
  %i.vg = load ptr, ptr %i.mf, align 8
  %i.vh = load i64, ptr %i.mj, align 8
  %i.vi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ve, ptr noundef %i.vg, i64 noundef %i.vh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329 unwind label %bb.bo ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vi, ptr noundef nonnull @.str.329, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329
  %i.vk = load ptr, ptr %i.dt, align 8
  %i.vl = load i64, ptr %i.dv, align 8
  %i.vm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vi, ptr noundef %i.vk, i64 noundef %i.vl)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit297 unwind label %bb.bo ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit297:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294
  %i.vn = load ptr, ptr %i.az, align 8
  %i.vo = load i64, ptr %i.bb, align 8
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.vn, i64 noundef %i.vo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit335 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit335: ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit297
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, ptr noundef nonnull @.str.330, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit335
  %i.vr = load ptr, ptr %i.dt, align 8
  %i.vs = load i64, ptr %i.dv, align 8
  %i.vt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, ptr noundef %i.vr, i64 noundef %i.vs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337
  %i.vu = load i64, ptr %i.bb, align 8
  %i.vv = and i64 %i.vu, -2
  %i.vw = icmp eq i64 %i.vv, 4611686018427387902
  br i1 %i.vw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339
  %i.vx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit343 unwind label %.loopexit529 ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit343:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340
  %i.vy = load ptr, ptr %i.az, align 8
  %i.vz = load i64, ptr %i.bb, align 8
  %i.wa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.vy, i64 noundef %i.vz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit345 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit345: ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit343
  %i.wb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wa, ptr noundef nonnull @.str.75, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit345
  %i.wc = load ptr, ptr %i.dt, align 8
  %i.wd = load i64, ptr %i.dv, align 8
  %i.we = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wa, ptr noundef %i.wc, i64 noundef %i.wd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
  %i.wf = load i64, ptr %i.bb, align 8
  %i.wg = and i64 %i.wf, -2
  %i.wh = icmp eq i64 %i.wg, 4611686018427387902
  br i1 %i.wh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349
  %i.wi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit353 unwind label %.loopexit529 ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit353:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350
  %i.wj = load ptr, ptr %i.az, align 8
  %i.wk = load i64, ptr %i.bb, align 8
  %i.wl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.wj, i64 noundef %i.wk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355: ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit353
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef nonnull @.str.331, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.wn = getelementptr inbounds nuw i8, ptr %i.qb, i64 232
  %i.wo = load i32, ptr %i.wn, align 8
  %i.wp = zext i32 %i.wo to i64
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 1, i64 noundef %i.wp)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %i.wq = load ptr, ptr %12, align 8
  %i.wr = load i64, ptr %i.mk, align 8
  %i.ws = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef %i.wq, i64 noundef %i.wr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit359 unwind label %bb.bt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit359: ; preds = %bb.br
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef nonnull @.str.116, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361 unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit359
  %i.wu = load ptr, ptr %i.dt, align 8
  %i.wv = load i64, ptr %i.dv, align 8
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef %i.wu, i64 noundef %i.wv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit363 unwind label %bb.bt ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361
  %i.wx = load ptr, ptr %12, align 8              ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ml
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit363
  %i.wz = load i64, ptr %i.ml, align 8
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.xb = load i64, ptr %i.bb, align 8
  %i.xc = and i64 %i.xb, -2
  %i.xd = icmp eq i64 %i.xc, 4611686018427387902
  br i1 %i.xd, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.xe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit370.preheader unwind label %.loopexit529 ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit370.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367
  %i.xf = getelementptr inbounds nuw i8, ptr %i.qb, i64 112
  %i.xg = load ptr, ptr %i.xf, align 8
  %.not.i375 = icmp ne ptr %i.xg, null
  %i.xh = load i32, ptr %i.qf, align 4            ; 2 uses
  %i.xi = icmp ne i32 %i.xh, 0
  %i.xj = select i1 %.not.i375, i1 %i.xi, i1 false
  br i1 %i.xj, label %bb.bu, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit389

.invoke745:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit411, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit389.7
  %i.xk = phi i64 [ %i.adl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403 ], [ %i.acn, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit389.7 ], [ %i.acz, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 ], [ %i.adx, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit411 ]
  %i.xl = phi i64 [ %i.adk, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403 ], [ %i.acm, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit389.7 ], [ %i.acy, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit395 ], [ %i.adw, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit411 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.350, i64 noundef %i.xk, i64 noundef %i.xl) #26
          to label %.cont746 unwind label %.loopexit.split-lp

.cont746:                                         ; preds = %.invoke745
  unreachable

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit359, %bb.br
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xo = load ptr, ptr %12, align 8              ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.ml
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.bt
  %i.xq = load i64, ptr %i.ml, align 8
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372, %bb.bs
  %.pn107 = phi { ptr, i32 } [ %i.xm, %bb.bs ], [ %i.xn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372 ], [ %i.xn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body316

end_hunk_3
