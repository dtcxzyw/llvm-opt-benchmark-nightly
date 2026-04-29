inline.NumInlined: 415
inline.NumDeleted: 151
begin_hunk_0_@main:bb.a
  br i1 %or.cond, label %.lr.ph.i142.preheader381, label %vector.ph343

vector.ph343:                                     ; preds = %.lr.ph.i142.preheader
  %n.vec345 = and i64 %i.hf, 4611686018427387900  ; 4 uses
  %i.hi = shl i64 %n.vec345, 3
  %i.hj = getelementptr i8, ptr %i.hb, i64 %i.hi
  %2 = shl i64 %n.vec345, 3
  %i.hk = getelementptr i8, ptr %i.gw, i64 %2
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph343
  %index347 = phi i64 [ 0, %vector.ph343 ], [ %index.next353, %vector.body346 ] ; 3 uses
  %offset.idx348 = shl i64 %index347, 3
  %next.gep349 = getelementptr i8, ptr %i.hb, i64 %offset.idx348 ; 2 uses
  %offset.idx350 = shl i64 %index347, 3
  %next.gep351 = getelementptr i8, ptr %i.gw, i64 %offset.idx350 ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep351, align 8, !tbaa !32
  %wide.load352 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %or.cond380, label %.lr.ph.i146.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %_ZN9benchmark4copyIPdP12ValueWrapperIdEEEvT_S5_T0_.exit
  %n.vec364 = and i64 %i.hv, 4611686018427387900  ; 4 uses
  %i.hy = shl i64 %n.vec364, 3
  %i.hz = getelementptr i8, ptr %i.hr, i64 %i.hy
  %3 = shl i64 %n.vec364, 3
  %i.ia = getelementptr i8, ptr %i.gw, i64 %3
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph362
  %index366 = phi i64 [ 0, %vector.ph362 ], [ %index.next373, %vector.body365 ] ; 3 uses
  %offset.idx367 = shl i64 %index366, 3
  %next.gep368 = getelementptr i8, ptr %i.hr, i64 %offset.idx367 ; 2 uses
  %offset.idx369 = shl i64 %index366, 3
  %next.gep370 = getelementptr i8, ptr %i.gw, i64 %offset.idx369 ; 2 uses
  %i.ib = getelementptr i8, ptr %next.gep370, i64 16
  %wide.load371 = load <2 x i64>, ptr %next.gep370, align 8, !tbaa !32
  %wide.load372 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check57 = icmp ult i64 %i.k, 24
  %diff.check55 = icmp ult i64 %i.i, 32
  %or.cond = or i1 %min.iters.check57, %diff.check55
  %n.vec60 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec60, 3
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %6 = shl i64 %n.vec60, 3
  %i.p = getelementptr i8, ptr %0, i64 %6
  %cmp.n71 = icmp eq i64 %i.m, %n.vec60
  br label %.lr.ph.i.preheader.us

end_hunk_2
begin_hunk_3_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body61

vector.body61:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body61
  %index62 = phi i64 [ %index.next69, %vector.body61 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx63 = shl i64 %index62, 3
  %next.gep64 = getelementptr i8, ptr %2, i64 %offset.idx63 ; 2 uses
  %offset.idx65 = shl i64 %index62, 3
  %next.gep66 = getelementptr i8, ptr %0, i64 %offset.idx65 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x double>, ptr %next.gep66, align 8, !tbaa !32
  %wide.load68 = load <2 x double>, ptr %i.aa, align 8, !tbaa !32
end_hunk_3
begin_hunk_4_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.aq, 24
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond74 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.as, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %2, i64 %i.at
  %7 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %0, i64 %7
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_4
begin_hunk_5_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond74, label %.lr.ph.i.preheader77, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx50 = shl i64 %index, 3
  %next.gep51 = getelementptr i8, ptr %0, i64 %offset.idx50 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !32
  %wide.load52 = load <2 x double>, ptr %i.bk, align 8, !tbaa !32
end_hunk_5
begin_hunk_6_@_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  %min.iters.check64 = icmp ult i64 %i.k, 24
  %diff.check62 = icmp ult i64 %i.i, 32
  %or.cond = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  %n.vec67 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec67, 3
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %6 = shl i64 %n.vec67, 3
  %i.p = getelementptr i8, ptr %2, i64 %6
  %cmp.n78 = icmp eq i64 %i.m, %n.vec67
  br label %.lr.ph.i.preheader.us

end_hunk_6
begin_hunk_7_@_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body68

vector.body68:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body68
  %index69 = phi i64 [ %index.next76, %vector.body68 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx70 = shl i64 %index69, 3
  %next.gep71 = getelementptr i8, ptr %0, i64 %offset.idx70 ; 2 uses
  %offset.idx72 = shl i64 %index69, 3
  %next.gep73 = getelementptr i8, ptr %2, i64 %offset.idx72 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load74 = load <2 x double>, ptr %next.gep71, align 8, !tbaa !32
  %wide.load75 = load <2 x double>, ptr %i.ab, align 8, !tbaa !32
end_hunk_7
begin_hunk_8_@_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.as, 24
  %diff.check = icmp ult i64 %i.aq, 32
  %or.cond81 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.au, 4611686018427387900     ; 4 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %7 = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %2, i64 %7
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_8
begin_hunk_9_@_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  br i1 %or.cond81, label %.lr.ph.i.preheader84, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx57 = shl i64 %index, 3
  %next.gep58 = getelementptr i8, ptr %2, i64 %offset.idx57 ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load59 = load <2 x double>, ptr %i.bn, align 8, !tbaa !32
end_hunk_9
begin_hunk_10_@_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  %min.iters.check57 = icmp ult i64 %i.k, 24
  %diff.check55 = icmp ult i64 %i.i, 32
  %or.cond = or i1 %min.iters.check57, %diff.check55
  %n.vec60 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec60, 3
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %6 = shl i64 %n.vec60, 3
  %i.p = getelementptr i8, ptr %0, i64 %6
  %cmp.n71 = icmp eq i64 %i.m, %n.vec60
  br label %.lr.ph.i.preheader.us

end_hunk_10
begin_hunk_11_@_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body61

vector.body61:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body61
  %index62 = phi i64 [ %index.next69, %vector.body61 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx63 = shl i64 %index62, 3
  %next.gep64 = getelementptr i8, ptr %2, i64 %offset.idx63 ; 2 uses
  %offset.idx65 = shl i64 %index62, 3
  %next.gep66 = getelementptr i8, ptr %0, i64 %offset.idx65 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !32
  %wide.load68 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
end_hunk_11
begin_hunk_12_@_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.aq, 24
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond74 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.as, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %2, i64 %i.at
  %7 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %0, i64 %7
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_12
begin_hunk_13_@_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  br i1 %or.cond74, label %.lr.ph.i.preheader77, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx50 = shl i64 %index, 3
  %next.gep51 = getelementptr i8, ptr %0, i64 %offset.idx50 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !32
  %wide.load52 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !32
end_hunk_13
begin_hunk_14_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  %min.iters.check65 = icmp ult i64 %i.k, 24
  %diff.check63 = icmp ult i64 %i.i, 32
  %or.cond = select i1 %min.iters.check65, i1 true, i1 %diff.check63
  %n.vec68 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec68, 3
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %6 = shl i64 %n.vec68, 3
  %i.p = getelementptr i8, ptr %2, i64 %6
  %cmp.n79 = icmp eq i64 %i.m, %n.vec68
  br label %.lr.ph.i.preheader.us

end_hunk_14
begin_hunk_15_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body69

vector.body69:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body69
  %index70 = phi i64 [ %index.next77, %vector.body69 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx71 = shl i64 %index70, 3
  %next.gep72 = getelementptr i8, ptr %0, i64 %offset.idx71 ; 2 uses
  %offset.idx73 = shl i64 %index70, 3
  %next.gep74 = getelementptr i8, ptr %2, i64 %offset.idx73 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load75 = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !32
  %wide.load76 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
end_hunk_15
begin_hunk_16_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.as, 24
  %diff.check = icmp ult i64 %i.aq, 32
  %or.cond82 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.au, 4611686018427387900     ; 4 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %7 = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %2, i64 %7
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_16
begin_hunk_17_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  br i1 %or.cond82, label %.lr.ph.i.preheader85, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx58 = shl i64 %index, 3
  %next.gep59 = getelementptr i8, ptr %2, i64 %offset.idx58 ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load60 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !32
end_hunk_17
begin_hunk_18_@_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  %min.iters.check57 = icmp ult i64 %i.k, 24
  %diff.check55 = icmp ult i64 %i.i, 32
  %or.cond = or i1 %min.iters.check57, %diff.check55
  %n.vec60 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec60, 3
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %6 = shl i64 %n.vec60, 3
  %i.p = getelementptr i8, ptr %0, i64 %6
  %cmp.n71 = icmp eq i64 %i.m, %n.vec60
  br label %.lr.ph.i.preheader.us

end_hunk_18
begin_hunk_19_@_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body61

vector.body61:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body61
  %index62 = phi i64 [ %index.next69, %vector.body61 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx63 = shl i64 %index62, 3
  %next.gep64 = getelementptr i8, ptr %2, i64 %offset.idx63 ; 2 uses
  %offset.idx65 = shl i64 %index62, 3
  %next.gep66 = getelementptr i8, ptr %0, i64 %offset.idx65 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !32
  %wide.load68 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
end_hunk_19
begin_hunk_20_@_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.aq, 24
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond74 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.as, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %2, i64 %i.at
  %7 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %0, i64 %7
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_20
begin_hunk_21_@_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  br i1 %or.cond74, label %.lr.ph.i.preheader77, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx50 = shl i64 %index, 3
  %next.gep51 = getelementptr i8, ptr %0, i64 %offset.idx50 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !32
  %wide.load52 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !32
end_hunk_21
begin_hunk_22_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  %min.iters.check65 = icmp ult i64 %i.k, 24
  %diff.check63 = icmp ult i64 %i.i, 32
  %or.cond = select i1 %min.iters.check65, i1 true, i1 %diff.check63
  %n.vec68 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec68, 3
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %6 = shl i64 %n.vec68, 3
  %i.p = getelementptr i8, ptr %2, i64 %6
  %cmp.n79 = icmp eq i64 %i.m, %n.vec68
  br label %.lr.ph.i.preheader.us

end_hunk_22
begin_hunk_23_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body69

vector.body69:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body69
  %index70 = phi i64 [ %index.next77, %vector.body69 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx71 = shl i64 %index70, 3
  %next.gep72 = getelementptr i8, ptr %0, i64 %offset.idx71 ; 2 uses
  %offset.idx73 = shl i64 %index70, 3
  %next.gep74 = getelementptr i8, ptr %2, i64 %offset.idx73 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load75 = load <2 x i64>, ptr %next.gep72, align 8, !tbaa !32
  %wide.load76 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
end_hunk_23
begin_hunk_24_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.as, 24
  %diff.check = icmp ult i64 %i.aq, 32
  %or.cond82 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.au, 4611686018427387900     ; 4 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %7 = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %2, i64 %7
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_24
begin_hunk_25_@_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  br i1 %or.cond82, label %.lr.ph.i.preheader85, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx58 = shl i64 %index, 3
  %next.gep59 = getelementptr i8, ptr %2, i64 %offset.idx58 ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load60 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !32
end_hunk_25
begin_hunk_26_@_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_26
begin_hunk_27_@_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x double>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
end_hunk_27
begin_hunk_28_@_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_28
begin_hunk_29_@_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx21 = shl i64 %index, 3
  %next.gep22 = getelementptr i8, ptr %2, i64 %offset.idx21 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
end_hunk_29
begin_hunk_30_@_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_30
begin_hunk_31_@_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
end_hunk_31
begin_hunk_32_@_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_32
begin_hunk_33_@_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %2, i64 %offset.idx22 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load24 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
end_hunk_33
begin_hunk_34_@_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_34
begin_hunk_35_@_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
end_hunk_35
begin_hunk_36_@_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_36
begin_hunk_37_@_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %2, i64 %offset.idx22 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load24 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
end_hunk_37
begin_hunk_38_@_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_38
begin_hunk_39_@_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x double>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
end_hunk_39
begin_hunk_40_@_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_40
begin_hunk_41_@_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx21 = shl i64 %index, 3
  %next.gep22 = getelementptr i8, ptr %2, i64 %offset.idx21 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
end_hunk_41
begin_hunk_42_@_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_42
begin_hunk_43_@_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
end_hunk_43
begin_hunk_44_@_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_44
begin_hunk_45_@_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %2, i64 %offset.idx22 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load24 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
end_hunk_45
begin_hunk_46_@_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_46
begin_hunk_47_@_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x i64>, ptr %i.w, align 8, !tbaa !32
end_hunk_47
begin_hunk_48_@_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_48
begin_hunk_49_@_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader26, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx22 = shl i64 %index, 3
  %next.gep23 = getelementptr i8, ptr %2, i64 %offset.idx22 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load24 = load <2 x i64>, ptr %i.x, align 8, !tbaa !32
end_hunk_49
