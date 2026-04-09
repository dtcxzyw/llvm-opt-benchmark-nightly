inline.NumInlined: 865
inline.NumDeleted: 342
begin_hunk_0_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 4 uses
  %4 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 9 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 5 uses
  %i.g = icmp sgt i64 %i.d, 7
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.9320 = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.copyload.i73 = load i64, ptr %.9320, align 1
  %.not.i74 = icmp eq i64 %.0.copyload.i73, 3472328296227680304
  br i1 %.not.i74, label %bb.b, label %.lr.ph.._crit_edge.loopexit_crit_edge

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.pre465 = ptrtoint ptr %.9320 to i64
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.9320, i64 8 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = sub i64 %i.f, %i.i
  %i.k = icmp sgt i64 %i.j, 7
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.._crit_edge.loopexit_crit_edge, %bb.a
  %.9.lcssa454.pre-phi = phi i64 [ %4, %bb.a ], [ %.pre465, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.i, %bb.b ]
  %.9.lcssa = phi ptr [ %i.b, %bb.a ], [ %.9320, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %.not8.i71325 = icmp eq ptr %.9.lcssa, %i.e
  br i1 %.not8.i71325, label %._crit_edge357, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %._crit_edge
  %5 = add i64 %i.d, %4
  %6 = sub i64 %5, %.9.lcssa454.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %6
  br label %.lr.ph328

.lr.ph328:                                        ; preds = %.lr.ph329.preheader, %bb.c
  %.10326 = phi ptr [ %i.m, %bb.c ], [ %.9.lcssa, %.lr.ph329.preheader ] ; 3 uses
  %i.l = load i8, ptr %.10326, align 1, !tbaa !29
  %.not9.i72 = icmp eq i8 %i.l, 48
  br i1 %.not9.i72, label %bb.c, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
bb.c:                                             ; preds = %.lr.ph328
  %i.m = getelementptr inbounds nuw i8, ptr %.10326, i64 1 ; 2 uses
  %.not8.i71 = icmp eq ptr %i.m, %i.e
  br i1 %.not8.i71, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75, label %.lr.ph328, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75: ; preds = %.lr.ph328, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10326, %.lr.ph328 ] ; 2 uses
  %.not355 = icmp eq ptr %.10.lcssa, %i.e
  br i1 %.not355, label %._crit_edge357, label %.preheader301.lr.ph

.preheader301.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit132
  %.0356 = phi ptr [ %.10.lcssa, %.preheader301.lr.ph ], [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit132 ] ; 5 uses
  %.promoted = load i64, ptr %3, align 8          ; 4 uses
  %i.o = ptrtoint ptr %.0356 to i64
  %i.p = sub i64 %i.f, %i.o
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  %.not = icmp eq ptr %.2.lcssa, %i.e
  br i1 %.not, label %._crit_edge357, label %.preheader301, !llvm.loop !99

._crit_edge357:                                   ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit132, %._crit_edge, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit75
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !98 ; 6 uses
  %7 = ptrtoint ptr %i.ih to i64                  ; 2 uses
  %.not59 = icmp eq ptr %i.ih, null
  br i1 %.not59, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge357
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !87 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 10 uses
  %i.il = load i64, ptr %3, align 8, !tbaa !72
  %i.im = icmp eq i64 %i.il, 0
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  br i1 %i.io, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %.preheader296, %bb.p
  %.7374 = phi ptr [ %i.ip, %bb.p ], [ %i.ih, %.preheader296 ] ; 4 uses
  %.0.copyload.i = load i64, ptr %.7374, align 1
  %.not.i = icmp eq i64 %.0.copyload.i, 3472328296227680304
  br i1 %.not.i, label %bb.p, label %.lr.ph376.._crit_edge377.loopexit_crit_edge

.lr.ph376.._crit_edge377.loopexit_crit_edge:      ; preds = %.lr.ph375
  %.pre = ptrtoint ptr %.7374 to i64
  br label %._crit_edge376

bb.p:                                             ; preds = %.lr.ph375
  %i.ip = getelementptr inbounds nuw i8, ptr %.7374, i64 8 ; 3 uses
  %i.iq = ptrtoint ptr %i.ip to i64               ; 2 uses
  %i.ir = sub i64 %i.in, %i.iq
  %i.is = icmp sgt i64 %i.ir, 7
  br i1 %i.is, label %.lr.ph375, label %._crit_edge376, !llvm.loop !88

._crit_edge376:                                   ; preds = %bb.p, %.lr.ph376.._crit_edge377.loopexit_crit_edge, %.preheader296
  %.7.lcssa455.pre-phi = phi i64 [ %7, %.preheader296 ], [ %.pre, %.lr.ph376.._crit_edge377.loopexit_crit_edge ], [ %i.iq, %bb.p ]
  %.7.lcssa = phi ptr [ %i.ih, %.preheader296 ], [ %.7374, %.lr.ph376.._crit_edge377.loopexit_crit_edge ], [ %i.ip, %bb.p ] ; 3 uses
  %.not8.i380 = icmp eq ptr %.7.lcssa, %i.ik
  br i1 %.not8.i380, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.lr.ph384.preheader

.lr.ph384.preheader:                              ; preds = %._crit_edge376
  %8 = add i64 %i.ij, %7
  %9 = sub i64 %8, %.7.lcssa455.pre-phi
  %scevgep456 = getelementptr i8, ptr %.7.lcssa, i64 %9
  br label %.lr.ph383

.lr.ph383:                                        ; preds = %.lr.ph384.preheader, %bb.q
  %.8381 = phi ptr [ %i.iu, %bb.q ], [ %.7.lcssa, %.lr.ph384.preheader ] ; 3 uses
  %i.it = load i8, ptr %.8381, align 1, !tbaa !29
  %.not9.i = icmp eq i8 %i.it, 48
  br i1 %.not9.i, label %bb.q, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
bb.q:                                             ; preds = %.lr.ph383
  %i.iu = getelementptr inbounds nuw i8, ptr %.8381, i64 1 ; 2 uses
  %.not8.i = icmp eq ptr %i.iu, %i.ik
  br i1 %.not8.i, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, label %.lr.ph383, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit: ; preds = %bb.q, %.lr.ph383, %bb.o
  %.3 = phi ptr [ %i.ih, %bb.o ], [ %.8381, %.lr.ph383 ], [ %scevgep456, %bb.q ] ; 2 uses
  %.not60413 = icmp eq ptr %.3, %i.ik
  br i1 %.not60413, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader294.lr.ph

end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  store i64 %i.rc, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit194, %bb.w, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, %._crit_edge376, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit85.thread, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, %.preheader, %._crit_edge357, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, %bb.l
  ret void
}

end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE:bb.a
  br i1 %.0.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.da = add i64 %.02769.us, %i.cd               ; 3 uses
  %i.db = zext i16 %i.co to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.db)
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, label %.critedge.i.i.us

bb.u:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a
  %i.dd = add i64 %.01421.i.i.us103, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, !llvm.loop !117

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a: ; preds = %bb.t, %bb.u
  %.01421.i.i.us103 = phi i64 [ %i.dd, %bb.u ], [ %i.da, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us103 ; 2 uses
  %5 = load i64, ptr %i.de, align 8, !tbaa !72
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  store i64 %8, ptr %i.de, align 8, !tbaa !72
  br i1 %7, label %bb.u, label %.critedge.us, !llvm.loop !117

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %9 = icmp ult i16 %i.co, 62
  br i1 %9, label %.lr.ph104, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

.lr.ph104:                                        ; preds = %.critedge.i.i.us
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  store i64 1, ptr %i.df, align 8, !tbaa !72
  %10 = add nuw nsw i16 %i.co, 1                  ; 2 uses
  store i16 %10, ptr %i.a, align 8, !tbaa !91
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a, %.lr.ph104, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dg = phi i16 [ %i.aq, %.lr.ph.split.us ], [ %i.co, %bb.q ], [ %10, %.lr.ph104 ], [ %i.co, %._crit_edge.i49.us ], [ %i.co, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dh = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dh, %2
end_hunk_7
begin_hunk_8_@llvm.assume
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_8
