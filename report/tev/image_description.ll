Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_description?download=true
inline.NumInlined: 3073
inline.NumDeleted: 1840
begin_hunk_0_@_ZN16ImageDescription14set_sensor_nucERKNSt3__16vectorI29SensorNonUniformityCorrectionNS0_9allocatorIS2_EEEE:bb.a
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
  %i.c = ptrtoint ptr %i.a to i64                 ; 4 uses
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
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endINS_11__wrap_iterIPKjEES8_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 4 uses
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
  %i.af = shl i64 %4, 2                           ; 2 uses
  %5 = add i64 %.pre-phi, 4
  %6 = sub i64 %5, %i.af
  %7 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %6)
  %i.ag = add i64 %7, %i.af
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
  %storemerge.i = phi ptr [ %i.bo, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 8 uses
  %.idx.i = shl nuw nsw i64 %4, 2                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %.idx.i, i1 false), !tbaa !26
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i, i64 %.0.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.bp
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit
  %storemerge.i63 = ptrtoaddr ptr %storemerge.i to i64
  %i.bt = ptrtoaddr ptr %i.bp to i64
  %i.bu = add i64 %i.b, -4
  %i.bv = sub i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %storemerge.i63, %i.c
  %diff.check64 = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check66, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.bz = mul i64 %n.vec68, -4                    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.e, i64 %i.bz
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.cc = mul i64 %index70, -4                    ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.bq, i64 %i.cc ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.e, i64 %i.cc ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep72, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep72, i64 -32
  %wide.load73 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !26, !noalias !494
  %wide.load74 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !26, !noalias !494
  %i.cf = getelementptr inbounds i8, ptr %next.gep71, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep71, i64 -32
  store <4 x i32> %wide.load73, ptr %i.cf, align 4, !tbaa !26, !noalias !494
  store <4 x i32> %wide.load74, ptr %i.cg, align 4, !tbaa !26, !noalias !494
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ch, label %middle.block76, label %vector.body69, !llvm.loop !492

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n77, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.preheader80:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block76
  %.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block76 ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block76 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i
  %i.ci = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ]
  %i.cj = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !26, !noalias !494
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 3 uses
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !26, !noalias !494
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.cj, %i.bp
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !493

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block76, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit ], [ %i.ca, %middle.block76 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.e, i64 %i.co, i1 false)
  br label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIjEENS_16reverse_iteratorIPjEES5_jvEET1_RT_T0_S9_S6_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.co
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !43
  store ptr %i.cp, ptr %i.i, align 8, !tbaa !43
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !43
  store ptr %i.br, ptr %i.g, align 8, !tbaa !43
  %.not.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i42, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKjEEPjEET0_T_S7_S6_.exit, label %bb.m
end_hunk_0
