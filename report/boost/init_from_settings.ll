Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/init_from_settings?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2065
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5boost3log11v2_mt_posix9anonymous17param_cast_to_intImcEET_PKcRKNSt7__cxx1112basic_stringIT0_St11char_traitsIS9_ESaIS9_EEE:bb.a
  %i.ba = add i64 %.sink163.i, -48
  %i.bb = add i64 %i.ba, %.sink162.i              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151109.i, i64 3 ; 2 uses
  %i.bd = add i64 %.1110.i, 3
  %i.be = icmp eq ptr %i.bc, %i.d
  br i1 %i.be, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit.thread17, label %.lr.ph112.i, !llvm.loop !762

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit: ; preds = %.lr.ph112.i, %bb.i, %bb.n, %bb.c
  %.19.ph = phi i64 [ 0, %bb.c ], [ %i.z, %bb.i ], [ %.186108.i, %.lr.ph112.i ], [ %i.an, %bb.n ]
  %.1.ph = phi ptr [ %.050105.i, %bb.c ], [ %i.aa, %bb.i ], [ %.151109.i, %.lr.ph112.i ], [ %i.ao, %bb.n ]
  %i.bf = icmp eq ptr %.1.ph, %i.d
  br i1 %i.bf, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit.thread17, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit.thread

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit.thread17: ; preds = %bb.b, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i, %bb.d, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit
  %.19.ph20 = phi i64 [ %.19.ph, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit ], [ %i.an, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i ], [ %i.m, %bb.d ], [ %i.bb, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.z, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i ], [ 0, %bb.b ]
  ret i64 %.19.ph20

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit.thread: ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.g, %bb.h, %bb.c, %bb.a, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rm.exit
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable
}

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend23set_time_based_rotationERKNS1_3aux14light_functionIFbvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost3log11v2_mt_posix9anonymous17param_cast_to_intIjcEET_PKcRKNSt7__cxx1112basic_stringIT0_St11char_traitsIS9_ESaIS9_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 6 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0106.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.050105.i = phi ptr [ %i.h, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = load i8, ptr %.050105.i, align 1, !tbaa !16 ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.050105.i, i64 1 ; 2 uses
  %i.i = add nuw i64 %.0106.i, 1
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %.lr.ph.i, !llvm.loop !763

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.j = add i8 %i.f, -48
  %or.cond.i.i = icmp ult i8 %i.j, 10
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.k = icmp eq i64 %.0106.i, 0
  br i1 %i.k, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit

bb.d:                                             ; preds = %.critedge.i
  %i.l = zext nneg i8 %i.f to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.050105.i, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.d, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i
  %.1110.i = phi i64 [ %i.bd, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %.0106.i, %bb.d ] ; 4 uses
  %.151109.i = phi ptr [ %i.bc, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.n, %bb.d ] ; 5 uses
  %.186108.i = phi i32 [ %i.bb, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.m, %bb.d ] ; 4 uses
  %i.p = load i8, ptr %.151109.i, align 1, !tbaa !16 ; 3 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i58.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i58.i, label %bb.e, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit

bb.e:                                             ; preds = %.lr.ph112.i
  %i.r = icmp ult i64 %.1110.i, 8
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i8 %i.p to i32
  %i.t = mul i32 %.186108.i, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = icmp ugt i32 %.186108.i, 429496729
  br i1 %i.u, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = mul nuw i32 %.186108.i, 10               ; 2 uses
  %i.w = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.x = sub nsw i32 47, %i.w
  %.not.i.i.i.i = icmp ugt i32 %i.v, %i.x
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i: ; preds = %bb.h, %bb.f
  %.sink159.i = phi i32 [ %i.t, %bb.f ], [ %i.v, %bb.h ]
  %.sink158.i = phi i32 [ %i.s, %bb.f ], [ %i.w, %bb.h ]
  %i.y = add i32 %.sink159.i, -48
  %i.z = add i32 %i.y, %.sink158.i                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.151109.i, i64 1 ; 3 uses
  %i.ab = add i64 %.1110.i, 1
  %i.ac = icmp eq ptr %i.aa, %i.d
  br i1 %i.ac, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %bb.i

bb.i:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !16  ; 3 uses
  %i.ae = add i8 %i.ad, -48
  %or.cond.i59.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i59.i, label %bb.j, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit

bb.j:                                             ; preds = %bb.i
  %i.af = icmp ult i64 %i.ab, 8
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = zext nneg i8 %i.ad to i32
  %i.ah = mul i32 %i.z, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp ugt i32 %i.z, 429496729
  br i1 %i.ai, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = mul nuw i32 %i.z, 10                    ; 2 uses
  %i.ak = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.al = sub nsw i32 47, %i.ak
  %.not.i.i.i60.i = icmp ugt i32 %i.aj, %i.al
  br i1 %.not.i.i.i60.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i: ; preds = %bb.m, %bb.k
  %.sink161.i = phi i32 [ %i.ah, %bb.k ], [ %i.aj, %bb.m ]
  %.sink160.i = phi i32 [ %i.ag, %bb.k ], [ %i.ak, %bb.m ]
  %i.am = add i32 %.sink161.i, -48
  %i.an = add i32 %i.am, %.sink160.i              ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.151109.i, i64 2 ; 3 uses
  %i.ap = add i64 %.1110.i, 2
  %i.aq = icmp eq ptr %i.ao, %i.d
  br i1 %i.aq, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %bb.n

bb.n:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !16  ; 3 uses
  %i.as = add i8 %i.ar, -48
  %or.cond.i66.i = icmp ult i8 %i.as, 10
  br i1 %or.cond.i66.i, label %bb.o, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit

bb.o:                                             ; preds = %bb.n
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = zext nneg i8 %i.ar to i32
  %i.av = mul i32 %i.an, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i

bb.q:                                             ; preds = %bb.o
  %i.aw = icmp ugt i32 %i.an, 429496729
  br i1 %i.aw, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = mul nuw i32 %i.an, 10                   ; 2 uses
  %i.ay = zext nneg i8 %i.ar to i32               ; 2 uses
  %i.az = sub nsw i32 47, %i.ay
  %.not.i.i.i67.i = icmp ugt i32 %i.ax, %i.az
  br i1 %.not.i.i.i67.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i: ; preds = %bb.r, %bb.p
  %.sink163.i = phi i32 [ %i.av, %bb.p ], [ %i.ax, %bb.r ]
  %.sink162.i = phi i32 [ %i.au, %bb.p ], [ %i.ay, %bb.r ]
  %i.ba = add i32 %.sink163.i, -48
  %i.bb = add i32 %i.ba, %.sink162.i              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151109.i, i64 3 ; 2 uses
  %i.bd = add i64 %.1110.i, 3
  %i.be = icmp eq ptr %i.bc, %i.d
  br i1 %i.be, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %.lr.ph112.i, !llvm.loop !764

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit: ; preds = %.lr.ph112.i, %bb.i, %bb.n, %bb.c
  %.19.ph = phi i32 [ 0, %bb.c ], [ %i.z, %bb.i ], [ %.186108.i, %.lr.ph112.i ], [ %i.an, %bb.n ]
  %.1.ph = phi ptr [ %.050105.i, %bb.c ], [ %i.aa, %bb.i ], [ %.151109.i, %.lr.ph112.i ], [ %i.ao, %bb.n ]
  %i.bf = icmp eq ptr %.1.ph, %i.d
  br i1 %i.bf, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread17: ; preds = %bb.b, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i, %bb.d, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit
  %.19.ph20 = phi i32 [ %.19.ph, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit ], [ %i.an, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i ], [ %i.m, %bb.d ], [ %i.bb, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.z, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i ], [ 0, %bb.b ]
  ret i32 %.19.ph20

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit.thread: ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.g, %bb.h, %bb.c, %bb.a, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKcEEbRT_RKS7_Rj.exit
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, i64 } @_ZN5boost3log11v2_mt_posix9anonymous33param_cast_to_rotation_time_pointIcEENS1_5sinks4file22rotation_at_time_pointEPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsISB_ESaISB_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::log::v2_mt_posix::sinks::file::rotation_at_time_point", align 8 ; 5 uses
  %3 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal", align 8 ; 5 uses
  %4 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal", align 8 ; 5 uses
  %5 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal", align 8 ; 5 uses
  %6 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 19 uses
  %i.e = load i8, ptr %i.a, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = tail call i32 @isalnum(i32 noundef %i.f) #34
  %.not274 = icmp eq i32 %i.g, 0
  br i1 %.not274, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @isalpha(i32 noundef %i.f) #34
  %.not275.not = icmp eq i32 %i.h, 0              ; 2 uses
  br i1 %.not275.not, label %.preheader, label %.preheader279

.preheader279:                                    ; preds = %bb.c, %.preheader279
  %.0232.pn = phi ptr [ %.0232, %.preheader279 ], [ %i.a, %bb.c ]
  %.0232 = getelementptr inbounds nuw i8, ptr %.0232.pn, i64 1 ; 15 uses
  %i.i = load i8, ptr %.0232, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @isalpha(i32 noundef %i.j) #34
  %.not277 = icmp eq i32 %i.k, 0
  br i1 %.not277, label %bb.d, label %.preheader279, !llvm.loop !765

bb.d:                                             ; preds = %.preheader279
  %i.l = ptrtoint ptr %.0232 to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i64 %i.n, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread [
    i64 6, label %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i
    i64 3, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
    i64 7, label %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36
    i64 9, label %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45
    i64 8, label %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54
  ]

_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i:               ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 1
  %i.p = xor i32 1684959053, %i.o
  %i.q = getelementptr i8, ptr %i.a, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 31073, %i.s
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit: ; preds = %bb.d
  %i.x = load i16, ptr %i.a, align 1
  %i.y = xor i16 28493, %i.x
  %i.z = getelementptr i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 110, %i.ab
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not9.i.i.i.i11.i = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i.i11.i, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39

_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36:             ; preds = %bb.d
  %i.ag = load i32, ptr %i.a, align 1
  %i.ah = xor i32 1936029012, %i.ag
  %i.ai = getelementptr i8, ptr %i.a, i64 3
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = xor i32 2036425843, %i.aj
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.an, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
  %i.ao = load i16, ptr %i.a, align 1
  %i.ap = xor i16 30036, %i.ao
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 101, %i.as
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not9.i.i.i.i11.i34 = icmp eq i32 %i.aw, 0
  br i1 %.not9.i.i.i.i11.i34, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48

_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45:             ; preds = %bb.d
  %i.ax = load i64, ptr %i.a, align 1
  %i.ay = xor i64 7017860998831039831, %i.ax
  %i.az = getelementptr i8, ptr %i.a, i64 8
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 121, %i.bb
  %i.bd = or i64 %i.ay, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not9.i.i.i.i.i47 = icmp eq i32 %i.bf, 0
  br i1 %.not9.i.i.i.i.i47, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39
  %i.bg = load i16, ptr %i.a, align 1
  %i.bh = xor i16 25943, %i.bg
  %i.bi = getelementptr i8, ptr %i.a, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = xor i16 100, %i.bk
  %i.bm = or i16 %i.bh, %i.bl
  %i.bn = icmp ne i16 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not9.i.i.i.i11.i43 = icmp eq i32 %i.bo, 0
  br i1 %.not9.i.i.i.i11.i43, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57

_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54:             ; preds = %bb.d
  %i.bp = load i64, ptr %i.a, align 1
  %i.bq = icmp ne i64 8746382398334527572, %i.bp
  %i.br = zext i1 %i.bq to i32
  %.not9.i.i.i.i.i56 = icmp eq i32 %i.br, 0
  br i1 %.not9.i.i.i.i.i56, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48
  %i.bs = load i16, ptr %i.a, align 1
  %i.bt = xor i16 26708, %i.bs
  %i.bu = getelementptr i8, ptr %i.a, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 117, %i.bw
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not9.i.i.i.i11.i52 = icmp eq i32 %i.ca, 0
  br i1 %.not9.i.i.i.i11.i52, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66

_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63:             ; preds = %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i
  %i.cb = load i32, ptr %i.a, align 1
  %i.cc = xor i32 1684632134, %i.cb
  %i.cd = getelementptr i8, ptr %i.a, i64 4
  %i.ce = load i16, ptr %i.cd, align 1
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 31073, %i.cf
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not9.i.i.i.i.i65 = icmp eq i32 %i.cj, 0
  br i1 %.not9.i.i.i.i.i65, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57
  %i.ck = load i16, ptr %i.a, align 1
  %i.cl = xor i16 29254, %i.ck
  %i.cm = getelementptr i8, ptr %i.a, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 105, %i.co
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not9.i.i.i.i11.i61 = icmp eq i32 %i.cs, 0
  br i1 %.not9.i.i.i.i11.i61, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread: ; preds = %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45, %bb.d, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr @.str.136, ptr %3, align 8, !tbaa !766, !alias.scope !768
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.ct, align 8, !tbaa !771, !alias.scope !768
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.137, ptr %4, align 8, !tbaa !766, !alias.scope !772
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.cu, align 8, !tbaa !771, !alias.scope !772
  %i.cv = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.cv, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @.str.138, ptr %5, align 8, !tbaa !766, !alias.scope !775
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.cw, align 8, !tbaa !771, !alias.scope !775
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.139, ptr %6, align 8, !tbaa !766, !alias.scope !778
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.cx, align 8, !tbaa !771, !alias.scope !778
  %i.cy = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %i.cy, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

.preheader:                                       ; preds = %bb.c, %.preheader
  %.1.idx = phi i64 [ %.1.add, %.preheader ], [ 1, %bb.c ] ; 8 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx
  %i.cz = load i8, ptr %.1.ptr, align 1, !tbaa !16 ; 3 uses
  %i.da = add i8 %i.cz, -48
  %isdigit.i = icmp ult i8 %i.da, 10
  %.1.add = add nuw nsw i64 %.1.idx, 1
  br i1 %isdigit.i, label %.preheader, label %bb.g, !llvm.loop !781

bb.g:                                             ; preds = %.preheader
  %.1.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx ; 5 uses
  %i.db = zext i8 %i.cz to i32
  %i.dc = tail call i32 @isspace(i32 noundef %i.db) #34
  %.not276 = icmp eq i32 %i.dc, 0
  br i1 %.not276, label %bb.m, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %scevgep.i.i.i = getelementptr i8, ptr %i.a, i64 %.1.idx ; 2 uses
  %i.dd = load i8, ptr %i.a, align 1, !tbaa !16
  %i.de = icmp eq i8 %i.dd, 48
  br i1 %i.de, label %bb.h, label %.critedge.i.i.i

bb.h:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.i = icmp eq i64 %.1.idx, 1
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dh = icmp eq i8 %i.dg, 48
  br i1 %i.dh, label %bb.i, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.1
  %.not.i.i.i.1 = icmp samesign eq i64 %.1.idx, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %spec.select = select i1 %.not.i.i.i.1, ptr %scevgep.i.i.i, ptr %i.di
  %spec.select298 = select i1 %.not.i.i.i.1, i64 %.1.idx, i64 2
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %.lr.ph.i.i.i.1, %bb.h, %.lr.ph.preheader.i.i.i
  %.047.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %bb.h ], [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.df, %.lr.ph.i.i.i.1 ], [ %spec.select, %bb.i ] ; 9 uses
  %.046.lcssa.i.i.i = phi i64 [ %.1.idx, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i ], [ 1, %.lr.ph.i.i.i.1 ], [ %spec.select298, %bb.i ] ; 3 uses
  %i.dj = icmp samesign ugt i64 %.046.lcssa.i.i.i, 1
  %i.dk = icmp eq ptr %.047.lcssa.i.i.i, %.1.ptr.le
  %or.cond6577.i.i.i = or i1 %i.dk, %i.dj
  br i1 %or.cond6577.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph81.preheader.i.i.i

.lr.ph81.preheader.i.i.i:                         ; preds = %.critedge.i.i.i
  %7 = icmp eq i64 %.046.lcssa.i.i.i, 1
  br i1 %7, label %.lr.ph81.preheader.split.us.i.i.i, label %.lr.ph81.preheader.i.i.i.a

.lr.ph81.preheader.split.us.i.i.i:                ; preds = %.lr.ph81.preheader.i.i.i
  %8 = load i8, ptr %.047.lcssa.i.i.i, align 1, !tbaa !16 ; 2 uses
  %9 = add i8 %8, -48
  %or.cond.i.us.i.i.i = icmp ult i8 %9, 10
  br i1 %or.cond.i.us.i.i.i, label %10, label %._crit_edge.i.i.i

10:                                               ; preds = %.lr.ph81.preheader.split.us.i.i.i
  %11 = zext nneg i8 %8 to i16
  %12 = add nsw i16 %11, -48
  %13 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i, i64 1
  br label %._crit_edge.i.i.i

.lr.ph81.preheader.i.i.i.a:                       ; preds = %.lr.ph81.preheader.i.i.i
  %scevgep108.i.i.i = getelementptr i8, ptr %.047.lcssa.i.i.i, i64 2
  %i.dl = load i8, ptr %.047.lcssa.i.i.i, align 1, !tbaa !16 ; 2 uses
  %i.dm = add i8 %i.dl, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.dm, 10
  br i1 %or.cond.i.i.i.i, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %.lr.ph81.preheader.i.i.i.a
  %i.dn = zext nneg i8 %i.dl to i16
  %i.do = add nsw i16 %i.dn, -48                  ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i, i64 1 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, %.1.ptr.le
  br i1 %i.dq, label %._crit_edge.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !16  ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %or.cond.i55.i.i.i = icmp ult i8 %i.ds, 10
  br i1 %or.cond.i55.i.i.i, label %bb.l, label %._crit_edge.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dt = zext nneg i8 %i.dr to i16
  %i.du = mul nuw nsw i16 %i.do, 10
  %i.dv = add nsw i16 %i.du, -48
  %i.dw = add nsw i16 %i.dv, %i.dt
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph81.preheader.i.i.i.a, %10, %.lr.ph81.preheader.split.us.i.i.i, %.critedge.i.i.i
  %.164.i.i.i = phi i16 [ 0, %.critedge.i.i.i ], [ 0, %.lr.ph81.preheader.i.i.i.a ], [ 0, %.lr.ph81.preheader.split.us.i.i.i ], [ %12, %10 ], [ %i.dw, %bb.l ], [ %i.do, %bb.k ], [ %i.do, %bb.j ]
  %.2.i.i.i = phi ptr [ %.047.lcssa.i.i.i, %.critedge.i.i.i ], [ %.047.lcssa.i.i.i, %.lr.ph81.preheader.i.i.i.a ], [ %.047.lcssa.i.i.i, %.lr.ph81.preheader.split.us.i.i.i ], [ %13, %10 ], [ %scevgep108.i.i.i, %bb.l ], [ %i.dp, %bb.k ], [ %.1.ptr.le, %bb.j ]
  %.1.i.i.i = phi i64 [ 0, %.critedge.i.i.i ], [ 0, %.lr.ph81.preheader.i.i.i.a ], [ 0, %.lr.ph81.preheader.split.us.i.i.i ], [ 1, %10 ], [ 2, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %i.dx = sub nsw i64 0, %.046.lcssa.i.i.i
  %.not54.i.i.not.i = icmp ne i64 %.1.i.i.i, %i.dx
  %.not = icmp eq ptr %.2.i.i.i, %.1.ptr.le
  %or.cond = select i1 %.not54.i.i.not.i, i1 %.not, i1 false
  br i1 %or.cond, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost6spirit2qi12extract_uintItLj10ELj1ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rt.exit

_ZN5boost6spirit2qi12extract_uintItLj10ELj1ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rt.exit: ; preds = %._crit_edge.i.i.i
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.dy = icmp eq i8 %i.cz, 58
  br i1 %i.dy, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit: ; preds = %._crit_edge.i.i.i, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i, %bb.m, %bb.e, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
  %.2 = phi ptr [ %.1.ptr.le, %._crit_edge.i.i.i ], [ %i.a, %bb.m ], [ %.0232, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i ], [ %.0232, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36 ], [ %.0232, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45 ], [ %.0232, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54 ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ %.0232, %bb.e ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ %.0232, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ %.0232, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63 ]
  %.sroa.0216.0 = phi i1 [ true, %._crit_edge.i.i.i ], [ false, %bb.m ], [ false, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i ], [ false, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36 ], [ false, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45 ], [ false, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ false, %bb.e ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ false, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63 ]
  %.sroa.7218.0 = phi i16 [ %.164.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.m ], [ 0, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i ], [ 0, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36 ], [ 0, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45 ], [ 0, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ 0, %bb.e ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ 0, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63 ] ; 4 uses
  %.sroa.25227.0 = phi i32 [ 0, %._crit_edge.i.i.i ], [ 0, %bb.m ], [ 1, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i ], [ 2, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i36 ], [ 3, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i45 ], [ 4, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i54 ], [ 6, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ 0, %bb.e ], [ 1, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ 2, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ 3, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ 4, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ 5, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIcEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ 5, %_ZSt5equalIPKcS1_EbT_S2_T0_.exit.i63 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit
  %.3 = phi ptr [ %.2, %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit ], [ %i.ec, %bb.o ] ; 9 uses
  %i.dz = load i8, ptr %.3, align 1, !tbaa !16
  %i.ea = zext i8 %i.dz to i32
  %i.eb = call i32 @isspace(i32 noundef %i.ea) #34
  %.not278 = icmp eq i32 %i.eb, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br i1 %.not278, label %bb.p, label %bb.o, !llvm.loop !782

bb.p:                                             ; preds = %bb.o
  %i.ed = icmp eq ptr %.3, %i.d
  br i1 %i.ed, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit.thread, label %.lr.ph.preheader.i.i.i70

.lr.ph.preheader.i.i.i70:                         ; preds = %bb.p
  %i.ee = ptrtoaddr ptr %i.d to i64               ; 3 uses
  %i.ef = ptrtoaddr ptr %.3 to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %scevgep.i.i.i71 = getelementptr i8, ptr %.3, i64 %i.eg ; 2 uses
  %i.eh = load i8, ptr %.3, align 1, !tbaa !16
  %i.ei = icmp eq i8 %i.eh, 48
  br i1 %i.ei, label %bb.q, label %.critedge.i.i.i74

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i70
  %i.ej = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %i.ej, %i.d
  br i1 %.not.i.i.i82, label %.critedge.i.i.i74, label %.lr.ph.i.i.i72.1

.lr.ph.i.i.i72.1:                                 ; preds = %bb.q
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.el = icmp eq i8 %i.ek, 48
  br i1 %i.el, label %bb.r, label %.critedge.i.i.i74

bb.r:                                             ; preds = %.lr.ph.i.i.i72.1
  %i.em = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.not.i.i.i82.1 = icmp eq ptr %i.em, %i.d       ; 2 uses
  %spec.select299 = select i1 %.not.i.i.i82.1, ptr %scevgep.i.i.i71, ptr %i.em
  %spec.select300 = select i1 %.not.i.i.i82.1, i64 %i.eg, i64 2
  br label %.critedge.i.i.i74

.critedge.i.i.i74:                                ; preds = %bb.r, %.lr.ph.i.i.i72.1, %bb.q, %.lr.ph.preheader.i.i.i70
  %.047.lcssa.i.i.i75 = phi ptr [ %scevgep.i.i.i71, %bb.q ], [ %.3, %.lr.ph.preheader.i.i.i70 ], [ %i.ej, %.lr.ph.i.i.i72.1 ], [ %spec.select299, %bb.r ] ; 9 uses
  %.046.lcssa.i.i.i76 = phi i64 [ %i.eg, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i70 ], [ 1, %.lr.ph.i.i.i72.1 ], [ %spec.select300, %bb.r ]
  %14 = freeze i64 %.046.lcssa.i.i.i76            ; 3 uses
  %i.en = icmp ugt i64 %14, 1
  %i.eo = icmp eq ptr %.047.lcssa.i.i.i75, %i.d
  %or.cond6476.i.i.i = or i1 %i.eo, %i.en
  br i1 %or.cond6476.i.i.i, label %._crit_edge.i.i.i78, label %.lr.ph80.preheader.i.i.i

.lr.ph80.preheader.i.i.i:                         ; preds = %.critedge.i.i.i74
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %.lr.ph80.preheader.i.i.i.a, label %bb.s

.lr.ph80.preheader.i.i.i.a:                       ; preds = %.lr.ph80.preheader.i.i.i
  %i.ep = load i8, ptr %.047.lcssa.i.i.i75, align 1, !tbaa !16
  %i.eq = add i8 %i.ep, -48                       ; 2 uses
  %or.cond.i.i.i.i77.a = icmp ult i8 %i.eq, 10
  br i1 %or.cond.i.i.i.i77.a, label %16, label %._crit_edge.i.i.i78

16:                                               ; preds = %.lr.ph80.preheader.i.i.i.a
  %17 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i75, i64 1
  br label %._crit_edge.i.i.i78

bb.s:                                             ; preds = %.lr.ph80.preheader.i.i.i
  %i.er = getelementptr i8, ptr %.047.lcssa.i.i.i75, i64 2
  %18 = load i8, ptr %.047.lcssa.i.i.i75, align 1, !tbaa !16
  %19 = add i8 %18, -48                           ; 4 uses
  %or.cond.i.i.i.i77 = icmp ult i8 %19, 10
  br i1 %or.cond.i.i.i.i77, label %20, label %._crit_edge.i.i.i78

20:                                               ; preds = %bb.s
  %21 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i75, i64 1 ; 3 uses
  %22 = icmp eq ptr %21, %i.d
  br i1 %22, label %._crit_edge.i.i.i78, label %bb.t

bb.t:                                             ; preds = %20
  %i.es = load i8, ptr %21, align 1, !tbaa !16
  %i.et = add i8 %i.es, -48                       ; 2 uses
  %or.cond.i54.i.i.i = icmp ult i8 %i.et, 10
  br i1 %or.cond.i54.i.i.i, label %bb.u, label %._crit_edge.i.i.i78

bb.u:                                             ; preds = %bb.t
  %i.eu = mul nuw nsw i8 %19, 10
  %i.ev = add nuw nsw i8 %i.et, %i.eu
  br label %._crit_edge.i.i.i78

._crit_edge.i.i.i78:                              ; preds = %bb.u, %bb.t, %20, %bb.s, %16, %.lr.ph80.preheader.i.i.i.a, %.critedge.i.i.i74
  %.163.i.i.i = phi i8 [ 0, %.critedge.i.i.i74 ], [ 0, %bb.s ], [ 0, %.lr.ph80.preheader.i.i.i.a ], [ %i.eq, %16 ], [ %i.ev, %bb.u ], [ %19, %bb.t ], [ %19, %20 ] ; 3 uses
  %.2.i.i.i79 = phi ptr [ %.047.lcssa.i.i.i75, %.critedge.i.i.i74 ], [ %.047.lcssa.i.i.i75, %bb.s ], [ %.047.lcssa.i.i.i75, %.lr.ph80.preheader.i.i.i.a ], [ %17, %16 ], [ %i.er, %bb.u ], [ %21, %bb.t ], [ %i.d, %20 ] ; 4 uses
  %.1.i.i.i80 = phi i64 [ 0, %.critedge.i.i.i74 ], [ 0, %bb.s ], [ 0, %.lr.ph80.preheader.i.i.i.a ], [ 1, %16 ], [ 2, %bb.u ], [ 1, %bb.t ], [ 1, %20 ]
  %i.ew = add i64 %.1.i.i.i80, %14
  %i.ex = icmp ugt i64 %i.ew, 1
  br i1 %i.ex, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit: ; preds = %._crit_edge.i.i.i78
  %i.ey = load i8, ptr %.2.i.i.i79, align 1, !tbaa !16
  %.not29 = icmp eq i8 %i.ey, 58
  br i1 %.not29, label %bb.v, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit.thread: ; preds = %._crit_edge.i.i.i78, %bb.p, %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.v:                                             ; preds = %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %.2.i.i.i79, i64 1 ; 5 uses
  %i.fa = icmp eq ptr %i.ez, %i.d
  br i1 %i.fa, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104.thread, label %.lr.ph.preheader.i.i.i83

.lr.ph.preheader.i.i.i83:                         ; preds = %bb.v
  %i.fb = ptrtoaddr ptr %i.ez to i64
  %i.fc = sub i64 %i.ee, %i.fb                    ; 3 uses
  %scevgep.i.i.i84 = getelementptr i8, ptr %i.ez, i64 %i.fc ; 2 uses
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !16
  %i.fe = icmp eq i8 %i.fd, 48
  br i1 %i.fe, label %bb.w, label %.critedge.i.i.i89

bb.w:                                             ; preds = %.lr.ph.preheader.i.i.i83
  %i.ff = getelementptr inbounds nuw i8, ptr %.2.i.i.i79, i64 2 ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %i.ff, %i.d
  br i1 %.not.i.i.i103, label %.critedge.i.i.i89, label %.lr.ph.i.i.i85.1

.lr.ph.i.i.i85.1:                                 ; preds = %bb.w
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = icmp eq i8 %i.fg, 48
  br i1 %i.fh, label %bb.x, label %.critedge.i.i.i89

bb.x:                                             ; preds = %.lr.ph.i.i.i85.1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2.i.i.i79, i64 3 ; 2 uses
  %.not.i.i.i103.1 = icmp eq ptr %i.fi, %i.d      ; 2 uses
  %spec.select301 = select i1 %.not.i.i.i103.1, ptr %scevgep.i.i.i84, ptr %i.fi
  %spec.select302 = select i1 %.not.i.i.i103.1, i64 %i.fc, i64 2
  br label %.critedge.i.i.i89

.critedge.i.i.i89:                                ; preds = %bb.x, %.lr.ph.i.i.i85.1, %bb.w, %.lr.ph.preheader.i.i.i83
  %.047.lcssa.i.i.i90 = phi ptr [ %scevgep.i.i.i84, %bb.w ], [ %i.ez, %.lr.ph.preheader.i.i.i83 ], [ %i.ff, %.lr.ph.i.i.i85.1 ], [ %spec.select301, %bb.x ] ; 9 uses
  %.046.lcssa.i.i.i91 = phi i64 [ %i.fc, %bb.w ], [ 0, %.lr.ph.preheader.i.i.i83 ], [ 1, %.lr.ph.i.i.i85.1 ], [ %spec.select302, %bb.x ]
  %23 = freeze i64 %.046.lcssa.i.i.i91            ; 3 uses
  %i.fj = icmp ugt i64 %23, 1
  %i.fk = icmp eq ptr %.047.lcssa.i.i.i90, %i.d
  %or.cond6476.i.i.i92 = or i1 %i.fk, %i.fj
  br i1 %or.cond6476.i.i.i92, label %._crit_edge.i.i.i95, label %.lr.ph80.preheader.i.i.i94

.lr.ph80.preheader.i.i.i94:                       ; preds = %.critedge.i.i.i89
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %.lr.ph80.preheader.i.i.i93, label %bb.y

.lr.ph80.preheader.i.i.i93:                       ; preds = %.lr.ph80.preheader.i.i.i94
  %i.fl = load i8, ptr %.047.lcssa.i.i.i90, align 1, !tbaa !16
  %i.fm = add i8 %i.fl, -48                       ; 2 uses
  %or.cond.i.i.i.i94 = icmp ult i8 %i.fm, 10
  br i1 %or.cond.i.i.i.i94, label %25, label %._crit_edge.i.i.i95

25:                                               ; preds = %.lr.ph80.preheader.i.i.i93
  %26 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i90, i64 1
  br label %._crit_edge.i.i.i95

bb.y:                                             ; preds = %.lr.ph80.preheader.i.i.i94
  %i.fn = getelementptr i8, ptr %.047.lcssa.i.i.i90, i64 2
  %27 = load i8, ptr %.047.lcssa.i.i.i90, align 1, !tbaa !16
  %28 = add i8 %27, -48                           ; 4 uses
  %or.cond.i.i.i.i97 = icmp ult i8 %28, 10
  br i1 %or.cond.i.i.i.i97, label %29, label %._crit_edge.i.i.i95

29:                                               ; preds = %bb.y
  %30 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i90, i64 1 ; 4 uses
  %31 = icmp eq ptr %30, %i.d
  br i1 %31, label %._crit_edge.i.i.i95, label %bb.z

bb.z:                                             ; preds = %29
  %i.fo = load i8, ptr %30, align 1, !tbaa !16
  %i.fp = add i8 %i.fo, -48                       ; 2 uses
  %or.cond.i54.i.i.i102 = icmp ult i8 %i.fp, 10
  br i1 %or.cond.i54.i.i.i102, label %bb.aa, label %._crit_edge.i.i.i95

bb.aa:                                            ; preds = %bb.z
  %i.fq = mul nuw nsw i8 %28, 10
  %i.fr = add nuw nsw i8 %i.fp, %i.fq
  br label %._crit_edge.i.i.i95

._crit_edge.i.i.i95:                              ; preds = %bb.aa, %bb.z, %29, %bb.y, %25, %.lr.ph80.preheader.i.i.i93, %.critedge.i.i.i89
  %.163.i.i.i99 = phi i8 [ 0, %.critedge.i.i.i89 ], [ 0, %bb.y ], [ 0, %.lr.ph80.preheader.i.i.i93 ], [ %i.fm, %25 ], [ %i.fr, %bb.aa ], [ %28, %bb.z ], [ %28, %29 ] ; 3 uses
  %.2.i.i.i100 = phi ptr [ %.047.lcssa.i.i.i90, %.critedge.i.i.i89 ], [ %.047.lcssa.i.i.i90, %bb.y ], [ %.047.lcssa.i.i.i90, %.lr.ph80.preheader.i.i.i93 ], [ %26, %25 ], [ %i.fn, %bb.aa ], [ %30, %bb.z ], [ %30, %29 ] ; 4 uses
  %.1.i.i.i101 = phi i64 [ 0, %.critedge.i.i.i89 ], [ 0, %bb.y ], [ 0, %.lr.ph80.preheader.i.i.i93 ], [ 1, %25 ], [ 2, %bb.aa ], [ 1, %bb.z ], [ 1, %29 ]
  %i.fs = add i64 %.1.i.i.i101, %23
  %i.ft = icmp ugt i64 %i.fs, 1
  br i1 %i.ft, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104: ; preds = %._crit_edge.i.i.i95
  %i.fu = load i8, ptr %.2.i.i.i100, align 1, !tbaa !16
  %.not30 = icmp eq i8 %i.fu, 58
  br i1 %.not30, label %bb.ab, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104.thread: ; preds = %._crit_edge.i.i.i95, %bb.v, %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.ab:                                            ; preds = %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit104
  %i.fv = getelementptr inbounds nuw i8, ptr %.2.i.i.i100, i64 1 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, %i.d
  br i1 %i.fw, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit126.thread, label %.lr.ph.preheader.i.i.i105

.lr.ph.preheader.i.i.i105:                        ; preds = %bb.ab
  %i.fx = ptrtoaddr ptr %i.fv to i64
  %i.fy = sub i64 %i.ee, %i.fx                    ; 3 uses
  %scevgep.i.i.i106 = getelementptr i8, ptr %i.fv, i64 %i.fy ; 2 uses
  %i.fz = load i8, ptr %i.fv, align 1, !tbaa !16
  %i.ga = icmp eq i8 %i.fz, 48
  br i1 %i.ga, label %bb.ac, label %.critedge.i.i.i111

bb.ac:                                            ; preds = %.lr.ph.preheader.i.i.i105
  %i.gb = getelementptr inbounds nuw i8, ptr %.2.i.i.i100, i64 2 ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.gb, %i.d
  br i1 %.not.i.i.i125, label %.critedge.i.i.i111, label %.lr.ph.i.i.i107.1

.lr.ph.i.i.i107.1:                                ; preds = %bb.ac
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16
  %i.gd = icmp eq i8 %i.gc, 48
  br i1 %i.gd, label %bb.ad, label %.critedge.i.i.i111

bb.ad:                                            ; preds = %.lr.ph.i.i.i107.1
  %i.ge = getelementptr inbounds nuw i8, ptr %.2.i.i.i100, i64 3 ; 2 uses
  %.not.i.i.i125.1 = icmp eq ptr %i.ge, %i.d      ; 2 uses
  %spec.select303 = select i1 %.not.i.i.i125.1, ptr %scevgep.i.i.i106, ptr %i.ge
  %spec.select304 = select i1 %.not.i.i.i125.1, i64 %i.fy, i64 2
  br label %.critedge.i.i.i111

.critedge.i.i.i111:                               ; preds = %bb.ad, %.lr.ph.i.i.i107.1, %bb.ac, %.lr.ph.preheader.i.i.i105
  %.047.lcssa.i.i.i112 = phi ptr [ %scevgep.i.i.i106, %bb.ac ], [ %i.fv, %.lr.ph.preheader.i.i.i105 ], [ %i.gb, %.lr.ph.i.i.i107.1 ], [ %spec.select303, %bb.ad ] ; 9 uses
  %.046.lcssa.i.i.i113 = phi i64 [ %i.fy, %bb.ac ], [ 0, %.lr.ph.preheader.i.i.i105 ], [ 1, %.lr.ph.i.i.i107.1 ], [ %spec.select304, %bb.ad ]
  %32 = freeze i64 %.046.lcssa.i.i.i113           ; 3 uses
  %i.gf = icmp ugt i64 %32, 1
  %i.gg = icmp eq ptr %.047.lcssa.i.i.i112, %i.d
  %or.cond6476.i.i.i114 = or i1 %i.gg, %i.gf
  br i1 %or.cond6476.i.i.i114, label %._crit_edge.i.i.i117, label %.lr.ph80.preheader.i.i.i119

.lr.ph80.preheader.i.i.i119:                      ; preds = %.critedge.i.i.i111
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %.lr.ph80.preheader.i.i.i115, label %bb.ae

.lr.ph80.preheader.i.i.i115:                      ; preds = %.lr.ph80.preheader.i.i.i119
  %i.gh = load i8, ptr %.047.lcssa.i.i.i112, align 1, !tbaa !16
  %i.gi = add i8 %i.gh, -48                       ; 2 uses
  %or.cond.i.i.i.i116 = icmp ult i8 %i.gi, 10
  br i1 %or.cond.i.i.i.i116, label %34, label %._crit_edge.i.i.i117

34:                                               ; preds = %.lr.ph80.preheader.i.i.i115
  %35 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i112, i64 1
  br label %._crit_edge.i.i.i117

bb.ae:                                            ; preds = %.lr.ph80.preheader.i.i.i119
  %i.gj = getelementptr i8, ptr %.047.lcssa.i.i.i112, i64 2
  %36 = load i8, ptr %.047.lcssa.i.i.i112, align 1, !tbaa !16
  %37 = add i8 %36, -48                           ; 4 uses
  %or.cond.i.i.i.i122 = icmp ult i8 %37, 10
  br i1 %or.cond.i.i.i.i122, label %38, label %._crit_edge.i.i.i117

38:                                               ; preds = %bb.ae
  %39 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i112, i64 1 ; 3 uses
  %40 = icmp eq ptr %39, %i.d
  br i1 %40, label %._crit_edge.i.i.i117, label %bb.af

bb.af:                                            ; preds = %38
  %i.gk = load i8, ptr %39, align 1, !tbaa !16
  %i.gl = add i8 %i.gk, -48                       ; 2 uses
  %or.cond.i54.i.i.i124 = icmp ult i8 %i.gl, 10
  br i1 %or.cond.i54.i.i.i124, label %bb.ag, label %._crit_edge.i.i.i117

bb.ag:                                            ; preds = %bb.af
  %i.gm = mul nuw nsw i8 %37, 10
  %i.gn = add nuw nsw i8 %i.gl, %i.gm
  br label %._crit_edge.i.i.i117

._crit_edge.i.i.i117:                             ; preds = %bb.ag, %bb.af, %38, %bb.ae, %34, %.lr.ph80.preheader.i.i.i115, %.critedge.i.i.i111
  %.163.i.i.i124 = phi i8 [ 0, %.critedge.i.i.i111 ], [ 0, %bb.ae ], [ 0, %.lr.ph80.preheader.i.i.i115 ], [ %i.gi, %34 ], [ %i.gn, %bb.ag ], [ %37, %bb.af ], [ %37, %38 ] ; 3 uses
  %.2.i.i.i125 = phi ptr [ %.047.lcssa.i.i.i112, %.critedge.i.i.i111 ], [ %.047.lcssa.i.i.i112, %bb.ae ], [ %.047.lcssa.i.i.i112, %.lr.ph80.preheader.i.i.i115 ], [ %35, %34 ], [ %i.gj, %bb.ag ], [ %39, %bb.af ], [ %i.d, %38 ]
  %.1.i.i.i126 = phi i64 [ 0, %.critedge.i.i.i111 ], [ 0, %bb.ae ], [ 0, %.lr.ph80.preheader.i.i.i115 ], [ 1, %34 ], [ 2, %bb.ag ], [ 1, %bb.af ], [ 1, %38 ]
  %i.go = add i64 %.1.i.i.i126, %32
  %i.gp = icmp ugt i64 %i.go, 1
  %.not31 = icmp eq ptr %.2.i.i.i125, %i.d
  %or.cond273 = select i1 %i.gp, i1 %.not31, i1 false
  br i1 %or.cond273, label %bb.ah, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit126.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKcEEbRT_RKS7_Rh.exit126.thread: ; preds = %._crit_edge.i.i.i117, %bb.ab
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.ah:                                            ; preds = %._crit_edge.i.i.i117
  br i1 %.not275.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1ENS_9date_time8weekdaysEhhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.sroa.25227.0, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i99, i8 noundef zeroext %.163.i.i.i124)
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  br i1 %.sroa.0216.0, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gq = icmp eq i16 %.sroa.7218.0, 0
  br i1 %i.gq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.am:                                            ; preds = %bb.ak
  %i.gr = icmp ugt i16 %.sroa.7218.0, 31
  br i1 %i.gr, label %bb.an, label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.an:                                            ; preds = %bb.am
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %.sroa.7218.0, i32 noundef 1)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

_ZN5boost9gregorian8greg_dayC2Et.exit:            ; preds = %bb.am, %bb.al, %bb.an
  %.sroa.0.0 = phi i16 [ 1, %bb.al ], [ 1, %bb.an ], [ %.sroa.7218.0, %bb.am ]
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1ENS_9gregorian8greg_dayEhhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 %.sroa.0.0, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i99, i8 noundef zeroext %.163.i.i.i124)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1Ehhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i99, i8 noundef zeroext %.163.i.i.i124)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN5boost9gregorian8greg_dayC2Et.exit, %bb.ai
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend21enable_final_rotationEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend21set_auto_newline_modeENS2_17auto_newline_modeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost3log11v2_mt_posix9anonymous31param_cast_to_auto_newline_modeIcEENS1_5sinks17auto_newline_modeEPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsISA_ESaISA_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !14
  %i.d = load i64, ptr %i.c, align 1
  %i.e = icmp ne i64 %i.d, 7234307546238118212
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  %bcmp.i9 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.144, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i9, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.a
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !14
  %bcmp.i11 = tail call i32 @bcmp(ptr %.pre19, ptr nonnull @.str.145, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i11, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.142, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.112)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18
  invoke void @_ZN5boost3log11v2_mt_posix13invalid_value6throw_EPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull @.str.67, i64 noundef 170, ptr noundef nonnull align 8 dereferenceable(32) %2) #31
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.e ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.07 = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ]
  ret i32 %.07
}

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend10auto_flushEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend13set_open_modeESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare void @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend18set_file_collectorERKNS_10shared_ptrINS2_4file9collectorEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10shared_ptrINS_3log11v2_mt_posix5sinks4file9collectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost6detail12shared_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !226
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !227
  br label %_ZN5boost6detail12shared_countD2Ev.exit

_ZN5boost6detail12shared_countD2Ev.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare noundef i64 @_ZN5boost3log11v2_mt_posix5sinks17text_file_backend14scan_for_filesENS2_4file11scan_methodEb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8, !alias.scope !783
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !17, !alias.scope !783
  store i8 0, ptr %i.e, align 8, !tbaa !16, !alias.scope !783
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17, !alias.scope !783
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17, !alias.scope !783
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #31
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !783 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !16, !alias.scope !783
  %i.t = add i64 %i.s, 1
end_hunk_0
begin_hunk_1_@_ZN5boost3log11v2_mt_posix9anonymous17param_cast_to_intImwEET_PKcRKNSt7__cxx1112basic_stringIT0_St11char_traitsIS9_ESaIS9_EEE:bb.a
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.au = icmp ugt i64 %.4.ph.i, 1844674407370955161
  br i1 %i.au, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = mul nuw i64 %.4.ph.i, 10                ; 2 uses
  %i.aw = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %.not.i.i.i67.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i.i67.i, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i: ; preds = %bb.t
  %i.ay = add i64 %i.av, %i.aw
  br label %bb.u

bb.u:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i, %bb.r
  %.5.ph.i = phi i64 [ %i.ay, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addImwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.at, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.151109.i, i64 12 ; 2 uses
  %i.ba = add nuw i64 %.1110.i, 3
  %i.bb = icmp eq ptr %i.az, %i.d
  br i1 %i.bb, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread39, label %.lr.ph112.i, !llvm.loop !2112

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit: ; preds = %.lr.ph112.i, %bb.j, %bb.p, %bb.c
  %.19.ph = phi i64 [ 0, %bb.c ], [ %.4.ph.i, %bb.p ], [ %.186108.i, %.lr.ph112.i ], [ %.3.ph.i, %bb.j ]
  %.1.ph = phi ptr [ %.050105.i, %bb.c ], [ %i.am, %bb.p ], [ %.151109.i, %.lr.ph112.i ], [ %i.z, %bb.j ]
  %i.bc = icmp eq ptr %.1.ph, %i.d
  br i1 %i.bc, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread39, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread39: ; preds = %bb.b, %bb.o, %bb.i, %bb.u, %bb.d, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit
  %.19.ph42 = phi i64 [ %.19.ph, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit ], [ %i.l, %bb.d ], [ %.4.ph.i, %bb.o ], [ %.5.ph.i, %bb.u ], [ %.3.ph.i, %bb.i ], [ 0, %bb.b ]
  ret i64 %.19.ph42

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit.thread: ; preds = %bb.s, %bb.t, %bb.m, %bb.n, %bb.g, %bb.h, %bb.c, %bb.a, %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rm.exit
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost3log11v2_mt_posix9anonymous17param_cast_to_intIjwEET_PKcRKNSt7__cxx1112basic_stringIT0_St11char_traitsIS9_ESaIS9_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %.idx = shl i64 %i.c, 2
  %i.d = getelementptr i8, ptr %i.a, i64 %.idx    ; 6 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0108.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.050107.i = phi ptr [ %i.h, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = load i32, ptr %.050107.i, align 4, !tbaa !1468 ; 2 uses
  %i.g = icmp eq i32 %i.f, 48
  br i1 %i.g, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.050107.i, i64 4 ; 2 uses
  %i.i = add nuw nsw i64 %.0108.i, 1
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %.lr.ph.i, !llvm.loop !2113

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.j = add i32 %i.f, -48                        ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.k = icmp eq i64 %.0108.i, 0
  br i1 %i.k, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit

bb.d:                                             ; preds = %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %.050107.i, i64 4 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.d, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i
  %.1112.i = phi i64 [ %i.an, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %.0108.i, %bb.d ] ; 4 uses
  %.151111.i = phi ptr [ %i.am, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.l, %bb.d ] ; 5 uses
  %.186110.i = phi i32 [ %.5.ph.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %i.j, %bb.d ] ; 4 uses
  %i.n = load i32, ptr %.151111.i, align 4, !tbaa !1468 ; 2 uses
  %i.o = add i32 %i.n, -48                        ; 2 uses
  %or.cond.i58.i = icmp ult i32 %i.o, 10
  br i1 %or.cond.i58.i, label %bb.e, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit

bb.e:                                             ; preds = %.lr.ph114.i
  %i.p = icmp ult i64 %.1112.i, 8
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = mul i32 %.186110.i, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ugt i32 %.186110.i, 429496729
  br i1 %i.r, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = mul nuw i32 %.186110.i, 10               ; 2 uses
  %i.t = sub nsw i32 47, %i.n
  %.not.i.i.i.i = icmp ugt i32 %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i: ; preds = %bb.h, %bb.f
  %.pn.i = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.h ]
  %.3.ph.i = add i32 %.pn.i, %i.o                 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.151111.i, i64 4 ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %bb.i

bb.i:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i
  %i.w = load i32, ptr %i.u, align 4, !tbaa !1468 ; 2 uses
  %i.x = add i32 %i.w, -48                        ; 2 uses
  %or.cond.i59.i = icmp ult i32 %i.x, 10
  br i1 %or.cond.i59.i, label %bb.j, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ult i64 %.1112.i, 7
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = mul i32 %.3.ph.i, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i

bb.l:                                             ; preds = %bb.j
  %i.aa = icmp ugt i32 %.3.ph.i, 429496729
  br i1 %i.aa, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = mul nuw i32 %.3.ph.i, 10                ; 2 uses
  %i.ac = sub nsw i32 47, %i.w
  %.not.i.i.i60.i = icmp ugt i32 %i.ab, %i.ac
  br i1 %.not.i.i.i60.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i: ; preds = %bb.m, %bb.k
  %.pn97.i = phi i32 [ %i.z, %bb.k ], [ %i.ab, %bb.m ]
  %.4.ph.i = add i32 %.pn97.i, %i.x               ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.151111.i, i64 8 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %bb.n

bb.n:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !1468 ; 2 uses
  %i.ag = add i32 %i.af, -48                      ; 2 uses
  %or.cond.i66.i = icmp ult i32 %i.ag, 10
  br i1 %or.cond.i66.i, label %bb.o, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp ult i64 %.1112.i, 6
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = mul i32 %.4.ph.i, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i

bb.q:                                             ; preds = %bb.o
  %i.aj = icmp ugt i32 %.4.ph.i, 429496729
  br i1 %i.aj, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = mul nuw i32 %.4.ph.i, 10                ; 2 uses
  %i.al = sub nsw i32 47, %i.af
  %.not.i.i.i67.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not.i.i.i67.i, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i: ; preds = %bb.r, %bb.p
  %.pn98.i = phi i32 [ %i.ai, %bb.p ], [ %i.ak, %bb.r ]
  %.5.ph.i = add i32 %.pn98.i, %i.ag              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.151111.i, i64 12 ; 2 uses
  %i.an = add nuw i64 %.1112.i, 3
  %i.ao = icmp eq ptr %i.am, %i.d
  br i1 %i.ao, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %.lr.ph114.i, !llvm.loop !2114

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit: ; preds = %.lr.ph114.i, %bb.i, %bb.n, %bb.c
  %.19.ph = phi i32 [ 0, %bb.c ], [ %.4.ph.i, %bb.n ], [ %.186110.i, %.lr.ph114.i ], [ %.3.ph.i, %bb.i ]
  %.1.ph = phi ptr [ %.050107.i, %bb.c ], [ %i.ad, %bb.n ], [ %.151111.i, %.lr.ph114.i ], [ %i.u, %bb.i ]
  %i.ap = icmp eq ptr %.1.ph, %i.d
  br i1 %i.ap, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39, label %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread39: ; preds = %bb.b, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i, %bb.d, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit
  %.19.ph42 = phi i32 [ %.19.ph, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit ], [ %i.j, %bb.d ], [ %.4.ph.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61.i ], [ %.5.ph.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68.i ], [ %.3.ph.i, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIjwEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i.i ], [ 0, %bb.b ]
  ret i32 %.19.ph42

_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit.thread: ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.g, %bb.h, %bb.c, %bb.a, %_ZN5boost6spirit2qi12extract_uintIjLj10ELj1ELin1ELb0ELb0EE4callIPKwEEbRT_RKS7_Rj.exit
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, i64 } @_ZN5boost3log11v2_mt_posix9anonymous33param_cast_to_rotation_time_pointIwEENS1_5sinks4file22rotation_at_time_pointEPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsISB_ESaISB_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::log::v2_mt_posix::sinks::file::rotation_at_time_point", align 8 ; 5 uses
  %3 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal.523", align 8 ; 5 uses
  %4 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal.523", align 8 ; 5 uses
  %5 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal.523", align 8 ; 5 uses
  %6 = alloca %"class.boost::log::v2_mt_posix::basic_string_literal.523", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c ; 17 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !1468
  %i.f = tail call i32 @iswalnum(i32 noundef %i.e) #29
  %.not275 = icmp eq i32 %i.f, 0
  br i1 %.not275, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !1468
  %i.h = tail call i32 @iswalpha(i32 noundef %i.g) #29
  %.not276.not = icmp eq i32 %i.h, 0              ; 2 uses
  br i1 %.not276.not, label %.preheader, label %.preheader281

.preheader281:                                    ; preds = %bb.c, %.preheader281
  %.0233.pn = phi ptr [ %.0233, %.preheader281 ], [ %i.a, %bb.c ]
  %.0233 = getelementptr inbounds nuw i8, ptr %.0233.pn, i64 4 ; 15 uses
  %i.i = load i32, ptr %.0233, align 4, !tbaa !1468
  %i.j = tail call i32 @iswalpha(i32 noundef %i.i) #29
  %.not279 = icmp eq i32 %i.j, 0
  br i1 %.not279, label %bb.d, label %.preheader281, !llvm.loop !2115

bb.d:                                             ; preds = %.preheader281
  %i.k = ptrtoint ptr %.0233 to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 10 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 4 uses
  switch i64 %i.n, label %bb.e [
    i64 6, label %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i
    i64 3, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
  ]

_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i:               ; preds = %bb.d
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull @.str.161, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i10.i = tail call i32 @bcmp(ptr nonnull @.str.162, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i11.i = icmp eq i32 %bcmp.i.i.i.i10.i, 0
  br i1 %.not9.i.i.i.i11.i, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39

bb.e:                                             ; preds = %bb.d
  switch i64 %i.m, label %.thread243 [
    i64 28, label %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36
    i64 36, label %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45
  ]

_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36:             ; preds = %bb.e
  %i.o = load i128, ptr %i.a, align 1
  %i.p = xor i128 9111238691003519975204730175572, %i.o
  %i.q = getelementptr i8, ptr %i.a, i64 12
  %i.r = load i128, ptr %i.q, align 1
  %i.s = xor i128 9586607666015319024398141227123, %i.r
  %i.t = or i128 %i.p, %i.s
  %i.u = icmp ne i128 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not9.i.i.i.i.i38 = icmp eq i32 %i.v, 0
  br i1 %.not9.i.i.i.i.i38, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
  %bcmp.i.i.i.i10.i33 = tail call i32 @bcmp(ptr nonnull @.str.164, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i11.i34 = icmp eq i32 %bcmp.i.i.i.i10.i33, 0
  br i1 %.not9.i.i.i.i11.i34, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48

_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45:             ; preds = %bb.e
  %bcmp.i.i.i.i.i46 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(36) @.str.165, ptr noundef nonnull dereferenceable(36) %i.a, i64 36)
  %.not9.i.i.i.i.i47 = icmp eq i32 %bcmp.i.i.i.i.i46, 0
  br i1 %.not9.i.i.i.i.i47, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39
  %bcmp.i.i.i.i10.i42 = tail call i32 @bcmp(ptr nonnull @.str.166, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i11.i43 = icmp eq i32 %bcmp.i.i.i.i10.i42, 0
  br i1 %.not9.i.i.i.i11.i43, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57

.thread243:                                       ; preds = %bb.e
  switch i64 %i.n, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread [
    i64 8, label %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54
    i64 3, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57
  ]

_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54:             ; preds = %.thread243
  %bcmp.i.i.i.i.i55 = tail call i32 @bcmp(ptr nonnull @.str.167, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i.i56 = icmp eq i32 %bcmp.i.i.i.i.i55, 0
  br i1 %.not9.i.i.i.i.i56, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48, %.thread243
  %bcmp.i.i.i.i10.i51 = tail call i32 @bcmp(ptr nonnull @.str.168, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i11.i52 = icmp eq i32 %bcmp.i.i.i.i10.i51, 0
  br i1 %.not9.i.i.i.i11.i52, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66

_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63:             ; preds = %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i
  %bcmp.i.i.i.i.i64 = tail call i32 @bcmp(ptr nonnull @.str.169, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i.i65 = icmp eq i32 %bcmp.i.i.i.i.i64, 0
  br i1 %.not9.i.i.i.i.i65, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66: ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57
  %bcmp.i.i.i.i10.i60 = tail call i32 @bcmp(ptr nonnull @.str.170, ptr nonnull %i.a, i64 %i.m)
  %.not9.i.i.i.i11.i61 = icmp eq i32 %bcmp.i.i.i.i10.i60, 0
  br i1 %.not9.i.i.i.i11.i61, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread

_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread: ; preds = %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45, %.thread243, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr @.str.171, ptr %3, align 8, !tbaa !2116, !alias.scope !2118
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.w, align 8, !tbaa !2121, !alias.scope !2118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.172, ptr %4, align 8, !tbaa !2116, !alias.scope !2122
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.x, align 8, !tbaa !2121, !alias.scope !2122
  %i.y = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.y, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @.str.173, ptr %5, align 8, !tbaa !2116, !alias.scope !2125
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.z, align 8, !tbaa !2121, !alias.scope !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.174, ptr %6, align 8, !tbaa !2116, !alias.scope !2128
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.aa, align 8, !tbaa !2121, !alias.scope !2128
  %i.ab = call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %i.ab, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %bb.c ] ; 3 uses
  %.1.idx = phi i64 [ %.1.add, %.preheader ], [ 4, %bb.c ] ; 5 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx
  %i.ac = load i32, ptr %.1.ptr, align 4, !tbaa !1468
  %i.ad = tail call i32 @iswdigit(i32 noundef %i.ac) #29
  %.not277 = icmp eq i32 %i.ad, 0
  %.1.add = add nuw nsw i64 %.1.idx, 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not277, label %bb.h, label %.preheader, !llvm.loop !2131

bb.h:                                             ; preds = %.preheader
  %.1.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx ; 9 uses
  %i.ae = load i32, ptr %.1.ptr.le, align 4, !tbaa !1468
  %i.af = tail call i32 @iswspace(i32 noundef %i.ae) #29
  %.not278 = icmp eq i32 %i.af, 0
  br i1 %.not278, label %bb.m, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !1468
  %i.ah = icmp eq i32 %i.ag, 48
  br i1 %i.ah, label %bb.i, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %.1.idx, 4
  br i1 %.not.i.i.i, label %.split.loop.exit89.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1468
  %i.ak = icmp eq i32 %i.aj, 48
  br i1 %i.ak, label %bb.j, label %.critedge.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.1
  %.not.i.i.i.1 = icmp samesign eq i64 %.1.idx, 8
  br i1 %.not.i.i.i.1, label %.split.loop.exit89.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %i.am = phi i1 [ false, %.lr.ph.i.i.i ], [ false, %.lr.ph.i.i.i.1 ], [ true, %.lr.ph.i.i.i.2 ]
  %i.an = phi i1 [ false, %.lr.ph.i.i.i ], [ true, %.lr.ph.i.i.i.1 ], [ false, %.lr.ph.i.i.i.2 ]
  %.04670.i.i.i.lcssa = phi i64 [ 0, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.1 ], [ 2, %.lr.ph.i.i.i.2 ]
  %.04769.i.i.i.lcssa = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.1 ], [ %i.al, %.lr.ph.i.i.i.2 ] ; 9 uses
  %i.ao = icmp eq ptr %.04769.i.i.i.lcssa, %.1.ptr.le
  %or.cond65101.i.i.i = or i1 %i.ao, %i.am
  br i1 %or.cond65101.i.i.i, label %.split.loop.exit89.i.i.i, label %.lr.ph105.preheader.i.i.i

.lr.ph105.preheader.i.i.i:                        ; preds = %.critedge.i.i.i
  %scevgep126.i.i.i = getelementptr i8, ptr %.04769.i.i.i.lcssa, i64 8
  br i1 %i.an, label %.lr.ph105.preheader.split.us.i.i.i, label %.lr.ph105.preheader.i.i.i.a

.lr.ph105.preheader.split.us.i.i.i:               ; preds = %.lr.ph105.preheader.i.i.i
  %7 = load i32, ptr %.04769.i.i.i.lcssa, align 4, !tbaa !1468 ; 2 uses
  %8 = add i32 %7, -48
  %or.cond.i.us.i.i.i = icmp ult i32 %8, 10
  br i1 %or.cond.i.us.i.i.i, label %.split.loop.exit85.split.us.i.i.i, label %.split.loop.exit89.i.i.i

.split.loop.exit85.split.us.i.i.i:                ; preds = %.lr.ph105.preheader.split.us.i.i.i
  %9 = add nuw nsw i32 %7, 65488
  %10 = getelementptr inbounds nuw i8, ptr %.04769.i.i.i.lcssa, i64 4
  br label %.split.loop.exit85.i.i.i

.lr.ph105.preheader.i.i.i.a:                      ; preds = %.lr.ph105.preheader.i.i.i
  %scevgep126.i.i.i.a = getelementptr i8, ptr %.04769.i.i.i.lcssa, i64 4 ; 3 uses
  %i.ap = load i32, ptr %.04769.i.i.i.lcssa, align 4, !tbaa !1468 ; 2 uses
  %i.aq = add i32 %i.ap, -48
  %or.cond.i.i.i.i = icmp ult i32 %i.aq, 10
  br i1 %or.cond.i.i.i.i, label %bb.k, label %.split.loop.exit89.i.i.i

bb.k:                                             ; preds = %.lr.ph105.preheader.i.i.i.a
  %i.ar = add nuw nsw i32 %i.ap, 65488            ; 3 uses
  %i.as = icmp eq ptr %scevgep126.i.i.i.a, %.1.ptr.le
  br i1 %i.as, label %.split.loop.exit85.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr %scevgep126.i.i.i.a, align 4, !tbaa !1468 ; 2 uses
  %i.au = add i32 %i.at, -48
  %or.cond.i55.i.i.i = icmp ult i32 %i.au, 10
  br i1 %or.cond.i55.i.i.i, label %.split.loop.exit77.i.i.i, label %.split.loop.exit81.i.i.i

.split.loop.exit77.i.i.i:                         ; preds = %bb.l
  %i.av = mul nuw nsw i32 %i.ar, 10
  %i.aw = add nuw nsw i32 %i.av, 65488
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = trunc i32 %i.ax to i16
  br label %.split.loop.exit89.i.i.i

.split.loop.exit81.i.i.i:                         ; preds = %bb.l
  %i.az = trunc i32 %i.ar to i16
  br label %.split.loop.exit89.i.i.i

.split.loop.exit85.i.i.i:                         ; preds = %bb.k, %.split.loop.exit85.split.us.i.i.i
  %.046.lcssa143148.i.i.i = phi i64 [ 1, %.split.loop.exit85.split.us.i.i.i ], [ 0, %bb.k ]
  %.us-phi129.i.i.i = phi i32 [ %9, %.split.loop.exit85.split.us.i.i.i ], [ %i.ar, %bb.k ]
  %.us-phi130.i.i.i = phi ptr [ %10, %.split.loop.exit85.split.us.i.i.i ], [ %.1.ptr.le, %bb.k ]
  %i.ba = trunc i32 %.us-phi129.i.i.i to i16
  br label %.split.loop.exit89.i.i.i

.split.loop.exit89.i.i.i:                         ; preds = %bb.i, %bb.j, %.split.loop.exit85.i.i.i, %.split.loop.exit81.i.i.i, %.split.loop.exit77.i.i.i, %.lr.ph105.preheader.i.i.i.a, %.lr.ph105.preheader.split.us.i.i.i, %.critedge.i.i.i
  %.046.lcssa144.i.i.i = phi i64 [ %.04670.i.i.i.lcssa, %.critedge.i.i.i ], [ %.046.lcssa143148.i.i.i, %.split.loop.exit85.i.i.i ], [ 0, %.split.loop.exit81.i.i.i ], [ 0, %.split.loop.exit77.i.i.i ], [ 0, %.lr.ph105.preheader.i.i.i.a ], [ 1, %.lr.ph105.preheader.split.us.i.i.i ], [ %indvars.iv, %bb.j ], [ %indvars.iv, %bb.i ]
  %.164.i.i.i = phi i16 [ 0, %.critedge.i.i.i ], [ %i.ba, %.split.loop.exit85.i.i.i ], [ %i.az, %.split.loop.exit81.i.i.i ], [ %i.ay, %.split.loop.exit77.i.i.i ], [ 0, %.lr.ph105.preheader.i.i.i.a ], [ 0, %.lr.ph105.preheader.split.us.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.2.i.i.i = phi ptr [ %.04769.i.i.i.lcssa, %.critedge.i.i.i ], [ %.us-phi130.i.i.i, %.split.loop.exit85.i.i.i ], [ %scevgep126.i.i.i.a, %.split.loop.exit81.i.i.i ], [ %scevgep126.i.i.i, %.split.loop.exit77.i.i.i ], [ %.04769.i.i.i.lcssa, %.lr.ph105.preheader.i.i.i.a ], [ %.04769.i.i.i.lcssa, %.lr.ph105.preheader.split.us.i.i.i ], [ %.1.ptr.le, %bb.j ], [ %.1.ptr.le, %bb.i ]
  %.1.i.i.i = phi i64 [ 0, %.critedge.i.i.i ], [ 1, %.split.loop.exit85.i.i.i ], [ 1, %.split.loop.exit81.i.i.i ], [ 2, %.split.loop.exit77.i.i.i ], [ 0, %.lr.ph105.preheader.i.i.i.a ], [ 0, %.lr.ph105.preheader.split.us.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.bb = sub nsw i64 0, %.046.lcssa144.i.i.i
  %.not54.i.i.not.i = icmp ne i64 %.1.i.i.i, %i.bb
  %.not = icmp eq ptr %.2.i.i.i, %.1.ptr.le
  %or.cond = select i1 %.not54.i.i.not.i, i1 %.not, i1 false
  br i1 %or.cond, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %_ZN5boost6spirit2qi12extract_uintItLj10ELj1ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rt.exit

_ZN5boost6spirit2qi12extract_uintItLj10ELj1ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rt.exit: ; preds = %.split.loop.exit89.i.i.i
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %.1.ptr.le, align 4, !tbaa !1468
  %i.bd = icmp eq i32 %i.bc, 58
  br i1 %i.bd, label %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit: ; preds = %.split.loop.exit89.i.i.i, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i, %bb.m, %bb.f, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit
  %.2 = phi ptr [ %.1.ptr.le, %.split.loop.exit89.i.i.i ], [ %i.a, %bb.m ], [ %.0233, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i ], [ %.0233, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36 ], [ %.0233, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45 ], [ %.0233, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54 ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ %.0233, %bb.f ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ %.0233, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ %.0233, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63 ]
  %.sroa.0217.0 = phi i1 [ true, %.split.loop.exit89.i.i.i ], [ false, %bb.m ], [ false, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i ], [ false, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36 ], [ false, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45 ], [ false, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ false, %bb.f ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ false, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ false, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63 ]
  %.sroa.7219.0 = phi i16 [ %.164.i.i.i, %.split.loop.exit89.i.i.i ], [ 0, %bb.m ], [ 0, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i ], [ 0, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36 ], [ 0, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45 ], [ 0, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ 0, %bb.f ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ 0, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ 0, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63 ] ; 4 uses
  %.sroa.25228.0 = phi i32 [ 0, %.split.loop.exit89.i.i.i ], [ 0, %bb.m ], [ 1, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i ], [ 2, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i36 ], [ 3, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i45 ], [ 4, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i54 ], [ 6, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66.thread ], [ 0, %bb.f ], [ 1, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit ], [ 2, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit39 ], [ 3, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit48 ], [ 4, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit57 ], [ 5, %_ZN5boost3log11v2_mt_posix9anonymous10is_weekdayIwEEbPKT_mRKNS1_20basic_string_literalIS4_St11char_traitsIS4_EEESC_.exit66 ], [ 5, %_ZSt5equalIPKwS1_EbT_S2_T0_.exit.i63 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit
  %.3 = phi ptr [ %.2, %_ZN5boost8optionalINS_9date_time8weekdaysEEaSEOS3_.exit ], [ %i.bg, %bb.o ] ; 7 uses
  %i.be = load i32, ptr %.3, align 4, !tbaa !1468
  %i.bf = call i32 @iswspace(i32 noundef %i.be) #29
  %.not280 = icmp eq i32 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br i1 %.not280, label %bb.p, label %bb.o, !llvm.loop !2132

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp eq ptr %.3, %i.d
  br i1 %i.bh, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit.thread, label %.lr.ph.i.i.i70

.lr.ph.i.i.i70:                                   ; preds = %bb.p
  %i.bi = load i32, ptr %.3, align 4, !tbaa !1468
  %i.bj = icmp eq i32 %i.bi, 48
  br i1 %i.bj, label %bb.q, label %.critedge.i.i.i72

bb.q:                                             ; preds = %.lr.ph.i.i.i70
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 4 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.bk, %i.d
  br i1 %.not.i.i.i79, label %.split.loop.exit88.i.i.i, label %.lr.ph.i.i.i70.1

.lr.ph.i.i.i70.1:                                 ; preds = %bb.q
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1468
  %i.bm = icmp eq i32 %i.bl, 48
  br i1 %i.bm, label %bb.r, label %.critedge.i.i.i72

bb.r:                                             ; preds = %.lr.ph.i.i.i70.1
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %.not.i.i.i79.1 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i79.1, label %.split.loop.exit88.i.i.i, label %.critedge.i.i.i72

.critedge.i.i.i72:                                ; preds = %bb.r, %.lr.ph.i.i.i70.1, %.lr.ph.i.i.i70
  %i.bo = phi i1 [ false, %.lr.ph.i.i.i70 ], [ false, %.lr.ph.i.i.i70.1 ], [ true, %bb.r ]
  %i.bp = phi i1 [ false, %.lr.ph.i.i.i70 ], [ true, %.lr.ph.i.i.i70.1 ], [ false, %bb.r ]
  %.04669.i.i.i.lcssa = phi i64 [ 0, %.lr.ph.i.i.i70 ], [ 1, %.lr.ph.i.i.i70.1 ], [ 2, %bb.r ]
  %.04768.i.i.i.lcssa = phi ptr [ %.3, %.lr.ph.i.i.i70 ], [ %i.bk, %.lr.ph.i.i.i70.1 ], [ %i.bn, %bb.r ] ; 8 uses
  br i1 %i.bo, label %.split.loop.exit88.i.i.i, label %.lr.ph104.preheader.i.i.i

.lr.ph104.preheader.i.i.i:                        ; preds = %.critedge.i.i.i72
  %scevgep125.i.i.i = getelementptr i8, ptr %.04768.i.i.i.lcssa, i64 8
  br i1 %i.bp, label %.lr.ph104.preheader.split.us.i.i.i, label %.lr.ph104.preheader.i.i.i.a

.lr.ph104.preheader.split.us.i.i.i:               ; preds = %.lr.ph104.preheader.i.i.i
  %11 = load i32, ptr %.04768.i.i.i.lcssa, align 4, !tbaa !1468 ; 2 uses
  %12 = add i32 %11, -48
  %or.cond.i.us.i.i.i80 = icmp ult i32 %12, 10
  br i1 %or.cond.i.us.i.i.i80, label %.split.loop.exit84.split.us.i.i.i, label %.split.loop.exit88.i.i.i

.split.loop.exit84.split.us.i.i.i:                ; preds = %.lr.ph104.preheader.split.us.i.i.i
  %13 = add nuw nsw i32 %11, 208
  %14 = getelementptr inbounds nuw i8, ptr %.04768.i.i.i.lcssa, i64 4
  br label %.split.loop.exit84.i.i.i

.lr.ph104.preheader.i.i.i.a:                      ; preds = %.lr.ph104.preheader.i.i.i
  %scevgep125.i.i.i.a = getelementptr i8, ptr %.04768.i.i.i.lcssa, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.04768.i.i.i.lcssa, align 4, !tbaa !1468 ; 2 uses
  %i.br = add i32 %i.bq, -48
  %or.cond.i.i.i.i75 = icmp ult i32 %i.br, 10
  br i1 %or.cond.i.i.i.i75, label %bb.s, label %.split.loop.exit88.i.i.i

bb.s:                                             ; preds = %.lr.ph104.preheader.i.i.i.a
  %i.bs = add nuw nsw i32 %i.bq, 208              ; 3 uses
  %i.bt = icmp eq ptr %scevgep125.i.i.i.a, %i.d
  br i1 %i.bt, label %.split.loop.exit84.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %scevgep125.i.i.i.a, align 4, !tbaa !1468 ; 2 uses
  %i.bv = add i32 %i.bu, -48
  %or.cond.i54.i.i.i = icmp ult i32 %i.bv, 10
  br i1 %or.cond.i54.i.i.i, label %.split.loop.exit76.i.i.i, label %.split.loop.exit80.i.i.i

.split.loop.exit76.i.i.i:                         ; preds = %bb.t
  %i.bw = mul nuw nsw i32 %i.bs, 10
  %i.bx = add nuw nsw i32 %i.bw, 208
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = trunc i32 %i.by to i8
  br label %.split.loop.exit88.i.i.i

.split.loop.exit80.i.i.i:                         ; preds = %bb.t
  %i.ca = trunc i32 %i.bs to i8
  br label %.split.loop.exit88.i.i.i

.split.loop.exit84.i.i.i:                         ; preds = %bb.s, %.split.loop.exit84.split.us.i.i.i
  %.046.lcssa142147.i.i.i = phi i64 [ 1, %.split.loop.exit84.split.us.i.i.i ], [ 0, %bb.s ]
  %.us-phi128.i.i.i = phi i32 [ %13, %.split.loop.exit84.split.us.i.i.i ], [ %i.bs, %bb.s ]
  %.us-phi129.i.i.i79 = phi ptr [ %14, %.split.loop.exit84.split.us.i.i.i ], [ %i.d, %bb.s ]
  %i.cb = trunc i32 %.us-phi128.i.i.i to i8
  br label %.split.loop.exit88.i.i.i

.split.loop.exit88.i.i.i:                         ; preds = %bb.q, %bb.r, %.split.loop.exit84.i.i.i, %.split.loop.exit80.i.i.i, %.split.loop.exit76.i.i.i, %.lr.ph104.preheader.i.i.i.a, %.lr.ph104.preheader.split.us.i.i.i, %.critedge.i.i.i72
  %.046.lcssa143.i.i.i = phi i64 [ %.04669.i.i.i.lcssa, %.critedge.i.i.i72 ], [ %.046.lcssa142147.i.i.i, %.split.loop.exit84.i.i.i ], [ 0, %.split.loop.exit80.i.i.i ], [ 0, %.split.loop.exit76.i.i.i ], [ 0, %.lr.ph104.preheader.i.i.i.a ], [ 1, %.lr.ph104.preheader.split.us.i.i.i ], [ 1, %bb.q ], [ 2, %bb.r ]
  %.163.i.i.i = phi i8 [ 0, %.critedge.i.i.i72 ], [ %i.cb, %.split.loop.exit84.i.i.i ], [ %i.ca, %.split.loop.exit80.i.i.i ], [ %i.bz, %.split.loop.exit76.i.i.i ], [ 0, %.lr.ph104.preheader.i.i.i.a ], [ 0, %.lr.ph104.preheader.split.us.i.i.i ], [ 0, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.2.i.i.i76 = phi ptr [ %.04768.i.i.i.lcssa, %.critedge.i.i.i72 ], [ %.us-phi129.i.i.i79, %.split.loop.exit84.i.i.i ], [ %scevgep125.i.i.i.a, %.split.loop.exit80.i.i.i ], [ %scevgep125.i.i.i, %.split.loop.exit76.i.i.i ], [ %.04768.i.i.i.lcssa, %.lr.ph104.preheader.i.i.i.a ], [ %.04768.i.i.i.lcssa, %.lr.ph104.preheader.split.us.i.i.i ], [ %i.d, %bb.r ], [ %i.d, %bb.q ] ; 4 uses
  %.1.i.i.i77 = phi i64 [ 0, %.critedge.i.i.i72 ], [ 1, %.split.loop.exit84.i.i.i ], [ 1, %.split.loop.exit80.i.i.i ], [ 2, %.split.loop.exit76.i.i.i ], [ 0, %.lr.ph104.preheader.i.i.i.a ], [ 0, %.lr.ph104.preheader.split.us.i.i.i ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.cc = add nuw nsw i64 %.1.i.i.i77, %.046.lcssa143.i.i.i
  %i.cd = icmp ugt i64 %i.cc, 1
  br i1 %i.cd, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit: ; preds = %.split.loop.exit88.i.i.i
  %i.ce = load i32, ptr %.2.i.i.i76, align 4, !tbaa !1468
  %.not29 = icmp eq i32 %i.ce, 58
  br i1 %.not29, label %bb.u, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit.thread: ; preds = %.split.loop.exit88.i.i.i, %bb.p, %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.u:                                             ; preds = %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.i.i76, i64 4 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, %i.d
  br i1 %i.cg, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103.thread, label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %bb.u
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !1468
  %i.ci = icmp eq i32 %i.ch, 48
  br i1 %i.ci, label %bb.v, label %.critedge.i.i.i84

bb.v:                                             ; preds = %.lr.ph.i.i.i80
  %i.cj = getelementptr inbounds nuw i8, ptr %.2.i.i.i76, i64 8 ; 4 uses
  %.not.i.i.i102 = icmp eq ptr %i.cj, %i.d
  br i1 %.not.i.i.i102, label %.critedge.i.i.i84, label %.lr.ph.i.i.i80.1

.lr.ph.i.i.i80.1:                                 ; preds = %bb.v
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1468
  %i.cl = icmp eq i32 %i.ck, 48
  br i1 %i.cl, label %bb.w, label %.critedge.i.i.i84

bb.w:                                             ; preds = %.lr.ph.i.i.i80.1
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.i.i.i76, i64 12
  br label %.critedge.i.i.i84

.critedge.i.i.i84:                                ; preds = %bb.w, %.lr.ph.i.i.i80.1, %bb.v, %.lr.ph.i.i.i80
  %.047.lcssa.i.i.i85 = phi ptr [ %i.cj, %bb.v ], [ %i.cf, %.lr.ph.i.i.i80 ], [ %i.cj, %.lr.ph.i.i.i80.1 ], [ %i.cm, %bb.w ] ; 9 uses
  %i.cn = phi i1 [ false, %bb.v ], [ false, %.lr.ph.i.i.i80 ], [ false, %.lr.ph.i.i.i80.1 ], [ true, %bb.w ]
  %i.co = phi i1 [ true, %bb.v ], [ false, %.lr.ph.i.i.i80 ], [ true, %.lr.ph.i.i.i80.1 ], [ false, %bb.w ]
  %.046.lcssa.i.i.i86 = phi i64 [ 1, %bb.v ], [ 0, %.lr.ph.i.i.i80 ], [ 1, %.lr.ph.i.i.i80.1 ], [ 2, %bb.w ]
  %i.cp = icmp eq ptr %.047.lcssa.i.i.i85, %i.d
  %or.cond64100.i.i.i87 = or i1 %i.cp, %i.cn
  br i1 %or.cond64100.i.i.i87, label %.split.loop.exit88.i.i.i91, label %.lr.ph104.preheader.i.i.i90

.lr.ph104.preheader.i.i.i90:                      ; preds = %.critedge.i.i.i84
  %scevgep125.i.i.i91 = getelementptr i8, ptr %.047.lcssa.i.i.i85, i64 8
  br i1 %i.co, label %.lr.ph104.preheader.split.us.i.i.i109, label %.lr.ph104.preheader.i.i.i88

.lr.ph104.preheader.split.us.i.i.i109:            ; preds = %.lr.ph104.preheader.i.i.i90
  %15 = load i32, ptr %.047.lcssa.i.i.i85, align 4, !tbaa !1468 ; 2 uses
  %16 = add i32 %15, -48
  %or.cond.i.us.i.i.i110 = icmp ult i32 %16, 10
  br i1 %or.cond.i.us.i.i.i110, label %.split.loop.exit84.split.us.i.i.i111, label %.split.loop.exit88.i.i.i91

.split.loop.exit84.split.us.i.i.i111:             ; preds = %.lr.ph104.preheader.split.us.i.i.i109
  %17 = add nuw nsw i32 %15, 208
  %18 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i85, i64 4
  br label %.split.loop.exit84.i.i.i101

.lr.ph104.preheader.i.i.i88:                      ; preds = %.lr.ph104.preheader.i.i.i90
  %scevgep125.i.i.i89 = getelementptr i8, ptr %.047.lcssa.i.i.i85, i64 4 ; 4 uses
  %i.cq = load i32, ptr %.047.lcssa.i.i.i85, align 4, !tbaa !1468 ; 2 uses
  %i.cr = add i32 %i.cq, -48
  %or.cond.i.i.i.i90 = icmp ult i32 %i.cr, 10
  br i1 %or.cond.i.i.i.i90, label %bb.x, label %.split.loop.exit88.i.i.i91

bb.x:                                             ; preds = %.lr.ph104.preheader.i.i.i88
  %i.cs = add nuw nsw i32 %i.cq, 208              ; 3 uses
  %i.ct = icmp eq ptr %scevgep125.i.i.i89, %i.d
  br i1 %i.ct, label %.split.loop.exit84.i.i.i101, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load i32, ptr %scevgep125.i.i.i89, align 4, !tbaa !1468 ; 2 uses
  %i.cv = add i32 %i.cu, -48
  %or.cond.i54.i.i.i98 = icmp ult i32 %i.cv, 10
  br i1 %or.cond.i54.i.i.i98, label %.split.loop.exit76.i.i.i100, label %.split.loop.exit80.i.i.i99

.split.loop.exit76.i.i.i100:                      ; preds = %bb.y
  %i.cw = mul nuw nsw i32 %i.cs, 10
  %i.cx = add nuw nsw i32 %i.cw, 208
  %i.cy = add nuw nsw i32 %i.cx, %i.cu
  %i.cz = trunc i32 %i.cy to i8
  br label %.split.loop.exit88.i.i.i91

.split.loop.exit80.i.i.i99:                       ; preds = %bb.y
  %i.da = trunc i32 %i.cs to i8
  br label %.split.loop.exit88.i.i.i91

.split.loop.exit84.i.i.i101:                      ; preds = %bb.x, %.split.loop.exit84.split.us.i.i.i111
  %.046.lcssa142147.i.i.i106 = phi i64 [ 1, %.split.loop.exit84.split.us.i.i.i111 ], [ 0, %bb.x ]
  %.us-phi128.i.i.i107 = phi i32 [ %17, %.split.loop.exit84.split.us.i.i.i111 ], [ %i.cs, %bb.x ]
  %.us-phi129.i.i.i108 = phi ptr [ %18, %.split.loop.exit84.split.us.i.i.i111 ], [ %scevgep125.i.i.i89, %bb.x ]
  %i.db = trunc i32 %.us-phi128.i.i.i107 to i8
  br label %.split.loop.exit88.i.i.i91

.split.loop.exit88.i.i.i91:                       ; preds = %.split.loop.exit84.i.i.i101, %.split.loop.exit80.i.i.i99, %.split.loop.exit76.i.i.i100, %.lr.ph104.preheader.i.i.i88, %.lr.ph104.preheader.split.us.i.i.i109, %.critedge.i.i.i84
  %.046.lcssa143.i.i.i96 = phi i64 [ %.046.lcssa.i.i.i86, %.critedge.i.i.i84 ], [ %.046.lcssa142147.i.i.i106, %.split.loop.exit84.i.i.i101 ], [ 0, %.split.loop.exit80.i.i.i99 ], [ 0, %.split.loop.exit76.i.i.i100 ], [ 0, %.lr.ph104.preheader.i.i.i88 ], [ 1, %.lr.ph104.preheader.split.us.i.i.i109 ]
  %.163.i.i.i97 = phi i8 [ 0, %.critedge.i.i.i84 ], [ %i.db, %.split.loop.exit84.i.i.i101 ], [ %i.da, %.split.loop.exit80.i.i.i99 ], [ %i.cz, %.split.loop.exit76.i.i.i100 ], [ 0, %.lr.ph104.preheader.i.i.i88 ], [ 0, %.lr.ph104.preheader.split.us.i.i.i109 ] ; 3 uses
  %.2.i.i.i98 = phi ptr [ %.047.lcssa.i.i.i85, %.critedge.i.i.i84 ], [ %.us-phi129.i.i.i108, %.split.loop.exit84.i.i.i101 ], [ %scevgep125.i.i.i89, %.split.loop.exit80.i.i.i99 ], [ %scevgep125.i.i.i91, %.split.loop.exit76.i.i.i100 ], [ %.047.lcssa.i.i.i85, %.lr.ph104.preheader.i.i.i88 ], [ %.047.lcssa.i.i.i85, %.lr.ph104.preheader.split.us.i.i.i109 ] ; 4 uses
  %.1.i.i.i99 = phi i64 [ 0, %.critedge.i.i.i84 ], [ 1, %.split.loop.exit84.i.i.i101 ], [ 1, %.split.loop.exit80.i.i.i99 ], [ 2, %.split.loop.exit76.i.i.i100 ], [ 0, %.lr.ph104.preheader.i.i.i88 ], [ 0, %.lr.ph104.preheader.split.us.i.i.i109 ]
  %i.dc = add nuw nsw i64 %.1.i.i.i99, %.046.lcssa143.i.i.i96
  %i.dd = icmp ugt i64 %i.dc, 1
  br i1 %i.dd, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103: ; preds = %.split.loop.exit88.i.i.i91
  %i.de = load i32, ptr %.2.i.i.i98, align 4, !tbaa !1468
  %.not30 = icmp eq i32 %i.de, 58
  br i1 %.not30, label %bb.z, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103.thread: ; preds = %.split.loop.exit88.i.i.i91, %bb.u, %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.z:                                             ; preds = %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit103
  %i.df = getelementptr inbounds nuw i8, ptr %.2.i.i.i98, i64 4 ; 3 uses
  %i.dg = icmp eq ptr %i.df, %i.d
  br i1 %i.dg, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit127.thread, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %bb.z
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !1468
  %i.di = icmp eq i32 %i.dh, 48
  br i1 %i.di, label %bb.aa, label %.critedge.i.i.i108

bb.aa:                                            ; preds = %.lr.ph.i.i.i104
  %i.dj = getelementptr inbounds nuw i8, ptr %.2.i.i.i98, i64 8 ; 4 uses
  %.not.i.i.i126 = icmp eq ptr %i.dj, %i.d
  br i1 %.not.i.i.i126, label %.critedge.i.i.i108, label %.lr.ph.i.i.i104.1

.lr.ph.i.i.i104.1:                                ; preds = %bb.aa
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1468
  %i.dl = icmp eq i32 %i.dk, 48
  br i1 %i.dl, label %bb.ab, label %.critedge.i.i.i108

bb.ab:                                            ; preds = %.lr.ph.i.i.i104.1
  %i.dm = getelementptr inbounds nuw i8, ptr %.2.i.i.i98, i64 12
  br label %.critedge.i.i.i108

.critedge.i.i.i108:                               ; preds = %bb.ab, %.lr.ph.i.i.i104.1, %bb.aa, %.lr.ph.i.i.i104
  %.047.lcssa.i.i.i109 = phi ptr [ %i.dj, %bb.aa ], [ %i.df, %.lr.ph.i.i.i104 ], [ %i.dj, %.lr.ph.i.i.i104.1 ], [ %i.dm, %bb.ab ] ; 9 uses
  %i.dn = phi i1 [ false, %bb.aa ], [ false, %.lr.ph.i.i.i104 ], [ false, %.lr.ph.i.i.i104.1 ], [ true, %bb.ab ]
  %i.do = phi i1 [ true, %bb.aa ], [ false, %.lr.ph.i.i.i104 ], [ true, %.lr.ph.i.i.i104.1 ], [ false, %bb.ab ]
  %.046.lcssa.i.i.i110 = phi i64 [ 1, %bb.aa ], [ 0, %.lr.ph.i.i.i104 ], [ 1, %.lr.ph.i.i.i104.1 ], [ 2, %bb.ab ]
  %i.dp = icmp eq ptr %.047.lcssa.i.i.i109, %i.d
  %or.cond64100.i.i.i111 = or i1 %i.dp, %i.dn
  br i1 %or.cond64100.i.i.i111, label %.split.loop.exit88.i.i.i115, label %.lr.ph104.preheader.i.i.i122

.lr.ph104.preheader.i.i.i122:                     ; preds = %.critedge.i.i.i108
  %scevgep125.i.i.i123 = getelementptr i8, ptr %.047.lcssa.i.i.i109, i64 8
  br i1 %i.do, label %.lr.ph104.preheader.split.us.i.i.i141, label %.lr.ph104.preheader.i.i.i112

.lr.ph104.preheader.split.us.i.i.i141:            ; preds = %.lr.ph104.preheader.i.i.i122
  %19 = load i32, ptr %.047.lcssa.i.i.i109, align 4, !tbaa !1468 ; 2 uses
  %20 = add i32 %19, -48
  %or.cond.i.us.i.i.i142 = icmp ult i32 %20, 10
  br i1 %or.cond.i.us.i.i.i142, label %.split.loop.exit84.split.us.i.i.i143, label %.split.loop.exit88.i.i.i115

.split.loop.exit84.split.us.i.i.i143:             ; preds = %.lr.ph104.preheader.split.us.i.i.i141
  %21 = add nuw nsw i32 %19, 208
  %22 = getelementptr inbounds nuw i8, ptr %.047.lcssa.i.i.i109, i64 4
  br label %.split.loop.exit84.i.i.i125

.lr.ph104.preheader.i.i.i112:                     ; preds = %.lr.ph104.preheader.i.i.i122
  %scevgep125.i.i.i113 = getelementptr i8, ptr %.047.lcssa.i.i.i109, i64 4 ; 3 uses
  %i.dq = load i32, ptr %.047.lcssa.i.i.i109, align 4, !tbaa !1468 ; 2 uses
  %i.dr = add i32 %i.dq, -48
  %or.cond.i.i.i.i114 = icmp ult i32 %i.dr, 10
  br i1 %or.cond.i.i.i.i114, label %bb.ac, label %.split.loop.exit88.i.i.i115

bb.ac:                                            ; preds = %.lr.ph104.preheader.i.i.i112
  %i.ds = add nuw nsw i32 %i.dq, 208              ; 3 uses
  %i.dt = icmp eq ptr %scevgep125.i.i.i113, %i.d
  br i1 %i.dt, label %.split.loop.exit84.i.i.i125, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load i32, ptr %scevgep125.i.i.i113, align 4, !tbaa !1468 ; 2 uses
  %i.dv = add i32 %i.du, -48
  %or.cond.i54.i.i.i122 = icmp ult i32 %i.dv, 10
  br i1 %or.cond.i54.i.i.i122, label %.split.loop.exit76.i.i.i124, label %.split.loop.exit80.i.i.i123

.split.loop.exit76.i.i.i124:                      ; preds = %bb.ad
  %i.dw = mul nuw nsw i32 %i.ds, 10
  %i.dx = add nuw nsw i32 %i.dw, 208
  %i.dy = add nuw nsw i32 %i.dx, %i.du
  %i.dz = trunc i32 %i.dy to i8
  br label %.split.loop.exit88.i.i.i115

.split.loop.exit80.i.i.i123:                      ; preds = %bb.ad
  %i.ea = trunc i32 %i.ds to i8
  br label %.split.loop.exit88.i.i.i115

.split.loop.exit84.i.i.i125:                      ; preds = %bb.ac, %.split.loop.exit84.split.us.i.i.i143
  %.046.lcssa142147.i.i.i138 = phi i64 [ 1, %.split.loop.exit84.split.us.i.i.i143 ], [ 0, %bb.ac ]
  %.us-phi128.i.i.i139 = phi i32 [ %21, %.split.loop.exit84.split.us.i.i.i143 ], [ %i.ds, %bb.ac ]
  %.us-phi129.i.i.i140 = phi ptr [ %22, %.split.loop.exit84.split.us.i.i.i143 ], [ %i.d, %bb.ac ]
  %i.eb = trunc i32 %.us-phi128.i.i.i139 to i8
  br label %.split.loop.exit88.i.i.i115

.split.loop.exit88.i.i.i115:                      ; preds = %.split.loop.exit84.i.i.i125, %.split.loop.exit80.i.i.i123, %.split.loop.exit76.i.i.i124, %.lr.ph104.preheader.i.i.i112, %.lr.ph104.preheader.split.us.i.i.i141, %.critedge.i.i.i108
  %.046.lcssa143.i.i.i128 = phi i64 [ %.046.lcssa.i.i.i110, %.critedge.i.i.i108 ], [ %.046.lcssa142147.i.i.i138, %.split.loop.exit84.i.i.i125 ], [ 0, %.split.loop.exit80.i.i.i123 ], [ 0, %.split.loop.exit76.i.i.i124 ], [ 0, %.lr.ph104.preheader.i.i.i112 ], [ 1, %.lr.ph104.preheader.split.us.i.i.i141 ]
  %.163.i.i.i129 = phi i8 [ 0, %.critedge.i.i.i108 ], [ %i.eb, %.split.loop.exit84.i.i.i125 ], [ %i.ea, %.split.loop.exit80.i.i.i123 ], [ %i.dz, %.split.loop.exit76.i.i.i124 ], [ 0, %.lr.ph104.preheader.i.i.i112 ], [ 0, %.lr.ph104.preheader.split.us.i.i.i141 ] ; 3 uses
  %.2.i.i.i130 = phi ptr [ %.047.lcssa.i.i.i109, %.critedge.i.i.i108 ], [ %.us-phi129.i.i.i140, %.split.loop.exit84.i.i.i125 ], [ %scevgep125.i.i.i113, %.split.loop.exit80.i.i.i123 ], [ %scevgep125.i.i.i123, %.split.loop.exit76.i.i.i124 ], [ %.047.lcssa.i.i.i109, %.lr.ph104.preheader.i.i.i112 ], [ %.047.lcssa.i.i.i109, %.lr.ph104.preheader.split.us.i.i.i141 ]
  %.1.i.i.i131 = phi i64 [ 0, %.critedge.i.i.i108 ], [ 1, %.split.loop.exit84.i.i.i125 ], [ 1, %.split.loop.exit80.i.i.i123 ], [ 2, %.split.loop.exit76.i.i.i124 ], [ 0, %.lr.ph104.preheader.i.i.i112 ], [ 0, %.lr.ph104.preheader.split.us.i.i.i141 ]
  %i.ec = add nuw nsw i64 %.1.i.i.i131, %.046.lcssa143.i.i.i128
  %i.ed = icmp ugt i64 %i.ec, 1
  %.not31 = icmp eq ptr %.2.i.i.i130, %i.d
  %or.cond274 = select i1 %i.ed, i1 %.not31, i1 false
  br i1 %or.cond274, label %bb.ae, label %_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit127.thread

_ZN5boost6spirit2qi12extract_uintIhLj10ELj2ELi2ELb0ELb0EE4callIPKwEEbRT_RKS7_Rh.exit127.thread: ; preds = %.split.loop.exit88.i.i.i115, %bb.z
  call void @_ZN5boost3log11v2_mt_posix9anonymous19throw_invalid_valueEPKc(ptr noundef %0) #31
  unreachable

bb.ae:                                            ; preds = %.split.loop.exit88.i.i.i115
  br i1 %.not276.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1ENS_9date_time8weekdaysEhhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.sroa.25228.0, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i97, i8 noundef zeroext %.163.i.i.i129)
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  br i1 %.sroa.0217.0, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ee = icmp eq i16 %.sroa.7219.0, 0
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ef = icmp ugt i16 %.sroa.7219.0, 31
  br i1 %i.ef, label %bb.ak, label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %.sroa.7219.0, i32 noundef 1)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

_ZN5boost9gregorian8greg_dayC2Et.exit:            ; preds = %bb.aj, %bb.ai, %bb.ak
  %.sroa.0.0 = phi i16 [ 1, %bb.ai ], [ 1, %bb.ak ], [ %.sroa.7219.0, %bb.aj ]
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1ENS_9gregorian8greg_dayEhhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i16 %.sroa.0.0, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i97, i8 noundef zeroext %.163.i.i.i129)
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  call void @_ZN5boost3log11v2_mt_posix5sinks4file22rotation_at_time_pointC1Ehhh(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %.163.i.i.i, i8 noundef zeroext %.163.i.i.i97, i8 noundef zeroext %.163.i.i.i129)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN5boost9gregorian8greg_dayC2Et.exit, %bb.af
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix9anonymous18param_cast_to_boolIwEEbPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsIS8_ESaIS8_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  switch i64 %i.c, label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23 [
    i64 4, label %.lr.ph.i
    i64 5, label %.lr.ph.i14
  ]

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.011.i = phi ptr [ %i.o, %bb.d ], [ @.str.175, %bb.a ] ; 2 uses
  %.0810.i = phi ptr [ %i.n, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.0810.i, align 4, !tbaa !1468 ; 3 uses
  %i.f = load i32, ptr %.011.i, align 4, !tbaa !1468 ; 3 uses
  %i.g = tail call i32 @iswupper(i32 noundef %i.e) #29
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = tail call i32 @towlower(i32 noundef %i.e) #29
  br label %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i

_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i32 [ %i.h, %bb.b ], [ %i.e, %.lr.ph.i ]
  %i.j = tail call i32 @iswupper(i32 noundef %i.f) #29
  %.not.i2.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i2.i.i, label %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i
  %i.k = tail call i32 @towlower(i32 noundef %i.f) #29
  br label %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i

_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i: ; preds = %bb.c, %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i
  %i.l = phi i32 [ %i.k, %bb.c ], [ %i.f, %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i ]
  %i.m = icmp eq i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23

bb.d:                                             ; preds = %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.not.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i, label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !2133

.lr.ph.i14:                                       ; preds = %bb.a, %bb.g
  %.011.i15 = phi ptr [ %i.z, %bb.g ], [ @.str.176, %bb.a ] ; 2 uses
  %.0810.i16 = phi ptr [ %i.y, %bb.g ], [ %i.a, %bb.a ] ; 2 uses
  %i.p = load i32, ptr %.0810.i16, align 4, !tbaa !1468 ; 3 uses
  %i.q = load i32, ptr %.011.i15, align 4, !tbaa !1468 ; 3 uses
  %i.r = tail call i32 @iswupper(i32 noundef %i.p) #29
  %.not.i.i.i17 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i17, label %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i14
  %i.s = tail call i32 @towlower(i32 noundef %i.p) #29
  br label %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18

_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18: ; preds = %bb.e, %.lr.ph.i14
  %i.t = phi i32 [ %i.s, %bb.e ], [ %i.p, %.lr.ph.i14 ]
  %i.u = tail call i32 @iswupper(i32 noundef %i.q) #29
  %.not.i2.i.i19 = icmp eq i32 %i.u, 0
  br i1 %.not.i2.i.i19, label %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i20, label %bb.f

bb.f:                                             ; preds = %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18
  %i.v = tail call i32 @towlower(i32 noundef %i.q) #29
  br label %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i20

_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i20: ; preds = %bb.f, %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18
  %i.w = phi i32 [ %i.v, %bb.f ], [ %i.q, %_ZN5boost6spirit13char_encoding13standard_wide7tolowerEw.exit.i.i18 ]
  %i.x = icmp eq i32 %i.t, %i.w
  br i1 %i.x, label %bb.g, label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23

bb.g:                                             ; preds = %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i20
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i16, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i15, i64 4
  %.not.i22 = icmp eq ptr %i.y, %i.d
  br i1 %.not.i22, label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit.thread, label %.lr.ph.i14, !llvm.loop !2133

_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23: ; preds = %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i20, %_ZNK5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalclIwEEbT_S5_.exit.i, %bb.a
  %i.aa = tail call noundef i32 @_ZN5boost3log11v2_mt_posix9anonymous17param_cast_to_intIjwEET_PKcRKNSt7__cxx1112basic_stringIT0_St11char_traitsIS9_ESaIS9_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ab = icmp ne i32 %i.aa, 0
  br label %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit.thread

_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit.thread: ; preds = %bb.g, %bb.d, %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23
  %.0 = phi i1 [ %i.ab, %_ZSt5equalIPKwS1_N5boost3log11v2_mt_posix9anonymous25is_case_insensitive_equalEEbT_S7_T0_T1_.exit23 ], [ true, %bb.d ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost3log11v2_mt_posix9anonymous31param_cast_to_auto_newline_modeIwEENS1_5sinks17auto_newline_modeEPKcRKNSt7__cxx1112basic_stringIT_St11char_traitsISA_ESaISA_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::locale", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  switch i64 %i.b, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23 [
    i64 8, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 12, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
    i64 15, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  ]

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !297
  %i.d = tail call i32 @wmemcmp(ptr noundef %i.c, ptr noundef nonnull @.str.177, i64 noundef 8) #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !297
  %i.f = tail call i32 @wmemcmp(ptr noundef %.pre, ptr noundef nonnull @.str.178, i64 noundef %i.b) #34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %bb.a
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !297
  %i.h = tail call i32 @wmemcmp(ptr noundef %.pre24, ptr noundef nonnull @.str.179, i64 noundef %i.b) #34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  invoke void @_ZN5boost3log11v2_mt_posix3aux9to_narrowERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.142, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.112)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost3log11v2_mt_posix13invalid_value6throw_EPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull @.str.67, i64 noundef 170, ptr noundef nonnull align 8 dereferenceable(32) %2) #31
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread23
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.i ] ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !16
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
end_hunk_1
