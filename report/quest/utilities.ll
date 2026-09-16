Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z11util_isCPTP8KrausMapd:bb.a
  %i.be = fcmp ogt <16 x double> %i.bd, %broadcast.splat100
  %i.bf = bitcast <16 x i1> %i.be to i16
  %.not103 = icmp eq i16 %i.bf, 0
  br i1 %.not103, label %vector.body.interim, label %.split.us

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %..thread43_crit_edge.split, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51, %middle.block
  %.02464.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec, %middle.block ]
  br label %.preheader50

bb.g:                                             ; preds = %.preheader50
  %i.bh = add nuw nsw i64 %.02464, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.f
  br i1 %exitcond.not, label %..thread43_crit_edge.split, label %.preheader50, !llvm.loop !205

.preheader50:                                     ; preds = %.preheader50.preheader, %bb.g
  %.02464 = phi i64 [ %i.bh, %bb.g ], [ %.02464.ph, %.preheader50.preheader ] ; 2 uses
  %i.bi = icmp eq i64 %.02671, %.02464
  %i.bj = uitofp i1 %i.bi to double
  %i.bk = fsub double 0.000000e+00, %i.bj         ; 2 uses
  %i.bl = tail call noundef double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double 0.000000e+00)
  %i.bm = fcmp ule double %i.bl, %1
  br i1 %i.bm, label %bb.g, label %.split.us

.split.us:                                        ; preds = %vector.body, %.preheader50, %._crit_edge59.split.us.us.us.us
  store i32 0, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge.split

..thread43_crit_edge.split:                       ; preds = %bb.g, %middle.block
  %i.bn = add nuw nsw i64 %.02671, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.bn, %i.f
  br i1 %exitcond78.not, label %._crit_edge.split, label %.preheader51, !llvm.loop !203

._crit_edge.split.loopexit:                       ; preds = %..thread43_crit_edge.split.us.split.us.us
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  %i.bo = icmp ne i32 %.pre, 0
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %..thread43_crit_edge.split, %.split70, %._crit_edge.split.loopexit, %.split.us, %bb.b
  %.5 = phi i1 [ %i.d, %bb.b ], [ false, %.split.us ], [ true, %.split70 ], [ %i.bo, %._crit_edge.split.loopexit ], [ true, %..thread43_crit_edge.split ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_Z21util_setSuperoperatorPPSt7complexIdESt6vectorIS3_IS3_IS0_SaIS0_EESaIS5_EESaIS7_EEii(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.13", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !212
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre6, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !84
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !82
  %i.r = sext i32 %3 to i64
  invoke void @_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix(ptr noundef %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2, i64 noundef %i.r)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !83     ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.s, %bb.f ] ; 5 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  ret void

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix(ptr noundef %0, ptr nofree noundef align 8 dereferenceable(24) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 4294967295                   ; 5 uses
  %i.b = shl nuw i64 1, %i.a                      ; 2 uses
  %i.c = shl i64 %i.b, %i.a                       ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader78, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %4 = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter, 0
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %.epilog-lcssa
  %.04783 = phi i64 [ %i.i, %.epilog-lcssa ], [ 0, %.preheader79.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04783 ; 5 uses
  br i1 %4, label %.epil.preheader, label %.preheader79.new

.preheader78:                                     ; preds = %.epilog-lcssa, %bb.a
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge93

.lr.ph:                                           ; preds = %.preheader78
  %.not94 = icmp eq i64 %i.a, 63
  %smax.a = tail call i64 @llvm.smax.i64(i64 %i.b, i64 1) ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.c

.unr-lcssa:                                       ; preds = %.preheader79.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader79
  %.04682.epil.init = phi i64 [ 0, %.preheader79 ], [ %i.u, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04682.epil = phi i64 [ %.04682.epil.init, %.epil.preheader ], [ %i.h, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.04682.epil
  %i.h = add nuw nsw i64 %.04682.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !213

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.i = add nuw nsw i64 %.04783, 1               ; 2 uses
  %exitcond99.not = icmp eq i64 %i.i, %i.c
  br i1 %exitcond99.not, label %.preheader78, label %.preheader79, !llvm.loop !214

.preheader79.new:                                 ; preds = %.preheader79, %.preheader79.new
  %.04682 = phi i64 [ %i.u, %.preheader79.new ], [ 0, %.preheader79 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader79.new ], [ 0, %.preheader79 ]
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.04682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.04682
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.04682
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.04682
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = add nuw nsw i64 %.04682, 4               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader79.new, !llvm.loop !215

._crit_edge93:                                    ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %.preheader78
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88   ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !87   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ugt i64 %i.ad, 384307168202282325
  br i1 %i.ae, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !93
  %.pre106 = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.ag = phi ptr [ %i.y, %bb.c ], [ %.pre106, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.ah = phi ptr [ %i.z, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.ai = phi ptr [ null, %bb.c ], [ %i.af, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ah, ptr %i.ag, ptr noundef %i.ai)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader unwind label %bb.f ; 2 uses

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader: ; preds = %bb.e
  br i1 %.not94, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, label %.preheader77

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ac) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ak

.preheader77:                                     ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader, %._crit_edge90
  %.04491 = phi i64 [ %i.av, %._crit_edge90 ], [ 0, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader ] ; 3 uses
  %i.al = shl i64 %.04491, %i.a
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.04491
  %invariant.gep87 = getelementptr [8 x i8], ptr %0, i64 %i.al
  br label %.preheader76

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge: ; preds = %._crit_edge90, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader
  %.not4.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.ai, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.at, %i.aj
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ac) #31
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond105.not, label %._crit_edge93, label %bb.c, !llvm.loop !216

.preheader76:                                     ; preds = %.preheader77, %._crit_edge86
  %.04389 = phi i64 [ 0, %.preheader77 ], [ %i.ax, %._crit_edge86 ] ; 3 uses
  %i.au = shl i64 %.04389, %i.a
  br label %.preheader

._crit_edge90:                                    ; preds = %._crit_edge86
  %i.av = add nuw nsw i64 %.04491, 1              ; 2 uses
  %exitcond103.not.a = icmp eq i64 %i.av, %smax.a
  br i1 %exitcond103.not.a, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, label %.preheader77, !llvm.loop !217

.preheader:                                       ; preds = %.preheader76, %._crit_edge
  %.04285 = phi i64 [ 0, %.preheader76 ], [ %i.ay, %._crit_edge ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.04285
  %gep88 = getelementptr [8 x i8], ptr %invariant.gep87, i64 %.04285
  br label %bb.j

._crit_edge86:                                    ; preds = %._crit_edge
  %i.ax = add nuw nsw i64 %.04389, 1              ; 2 uses
  %exitcond102.not.a = icmp eq i64 %i.ax, %smax.a
  br i1 %exitcond102.not.a, label %._crit_edge90, label %.preheader76, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.m
  %i.ay = add nuw nsw i64 %.04285, 1              ; 2 uses
  %exitcond101.not.a = icmp eq i64 %i.ay, %smax.a
  br i1 %exitcond101.not.a, label %._crit_edge86, label %.preheader, !llvm.loop !219

bb.j:                                             ; preds = %.preheader, %bb.m
  %.084 = phi i64 [ 0, %.preheader ], [ %i.cj, %bb.m ] ; 3 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.04389 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.084
  %i.be = load double, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.bg = fneg double %i.be
  %i.bh = load <2 x double>, ptr %i.bd, align 8   ; 4 uses
  %i.bi = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.bj, %i.bh          ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = fmul <2 x double> %i.bm, %i.bn          ; 2 uses
  %i.bp = fadd <2 x double> %i.bk, %i.bo          ; 2 uses
  %i.bq = fsub <2 x double> %i.bk, %i.bo          ; 2 uses
  %i.br = shufflevector <2 x double> %i.bp, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bs = extractelement <2 x double> %i.bp, i64 0
  %i.bt = fcmp uno double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.k, label %bb.m, !prof !77

bb.k:                                             ; preds = %bb.j
  %i.bu = extractelement <2 x double> %i.bq, i64 1
  %i.bv = fcmp uno double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.l, label %bb.m, !prof !77

bb.l:                                             ; preds = %bb.k
  %i.bw = extractelement <2 x double> %i.bh, i64 0
  %i.bx = extractelement <2 x double> %i.bh, i64 1
  %i.by = tail call noundef { double, double } @__muldc3(double noundef %i.bf, double noundef %i.bg, double noundef %i.bw, double noundef %i.bx) #32 ; 2 uses
  %i.bz = extractvalue { double, double } %i.by, 0
  %i.ca = extractvalue { double, double } %i.by, 1
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.cd = phi <2 x double> [ %i.br, %bb.j ], [ %i.br, %bb.k ], [ %i.cc, %bb.l ]
  %i.ce = load ptr, ptr %gep88, align 8, !tbaa !50
  %i.cf = getelementptr [16 x i8], ptr %i.ce, i64 %i.au
  %i.cg = getelementptr [16 x i8], ptr %i.cf, i64 %.084 ; 2 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 8
  %i.ci = fadd <2 x double> %i.cd, %i.ch
  store <2 x double> %i.ci, ptr %i.cg, align 8
  %i.cj = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.cj, %smax.a
  br i1 %exitcond100.not, label %._crit_edge, label %bb.j, !llvm.loop !220
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !87 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_:bb.a

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !8

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.y, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.019 = phi ptr [ %i.x, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.019, align 8, !tbaa !87 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !38

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %.020, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !92
  %i.n = load ptr, ptr %.sroa.09.019, align 8, !tbaa !93
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.020, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #31
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvT_S8_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ab

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !87 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %.05.i, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !9

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @_Z16setSuperoperatorIPPPSt7complexIdEEvS3_T_ix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z16setSuperoperatorIPPPSt7complexIdEEvS3_T_ix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = and i64 %3, 4294967295                   ; 5 uses
  %i.b = shl nuw i64 1, %i.a                      ; 2 uses
  %i.c = shl i64 %i.b, %i.a                       ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader57, label %.preheader58.preheader

.preheader58.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %4 = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.preheader, %.epilog-lcssa
  %.04860 = phi i64 [ %i.j, %.epilog-lcssa ], [ 0, %.preheader58.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04860 ; 5 uses
  br i1 %4, label %.epil.preheader, label %.preheader58.new

.preheader57:                                     ; preds = %.epilog-lcssa, %bb.a
  %i.e = icmp sgt i32 %2, 0
  %i.f = icmp ne i64 %i.a, 63
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader56.lr.ph.preheader, label %._crit_edge71.split

.preheader56.lr.ph.preheader:                     ; preds = %.preheader57
  %smax.a = tail call i64 @llvm.smax.i64(i64 %i.b, i64 1) ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader56.lr.ph

.unr-lcssa:                                       ; preds = %.preheader58.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader58
  %.04759.epil.init = phi i64 [ 0, %.preheader58 ], [ %i.v, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04759.epil = phi i64 [ %.04759.epil.init, %.epil.preheader ], [ %i.i, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04759.epil
  %i.i = add nuw nsw i64 %.04759.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !223

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.j = add nuw nsw i64 %.04860, 1               ; 2 uses
  %exitcond72.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond72.not, label %.preheader57, label %.preheader58, !llvm.loop !224

.preheader58.new:                                 ; preds = %.preheader58, %.preheader58.new
  %.04759 = phi i64 [ %i.v, %.preheader58.new ], [ 0, %.preheader58 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader58.new ], [ 0, %.preheader58 ]
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.04759
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.04759
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.04759
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.04759
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = add nuw nsw i64 %.04759, 4               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader58.new, !llvm.loop !225

._crit_edge71.split:                              ; preds = %._crit_edge69, %.preheader57
  ret void

.preheader56.lr.ph:                               ; preds = %.preheader56.lr.ph.preheader, %._crit_edge69
  %indvars.iv = phi i64 [ 0, %.preheader56.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge69 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79   ; 2 uses
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.lr.ph, %._crit_edge67
  %.04568 = phi i64 [ 0, %.preheader56.lr.ph ], [ %i.ab, %._crit_edge67 ] ; 3 uses
  %i.y = shl i64 %.04568, %i.a
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.04568
  %invariant.gep64 = getelementptr [8 x i8], ptr %0, i64 %i.y
  br label %.preheader55

._crit_edge69:                                    ; preds = %._crit_edge67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond78.not, label %._crit_edge71.split, label %.preheader56.lr.ph, !llvm.loop !226

.preheader55:                                     ; preds = %.preheader56, %._crit_edge63
  %.04466 = phi i64 [ 0, %.preheader56 ], [ %i.ad, %._crit_edge63 ] ; 3 uses
  %i.aa = shl i64 %.04466, %i.a
  br label %.preheader

._crit_edge67:                                    ; preds = %._crit_edge63
  %i.ab = add nuw nsw i64 %.04568, 1              ; 2 uses
  %exitcond76.not.a = icmp eq i64 %i.ab, %smax.a
  br i1 %exitcond76.not.a, label %._crit_edge69, label %.preheader56, !llvm.loop !227

.preheader:                                       ; preds = %.preheader55, %._crit_edge
  %.04362 = phi i64 [ 0, %.preheader55 ], [ %i.ae, %._crit_edge ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.04362
  %gep65 = getelementptr [8 x i8], ptr %invariant.gep64, i64 %.04362
  br label %bb.c

._crit_edge63:                                    ; preds = %._crit_edge
  %i.ad = add nuw nsw i64 %.04466, 1              ; 2 uses
  %exitcond75.not.a = icmp eq i64 %i.ad, %smax.a
  br i1 %exitcond75.not.a, label %._crit_edge67, label %.preheader55, !llvm.loop !228

._crit_edge:                                      ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %i.ae = add nuw nsw i64 %.04362, 1              ; 2 uses
  %exitcond74.not.a = icmp eq i64 %i.ae, %smax.a
  br i1 %exitcond74.not.a, label %._crit_edge63, label %.preheader, !llvm.loop !229

bb.c:                                             ; preds = %.preheader, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %.061 = phi i64 [ 0, %.preheader ], [ %i.bp, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ] ; 3 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.04466 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.061
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.al = load double, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.am = fneg double %i.ak
  %i.an = load <2 x double>, ptr %i.aj, align 8   ; 4 uses
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.an          ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fmul <2 x double> %i.as, %i.at          ; 2 uses
  %i.av = fadd <2 x double> %i.aq, %i.au          ; 2 uses
  %i.aw = fsub <2 x double> %i.aq, %i.au          ; 2 uses
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ay = extractelement <2 x double> %i.av, i64 0
  %i.az = fcmp uno double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.ba = extractelement <2 x double> %i.aw, i64 1
  %i.bb = fcmp uno double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.bc = extractelement <2 x double> %i.an, i64 0
  %i.bd = extractelement <2 x double> %i.an, i64 1
  %i.be = tail call noundef { double, double } @__muldc3(double noundef %i.al, double noundef %i.am, double noundef %i.bc, double noundef %i.bd) #32 ; 2 uses
  %i.bf = extractvalue { double, double } %i.be, 0
  %i.bg = extractvalue { double, double } %i.be, 1
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.c, %bb.d, %bb.e
  %i.bj = phi <2 x double> [ %i.ax, %bb.c ], [ %i.ax, %bb.d ], [ %i.bi, %bb.e ]
  %i.bk = load ptr, ptr %gep65, align 8, !tbaa !50
  %i.bl = getelementptr [16 x i8], ptr %i.bk, i64 %i.aa
  %i.bm = getelementptr [16 x i8], ptr %i.bl, i64 %.061 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bm, align 8
  %i.bo = fadd <2 x double> %i.bj, %i.bn
  store <2 x double> %i.bo, ptr %i.bm, align 8
  %i.bp = add nuw nsw i64 %.061, 1                ; 2 uses
  %exitcond73.not = icmp eq i64 %i.bp, %smax.a
  br i1 %exitcond73.not, label %._crit_edge, label %bb.c, !llvm.loop !230
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !97 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 24) #31
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !11

_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z21util_setFlagToUnknownPi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #22 {
bb.a:
  store i32 -1, ptr %0, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z17cpu_allocHeapFlagv() ; 4 uses
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.a, align 4, !tbaa !33
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !31
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_Z21globalStructFieldPtrsB5cxx11) #32
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !102
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noundef ptr @_Z17cpu_allocHeapFlagv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !103
  store ptr %1, ptr %1, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !104
  %i.d = load ptr, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !97 ; 2 uses
  %.not10.i = icmp eq ptr %i.d, @_Z21globalStructFieldPtrsB5cxx11
  br i1 %.not10.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i
  %.sroa.06.011.i = phi ptr [ %i.e, %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !97 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr %1, align 8, !tbaa !97     ; 3 uses
  %i.j = icmp eq ptr %i.i, %.sroa.06.011.i
  %i.k = icmp eq ptr %i.i, %i.e
  %or.cond.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %.sroa.06.011.i, ptr noundef %i.e) #32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !102
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !102
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !102
  %i.o = add i64 %i.n, -1
end_hunk_1
