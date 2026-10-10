Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_description?download=true
inline.NumInlined: 3073
inline.NumDeleted: 1840
begin_hunk_0_@_ZN16ImageDescription26set_sensor_bad_pixels_mapsERKNSt3__16vectorI18SensorBadPixelsMapNS0_9allocatorIS2_EEEE:bb.a

_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEEaSB8ne180100ERKS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16ImageDescription25add_sensor_bad_pixels_mapERK18SensorBadPixelsMap(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN18SensorBadPixelsMapC2ERKS_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.a, align 8, !tbaa !135
  resume { ptr, i32 } %i.f

_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !135
  br label %_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = tail call noundef ptr @_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit

_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit: ; preds = %_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.g, %_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i ], [ %i.i, %bb.d ]
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16ImageDescription14set_sensor_nucERKNSt3__16vectorI29SensorNonUniformityCorrectionNS0_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.not.i = icmp eq ptr %i.a, %1
  br i1 %.not.i, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEEaSB8ne180100ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !136    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 88
  tail call void @_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE18__assign_with_sizeB8ne180100IPS1_S6_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h)
  br label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEEaSB8ne180100ERKS4_.exit

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEEaSB8ne180100ERKS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16ImageDescription14add_sensor_nucERK29SensorNonUniformityCorrection(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN29SensorNonUniformityCorrectionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.a, align 8, !tbaa !137
  resume { ptr, i32 } %i.f

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !137
  br label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = tail call noundef ptr @_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_.exit: ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.g, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_.exit.i ], [ %i.i, %bb.d ]
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16ImageDescription19set_chroma_locationEh(ptr noundef nonnull align 8 dereferenceable(316) %0, i8 noundef zeroext %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.sroa.0.0.insert.ext = zext i8 %1 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16ImageDescription25set_omaf_image_projectionE26heif_omaf_image_projection(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %1, ptr %i.a, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI21BayerPatternPixelCmpdNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !45
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #23
  unreachable
}

declare void @_ZNSt3__16__sortIRNS_6__lessIjjEEPjEEvT0_S5_T_(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPKjEES8_EENS5_IPjEES8_T_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 12 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 4 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %3, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit: ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !40
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit
  %.pre48 = ptrtoint ptr %i.w to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.w, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %.pre-phi, %i.ab                ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 %i.ac ; 5 uses
  %i.ae = icmp ult ptr %i.ad, %i.j
  br i1 %i.ae, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.af = shl i64 %4, 2
  %i.ag = add i64 %i.af, %i.l
  %i.ah = xor i64 %.pre-phi, -1
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 76
  br i1 %min.iters.check, label %.lr.ph.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.al = shl i64 %4, 2
  %i.am = add i64 %i.al, %i.z
  %i.an = sub i64 %.pre-phi, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  br i1 %diff.check, label %.lr.ph.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.y, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !26
  %wide.load60 = load <4 x i32>, ptr %i.as, align 4, !tbaa !26
  %i.at = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %wide.load, ptr %next.gep59, align 4, !tbaa !26
  store <4 x i32> %wide.load60, ptr %i.at, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01924.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.sroa.6.023.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.y, %.critedge ], [ %i.aq, %middle.block ], [ %i.ba, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.av = ashr exact i64 %i.ac, 2
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ax, ptr align 4 %i.e, i64 %i.ac, i1 false)
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.01924.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.01924.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.sroa.6.023.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.sroa.6.023.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %i.ay = load i32, ptr %.01924.i, align 4, !tbaa !26
  store i32 %i.ay, ptr %.sroa.6.023.i, align 4, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.j
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !483

_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit: ; preds = %._crit_edge.i, %bb.f
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit
  %i.bc = ptrtoint ptr %.sroa.0.0 to i64
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.e, ptr align 4 %2, i64 %i.be, i1 false)
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.b
  %i.bf = sub i64 %i.l, %i.c
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = add i64 %i.bg, %4                       ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 4611686018427387903
  br i1 %i.bi, label %bb.i, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.bj = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.bj, 9223372036854775804
  %i.bk = ashr exact i64 %i.bj, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bh)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 4611686018427387903 ; 4 uses
  %i.bl = icmp eq i64 %.0.i, 0
  br i1 %i.bl, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit
  %i.bm = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.bm, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #23
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i: ; preds = %bb.j
  %i.bn = shl nuw i64 %.0.i, 2
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i
  %i.bp = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.a, %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %storemerge.i = phi ptr [ %i.bo, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 8 uses
  %.idx.i = shl nuw nsw i64 %4, 2                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %.idx.i, i1 false), !tbaa !26
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i, i64 %.0.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.bp
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit
  %i.bt = ptrtoaddr ptr %i.bp to i64
  %i.bu = add i64 %i.b, -4
  %i.bv = sub i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bv, 28
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.by = mul i64 %n.vec68, -4                    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bq, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.e, i64 %i.by
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.cb = mul i64 %index70, -4                    ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.e, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep72, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep72, i64 -32
  %wide.load73 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !26, !noalias !494
  %wide.load74 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !26, !noalias !494
  %i.ce = getelementptr inbounds i8, ptr %next.gep71, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep71, i64 -32
  store <4 x i32> %wide.load73, ptr %i.ce, align 4, !tbaa !26, !noalias !494
  store <4 x i32> %wide.load74, ptr %i.cf, align 4, !tbaa !26, !noalias !494
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.cg, label %middle.block76, label %vector.body69, !llvm.loop !492

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n77, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.preheader80:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block76
  %.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block76 ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block76 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !26, !noalias !494
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !26, !noalias !494
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.ci, %i.bp
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !493

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block76, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit ], [ %i.bz, %middle.block76 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.e, i64 %i.cn, i1 false)
  br label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cn
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !43
  store ptr %i.co, ptr %i.i, align 8, !tbaa !43
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !43
  store ptr %i.br, ptr %i.g, align 8, !tbaa !43
  %.not.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i42, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.bp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.cs) #24
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit

_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit: ; preds = %bb.m, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit, %_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit, %bb.g, %bb.a
  %.035 = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit ], [ %i.e, %bb.g ], [ %i.e, %_ZNSt3__16vectorIjNS_9allocatorIjEEE12__move_rangeEPjS4_S4_.exit ], [ %i.bq, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i ], [ %i.bq, %bb.m ]
  ret ptr %.035
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !496, !nonnull !125, !align !206 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.e, %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i, i64 -88 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i, i64 -24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119  ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !120
  %i.i = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.m) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 4 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.07.i.i, i64 -40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !120
  %i.q = getelementptr inbounds i8, ptr %.07.i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #24
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i: ; preds = %bb.d, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit.i.i.i.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i
  %i.w = getelementptr inbounds i8, ptr %.07.i.i, i64 -80
  store ptr %i.v, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds i8, ptr %.07.i.i, i64 -72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #24
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i: ; preds = %bb.e, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit2.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i, label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit, label %.lr.ph.i.i

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI29SensorNonUniformityCorrectionEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !496   ; 2 uses
  %.pre1 = load ptr, ptr %.pre, align 8, !tbaa !136
  br label %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit

_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit, %bb.b
  %i.ac = phi ptr [ %.pre1, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit ], [ %i.a, %bb.b ]
  store ptr %i.b, ptr %i.c, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !205
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ai) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI18SensorBadPixelsMapNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not6 = icmp eq ptr %1, %i.b
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorI18SensorBadPixelsMapEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit
  %.07 = phi ptr [ %i.c, %_ZNSt3__116allocator_traitsINS_9allocatorI18SensorBadPixelsMapEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit ], [ %i.b, %bb.a ] ; 12 uses
  %i.c = getelementptr inbounds i8, ptr %.07, i64 -104 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %.07, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN18SensorBadPixelsMap18BadPixelCoordinateENS_9allocatorIS2_EEED2B8ne180100Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !212
  %i.g = getelementptr inbounds i8, ptr %.07, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.k) #24
  br label %_ZNSt3__16vectorIN18SensorBadPixelsMap18BadPixelCoordinateENS_9allocatorIS2_EEED2B8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN18SensorBadPixelsMap18BadPixelCoordinateENS_9allocatorIS2_EEED2B8ne180100Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit.i.i.i, label %bb.c
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!293 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EEEE", !292, i64 0}
!294 = !{!"_ZTSNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEE", !291, i64 0, !291, i64 8, !293, i64 16}
!295 = !{!294, !291, i64 0}
!296 = distinct !{null, null, null}
!297 = !{!110, !110, i64 0}
!298 = !{!80, !77, i64 0}
!299 = !{!80, !77, i64 8}
!300 = !{!77, !77, i64 0}
!301 = !{!46, !15, i64 2}
!302 = !{!46, !15, i64 4}
!303 = distinct !{!303, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_clliJEvEENS_10shared_ptrIT_EEDpOT0_"}
!304 = distinct !{!304, !303, !"_ZNSt3__111make_sharedB8ne180100I8Box_clliJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!305 = distinct !{!305, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_clliNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!306 = distinct !{!306, !305, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_clliNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!307 = distinct !{!307, i1 false, !"_ZNSt3__110shared_ptrI8Box_clliE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!308 = distinct !{!308, !307, !"_ZNSt3__110shared_ptrI8Box_clliE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!309 = !{!304}
!310 = !{!306}
!311 = !{!306, !304}
!312 = !{!148, !147, i64 0}
!313 = !{!308, !306, !304}
!314 = distinct !{!314, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_mdcvJEvEENS_10shared_ptrIT_EEDpOT0_"}
!315 = distinct !{!315, !314, !"_ZNSt3__111make_sharedB8ne180100I8Box_mdcvJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!316 = distinct !{!316, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_mdcvNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!317 = distinct !{!317, !316, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_mdcvNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!318 = distinct !{!318, i1 false, !"_ZNSt3__110shared_ptrI8Box_mdcvE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!319 = distinct !{!319, !318, !"_ZNSt3__110shared_ptrI8Box_mdcvE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!320 = !{!315}
!321 = !{!317}
!322 = !{!317, !315}
!323 = !{!319, !317, !315}
!324 = distinct !{!324, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_amveJEvEENS_10shared_ptrIT_EEDpOT0_"}
!325 = distinct !{!325, !324, !"_ZNSt3__111make_sharedB8ne180100I8Box_amveJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!326 = distinct !{!326, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_amveNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!327 = distinct !{!327, !326, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_amveNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!328 = distinct !{!328, i1 false, !"_ZNSt3__110shared_ptrI8Box_amveE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!329 = distinct !{!329, !328, !"_ZNSt3__110shared_ptrI8Box_amveE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!330 = !{!325}
!331 = !{!327}
!332 = !{!327, !325}
!333 = !{!157, !156, i64 0}
!334 = !{!329, !327, !325}
!335 = distinct !{!335, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_ndwtJEvEENS_10shared_ptrIT_EEDpOT0_"}
!336 = distinct !{!336, !335, !"_ZNSt3__111make_sharedB8ne180100I8Box_ndwtJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!337 = distinct !{!337, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_ndwtNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!338 = distinct !{!338, !337, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_ndwtNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!339 = distinct !{!339, i1 false, !"_ZNSt3__110shared_ptrI8Box_ndwtE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!340 = distinct !{!340, !339, !"_ZNSt3__110shared_ptrI8Box_ndwtE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!341 = !{!336}
!342 = !{!338}
!343 = !{!338, !336}
!344 = !{!169, !168, i64 0}
!345 = !{!340, !338, !336}
!346 = distinct !{!346, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_paspJEvEENS_10shared_ptrIT_EEDpOT0_"}
!347 = distinct !{!347, !346, !"_ZNSt3__111make_sharedB8ne180100I8Box_paspJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!348 = distinct !{!348, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_paspNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!349 = distinct !{!349, !348, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_paspNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!350 = distinct !{!350, i1 false, !"_ZNSt3__110shared_ptrI8Box_paspE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!351 = distinct !{!351, !350, !"_ZNSt3__110shared_ptrI8Box_paspE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!352 = !{!347}
!353 = !{!349}
!354 = !{!349, !347}
!355 = !{!351, !349, !347}
!356 = distinct !{!356, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_colrJEvEENS_10shared_ptrIT_EEDpOT0_"}
!357 = distinct !{!357, !356, !"_ZNSt3__111make_sharedB8ne180100I8Box_colrJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!358 = distinct !{!358, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_colrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!359 = distinct !{!359, !358, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_colrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!360 = distinct !{!360, i1 false, !"_ZNSt3__110shared_ptrI8Box_colrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!361 = distinct !{!361, !360, !"_ZNSt3__110shared_ptrI8Box_colrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!362 = distinct !{!362, i1 false, !"_ZNSt3__111make_sharedB8ne180100I18color_profile_nclxJ12nclx_profileEvEENS_10shared_ptrIT_EEDpOT0_"}
!363 = distinct !{!363, !362, !"_ZNSt3__111make_sharedB8ne180100I18color_profile_nclxJ12nclx_profileEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!364 = distinct !{!364, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I18color_profile_nclxNS_9allocatorIS1_EEJ12nclx_profileEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!365 = distinct !{!365, !364, !"_ZNSt3__115allocate_sharedB8ne180100I18color_profile_nclxNS_9allocatorIS1_EEJ12nclx_profileEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!366 = !{!357}
!367 = !{!359}
!368 = !{!359, !357}
!369 = !{!361, !359, !357}
!370 = !{!365, !363}
!371 = distinct !{!371, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_colrJEvEENS_10shared_ptrIT_EEDpOT0_"}
!372 = distinct !{!372, !371, !"_ZNSt3__111make_sharedB8ne180100I8Box_colrJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!373 = distinct !{!373, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_colrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!374 = distinct !{!374, !373, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_colrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!375 = distinct !{!375, i1 false, !"_ZNSt3__110shared_ptrI8Box_colrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!376 = distinct !{!376, !375, !"_ZNSt3__110shared_ptrI8Box_colrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!377 = !{!372}
!378 = !{!374}
!379 = !{!374, !372}
!380 = !{!376, !374, !372}
!381 = distinct !{!381, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_prfrJEvEENS_10shared_ptrIT_EEDpOT0_"}
!382 = distinct !{!382, !381, !"_ZNSt3__111make_sharedB8ne180100I8Box_prfrJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!383 = distinct !{!383, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_prfrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!384 = distinct !{!384, !383, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_prfrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!385 = distinct !{!385, i1 false, !"_ZNSt3__110shared_ptrI8Box_prfrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!386 = distinct !{!386, !385, !"_ZNSt3__110shared_ptrI8Box_prfrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!387 = !{!382}
!388 = !{!384}
!389 = !{!384, !382}
!390 = !{!386, !384, !382}
!391 = !{!"_ZTS15heif_error_code", !11, i64 0}
!392 = !{!"_ZTS18heif_suberror_code", !11, i64 0}
!393 = !{!"_ZTS5Error", !391, i64 0, !392, i64 4, !76, i64 8}
!394 = !{!393, !391, i64 0}
!395 = distinct !{!395, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_paspJEvEENS_10shared_ptrIT_EEDpOT0_"}
!396 = distinct !{!396, !395, !"_ZNSt3__111make_sharedB8ne180100I8Box_paspJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!397 = distinct !{!397, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_paspNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!398 = distinct !{!398, !397, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_paspNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!399 = distinct !{!399, i1 false, !"_ZNSt3__110shared_ptrI8Box_paspE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!400 = distinct !{!400, !399, !"_ZNSt3__110shared_ptrI8Box_paspE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!401 = distinct !{ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!402 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_paspED2B8ne180100Ev, null, null}
!403 = distinct !{!403, i1 false, !"_ZNK16ImageDescription15create_clli_boxEv"}
!404 = distinct !{!404, !403, !"_ZNK16ImageDescription15create_clli_boxEv: argument 0"}
!405 = distinct !{!405, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_clliJEvEENS_10shared_ptrIT_EEDpOT0_"}
!406 = distinct !{!406, !405, !"_ZNSt3__111make_sharedB8ne180100I8Box_clliJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!407 = distinct !{!407, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_clliNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!408 = distinct !{!408, !407, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_clliNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!409 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_clliED2B8ne180100Ev, null, null}
!410 = distinct !{!410, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_mdcvJEvEENS_10shared_ptrIT_EEDpOT0_"}
!411 = distinct !{!411, !410, !"_ZNSt3__111make_sharedB8ne180100I8Box_mdcvJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!412 = distinct !{!412, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_mdcvNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!413 = distinct !{!413, !412, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_mdcvNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!414 = distinct !{!414, i1 false, !"_ZNSt3__110shared_ptrI8Box_mdcvE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!415 = distinct !{!415, !414, !"_ZNSt3__110shared_ptrI8Box_mdcvE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!416 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_mdcvED2B8ne180100Ev, null, null}
!417 = distinct !{!417, i1 false, !"_ZNK16ImageDescription15create_amve_boxEv"}
!418 = distinct !{!418, !417, !"_ZNK16ImageDescription15create_amve_boxEv: argument 0"}
!419 = distinct !{!419, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_amveJEvEENS_10shared_ptrIT_EEDpOT0_"}
!420 = distinct !{!420, !419, !"_ZNSt3__111make_sharedB8ne180100I8Box_amveJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!421 = distinct !{!421, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_amveNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!422 = distinct !{!422, !421, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_amveNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!423 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_amveED2B8ne180100Ev, null, null}
!424 = distinct !{!424, i1 false, !"_ZNK16ImageDescription15create_ndwt_boxEv"}
!425 = distinct !{!425, !424, !"_ZNK16ImageDescription15create_ndwt_boxEv: argument 0"}
!426 = distinct !{!426, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_ndwtJEvEENS_10shared_ptrIT_EEDpOT0_"}
!427 = distinct !{!427, !426, !"_ZNSt3__111make_sharedB8ne180100I8Box_ndwtJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!428 = distinct !{!428, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_ndwtNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!429 = distinct !{!429, !428, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_ndwtNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!430 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_ndwtED2B8ne180100Ev, null, null}
!431 = distinct !{!431, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_itaiJEvEENS_10shared_ptrIT_EEDpOT0_"}
!432 = distinct !{!432, !431, !"_ZNSt3__111make_sharedB8ne180100I8Box_itaiJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!433 = distinct !{!433, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_itaiNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!434 = distinct !{!434, !433, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_itaiNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!435 = distinct !{!435, i1 false, !"_ZNSt3__110shared_ptrI8Box_itaiE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!436 = distinct !{!436, !435, !"_ZNSt3__110shared_ptrI8Box_itaiE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!437 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_itaiED2B8ne180100Ev, null, null}
!438 = distinct !{!438, i1 false, !"_ZNSt3__111make_sharedB8ne180100I19Box_gimi_content_idJEvEENS_10shared_ptrIT_EEDpOT0_"}
!439 = distinct !{!439, !438, !"_ZNSt3__111make_sharedB8ne180100I19Box_gimi_content_idJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!440 = distinct !{!440, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I19Box_gimi_content_idNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!441 = distinct !{!441, !440, !"_ZNSt3__115allocate_sharedB8ne180100I19Box_gimi_content_idNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!442 = distinct !{!442, i1 false, !"_ZNSt3__110shared_ptrI19Box_gimi_content_idE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!443 = distinct !{!443, !442, !"_ZNSt3__110shared_ptrI19Box_gimi_content_idE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!444 = distinct !{ptr @_ZNSt3__110shared_ptrI19Box_gimi_content_idED2B8ne180100Ev, null, null}
!445 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_colrED2B8ne180100Ev, null, null}
!446 = distinct !{!446, i1 false, !"_ZNSt3__111make_sharedB8ne180100I8Box_prfrJEvEENS_10shared_ptrIT_EEDpOT0_"}
!447 = distinct !{!447, !446, !"_ZNSt3__111make_sharedB8ne180100I8Box_prfrJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!448 = distinct !{!448, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_prfrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!449 = distinct !{!449, !448, !"_ZNSt3__115allocate_sharedB8ne180100I8Box_prfrNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!450 = distinct !{!450, i1 false, !"_ZNSt3__110shared_ptrI8Box_prfrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!451 = distinct !{!451, !450, !"_ZNSt3__110shared_ptrI8Box_prfrE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!452 = !{!396}
!453 = !{!398}
!454 = !{!398, !396}
!455 = !{!400, !398, !396}
!456 = !{!194, !193, i64 0}
!457 = !{!408, !406, !404}
!458 = !{!404}
!459 = !{!411}
!460 = !{!413}
!461 = !{!413, !411}
!462 = !{!415, !413, !411}
!463 = !{!422, !420, !418}
!464 = !{!418}
!465 = !{!429, !427, !425}
!466 = !{!425}
!467 = !{!432}
!468 = !{!434}
!469 = !{!434, !432}
!470 = !{!199, !198, i64 0}
!471 = !{!436, !434, !432}
!472 = !{!439}
!473 = !{!441}
!474 = !{!441, !439}
!475 = !{!202, !201, i64 0}
!476 = !{!443, !441, !439}
!477 = !{!447}
!478 = !{!449}
!479 = !{!449, !447}
!480 = !{!451, !449, !447}
!481 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!482 = distinct !{!482, !27, !41, !42}
!483 = distinct !{!483, !27, !41}
!484 = distinct !{!484, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!485 = distinct !{!485, !484, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!486 = distinct !{!486, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!487 = distinct !{!487, !486, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!488 = distinct !{!488, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!489 = distinct !{!489, !488, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!490 = distinct !{!490, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!491 = distinct !{!491, !490, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!492 = distinct !{!492, !27, !41, !42}
!493 = distinct !{!493, !27, !42, !41}
!494 = !{!491, !489, !487, !485}
!495 = !{!"_ZTSNSt3__16vectorI29SensorNonUniformityCorrectionNS_9allocatorIS1_EEE16__destroy_vectorE", !110, i64 0}
!496 = !{!495, !110, i64 0}
!497 = distinct !{!497, !27}
!498 = distinct !{!498, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!499 = distinct !{!499, !498, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!500 = distinct !{!500, !27}
!501 = distinct !{!501, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!502 = distinct !{!502, !501, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!503 = !{!499}
!504 = !{!502}
!505 = distinct !{!505, !27}
!506 = !{!217, !216, i64 16}
!507 = !{!217, !216, i64 8}
!508 = distinct !{!508, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!509 = distinct !{!509, !508, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!510 = distinct !{!510, !27}
!511 = distinct !{!511, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!512 = distinct !{!512, !511, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!513 = !{!509}
!514 = !{!512}
!515 = distinct !{!515, !27}
!516 = !{!222, !221, i64 16}
!517 = !{!222, !221, i64 8}
!518 = distinct !{!518, !27}
!519 = distinct !{!519, !27}
!520 = distinct !{!520, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!521 = distinct !{!521, !520, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!522 = distinct !{!522, !27}
!523 = distinct !{!523, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!524 = distinct !{!524, !523, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!525 = !{!521}
!526 = !{!524}
!527 = distinct !{!527, !27}
!528 = !{!229, !228, i64 16}
!529 = !{!229, !228, i64 8}
!530 = distinct !{!530, !27}
!531 = distinct !{null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!532 = distinct !{!532, !27}
!533 = !{!214, !214, i64 0}
!534 = distinct !{!534, !27}
!535 = !{!220, !220, i64 0}
!536 = distinct !{!536, !27}
!537 = !{!227, !227, i64 0}
!538 = distinct !{!538, !27}
!539 = !{!31, !30, i64 24}
!540 = !{!31, !24, i64 8}
!541 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_clliNS_9allocatorIS1_EEED2Ev}
!542 = distinct !{null, null, null}
!543 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_mdcvNS_9allocatorIS1_EEED2Ev}
!544 = distinct !{null, null, null}
!545 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_amveNS_9allocatorIS1_EEED2Ev}
!546 = distinct !{null, null, null}
!547 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_ndwtNS_9allocatorIS1_EEED2Ev}
!548 = distinct !{null, null, null}
!549 = distinct !{ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!550 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_paspNS_9allocatorIS1_EEED2Ev}
!551 = distinct !{null, null, null}
!552 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_colrNS_9allocatorIS1_EEED2Ev}
!553 = distinct !{null, null, null}
!554 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEED2Ev}
!555 = distinct !{null, null, null}
!556 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_prfrNS_9allocatorIS1_EEED2Ev}
!557 = distinct !{null, null, null}
!558 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_itaiNS_9allocatorIS1_EEED2Ev}
!559 = distinct !{null, null, null}
!560 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI19Box_gimi_content_idNS_9allocatorIS1_EEED2Ev}
!561 = distinct !{null, null, null}
end_hunk_1
