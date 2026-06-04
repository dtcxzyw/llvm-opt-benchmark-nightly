inline.NumInlined: 116
inline.NumDeleted: 34
begin_hunk_0_@_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_:bb.a
bb.c:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.val18, i64 %.val17, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %.val = load i64, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not.i19 = icmp eq i64 %.val, 0
  br i1 %.not.i19, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val16 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.val17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %.val16, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.n) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.f

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit20: ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %3, align 8, !tbaa !15
  %i.f = add i64 %i.d, %i.c
  %i.g = add i64 %i.f, %i.e
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.val22 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val22, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.l, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %.val23, i64 %.val22, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.val22 ; 2 uses
  %.val20 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i24 = icmp eq i64 %.val20, 0
  br i1 %.not.i24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val21 = load ptr, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %.val21, i64 %.val20, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val = load i64, ptr %3, align 8, !tbaa !15    ; 2 uses
  %.not.i26 = icmp eq i64 %.val, 0
  br i1 %.not.i26, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val19 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.val20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %.val19, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.a, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.r) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.h

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit27: ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %3, align 8, !tbaa !15
  %i.f = load i64, ptr %4, align 8, !tbaa !15
  %i.g = add i64 %i.d, %i.c
  %i.h = add i64 %i.g, %i.e
  %i.i = add i64 %i.h, %i.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.val27 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val27, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %.val28, i64 %.val27, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.val27 ; 2 uses
  %.val25 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i29 = icmp eq i64 %.val25, 0
  br i1 %.not.i29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val26 = load ptr, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %.val26, i64 %.val25, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.val25 ; 2 uses
  %.val23 = load i64, ptr %3, align 8, !tbaa !15  ; 3 uses
  %.not.i31 = icmp eq i64 %.val23, 0
  br i1 %.not.i31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val24 = load ptr, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr readonly align 1 %.val24, i64 %.val23, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val = load i64, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i33 = icmp eq i64 %.val, 0
  br i1 %.not.i33, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val22 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.val23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %.val22, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.a, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.v) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.j

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit34: ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %.idx = shl i64 %2, 4                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not42 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %.idx, -16                       ; 2 uses
  %3 = lshr exact i64 %i.d, 4
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 112
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.mod.vf = and i64 %4, 2305843009213693944
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %.044 = phi i64 [ 0, %vector.ph ], [ %16, %vector.body ]
  %.02443 = phi ptr [ %1, %vector.ph ], [ %17, %vector.body ] ; 9 uses
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %.sroa.035.0.copyload = load i64, ptr %.02443, align 8, !tbaa !18
  %5 = add i64 %.sroa.035.0.copyload, %.044
  %6 = getelementptr inbounds nuw i8, ptr %.02443, i64 16
  %.sroa.035.0.copyload.1 = load i64, ptr %6, align 8, !tbaa !18
  %7 = add i64 %.sroa.035.0.copyload.1, %5
  %8 = getelementptr inbounds nuw i8, ptr %.02443, i64 32
  %.sroa.035.0.copyload.2 = load i64, ptr %8, align 8, !tbaa !18
  %9 = add i64 %.sroa.035.0.copyload.2, %7
  %10 = getelementptr inbounds nuw i8, ptr %.02443, i64 48
  %.sroa.035.0.copyload.3 = load i64, ptr %10, align 8, !tbaa !18
  %11 = add i64 %.sroa.035.0.copyload.3, %9
  %next.gep = getelementptr inbounds nuw i8, ptr %.02443, i64 64
  %.sroa.035.0.copyload.4 = load i64, ptr %next.gep, align 8, !tbaa !18
  %12 = add i64 %.sroa.035.0.copyload.4, %11
  %i.e = getelementptr inbounds nuw i8, ptr %.02443, i64 80
  %.sroa.035.0.copyload.5 = load i64, ptr %i.e, align 8, !tbaa !18
  %13 = add i64 %.sroa.035.0.copyload.5, %12
  %next.gep53 = getelementptr inbounds nuw i8, ptr %.02443, i64 96
  %.sroa.035.0.copyload.6 = load i64, ptr %next.gep53, align 8, !tbaa !18
  %14 = add i64 %.sroa.035.0.copyload.6, %13
  %15 = getelementptr inbounds nuw i8, ptr %.02443, i64 112
  %.sroa.035.0.copyload.7 = load i64, ptr %15, align 8, !tbaa !18
  %16 = add i64 %.sroa.035.0.copyload.7, %14      ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %.02443, i64 128 ; 2 uses
  %index.next = add i64 %index, 8                 ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.mod.vf
  br i1 %i.f, label %middle.block, label %vector.body

middle.block:                                     ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %middle.block, %.lr.ph.preheader
  %.044.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %16, %middle.block ]
  %.02443.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %17, %middle.block ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader56
  %.044.a = phi i64 [ %i.g, %.lr.ph ], [ %.044.ph, %.lr.ph.preheader56 ]
  %.02443.a = phi ptr [ %i.h, %.lr.ph ], [ %.02443.ph, %.lr.ph.preheader56 ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph ], [ 0, %.lr.ph.preheader56 ]
  %.sroa.035.0.copyload.a = load i64, ptr %.02443.a, align 8, !tbaa !18
  %i.g = add i64 %.sroa.035.0.copyload.a, %.044.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02443.a, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %middle.block, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %16, %middle.block ], [ %i.g, %.lr.ph ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.c

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %._crit_edge
  br i1 %.not42, label %._crit_edge49, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.j = add i64 %.idx, -16                       ; 2 uses
  %i.k = and i64 %i.j, 16
  %lcmp.mod.not.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph48.prol, label %.lr.ph48.prol.loopexit

.lr.ph48.prol:                                    ; preds = %.lr.ph48.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8, !tbaa !18 ; 3 uses
  %.not34.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not34.prol, label %.lr.ph48.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph48.prol
  %.sroa.4.0..023.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..023.sroa_idx.prol, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph48.prol.loopexit.unr-lcssa

.lr.ph48.prol.loopexit.unr-lcssa:                 ; preds = %bb.b, %.lr.ph48.prol
  %.1.prol = phi ptr [ %i.l, %bb.b ], [ %i.i, %.lr.ph48.prol ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph48.prol.loopexit

.lr.ph48.prol.loopexit:                           ; preds = %.lr.ph48.prol.loopexit.unr-lcssa, %.lr.ph48.preheader
  %.02347.unr = phi ptr [ %1, %.lr.ph48.preheader ], [ %i.m, %.lr.ph48.prol.loopexit.unr-lcssa ]
  %.02546.unr = phi ptr [ %i.i, %.lr.ph48.preheader ], [ %.1.prol, %.lr.ph48.prol.loopexit.unr-lcssa ]
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %._crit_edge49, label %.lr.ph48

bb.c:                                             ; preds = %._crit_edge
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.a, align 8, !tbaa !14
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.o

.lr.ph48:                                         ; preds = %.lr.ph48.prol.loopexit, %bb.f
  %.02347 = phi ptr [ %i.w, %bb.f ], [ %.02347.unr, %.lr.ph48.prol.loopexit ] ; 5 uses
  %.02546 = phi ptr [ %.1.1, %bb.f ], [ %.02546.unr, %.lr.ph48.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.02347, align 8, !tbaa !18 ; 3 uses
  %.not34 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not34, label %.lr.ph48.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph48
  %.sroa.4.0..023.sroa_idx = getelementptr inbounds nuw i8, ptr %.02347, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..023.sroa_idx, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02546, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.02546, i64 %.sroa.0.0.copyload
  br label %.lr.ph48.1

.lr.ph48.1:                                       ; preds = %bb.d, %.lr.ph48
  %.1 = phi ptr [ %i.t, %bb.d ], [ %.02546, %.lr.ph48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02347, i64 16
  %.sroa.0.0.copyload.1 = load i64, ptr %i.u, align 8, !tbaa !18 ; 3 uses
  %.not34.1 = icmp eq i64 %.sroa.0.0.copyload.1, 0
  br i1 %.not34.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48.1
  %.sroa.4.0..023.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.02347, i64 24
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..023.sroa_idx.1, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.sroa.4.0.copyload.1, i64 %.sroa.0.0.copyload.1, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 %.sroa.0.0.copyload.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph48.1
  %.1.1 = phi ptr [ %i.v, %bb.e ], [ %.1, %.lr.ph48.1 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.02347, i64 32 ; 2 uses
  %.not33.1 = icmp eq ptr %i.w, %i.c
  br i1 %.not33.1, label %._crit_edge49, label %.lr.ph48

._crit_edge49:                                    ; preds = %.lr.ph48.prol.loopexit, %bb.f, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051216strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS5_EE(ptr noundef %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %.idx, -16                       ; 4 uses
  %3 = lshr exact i64 %i.d, 4
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 112
  br i1 %min.iters.check, label %vector.ph, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, 2305843009213693944
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef 0, i8 noundef signext 0) ; 0 uses
  br label %._crit_edge44

.lr.ph43.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph43.preheader.unr-lcssa, %.lr.ph.preheader
  %.038.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.m, %.lr.ph43.preheader.unr-lcssa ]
  %.02337.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.n, %.lr.ph43.preheader.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ %6, %vector.body ], [ %.038.epil.init, %vector.ph ]
  %.02337.epil = phi ptr [ %next.gep47, %vector.body ], [ %.02337.epil.init, %vector.ph ] ; 2 uses
  %epil.iter = phi i64 [ %index.next, %vector.body ], [ 0, %vector.ph ]
  %.sroa.029.0.copyload.epil = load i64, ptr %.02337.epil, align 8, !tbaa !18
  %6 = add i64 %.sroa.029.0.copyload.epil, %index ; 2 uses
  %next.gep47 = getelementptr inbounds nuw i8, ptr %.02337.epil, i64 16
  %index.next = add i64 %epil.iter, 1             ; 2 uses
  %i.e = icmp eq i64 %index.next, %xtraiter
  br i1 %i.e, label %.lr.ph43.preheader, label %vector.body, !llvm.loop !22

.lr.ph43.preheader:                               ; preds = %vector.body, %.lr.ph43.preheader.unr-lcssa
  %.lcssa = phi i64 [ %i.m, %.lr.ph43.preheader.unr-lcssa ], [ %6, %vector.body ]
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %.lcssa, i8 noundef signext 0) ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b ; 4 uses
  %i.i = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph43.prol, label %.lr.ph43.prol.loopexit

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8, !tbaa !18 ; 3 uses
  %.not28.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not28.prol, label %.lr.ph43.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph43.prol
  %.sroa.4.0..024.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..024.sroa_idx.prol, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph43.prol.loopexit.unr-lcssa

.lr.ph43.prol.loopexit.unr-lcssa:                 ; preds = %bb.b, %.lr.ph43.prol
  %.1.prol = phi ptr [ %i.j, %bb.b ], [ %i.h, %.lr.ph43.prol ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph43.prol.loopexit

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol.loopexit.unr-lcssa, %.lr.ph43.preheader
  %.02441.unr = phi ptr [ %1, %.lr.ph43.preheader ], [ %i.k, %.lr.ph43.prol.loopexit.unr-lcssa ]
  %.02540.unr = phi ptr [ %i.h, %.lr.ph43.preheader ], [ %.1.prol, %.lr.ph43.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %._crit_edge44, label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.038 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.m, %.lr.ph ]
  %.02337 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.n, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.sroa.029.0.copyload = load i64, ptr %.02337, align 8, !tbaa !18
  %7 = add i64 %.sroa.029.0.copyload, %.038
  %8 = getelementptr inbounds nuw i8, ptr %.02337, i64 16
  %.sroa.029.0.copyload.1 = load i64, ptr %8, align 8, !tbaa !18
  %9 = add i64 %.sroa.029.0.copyload.1, %7
  %10 = getelementptr inbounds nuw i8, ptr %.02337, i64 32
  %.sroa.029.0.copyload.2 = load i64, ptr %10, align 8, !tbaa !18
  %11 = add i64 %.sroa.029.0.copyload.2, %9
  %12 = getelementptr inbounds nuw i8, ptr %.02337, i64 48
  %.sroa.029.0.copyload.3 = load i64, ptr %12, align 8, !tbaa !18
  %13 = add i64 %.sroa.029.0.copyload.3, %11
  %14 = getelementptr inbounds nuw i8, ptr %.02337, i64 64
  %.sroa.029.0.copyload.4 = load i64, ptr %14, align 8, !tbaa !18
  %15 = add i64 %.sroa.029.0.copyload.4, %13
  %16 = getelementptr inbounds nuw i8, ptr %.02337, i64 80
  %.sroa.029.0.copyload.5 = load i64, ptr %16, align 8, !tbaa !18
  %17 = add i64 %.sroa.029.0.copyload.5, %15
  %18 = getelementptr inbounds nuw i8, ptr %.02337, i64 96
  %.sroa.029.0.copyload.6 = load i64, ptr %18, align 8, !tbaa !18
  %19 = add i64 %.sroa.029.0.copyload.6, %17
  %20 = getelementptr inbounds nuw i8, ptr %.02337, i64 112
  %.sroa.029.0.copyload.a = load i64, ptr %20, align 8, !tbaa !18
  %i.m = add i64 %.sroa.029.0.copyload.a, %19     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02337, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %.not, label %.lr.ph43.preheader.unr-lcssa, label %.lr.ph

._crit_edge44:                                    ; preds = %.lr.ph43.prol.loopexit, %bb.e, %._crit_edge.thread
  ret void

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %bb.e
  %.02441 = phi ptr [ %i.r, %bb.e ], [ %.02441.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %.02540 = phi ptr [ %.1.1, %bb.e ], [ %.02540.unr, %.lr.ph43.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.02441, align 8, !tbaa !18 ; 3 uses
  %.not28 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not28, label %.lr.ph43.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph43
  %.sroa.4.0..024.sroa_idx = getelementptr inbounds nuw i8, ptr %.02441, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..024.sroa_idx, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02540, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.02540, i64 %.sroa.0.0.copyload
  br label %.lr.ph43.1

.lr.ph43.1:                                       ; preds = %bb.c, %.lr.ph43
  %.1 = phi ptr [ %i.o, %bb.c ], [ %.02540, %.lr.ph43 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02441, i64 16
  %.sroa.0.0.copyload.1 = load i64, ptr %i.p, align 8, !tbaa !18 ; 3 uses
  %.not28.1 = icmp eq i64 %.sroa.0.0.copyload.1, 0
  br i1 %.not28.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph43.1
  %.sroa.4.0..024.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.02441, i64 24
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..024.sroa_idx.1, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.sroa.4.0.copyload.1, i64 %.sroa.0.0.copyload.1, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 %.sroa.0.0.copyload.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph43.1
  %.1.1 = phi ptr [ %i.q, %bb.d ], [ %.1, %.lr.ph43.1 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.02441, i64 32 ; 2 uses
  %.not27.1 = icmp eq ptr %i.r, %i.c
  br i1 %.not27.1, label %._crit_edge44, label %.lr.ph43
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.c, i8 noundef signext 0) ; 0 uses
  %.val = load i64, ptr %1, align 8, !tbaa !15    ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr readonly align 1 %.val7, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.e, i8 noundef signext 0) ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b ; 2 uses
  %.val11 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val11, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %.val12, i64 %.val11, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not.i13 = icmp eq i64 %.val, 0
  br i1 %.not.i13, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val10 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.val11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %.val10, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit14: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = load i64, ptr %3, align 8, !tbaa !15
  %i.g = add i64 %i.e, %i.f
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 0) ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b ; 2 uses
  %.val16 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val16, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %.val17, i64 %.val16, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.val16 ; 2 uses
  %.val14 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i18 = icmp eq i64 %.val14, 0
  br i1 %.not.i18, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val15 = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %.val15, i64 %.val14, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  %.val = load i64, ptr %3, align 8, !tbaa !15    ; 2 uses
  %.not.i20 = icmp eq i64 %.val, 0
  br i1 %.not.i20, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val13 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.val14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %.val13, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit21: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit19, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !15
  %i.d = load i64, ptr %2, align 8, !tbaa !15
  %i.e = add i64 %i.d, %i.c
  %i.f = load i64, ptr %3, align 8, !tbaa !15
  %i.g = add i64 %i.e, %i.f
  %i.h = load i64, ptr %4, align 8, !tbaa !15
  %i.i = add i64 %i.g, %i.h
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, i64 noundef %i.i, i8 noundef signext 0) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 2 uses
  %.val21 = load i64, ptr %1, align 8, !tbaa !15  ; 3 uses
  %.not.i = icmp eq i64 %.val21, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %.val22, i64 %.val21, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.val21 ; 2 uses
  %.val19 = load i64, ptr %2, align 8, !tbaa !15  ; 3 uses
  %.not.i23 = icmp eq i64 %.val19, 0
  br i1 %.not.i23, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val20 = load ptr, ptr %i.o, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr readonly align 1 %.val20, i64 %.val19, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.val19 ; 2 uses
  %.val17 = load i64, ptr %3, align 8, !tbaa !15  ; 3 uses
  %.not.i25 = icmp eq i64 %.val17, 0
  br i1 %.not.i25, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val18 = load ptr, ptr %i.q, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %.val18, i64 %.val17, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit24, %bb.d
  %.val = load i64, ptr %4, align 8, !tbaa !15    ; 2 uses
  %.not.i27 = icmp eq i64 %.val, 0
  br i1 %.not.i27, label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit28, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val16 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.val17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %.val16, i64 %.val, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit28

_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit28: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_16AppendEPcRKNS0_8AlphaNumE.exit26, %bb.e
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !13, i64 0}
!16 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0, !9, i64 8}
!17 = !{!12, !9, i64 0}
!18 = !{!13, !13, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !20}
end_hunk_0
