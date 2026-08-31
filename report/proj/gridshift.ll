Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gridshift?download=true
inline.NumInlined: 813
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113gridshiftData17loadGridsIfNeededEP8PJconsts:bb.a
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(96) %i.aa) #23, !inline_history !111
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 16, !tbaa !101
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ag = load ptr, ptr %i.o, align 16, !tbaa !103
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ak = call i32 @proj_errno(ptr noundef %1)    ; 2 uses
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !151
  %.not8 = icmp eq i32 %i.ak, 0
  br i1 %.not8, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.al = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113gridshiftData14checkGridTypesEP8PJconstsRb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.h, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.h ], [ false, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit ]
  ret i1 %.1
}

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113gridshiftData5applyEP8PJconsts12PJ_DIRECTION6PJ_XYZ(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -1, 2) %3, ptr nofree noundef byval(%struct.PJ_XYZ) align 8 captures(none) %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.PJ_XYZ, align 8             ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %struct.PJ_XYZ, align 8             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double +inf, ptr %i.d, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val49.pre = load double, ptr %i.g, align 8    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.030 = phi i1 [ false, %bb.a ], [ %.131, %bb.k ] ; 2 uses
  %.val46 = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %.val47 = load ptr, ptr %i.f, align 8, !tbaa !104 ; 2 uses
  %.val48 = load double, ptr %4, align 8          ; 2 uses
  %.not1315.i = icmp eq ptr %.val46, %.val47
  br i1 %.not1315.i, label %.loopexit121, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.05.016.i = phi ptr [ %i.m, %bb.c ], [ %.val46, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !105
  %i.l = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.e, double noundef %.val48, double noundef %.val49.pre) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.m, %.val47
  br i1 %.not13.i, label %.loopexit121, label %.lr.ph.i

.loopexit121:                                     ; preds = %bb.c, %bb.b
  %i.n = load i8, ptr %i.h, align 1, !tbaa !133, !range !80, !noundef !81
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %.loopexit121
  %i.p = load i8, ptr %i.i, align 8, !tbaa !124, !range !80, !noundef !81
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_118sHORIZONTAL_OFFSETB5cxx11E)
  %.val42 = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %.val43 = load ptr, ptr %i.f, align 8, !tbaa !104 ; 2 uses
  %.not1315.i50 = icmp eq ptr %.val42, %.val43
  br i1 %.not1315.i50, label %.sink.split, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.e, %bb.f
  %.sroa.05.016.i52 = phi ptr [ %i.t, %bb.f ], [ %.val42, %bb.e ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.05.016.i52, align 8, !tbaa !105
  %i.s = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.e, double noundef %.val48, double noundef %.val49.pre) ; 2 uses
  %.not.i53 = icmp eq ptr %i.s, null
  br i1 %.not.i53, label %bb.f, label %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit55

bb.f:                                             ; preds = %.lr.ph.i51
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i52, i64 8 ; 2 uses
  %.not13.i54 = icmp eq ptr %i.t, %.val43
  br i1 %.not13.i54, label %.sink.split, label %.lr.ph.i51

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = load i8, ptr %i.h, align 1, !tbaa !133, !range !80, !noundef !81
  %i.v = trunc nuw i8 %i.u to i1
  %spec.select = select i1 %i.v, i1 true, i1 %.030
  br label %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit55

_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit55: ; preds = %.lr.ph.i51, %bb.g
  %.189.in = phi ptr [ %.sroa.05.016.i, %bb.g ], [ %.sroa.05.016.i52, %.lr.ph.i51 ]
  %.131 = phi i1 [ %spec.select, %bb.g ], [ %.030, %.lr.ph.i51 ] ; 2 uses
  %.129 = phi ptr [ %i.l, %bb.g ], [ %i.s, %.lr.ph.i51 ] ; 3 uses
  %.189 = load ptr, ptr %.189.in, align 8, !tbaa !105
  %i.w = load ptr, ptr %.129, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(120) %.129)
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !114
  br label %.loopexit123

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_113gridshiftData8findGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK6PJ_XYZRPN5osgeo4proj19GenericShiftGridSetE.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aa = load ptr, ptr %2, align 8, !tbaa !57
  %i.ab = load i8, ptr %i.j, align 1, !tbaa !125, !range !80, !noundef !81
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.i, align 8, !tbaa !124, !range !80, !noundef !81
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = xor i1 %i.ae, true
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi i1 [ false, %bb.i ], [ %i.af, %bb.j ]
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i1 noundef zeroext %i.ag, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %4, i32 noundef %3, ptr noundef %.129, ptr noundef %.189, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !59, !range !80, !noundef !81
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.ai, label %bb.b, label %.loopexit123

.loopexit123:                                     ; preds = %bb.k, %bb.h
  %i.aj = load double, ptr %0, align 8, !tbaa !152 ; 3 uses
  %i.ak = fcmp oeq double %i.aj, +inf
  %i.al = load double, ptr %i.c, align 8          ; 3 uses
  %i.am = fcmp oeq double %i.al, +inf
  %or.cond = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit123
  %i.an = load ptr, ptr %2, align 8, !tbaa !57
  %i.ao = tail call i32 @proj_context_errno(ptr noundef %i.an)
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.sink.split, label %bb.ac

bb.m:                                             ; preds = %.loopexit123
  br i1 %.131, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !114
  %.val40 = load double, ptr %4, align 8
  %.val40.fr = freeze double %.val40              ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %i.au = fcmp oeq double %.val40.fr, +inf
  %i.av = fadd double %.val40.fr, f0xC01921FB54442D18
  %i.aw = fadd double %.val40.fr, f0x401921FB54442D18
  br i1 %i.au, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.o
  %.val41.pre = load double, ptr %i.g, align 8    ; 4 uses
  br label %.split

.split.us:                                        ; preds = %bb.o
  %.val.us = load ptr, ptr %1, align 8, !tbaa !104 ; 2 uses
  %.val39.us = load ptr, ptr %i.f, align 8, !tbaa !104 ; 2 uses
  %.val41.us = load double, ptr %i.g, align 8     ; 2 uses
  %.not1315.i56.us = icmp eq ptr %.val.us, %.val39.us
  br i1 %.not1315.i56.us, label %.sink.split, label %.lr.ph.i57.us

.lr.ph.i57.us:                                    ; preds = %.split.us, %bb.p
  %.sroa.05.016.i58.us = phi ptr [ %i.az, %bb.p ], [ %.val.us, %.split.us ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.05.016.i58.us, align 8, !tbaa !105
  %i.ay = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, double noundef +inf, double noundef %.val41.us) ; 3 uses
  %.not.i59.us = icmp eq ptr %i.ay, null
  br i1 %.not.i59.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i57.us
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i58.us, i64 8 ; 2 uses
  %.not13.i60.us = icmp eq ptr %i.az, %.val39.us
  br i1 %.not13.i60.us, label %.sink.split, label %.lr.ph.i57.us

bb.q:                                             ; preds = %.lr.ph.i57.us
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
  br i1 %i.bd, label %.loopexit, label %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread.split.us

_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread.split.us: ; preds = %bb.q
  %i.be = insertelement <2 x double> <double +inf, double poison>, double %.val41.us, i64 1
  store <2 x double> %i.be, ptr %0, align 8, !tbaa !115
  store double %.sroa.3.0.copyload, ptr %i.d, align 8, !tbaa !115
  br label %.sink.split

.split:                                           ; preds = %.split.preheader, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit
  %i.bf = phi double [ %i.al, %.split.preheader ], [ +inf, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit ]
  %i.bg = phi double [ %i.aj, %.split.preheader ], [ +inf, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit ]
  %.val = load ptr, ptr %1, align 8, !tbaa !104   ; 2 uses
  %.val39 = load ptr, ptr %i.f, align 8, !tbaa !104 ; 2 uses
  %.not1315.i56 = icmp eq ptr %.val, %.val39
  br i1 %.not1315.i56, label %.sink.split, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.split, %bb.r
  %.sroa.05.016.i58 = phi ptr [ %i.bj, %bb.r ], [ %.val, %.split ] ; 3 uses
  %i.bh = load ptr, ptr %.sroa.05.016.i58, align 8, !tbaa !105
  %i.bi = tail call noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, double noundef %.val40.fr, double noundef %.val41.pre) ; 11 uses
  %.not.i59 = icmp eq ptr %i.bi, null
  br i1 %.not.i59, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i57
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i58, i64 8 ; 2 uses
  %.not13.i60 = icmp eq ptr %i.bj, %.val39
  br i1 %.not13.i60, label %.sink.split, label %.lr.ph.i57

bb.s:                                             ; preds = %.lr.ph.i57
  %i.bk = load ptr, ptr %.sroa.05.016.i58, align 8, !tbaa !105 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(120) %i.bi)
  br i1 %i.bo, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !129, !range !80, !noalias !153, !noundef !81
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.u, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !156, !noalias !153
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !157, !noalias !153
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = fmul double %i.bx, 1.000000e-05         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !158, !noalias !153
  %i.cb = fsub double %i.ca, %i.by
  %i.cc = fcmp olt double %.val40.fr, %i.cb
  br i1 %i.cc, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !159, !noalias !153
  %i.cf = fadd double %i.by, %i.ce
  %i.cg = fcmp ogt double %.val40.fr, %i.cf
  br i1 %i.cg, label %bb.w, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i

bb.w:                                             ; preds = %bb.v
  br label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i

_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i: ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  %.sroa.0.1.i.i = phi double [ %.val40.fr, %bb.t ], [ %.val40.fr, %bb.v ], [ %i.av, %bb.w ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !153
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, double %.sroa.0.1.i.i, double %.val41.pre, ptr noundef nonnull %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !noalias !153
  %i.ch = load ptr, ptr %i.bi, align 8, !tbaa !107, !noalias !153
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !153
  %i.ck = tail call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(120) %i.bi), !noalias !153, !inline_history !160
  br i1 %i.ck, label %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i
  %i.cl = load double, ptr %5, align 8, !tbaa !152, !noalias !153 ; 2 uses
  %i.cm = fcmp oeq double %i.cl, +inf
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load <2 x double>, ptr %.sroa.10.0..sroa_idx70, align 8, !tbaa !115
  br label %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115

bb.z:                                             ; preds = %bb.x
  %i.co = icmp eq i32 %3, 1
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cp = fadd double %.val40.fr, %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !115, !noalias !153
  %i.cs = insertelement <2 x double> poison, double %.val41.pre, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %.sroa.3.0.copyload, i64 1
  %i.cu = fadd <2 x double> %i.ct, %i.cr
  br label %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115

bb.ab:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !118, !noalias !153
  %i.cx = fsub double %.sroa.3.0.copyload, %i.cw
  %i.cy = insertelement <2 x double> poison, double %.val41.pre, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1
  br label %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115

_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115: ; preds = %bb.y, %bb.aa, %bb.ab
  %.sroa.0.0.ph = phi double [ %.val40.fr, %bb.ab ], [ %i.cp, %bb.aa ], [ +inf, %bb.y ] ; 2 uses
  %i.da = phi <2 x double> [ %i.cz, %bb.ab ], [ %i.cu, %bb.aa ], [ %i.cn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !153
  store double %.sroa.0.0.ph, ptr %0, align 8, !tbaa !115
  store <2 x double> %i.da, ptr %i.c, align 8, !tbaa !115
  %i.db = extractelement <2 x double> %i.da, i64 0
  br label %.loopexit

_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit: ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit.i
  %i.dc = load ptr, ptr %i.bk, align 8, !tbaa !107, !noalias !153
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !153
  %i.df = tail call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(96) %i.bk, ptr noundef %i.bp), !noalias !153, !inline_history !160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !153
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  store double +inf, ptr %i.d, align 8, !tbaa !115
  br i1 %i.df, label %.split, label %.sink.split

.loopexit:                                        ; preds = %bb.s, %bb.q, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115
  %i.dg = phi double [ %i.db, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115 ], [ %i.al, %bb.q ], [ %i.bf, %bb.s ]
  %i.dh = phi double [ %.sroa.0.0.ph, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread115 ], [ %i.aj, %bb.q ], [ %i.bg, %bb.s ]
  %i.di = fcmp oeq double %i.dh, +inf
  %i.dj = fcmp oeq double %i.dg, +inf
  %or.cond5 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond5, label %.sink.split, label %bb.ac

.sink.split:                                      ; preds = %.loopexit121, %bb.d, %bb.e, %bb.f, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit, %.split, %bb.r, %bb.p, %.loopexit, %_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb.exit.thread.split.us, %.split.us, %bb.l
  %i.dk = load ptr, ptr %2, align 8, !tbaa !57
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.dk, i32 noundef 2052)
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.m, %bb.n, %.loopexit, %bb.l
  ret void
}

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113gridshiftData19grid_apply_internalEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb6PJ_XYZ12PJ_DIRECTIONPKN5osgeo4proj16GenericShiftGridEPNSE_19GenericShiftGridSetERb(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %5, i32 noundef range(i32 -1, 2) %6, ptr noundef nonnull %7, ptr noundef %8, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %9) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %10 = alloca %struct.PJ_XYZ, align 8            ; 12 uses
  store i8 0, ptr %9, align 1, !tbaa !59
  %i.b = load double, ptr %5, align 8, !tbaa !152 ; 7 uses
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !114
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.278.0.copyload = load double, ptr %.sroa.278.0..sroa_idx, align 8, !tbaa !115 ; 2 uses
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !129, !range !80, !noundef !81
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.h = load double, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.j = load double, ptr %i.i, align 8, !tbaa !157
  %i.k = fadd double %i.h, %i.j
  %i.l = fmul double %i.k, 1.000000e-05           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.n = load double, ptr %i.m, align 8, !tbaa !158
  %i.o = fsub double %i.n, %i.l
  %i.p = fcmp olt double %i.b, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = fadd double %i.b, f0x401921FB54442D18
  br label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.s = load double, ptr %i.r, align 8, !tbaa !159
  %i.t = fadd double %i.l, %i.s
  %i.u = fcmp ogt double %i.b, %i.t
  br i1 %i.u, label %bb.g, label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

bb.g:                                             ; preds = %bb.f
  %i.v = fadd double %i.b, f0xC01921FB54442D18
  br label %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit

_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.sroa.0.1.i = phi double [ %i.b, %bb.c ], [ %i.q, %bb.e ], [ %i.v, %bb.g ], [ %i.b, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %.sroa.0.1.i, double %.sroa.278.0.copyload, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.w = load ptr, ptr %7, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(120) %7)
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit
  %i.aa = load ptr, ptr %8, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %2)
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %9, align 1, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +inf, ptr %i.af, align 8, !tbaa !118
  store <2 x double> splat (double +inf), ptr %0, align 8, !tbaa !115
  br label %.critedge63

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_110normalizeXEPKN5osgeo4proj16GenericShiftGridE6PJ_XYZRPKNS1_12ExtentAndResE.exit
  %i.ag = load double, ptr %10, align 8, !tbaa !152 ; 3 uses
  %i.ah = fcmp oeq double %i.ag, +inf
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !114
  br label %.critedge63

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp eq i32 %6, 1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !114
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !161
  %i.al = load <2 x double>, ptr %0, align 8, !tbaa !115
  %i.am = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ak, i64 1
  %i.ao = fadd <2 x double> %i.an, %i.al
  store <2 x double> %i.ao, ptr %0, align 8, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !118
  %i.at = fadd double %i.aq, %i.as
  store double %i.at, ptr %i.ar, align 8, !tbaa !118
  br label %.critedge63

bb.m:                                             ; preds = %bb.k
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !114
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !118
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !118
  %i.ay = fsub double %i.ax, %i.av
  store double %i.ay, ptr %i.aw, align 8, !tbaa !118
  br label %.critedge63

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !161
  %i.bb = insertelement <2 x double> poison, double %.sroa.0.1.i, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %.sroa.278.0.copyload, i64 1 ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1
  %i.bf = fsub <2 x double> %i.bc, %i.be          ; 2 uses
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !59, !range !80, !noundef !81
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.ac
  %.085 = phi ptr [ %.287, %bb.ac ], [ %i.d, %.preheader ] ; 5 uses
  %.082 = phi ptr [ %.183, %bb.ac ], [ %8, %.preheader ] ; 3 uses
  %.055 = phi i32 [ %i.dt, %bb.ac ], [ 10, %.preheader ]
  %.0 = phi ptr [ %.2, %bb.ac ], [ %7, %.preheader ] ; 6 uses
  %i.bj = phi <2 x double> [ %i.dr, %bb.ac ], [ %i.bf, %.preheader ] ; 12 uses
  %i.bk = phi <2 x double> [ %i.ds, %bb.ac ], [ %i.bc, %.preheader ] ; 2 uses
  %i.bl = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_113gridshiftData16grid_interpolateEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE5PJ_XYPKN5osgeo4proj16GenericShiftGridERb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double %i.bl, double %i.bm, ptr noundef %.0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bn = load ptr, ptr %.0, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(120) %.0)
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %.082, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
end_hunk_0
