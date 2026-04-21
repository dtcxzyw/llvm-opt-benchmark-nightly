inline.NumInlined: 250
inline.NumDeleted: 33
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  br i1 %.not2314, label %case_conv.exit2868, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.iv, %bb.ij, %bb.ah, %bb.cr, %bb.af, %bb.ag, %bb.ad, %bb.ab, %bb.ac, %.critedge
  %.42965 = phi ptr [ %.4, %.critedge ], [ %i.bo, %bb.ac ], [ %i.bo, %bb.ab ], [ %i.bo, %bb.ad ], [ %i.bo, %bb.ag ], [ %i.bo, %bb.af ], [ %i.bo, %bb.cr ], [ %i.bo, %bb.ah ], [ %i.bo, %bb.ij ], [ %i.bo, %bb.iv ] ; 5 uses
  %.219112964 = phi ptr [ %.21911, %.critedge ], [ %i.dk, %bb.ac ], [ @.str, %bb.ab ], [ @.str, %bb.ad ], [ %i.ef, %bb.ag ], [ @.str, %bb.af ], [ %rb_strftime_with_timespec.ampm., %bb.cr ], [ @.str, %bb.ah ], [ @.str.12, %bb.ij ], [ %i.bnz, %bb.iv ]
  %.319172963 = phi i64 [ %.31917, %.critedge ], [ 3, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 3, %bb.ag ], [ 1, %bb.af ], [ 2, %bb.cr ], [ 1, %bb.ah ], [ 3, %bb.ij ], [ 100, %bb.iv ] ; 16 uses
  %.419232962 = phi i32 [ %.41923, %.critedge ], [ %.019193307, %bb.ac ], [ %.019193307, %bb.ab ], [ %.019193307, %bb.ad ], [ %.019193307, %bb.ag ], [ %.019193307, %bb.af ], [ %.019193307, %bb.cr ], [ %.019193307, %bb.ah ], [ %.019193307, %bb.ij ], [ %.019193307, %bb.iv ]
  %.719312961 = phi i32 [ %.71931, %.critedge ], [ %.11925, %bb.ac ], [ %.11925, %bb.ab ], [ %.21926, %bb.ad ], [ %.31927, %bb.ag ], [ %.31927, %bb.af ], [ %.51929, %bb.cr ], [ %.41928, %bb.ah ], [ %.61930, %bb.ij ], [ %.61930, %bb.iv ] ; 2 uses
  %.219362960 = phi i8 [ %.21936, %.critedge ], [ %.019343304, %bb.ac ], [ %.019343304, %bb.ab ], [ %.019343304, %bb.ad ], [ %.019343304, %bb.ag ], [ %.019343304, %bb.af ], [ %.019343304, %bb.cr ], [ %.019343304, %bb.ah ], [ %.019343304, %bb.ij ], [ %.019343304, %bb.iv ] ; 2 uses
  %.219412959 = phi i64 [ %.21941, %.critedge ], [ %.019393345, %bb.ac ], [ %.019393345, %bb.ab ], [ %.019393345, %bb.ad ], [ %.019393345, %bb.ag ], [ %.019393345, %bb.af ], [ %.019393345, %bb.cr ], [ %.019393345, %bb.ah ], [ %.019393345, %bb.ij ], [ %.11940, %bb.iv ] ; 5 uses
  %i.eut = and i32 %.719312961, 1
  %.not2315 = icmp eq i32 %i.eut, 0
  br i1 %.not2315, label %bb.rw, label %bb.se
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  unreachable

ruby_nonempty_memcpy.exit2858:                    ; preds = %resize_buffer.exit2853, %bb.sf, %buffer_size_check.exit2847
  %.36 = phi ptr [ %i.evu, %buffer_size_check.exit2847 ], [ %i.bl, %bb.sf ], [ %i.ewq, %resize_buffer.exit2853 ] ; 38 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.36, ptr noundef nonnull readonly align 1 dereferenceable(1) %.219112964, i64 noundef range(i64 1, 0) %.319172963, i1 noundef false) #12
  %i.ews = and i32 %.719312961, 12
  switch i32 %i.ews, label %bb.sp [
    i32 8, label %.preheader.i2864.preheader.a
    i32 4, label %.preheader20.i2859.preheader.a
  ]

.preheader20.i2859.preheader.a:                   ; preds = %ruby_nonempty_memcpy.exit2858
  %min.iters.check4837 = icmp ult i64 %.319172963, 16
  br i1 %min.iters.check4837, label %.preheader20.i2859.preheader6527, label %vector.ph4838

vector.ph4838:                                    ; preds = %.preheader20.i2859.preheader.a
  %n.vec4840 = and i64 %.319172963, -16           ; 3 uses
  %i.ewt = and i64 %.319172963, 15
  %i.ewu = getelementptr i8, ptr %.36, i64 %n.vec4840 ; 2 uses
  br label %vector.body4841
end_hunk_1
begin_hunk_2_@rb_strftime_with_timespec:bb.a
pred.store.continue4891:                          ; preds = %pred.store.if4890, %pred.store.continue4889
  %index.next4892 = add nuw i64 %index4842, 16    ; 2 uses
  %i.ezj = icmp eq i64 %index.next4892, %n.vec4840
  br i1 %i.ezj, label %middle.block4893, label %vector.body4841, !llvm.loop !95

middle.block4893:                                 ; preds = %pred.store.continue4891
  %cmp.n4894 = icmp eq i64 %.319172963, %n.vec4840
  br i1 %cmp.n4894, label %case_conv.exit2868, label %.preheader20.i2859.preheader6527

.preheader20.i2859.preheader6527:                 ; preds = %.preheader20.i2859.preheader.a, %middle.block4893
  %.114.i2860.ph.a = phi i64 [ %.319172963, %.preheader20.i2859.preheader.a ], [ %i.ewt, %middle.block4893 ]
  %.1.i2861.ph = phi ptr [ %.36, %.preheader20.i2859.preheader.a ], [ %i.ewu, %middle.block4893 ]
  br label %.preheader20.i2859

.preheader.i2864.preheader.a:                     ; preds = %ruby_nonempty_memcpy.exit2858
  %min.iters.check.a = icmp ult i64 %.319172963, 16
  br i1 %min.iters.check.a, label %.preheader.i2864.preheader6526, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i2864.preheader.a
  %n.vec = and i64 %.319172963, -16               ; 3 uses
  %i.ezk = and i64 %.319172963, 15
  %i.ezl = getelementptr i8, ptr %.36, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_2
begin_hunk_3_@rb_strftime_with_timespec:bb.a
pred.store.continue4834:                          ; preds = %pred.store.if4833, %pred.store.continue4832
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fca = icmp eq i64 %index.next, %n.vec
  br i1 %i.fca, label %middle.block.a, label %vector.body, !llvm.loop !96

middle.block.a:                                   ; preds = %pred.store.continue4834
  %cmp.n.a = icmp eq i64 %.319172963, %n.vec
  br i1 %cmp.n.a, label %case_conv.exit2868, label %.preheader.i2864.preheader6526

.preheader.i2864.preheader6526:                   ; preds = %.preheader.i2864.preheader.a, %middle.block.a
  %.013.i2865.ph.a = phi i64 [ %.319172963, %.preheader.i2864.preheader.a ], [ %i.ezk, %middle.block.a ]
  %.0.i2866.ph = phi ptr [ %.36, %.preheader.i2864.preheader.a ], [ %i.ezl, %middle.block.a ]
  br label %.preheader.i2864

.preheader.i2864:                                 ; preds = %.preheader.i2864.preheader6526, %bb.sm
  %.013.i2865 = phi i64 [ %i.fch, %bb.sm ], [ %.013.i2865.ph.a, %.preheader.i2864.preheader6526 ]
  %.0.i2866 = phi ptr [ %i.fcg, %bb.sm ], [ %.0.i2866.ph, %.preheader.i2864.preheader6526 ] ; 3 uses
  %i.fcb = load i8, ptr %.0.i2866, align 1, !tbaa !16 ; 2 uses
  %i.fcc = sext i8 %i.fcb to i32
  %i.fcd = add nsw i32 %i.fcc, -123
end_hunk_3
begin_hunk_4_@rb_strftime_with_timespec:bb.a
  %i.fcg = getelementptr i8, ptr %.0.i2866, i64 1 ; 2 uses
  %i.fch = add i64 %.013.i2865, -1                ; 2 uses
  %.not19.i2867 = icmp eq i64 %i.fch, 0
  br i1 %.not19.i2867, label %case_conv.exit2868, label %.preheader.i2864, !llvm.loop !97

.preheader20.i2859:                               ; preds = %.preheader20.i2859.preheader6527, %bb.so
  %.114.i2860 = phi i64 [ %i.fco, %bb.so ], [ %.114.i2860.ph.a, %.preheader20.i2859.preheader6527 ]
  %.1.i2861 = phi ptr [ %i.fcn, %bb.so ], [ %.1.i2861.ph, %.preheader20.i2859.preheader6527 ] ; 3 uses
  %i.fci = load i8, ptr %.1.i2861, align 1, !tbaa !16 ; 2 uses
  %i.fcj = sext i8 %i.fci to i32
  %i.fck = add nsw i32 %i.fcj, -91
end_hunk_4
begin_hunk_5_@rb_strftime_with_timespec:bb.a
  %i.fcn = getelementptr i8, ptr %.1.i2861, i64 1 ; 2 uses
  %i.fco = add i64 %.114.i2860, -1                ; 2 uses
  %.not17.i2862 = icmp eq i64 %i.fco, 0
  br i1 %.not17.i2862, label %case_conv.exit2868, label %.preheader20.i2859, !llvm.loop !98

bb.sp:                                            ; preds = %ruby_nonempty_memcpy.exit2858
  %i.fcp = getelementptr i8, ptr %.36, i64 %.319172963
  br label %case_conv.exit2868

case_conv.exit2868:                               ; preds = %bb.so, %bb.sm, %middle.block4893, %middle.block.a, %case_conv.exit2831, %case_conv.exit2704, %case_conv.exit2664, %case_conv.exit2644, %case_conv.exit2624, %case_conv.exit2594, %case_conv.exit2515, %case_conv.exit2495, %case_conv.exit, %bb.ik, %bb.sp, %RSTRING_PTR.exit2805, %RSTRING_PTR.exit2795, %RSTRING_PTR.exit2781, %RSTRING_PTR.exit2728, %RSTRING_PTR.exit2742, %RSTRING_PTR.exit2438, %RSTRING_PTR.exit2440, %.critedge, %buffer_size_check.exit2839, %bb.qo, %bb.qs, %buffer_size_check.exit2712, %buffer_size_check.exit2672, %buffer_size_check.exit2652, %buffer_size_check.exit2632, %buffer_size_check.exit2602, %bb.ii, %bb.ig, %bb.ic, %RSTRING_PTR.exit2544, %RSTRING_PTR.exit2555, %buffer_size_check.exit2523, %buffer_size_check.exit2503, %RSTRING_PTR.exit2435, %buffer_size_check.exit2365, %RSTRING_PTR.exit2762, %RSTRING_PTR.exit2752, %RSTRING_PTR.exit2692, %RSTRING_PTR.exit2682, %RSTRING_PTR.exit2612, %bb.js, %bb.jh, %RSTRING_PTR.exit2534, %RSTRING_PTR.exit2483, %RSTRING_PTR.exit2470, %RSTRING_PTR.exit2460, %RSTRING_PTR.exit2450, %RSTRING_PTR.exit2425, %RSTRING_PTR.exit2415, %RSTRING_PTR.exit2405, %RSTRING_PTR.exit2395, %RSTRING_PTR.exit2385, %RSTRING_PTR.exit2375, %bb.aa
  %.31942 = phi i64 [ %.219412959, %bb.sp ], [ %.21941, %.critedge ], [ %.019393345, %bb.aa ], [ %.019393345, %buffer_size_check.exit2365 ], [ %.219412959, %middle.block.a ], [ %.019393345, %RSTRING_PTR.exit2375 ], [ %.019393345, %RSTRING_PTR.exit2385 ], [ %.019393345, %RSTRING_PTR.exit2395 ], [ %.019393345, %RSTRING_PTR.exit2405 ], [ %.019393345, %RSTRING_PTR.exit2415 ], [ %.019393345, %RSTRING_PTR.exit2425 ], [ %.019393345, %RSTRING_PTR.exit2435 ], [ %.019393345, %case_conv.exit2704 ], [ %.019393345, %RSTRING_PTR.exit2450 ], [ %.019393345, %RSTRING_PTR.exit2460 ], [ %.019393345, %RSTRING_PTR.exit2470 ], [ %.019393345, %RSTRING_PTR.exit2483 ], [ %.019393345, %buffer_size_check.exit2503 ], [ %.019393345, %case_conv.exit ], [ %.019393345, %buffer_size_check.exit2523 ], [ %.019393345, %case_conv.exit2495 ], [ %.019393345, %RSTRING_PTR.exit2534 ], [ %.019393345, %RSTRING_PTR.exit2544 ], [ %.019393345, %RSTRING_PTR.exit2555 ], [ %.019393345, %bb.ic ], [ %.019393345, %bb.ii ], [ %.019393345, %bb.ig ], [ %.019393345, %bb.jh ], [ %.019393345, %bb.js ], [ %.019393345, %buffer_size_check.exit2602 ], [ %.019393345, %case_conv.exit2515 ], [ %.019393345, %RSTRING_PTR.exit2612 ], [ %.019393345, %buffer_size_check.exit2632 ], [ %.019393345, %case_conv.exit2594 ], [ %.019393345, %buffer_size_check.exit2652 ], [ %.019393345, %case_conv.exit2624 ], [ %.019393345, %buffer_size_check.exit2672 ], [ %.019393345, %case_conv.exit2644 ], [ %.019393345, %RSTRING_PTR.exit2682 ], [ %.019393345, %RSTRING_PTR.exit2692 ], [ %.019393345, %buffer_size_check.exit2712 ], [ %.019393345, %case_conv.exit2664 ], [ %.019393345, %RSTRING_PTR.exit2438 ], [ %.019393345, %RSTRING_PTR.exit2752 ], [ %.019393345, %RSTRING_PTR.exit2762 ], [ %.019393345, %RSTRING_PTR.exit2728 ], [ %.019393345, %bb.qo ], [ %.019393345, %bb.qs ], [ %.019393345, %buffer_size_check.exit2839 ], [ %.019393345, %RSTRING_PTR.exit2440 ], [ %.019393345, %RSTRING_PTR.exit2742 ], [ %.019393345, %RSTRING_PTR.exit2781 ], [ %.019393345, %RSTRING_PTR.exit2795 ], [ %.019393345, %RSTRING_PTR.exit2805 ], [ %.019393345, %bb.ik ], [ %.019393345, %case_conv.exit2831 ], [ %.219412959, %middle.block4893 ], [ %.219412959, %bb.sm ], [ %.219412959, %bb.so ]
  %.37 = phi ptr [ %i.fcp, %bb.sp ], [ %i.bl, %.critedge ], [ %i.db, %bb.aa ], [ %i.nw, %buffer_size_check.exit2365 ], [ %i.ezl, %middle.block.a ], [ %i.ps, %RSTRING_PTR.exit2375 ], [ %i.rm, %RSTRING_PTR.exit2385 ], [ %i.tj, %RSTRING_PTR.exit2395 ], [ %i.vd, %RSTRING_PTR.exit2405 ], [ %i.wy, %RSTRING_PTR.exit2415 ], [ %i.ys, %RSTRING_PTR.exit2425 ], [ %i.aar, %RSTRING_PTR.exit2435 ], [ %i.dql, %case_conv.exit2704 ], [ %i.aex, %RSTRING_PTR.exit2450 ], [ %i.agx, %RSTRING_PTR.exit2460 ], [ %i.air, %RSTRING_PTR.exit2470 ], [ %i.akt, %RSTRING_PTR.exit2483 ], [ %i.aty, %buffer_size_check.exit2503 ], [ %i.mw, %case_conv.exit ], [ %i.bdf, %buffer_size_check.exit2523 ], [ %i.asy, %case_conv.exit2495 ], [ %i.bfc, %RSTRING_PTR.exit2534 ], [ %i.bgw, %RSTRING_PTR.exit2544 ], [ %i.bjg, %RSTRING_PTR.exit2555 ], [ %i.bmm, %bb.ic ], [ %i.bnm, %bb.ii ], [ %i.bna, %bb.ig ], [ %i.bql, %bb.jh ], [ %i.brw, %bb.js ], [ %i.cbb, %buffer_size_check.exit2602 ], [ %i.bcf, %case_conv.exit2515 ], [ %i.ccw, %RSTRING_PTR.exit2612 ], [ %i.cmb, %buffer_size_check.exit2632 ], [ %i.cab, %case_conv.exit2594 ], [ %i.cvi, %buffer_size_check.exit2652 ], [ %i.clb, %case_conv.exit2624 ], [ %i.dep, %buffer_size_check.exit2672 ], [ %i.cui, %case_conv.exit2644 ], [ %i.dgk, %RSTRING_PTR.exit2682 ], [ %i.dig, %RSTRING_PTR.exit2692 ], [ %i.drl, %buffer_size_check.exit2712 ], [ %i.ddp, %case_conv.exit2664 ], [ %i.abv, %RSTRING_PTR.exit2438 ], [ %i.dyn, %RSTRING_PTR.exit2752 ], [ %i.eah, %RSTRING_PTR.exit2762 ], [ %i.dth, %RSTRING_PTR.exit2728 ], [ %.32, %bb.qo ], [ %.33, %bb.qs ], [ %i.etp, %buffer_size_check.exit2839 ], [ %i.add, %RSTRING_PTR.exit2440 ], [ %i.dvq, %RSTRING_PTR.exit2742 ], [ %i.edj, %RSTRING_PTR.exit2781 ], [ %i.eft, %RSTRING_PTR.exit2795 ], [ %i.ehk, %RSTRING_PTR.exit2805 ], [ %i.bl, %bb.ik ], [ %i.esp, %case_conv.exit2831 ], [ %i.ewu, %middle.block4893 ], [ %i.fcg, %bb.sm ], [ %i.fcn, %bb.so ] ; 2 uses
  %.5 = phi ptr [ %.42965, %bb.sp ], [ %.4, %.critedge ], [ %i.bo, %bb.aa ], [ %i.bo, %buffer_size_check.exit2365 ], [ %.42965, %middle.block.a ], [ %i.bo, %RSTRING_PTR.exit2375 ], [ %i.bo, %RSTRING_PTR.exit2385 ], [ %i.bo, %RSTRING_PTR.exit2395 ], [ %i.bo, %RSTRING_PTR.exit2405 ], [ %i.bo, %RSTRING_PTR.exit2415 ], [ %i.bo, %RSTRING_PTR.exit2425 ], [ %i.bo, %RSTRING_PTR.exit2435 ], [ %i.bo, %case_conv.exit2704 ], [ %i.bo, %RSTRING_PTR.exit2450 ], [ %i.bo, %RSTRING_PTR.exit2460 ], [ %i.bo, %RSTRING_PTR.exit2470 ], [ %i.bo, %RSTRING_PTR.exit2483 ], [ %i.bo, %buffer_size_check.exit2503 ], [ %i.bo, %case_conv.exit ], [ %i.bo, %buffer_size_check.exit2523 ], [ %i.bo, %case_conv.exit2495 ], [ %i.bo, %RSTRING_PTR.exit2534 ], [ %i.bo, %RSTRING_PTR.exit2544 ], [ %i.bo, %RSTRING_PTR.exit2555 ], [ %i.bo, %bb.ic ], [ %i.bo, %bb.ii ], [ %i.bo, %bb.ig ], [ %i.bo, %bb.jh ], [ %i.bo, %bb.js ], [ %i.bo, %buffer_size_check.exit2602 ], [ %i.bo, %case_conv.exit2515 ], [ %i.bo, %RSTRING_PTR.exit2612 ], [ %i.bo, %buffer_size_check.exit2632 ], [ %i.bo, %case_conv.exit2594 ], [ %i.bo, %buffer_size_check.exit2652 ], [ %i.bo, %case_conv.exit2624 ], [ %i.bo, %buffer_size_check.exit2672 ], [ %i.bo, %case_conv.exit2644 ], [ %i.bo, %RSTRING_PTR.exit2682 ], [ %i.bo, %RSTRING_PTR.exit2692 ], [ %i.bo, %buffer_size_check.exit2712 ], [ %i.bo, %case_conv.exit2664 ], [ %i.bo, %RSTRING_PTR.exit2438 ], [ %i.bo, %RSTRING_PTR.exit2752 ], [ %i.bo, %RSTRING_PTR.exit2762 ], [ %i.bo, %RSTRING_PTR.exit2728 ], [ %i.bo, %bb.qo ], [ %i.bo, %bb.qs ], [ %i.bo, %buffer_size_check.exit2839 ], [ %i.bo, %RSTRING_PTR.exit2440 ], [ %i.bo, %RSTRING_PTR.exit2742 ], [ %i.bo, %RSTRING_PTR.exit2781 ], [ %i.bo, %RSTRING_PTR.exit2795 ], [ %i.bo, %RSTRING_PTR.exit2805 ], [ %i.bo, %bb.ik ], [ %i.bo, %case_conv.exit2831 ], [ %.42965, %middle.block4893 ], [ %.42965, %bb.sm ], [ %.42965, %bb.so ]
  %i.fcq = getelementptr i8, ptr %.5, i64 1       ; 3 uses
  %i.fcr = icmp ult ptr %i.fcq, %i.r
  br i1 %i.fcr, label %bb.i, label %ruby_nonempty_memcpy.exit._crit_edge, !llvm.loop !99

ruby_nonempty_memcpy.exit._crit_edge:             ; preds = %case_conv.exit2868, %bb.h
  %.38 = phi ptr [ %i.ab, %bb.h ], [ %.37, %case_conv.exit2868 ]
end_hunk_5
begin_hunk_6_@iso8601wknum:bb.a
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !100 ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val33 = load i32, ptr %i.b, align 4, !tbaa !102 ; 2 uses
  %i.c = icmp eq i32 %.val, 0
  %.neg = sub i32 1, %.val
  %spec.select.i.neg34 = select i1 %i.c, i32 -6, i32 %.neg
end_hunk_6
begin_hunk_7_@iso8601wknum:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !103
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !104
  %i.o = add i32 %i.n, -1                         ; 3 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 11, ptr %i.p, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 31, ptr %i.q, align 4, !tbaa !106
  %i.r = icmp eq i32 %spec.select, 0
  %i.s = add nsw i32 %spec.select, -1
  %i.t = select i1 %i.r, i32 6, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !100
  %i.v = sext i32 %i.o to i64
  %i.w = add nsw i64 %i.v, 1900                   ; 2 uses
  %i.x = and i32 %i.o, 3
end_hunk_7
begin_hunk_8_@iso8601wknum:bb.a
isleap.exit:                                      ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ 365, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !102
  %i.ag = call fastcc i32 @iso8601wknum(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.f
end_hunk_8
begin_hunk_9_@iso8601wknum:bb.a
bb.f:                                             ; preds = %bb.c, %isleap.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select.i, %bb.a ], [ %i.k, %bb.b ], [ %i.ag, %isleap.exit ], [ %spec.store.select.i, %bb.c ] ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !105
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %0, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106 ; 3 uses
  %i.am = icmp eq i32 %.val, 1
  %i.an = add i32 %i.al, -29
  %i.ao = icmp ult i32 %i.an, 3
end_hunk_9
begin_hunk_10_@llvm.assume
!94 = distinct !{!94, !21, !24, !23}
!95 = distinct !{!95, !21, !23, !24}
!96 = distinct !{!96, !21, !23, !24}
!97 = distinct !{!97, !21, !24, !23}
!98 = distinct !{!98, !21, !24, !23}
!99 = distinct !{!99, !21}
!100 = !{!101, !8, i64 24}
!101 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !13, i64 40, !18, i64 48}
!102 = !{!101, !8, i64 28}
!103 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 40, i64 8, !33, i64 48, i64 8, !17}
!104 = !{!101, !8, i64 20}
!105 = !{!101, !8, i64 16}
!106 = !{!101, !8, i64 12}
end_hunk_10
