inline.NumInlined: 657
inline.NumDeleted: 278
begin_hunk_0_@_ZN16OpenColorIO_v2_515LookParseResult5Token5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.em = load i64, ptr %i.ef, align 8, !tbaa !7  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !7
  %i.eo = load ptr, ptr %0, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store i8 0, ptr %i.ep, align 1, !tbaa !14
  %.pre.i57 = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

.thread.i59:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i58
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ed, ptr %0, align 8, !tbaa !13
  store i64 %i.ee, ptr %i.eq, align 8, !tbaa !7
  %i.er = load i64, ptr %i.dx, align 8, !tbaa !14
  store i64 %i.er, ptr %i.eh, align 8, !tbaa !14
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53
  %i.es = load i64, ptr %i.eh, align 8, !tbaa !14
  store ptr %i.ed, ptr %0, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ee, ptr %i.et, align 8, !tbaa !7
  %i.eu = load i64, ptr %i.dx, align 8, !tbaa !14
  store i64 %i.eu, ptr %i.eh, align 8, !tbaa !14
  %.not.i55 = icmp eq ptr %i.eg, null
  br i1 %.not.i55, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54
  store ptr %i.eg, ptr %4, align 8, !tbaa !13
  store i64 %i.es, ptr %i.dx, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54, %.thread.i59
  store ptr %i.dx, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56, %bb.am, %bb.an
  %i.ev = phi ptr [ %.pre.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i56 ], [ %i.eg, %bb.am ], [ %i.dx, %bb.an ]
  store i64 0, ptr %i.ef, align 8, !tbaa !7
  store i8 0, ptr %i.ev, align 1, !tbaa !14
  %i.ew = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.dx
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60
  %i.ey = load i64, ptr %i.dx, align 8, !tbaa !14
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.fa = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ci
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.fc = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ag
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ci
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ao
  %i.fh = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.aq

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit17.thread: ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit17.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.sink = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ 0, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit17.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink, ptr %i.fj, align 8, !tbaa !25
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn = phi { ptr, i32 } [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  switch i32 %i.b, label %bb.c [
    i32 0, label %.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515LookParseResult9serializeERSoRKSt6vectorINS0_5TokenESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.c
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit
  %i.d = phi ptr [ %i.p, %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit ], [ %i.c, %bb.a ]
  %i.e = phi i64 [ %i.r, %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit ], [ 0, %bb.a ]
  %.08 = phi i32 [ %i.q, %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq i32 %.08, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.g = phi ptr [ %.pre, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.e ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25
  switch i32 %i.j, label %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit [
    i32 0, label %.sink.split.i
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !7
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.l, i64 noundef %i.n) ; 0 uses
  %.pre10 = load ptr, ptr %1, align 8, !tbaa !31
  br label %_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit

_ZNK16OpenColorIO_v2_515LookParseResult5Token9serializeERSo.exit: ; preds = %bb.c, %.sink.split.i
  %i.p = phi ptr [ %i.g, %bb.c ], [ %.pre10, %.sink.split.i ] ; 2 uses
  %i.q = add i32 %.08, 1                          ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = icmp ugt i64 %i.w, %i.r
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !32
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 12 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"class.std::vector.8", align 8     ; 10 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::LookParseResult::Token", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #19
  br label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !36
  br label %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit

_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !15
  %i.w = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !7    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.y, ptr %i.b, align 8, !tbaa !16
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !13
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !16
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit
  %i.ac = phi ptr [ %i.aa, %.noexc.i ], [ %i.v, %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE5clearEv.exit ] ; 2 uses
  switch i64 %i.y, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !7
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.v
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !14
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !7
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.ab, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.v
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.f
  %i.as = load i64, ptr %i.v, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN11StringUtils5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 124)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %.not = icmp eq ptr %i.au, %i.av
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.l

._crit_edge79:                                    ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit
  %i.bf = ptrtoint ptr %i.cu to i64
  %.not4.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge79, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cs, %._crit_edge79 ] ; 3 uses
  %i.bg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.ct
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %._crit_edge79
  %.not.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bm = ptrtoint ptr %i.cs to i64
  %i.bn = sub i64 %i.bf, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bo = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i24 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28
  %.05.i.i.i26 = phi ptr [ %i.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28 ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i26, align 8, !tbaa !13 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i26, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i25
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28: ; preds = %.lr.ph.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i26, i64 32 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30, label %.lr.ph.i.i.i25, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28
  %.pr.i31 = load ptr, ptr %4, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bw = phi ptr [ %.pr.i31, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30 ], [ %i.bo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i33 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i33, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %.lr.ph78, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit
  %i.cd = phi ptr [ %i.av, %.lr.ph78 ], [ %i.fq, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ]
  %i.ce = phi ptr [ null, %.lr.ph78 ], [ %i.ds, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ] ; 2 uses
  %i.cf = phi ptr [ null, %.lr.ph78 ], [ %i.cs, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ] ; 3 uses
  %i.cg = phi i64 [ 0, %.lr.ph78 ], [ %i.fo, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ]
  %.01076 = phi i32 [ 0, %.lr.ph78 ], [ %i.fn, %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i36 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i38 = phi ptr [ %i.cm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cf, %bb.l ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i.i38, align 8, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i38, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i37
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i38, i64 32 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.cm, %i.ce
  br i1 %.not.i.i.i.i39, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i37, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.cf, ptr %i.aw, align 8, !tbaa !40
  %.pre = load ptr, ptr %4, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cn = phi ptr [ %i.cd, %bb.l ], [ %.pre, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cg
  invoke void @_ZN16OpenColorIO_v2_519SplitStringEnvStyleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.cp = load ptr, ptr %5, align 8, !tbaa !43    ; 5 uses
  %i.cq = load ptr, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.cs = load ptr, ptr %7, align 8, !tbaa !43    ; 11 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !43
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 6 uses
  store ptr %i.ct, ptr %i.aw, align 8, !tbaa !40
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !45 ; 2 uses
  store ptr %i.cu, ptr %i.ax, align 8, !tbaa !45
  %.not4.i.i.i.i.i = icmp eq ptr %i.cp, %i.cq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.cp, %bb.m ] ; 3 uses
  %i.cv = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !14
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, %i.cq
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.m
  %.not.i.i1.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.db = ptrtoint ptr %i.cr to i64
  %i.dc = ptrtoint ptr %i.cp to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dd) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.n
  %i.de = load ptr, ptr %7, align 8, !tbaa !43    ; 3 uses
  %i.df = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i40 = icmp eq ptr %i.de, %i.df
  br i1 %.not4.i.i.i40, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i48, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44
  %.05.i.i.i42 = phi ptr [ %i.dl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44 ], [ %i.de, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.dg = load ptr, ptr %.05.i.i.i42, align 8, !tbaa !13 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i42, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i41
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !14
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44: ; preds = %.lr.ph.i.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i42, i64 32 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.dl, %i.df
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i46, label %.lr.ph.i.i.i41, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i46: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i44
  %.pr.i47 = load ptr, ptr %7, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i48

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i48: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i46, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.dm = phi ptr [ %.pr.i47, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i46 ], [ %i.de, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i49 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i1.i49, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i48
  %i.dn = load ptr, ptr %i.az, align 8, !tbaa !45
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i48, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not80 = icmp eq ptr %i.ct, %i.cs
  br i1 %.not80, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51
  %i.dr = ptrtoint ptr %i.ct to i64
  %9 = ptrtoint ptr %i.cs to i64
  %10 = sub i64 %i.dr, %9
  %11 = ashr exact i64 %10, 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51
  %i.ds = phi ptr [ %i.cs, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit51 ], [ %i.ct, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit ]
  invoke void @_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.w unwind label %bb.y

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit
  %i.du = phi i64 [ %i.et, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit ], [ 0, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.es, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit ], [ 0, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %i.ba, ptr %8, align 8, !tbaa !15
  store i64 0, ptr %i.bb, align 8, !tbaa !7
  store i8 0, ptr %i.ba, align 8, !tbaa !14
  store i32 0, ptr %i.bc, align 8, !tbaa !25
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.du
  invoke void @_ZN16OpenColorIO_v2_515LookParseResult5Token5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %.lr.ph
  %i.dw = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 9 uses
  %i.dx = load ptr, ptr %i.be, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 3 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !15
  %i.dz = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.ea = load i64, ptr %i.bb, align 8, !tbaa !7  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !16
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.dw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.ec, ptr %i.dw, align 8, !tbaa !13
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.ed, ptr %i.dy, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.r
  %i.ee = phi ptr [ %i.ec, %.noexc ], [ %i.dy, %bb.r ] ; 2 uses
  switch i64 %i.ea, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZN16OpenColorIO_v2_515LookParseResult5TokenC2ERKS1_.exit.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !14
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !14
  br label %_ZN16OpenColorIO_v2_515LookParseResult5TokenC2ERKS1_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dz, i64 %i.ea, i1 false)
  br label %_ZN16OpenColorIO_v2_515LookParseResult5TokenC2ERKS1_.exit.i

_ZN16OpenColorIO_v2_515LookParseResult5TokenC2ERKS1_.exit.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !7
  %i.ei = load ptr, ptr %i.dw, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.el = load i32, ptr %i.bc, align 8, !tbaa !25
  store i32 %i.el, ptr %i.ek, align 8, !tbaa !25
  %i.em = load ptr, ptr %i.bd, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr %i.en, ptr %i.bd, align 8, !tbaa !28
  br label %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE9push_backERKS2_.exit

bb.u:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE9push_backERKS2_.exit unwind label %bb.v

_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN16OpenColorIO_v2_515LookParseResult5TokenC2ERKS1_.exit.i, %bb.u
  %i.eo = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ba
  br i1 %i.ep, label %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE9push_backERKS2_.exit
  %i.eq = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #19
  br label %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit

_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.es = add i32 %.075, 1                        ; 2 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = icmp ugt i64 %11, %i.et
  br i1 %i.eu, label %.lr.ph, label %._crit_edge, !llvm.loop !46

bb.v:                                             ; preds = %bb.u, %.noexc.i.i.i, %.lr.ph
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ba
  br i1 %i.ex, label %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.v
  %i.ey = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #19
  br label %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit55

_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit55: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge
  %i.fa = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %i.fb = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %bb.w, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i
  %.05.i.i.i58 = phi ptr [ %i.fh, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i ], [ %i.fa, %bb.w ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !13 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59: ; preds = %.lr.ph.i.i.i57
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #19
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 40 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.fh, %i.fb
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i57, !llvm.loop !37

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i
  %.pr.i61 = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.fi = phi ptr [ %.pr.i61, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fa, %bb.w ] ; 3 uses
  %.not.i.i1.i62 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i1.i62, label %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i
  %i.fj = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #19
  br label %_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.fn = add i32 %.01076, 1                      ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.fq = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 5
  %i.fv = icmp ugt i64 %i.fu, %i.fo
  br i1 %i.fv, label %bb.l, label %._crit_edge79, !llvm.loop !47

bb.y:                                             ; preds = %._crit_edge
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit55, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ev, %_ZN16OpenColorIO_v2_515LookParseResult5TokenD2Ev.exit55 ], [ %i.fw, %bb.y ], [ %i.dt, %bb.p ]
  call void @_ZNSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.cc, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fx = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35
  %i.gb = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ab
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !14
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %.sink167 = phi i64 [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.sink = phi ptr [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.gg = add i64 %.sink167, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split, %bb.aa, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %.pn.pn, %bb.aa ], [ %.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !15
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !7
  %i.m = load ptr, ptr %3, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.o = load ptr, ptr %3, align 8, !tbaa !13, !noalias !51 ; 3 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !7, !noalias !51 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.t = ashr i64 %i.p, 2                         ; 3 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = and i64 %i.p, -4
  %i.w = sub i64 %i.r, %i.v
  %i.x = mul nsw i64 %i.t, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.q, i64 %i.x
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i
  %i.y = phi ptr [ %i.am, %bb.j ], [ %i.q, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.z = phi i64 [ %i.as, %bb.j ], [ %i.r, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.024.i.i.i.i = phi i64 [ %i.aq, %bb.j ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14, !noalias !54
end_hunk_0
