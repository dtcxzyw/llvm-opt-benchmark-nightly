inline.NumInlined: 250
inline.NumDeleted: 33
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  br i1 %.not2314, label %case_conv.exit2868, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.iv, %bb.ij, %bb.ah, %bb.cr, %bb.af, %bb.ag, %bb.ad, %bb.ab, %bb.ac, %.critedge
  %.42965 = phi ptr [ %.4, %.critedge ], [ %i.bo, %bb.ac ], [ %i.bo, %bb.ab ], [ %i.bo, %bb.ad ], [ %i.bo, %bb.ag ], [ %i.bo, %bb.af ], [ %i.bo, %bb.cr ], [ %i.bo, %bb.ah ], [ %i.bo, %bb.ij ], [ %i.bo, %bb.iv ] ; 7 uses
  %.219112964 = phi ptr [ %.21911, %.critedge ], [ %i.dk, %bb.ac ], [ @.str, %bb.ab ], [ @.str, %bb.ad ], [ %i.ef, %bb.ag ], [ @.str, %bb.af ], [ %rb_strftime_with_timespec.ampm., %bb.cr ], [ @.str, %bb.ah ], [ @.str.12, %bb.ij ], [ %i.bnz, %bb.iv ]
  %.319172963 = phi i64 [ %.31917, %.critedge ], [ 3, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 3, %bb.ag ], [ 1, %bb.af ], [ 2, %bb.cr ], [ 1, %bb.ah ], [ 3, %bb.ij ], [ 100, %bb.iv ] ; 26 uses
  %.419232962 = phi i32 [ %.41923, %.critedge ], [ %.019193307, %bb.ac ], [ %.019193307, %bb.ab ], [ %.019193307, %bb.ad ], [ %.019193307, %bb.ag ], [ %.019193307, %bb.af ], [ %.019193307, %bb.cr ], [ %.019193307, %bb.ah ], [ %.019193307, %bb.ij ], [ %.019193307, %bb.iv ]
  %.719312961 = phi i32 [ %.71931, %.critedge ], [ %.11925, %bb.ac ], [ %.11925, %bb.ab ], [ %.21926, %bb.ad ], [ %.31927, %bb.ag ], [ %.31927, %bb.af ], [ %.51929, %bb.cr ], [ %.41928, %bb.ah ], [ %.61930, %bb.ij ], [ %.61930, %bb.iv ] ; 2 uses
  %.219362960 = phi i8 [ %.21936, %.critedge ], [ %.019343304, %bb.ac ], [ %.019343304, %bb.ab ], [ %.019343304, %bb.ad ], [ %.019343304, %bb.ag ], [ %.019343304, %bb.af ], [ %.019343304, %bb.cr ], [ %.019343304, %bb.ah ], [ %.019343304, %bb.ij ], [ %.019343304, %bb.iv ] ; 2 uses
  %.219412959 = phi i64 [ %.21941, %.critedge ], [ %.019393345, %bb.ac ], [ %.019393345, %bb.ab ], [ %.019393345, %bb.ad ], [ %.019393345, %bb.ag ], [ %.019393345, %bb.af ], [ %.019393345, %bb.cr ], [ %.019393345, %bb.ah ], [ %.019393345, %bb.ij ], [ %.11940, %bb.iv ] ; 7 uses
  %i.eut = and i32 %.719312961, 1
  %.not2315 = icmp eq i32 %i.eut, 0
  br i1 %.not2315, label %bb.rw, label %bb.se
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  unreachable

ruby_nonempty_memcpy.exit2858:                    ; preds = %resize_buffer.exit2853, %bb.sf, %buffer_size_check.exit2847
  %.36 = phi ptr [ %i.evu, %buffer_size_check.exit2847 ], [ %i.bl, %bb.sf ], [ %i.ewq, %resize_buffer.exit2853 ] ; 48 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.36, ptr noundef nonnull readonly align 1 dereferenceable(1) %.219112964, i64 noundef range(i64 1, 0) %.319172963, i1 noundef false) #12
  %i.ews = and i32 %.719312961, 12
  switch i32 %i.ews, label %bb.sp [
    i32 8, label %iter.check
    i32 4, label %iter.check4919
  ]

iter.check4919:                                   ; preds = %ruby_nonempty_memcpy.exit2858
  %min.iters.check4857 = icmp ult i64 %.319172963, 4
  br i1 %min.iters.check4857, label %.preheader20.i2859.preheader, label %.preheader20.i2859.preheader.a

.preheader20.i2859.preheader.a:                   ; preds = %iter.check4919
  %min.iters.check4837 = icmp ult i64 %.319172963, 16
  br i1 %min.iters.check4837, label %.preheader20.i2859.preheader6527, label %vector.ph4838

vector.ph4838:                                    ; preds = %.preheader20.i2859.preheader.a
  %n.mod.vf4861 = and i64 %.319172963, 12
  %n.vec4840 = and i64 %.319172963, -16           ; 4 uses
  %i.ewt = and i64 %.319172963, 15
  %i.ewu = getelementptr i8, ptr %.36, i64 %n.vec4840 ; 2 uses
  br label %vector.body4841
end_hunk_1
begin_hunk_2_@rb_strftime_with_timespec:bb.a
pred.store.continue4891:                          ; preds = %pred.store.if4890, %pred.store.continue4889
  %index.next4892 = add nuw i64 %index4842, 16    ; 2 uses
  %i.ezj = icmp eq i64 %index.next4892, %n.vec4840
  br i1 %i.ezj, label %middle.block4915, label %vector.body4841, !llvm.loop !95

middle.block4915:                                 ; preds = %pred.store.continue4891
  %cmp.n4916 = icmp eq i64 %.319172963, %n.vec4840
  br i1 %cmp.n4916, label %case_conv.exit2868, label %middle.block4893

middle.block4893:                                 ; preds = %middle.block4915
  %cmp.n4894 = icmp eq i64 %n.mod.vf4861, 0
  br i1 %cmp.n4894, label %.preheader20.i2859.preheader, label %.preheader20.i2859.preheader6527, !prof !25

.preheader20.i2859.preheader6527:                 ; preds = %.preheader20.i2859.preheader.a, %middle.block4893
  %.114.i2860.ph.a = phi i64 [ %n.vec4840, %middle.block4893 ], [ 0, %.preheader20.i2859.preheader.a ]
  %n.vec4925 = and i64 %.319172963, -4            ; 3 uses
  %12 = and i64 %.319172963, 3
  %13 = getelementptr i8, ptr %.36, i64 %n.vec4925 ; 2 uses
  br label %vec.epilog.vector.body4926

vec.epilog.vector.body4926:                       ; preds = %pred.store.continue4940, %.preheader20.i2859.preheader6527
  %index4927 = phi i64 [ %.114.i2860.ph.a, %.preheader20.i2859.preheader6527 ], [ %index.next4941, %pred.store.continue4940 ] ; 5 uses
  %next.gep4928 = getelementptr i8, ptr %.36, i64 %index4927 ; 2 uses
  %14 = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4929 = getelementptr i8, ptr %14, i64 1
  %15 = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4930 = getelementptr i8, ptr %15, i64 2
  %16 = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4931 = getelementptr i8, ptr %16, i64 3
  %wide.load4932 = load <4 x i8>, ptr %next.gep4928, align 1, !tbaa !16 ; 5 uses
  %17 = sext <4 x i8> %wide.load4932 to <4 x i32>
  %18 = add nsw <4 x i32> %17, splat (i32 -65)
  %19 = icmp ult <4 x i32> %18, splat (i32 26)    ; 4 uses
  %20 = extractelement <4 x i1> %19, i64 0
  br i1 %20, label %pred.store.if4933, label %pred.store.continue4934

pred.store.if4933:                                ; preds = %vec.epilog.vector.body4926
  %21 = extractelement <4 x i8> %wide.load4932, i64 0
  %22 = or i8 %21, 32
  store i8 %22, ptr %next.gep4928, align 1, !tbaa !16
  br label %pred.store.continue4934

pred.store.continue4934:                          ; preds = %pred.store.if4933, %vec.epilog.vector.body4926
  %23 = extractelement <4 x i1> %19, i64 1
  br i1 %23, label %pred.store.if4935, label %pred.store.continue4936

pred.store.if4935:                                ; preds = %pred.store.continue4934
  %24 = extractelement <4 x i8> %wide.load4932, i64 1
  %25 = or i8 %24, 32
  store i8 %25, ptr %next.gep4929, align 1, !tbaa !16
  br label %pred.store.continue4936

pred.store.continue4936:                          ; preds = %pred.store.if4935, %pred.store.continue4934
  %26 = extractelement <4 x i1> %19, i64 2
  br i1 %26, label %pred.store.if4937, label %pred.store.continue4938

pred.store.if4937:                                ; preds = %pred.store.continue4936
  %27 = extractelement <4 x i8> %wide.load4932, i64 2
  %28 = or i8 %27, 32
  store i8 %28, ptr %next.gep4930, align 1, !tbaa !16
  br label %pred.store.continue4938

pred.store.continue4938:                          ; preds = %pred.store.if4937, %pred.store.continue4936
  %29 = extractelement <4 x i1> %19, i64 3
  br i1 %29, label %pred.store.if4939, label %pred.store.continue4940

pred.store.if4939:                                ; preds = %pred.store.continue4938
  %30 = extractelement <4 x i8> %wide.load4932, i64 3
  %31 = or i8 %30, 32
  store i8 %31, ptr %next.gep4931, align 1, !tbaa !16
  br label %pred.store.continue4940

pred.store.continue4940:                          ; preds = %pred.store.if4939, %pred.store.continue4938
  %index.next4941 = add nuw i64 %index4927, 4     ; 2 uses
  %32 = icmp eq i64 %index.next4941, %n.vec4925
  br i1 %32, label %vec.epilog.middle.block4942, label %vec.epilog.vector.body4926, !llvm.loop !96

vec.epilog.middle.block4942:                      ; preds = %pred.store.continue4940
  %cmp.n4943 = icmp eq i64 %.319172963, %n.vec4925
  br i1 %cmp.n4943, label %case_conv.exit2868, label %.preheader20.i2859.preheader

.preheader20.i2859.preheader:                     ; preds = %iter.check4919, %middle.block4893, %vec.epilog.middle.block4942
  %.114.i2860.ph = phi i64 [ %.319172963, %iter.check4919 ], [ %i.ewt, %middle.block4893 ], [ %12, %vec.epilog.middle.block4942 ]
  %.1.i2861.ph = phi ptr [ %.36, %iter.check4919 ], [ %i.ewu, %middle.block4893 ], [ %13, %vec.epilog.middle.block4942 ]
  br label %.preheader20.i2859

iter.check:                                       ; preds = %ruby_nonempty_memcpy.exit2858
  %min.iters.check = icmp ult i64 %.319172963, 4
  br i1 %min.iters.check, label %.preheader.i2864.preheader, label %.preheader.i2864.preheader.a

.preheader.i2864.preheader.a:                     ; preds = %iter.check
  %min.iters.check.a = icmp ult i64 %.319172963, 16
  br i1 %min.iters.check.a, label %.preheader.i2864.preheader6526, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i2864.preheader.a
  %n.mod.vf = and i64 %.319172963, 12
  %n.vec = and i64 %.319172963, -16               ; 4 uses
  %i.ezk = and i64 %.319172963, 15
  %i.ezl = getelementptr i8, ptr %.36, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_2
begin_hunk_3_@rb_strftime_with_timespec:bb.a
pred.store.continue4834:                          ; preds = %pred.store.if4833, %pred.store.continue4832
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fca = icmp eq i64 %index.next, %n.vec
  br i1 %i.fca, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %pred.store.continue4834
  %cmp.n = icmp eq i64 %.319172963, %n.vec
  br i1 %cmp.n, label %case_conv.exit2868, label %middle.block.a

middle.block.a:                                   ; preds = %middle.block
  %cmp.n.a = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n.a, label %.preheader.i2864.preheader, label %.preheader.i2864.preheader6526, !prof !25

.preheader.i2864.preheader6526:                   ; preds = %.preheader.i2864.preheader.a, %middle.block.a
  %.013.i2865.ph.a = phi i64 [ %n.vec, %middle.block.a ], [ 0, %.preheader.i2864.preheader.a ]
  %n.vec4838 = and i64 %.319172963, -4            ; 3 uses
  %33 = and i64 %.319172963, 3
  %34 = getelementptr i8, ptr %.36, i64 %n.vec4838 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue4852, %.preheader.i2864.preheader6526
  %index4839 = phi i64 [ %.013.i2865.ph.a, %.preheader.i2864.preheader6526 ], [ %index.next4853, %pred.store.continue4852 ] ; 5 uses
  %next.gep4840 = getelementptr i8, ptr %.36, i64 %index4839 ; 2 uses
  %35 = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4841 = getelementptr i8, ptr %35, i64 1
  %36 = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4842 = getelementptr i8, ptr %36, i64 2
  %37 = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4843 = getelementptr i8, ptr %37, i64 3
  %wide.load4844 = load <4 x i8>, ptr %next.gep4840, align 1, !tbaa !16 ; 5 uses
  %38 = sext <4 x i8> %wide.load4844 to <4 x i32>
  %39 = add nsw <4 x i32> %38, splat (i32 -97)
  %40 = icmp ult <4 x i32> %39, splat (i32 26)    ; 4 uses
  %41 = extractelement <4 x i1> %40, i64 0
  br i1 %41, label %pred.store.if4845, label %pred.store.continue4846

pred.store.if4845:                                ; preds = %vec.epilog.vector.body
  %42 = extractelement <4 x i8> %wide.load4844, i64 0
  %43 = and i8 %42, 95
  store i8 %43, ptr %next.gep4840, align 1, !tbaa !16
  br label %pred.store.continue4846

pred.store.continue4846:                          ; preds = %pred.store.if4845, %vec.epilog.vector.body
  %44 = extractelement <4 x i1> %40, i64 1
  br i1 %44, label %pred.store.if4847, label %pred.store.continue4848

pred.store.if4847:                                ; preds = %pred.store.continue4846
  %45 = extractelement <4 x i8> %wide.load4844, i64 1
  %46 = and i8 %45, 95
  store i8 %46, ptr %next.gep4841, align 1, !tbaa !16
  br label %pred.store.continue4848

pred.store.continue4848:                          ; preds = %pred.store.if4847, %pred.store.continue4846
  %47 = extractelement <4 x i1> %40, i64 2
  br i1 %47, label %pred.store.if4849, label %pred.store.continue4850

pred.store.if4849:                                ; preds = %pred.store.continue4848
  %48 = extractelement <4 x i8> %wide.load4844, i64 2
  %49 = and i8 %48, 95
  store i8 %49, ptr %next.gep4842, align 1, !tbaa !16
  br label %pred.store.continue4850

pred.store.continue4850:                          ; preds = %pred.store.if4849, %pred.store.continue4848
  %50 = extractelement <4 x i1> %40, i64 3
  br i1 %50, label %pred.store.if4851, label %pred.store.continue4852

pred.store.if4851:                                ; preds = %pred.store.continue4850
  %51 = extractelement <4 x i8> %wide.load4844, i64 3
  %52 = and i8 %51, 95
  store i8 %52, ptr %next.gep4843, align 1, !tbaa !16
  br label %pred.store.continue4852

pred.store.continue4852:                          ; preds = %pred.store.if4851, %pred.store.continue4850
  %index.next4853 = add nuw i64 %index4839, 4     ; 2 uses
  %53 = icmp eq i64 %index.next4853, %n.vec4838
  br i1 %53, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %pred.store.continue4852
  %cmp.n4854 = icmp eq i64 %.319172963, %n.vec4838
  br i1 %cmp.n4854, label %case_conv.exit2868, label %.preheader.i2864.preheader

.preheader.i2864.preheader:                       ; preds = %iter.check, %middle.block.a, %vec.epilog.middle.block
  %.013.i2865.ph = phi i64 [ %.319172963, %iter.check ], [ %i.ezk, %middle.block.a ], [ %33, %vec.epilog.middle.block ]
  %.0.i2866.ph = phi ptr [ %.36, %iter.check ], [ %i.ezl, %middle.block.a ], [ %34, %vec.epilog.middle.block ]
  br label %.preheader.i2864

.preheader.i2864:                                 ; preds = %.preheader.i2864.preheader, %bb.sm
  %.013.i2865 = phi i64 [ %i.fch, %bb.sm ], [ %.013.i2865.ph, %.preheader.i2864.preheader ]
  %.0.i2866 = phi ptr [ %i.fcg, %bb.sm ], [ %.0.i2866.ph, %.preheader.i2864.preheader ] ; 3 uses
  %i.fcb = load i8, ptr %.0.i2866, align 1, !tbaa !16 ; 2 uses
  %i.fcc = sext i8 %i.fcb to i32
  %i.fcd = add nsw i32 %i.fcc, -123
end_hunk_3
begin_hunk_4_@rb_strftime_with_timespec:bb.a
  %i.fcg = getelementptr i8, ptr %.0.i2866, i64 1 ; 2 uses
  %i.fch = add i64 %.013.i2865, -1                ; 2 uses
  %.not19.i2867 = icmp eq i64 %i.fch, 0
  br i1 %.not19.i2867, label %case_conv.exit2868, label %.preheader.i2864, !llvm.loop !99

.preheader20.i2859:                               ; preds = %.preheader20.i2859.preheader, %bb.so
  %.114.i2860 = phi i64 [ %i.fco, %bb.so ], [ %.114.i2860.ph, %.preheader20.i2859.preheader ]
  %.1.i2861 = phi ptr [ %i.fcn, %bb.so ], [ %.1.i2861.ph, %.preheader20.i2859.preheader ] ; 3 uses
  %i.fci = load i8, ptr %.1.i2861, align 1, !tbaa !16 ; 2 uses
  %i.fcj = sext i8 %i.fci to i32
  %i.fck = add nsw i32 %i.fcj, -91
end_hunk_4
begin_hunk_5_@rb_strftime_with_timespec:bb.a
  %i.fcn = getelementptr i8, ptr %.1.i2861, i64 1 ; 2 uses
  %i.fco = add i64 %.114.i2860, -1                ; 2 uses
  %.not17.i2862 = icmp eq i64 %i.fco, 0
  br i1 %.not17.i2862, label %case_conv.exit2868, label %.preheader20.i2859, !llvm.loop !100

bb.sp:                                            ; preds = %ruby_nonempty_memcpy.exit2858
  %i.fcp = getelementptr i8, ptr %.36, i64 %.319172963
  br label %case_conv.exit2868

case_conv.exit2868:                               ; preds = %bb.so, %bb.sm, %middle.block4915, %vec.epilog.middle.block4942, %middle.block, %vec.epilog.middle.block, %case_conv.exit2831, %case_conv.exit2704, %case_conv.exit2664, %case_conv.exit2644, %case_conv.exit2624, %case_conv.exit2594, %case_conv.exit2515, %case_conv.exit2495, %case_conv.exit, %bb.ik, %bb.sp, %RSTRING_PTR.exit2805, %RSTRING_PTR.exit2795, %RSTRING_PTR.exit2781, %RSTRING_PTR.exit2728, %RSTRING_PTR.exit2742, %RSTRING_PTR.exit2438, %RSTRING_PTR.exit2440, %.critedge, %buffer_size_check.exit2839, %bb.qo, %bb.qs, %buffer_size_check.exit2712, %buffer_size_check.exit2672, %buffer_size_check.exit2652, %buffer_size_check.exit2632, %buffer_size_check.exit2602, %bb.ii, %bb.ig, %bb.ic, %RSTRING_PTR.exit2544, %RSTRING_PTR.exit2555, %buffer_size_check.exit2523, %buffer_size_check.exit2503, %RSTRING_PTR.exit2435, %buffer_size_check.exit2365, %RSTRING_PTR.exit2762, %RSTRING_PTR.exit2752, %RSTRING_PTR.exit2692, %RSTRING_PTR.exit2682, %RSTRING_PTR.exit2612, %bb.js, %bb.jh, %RSTRING_PTR.exit2534, %RSTRING_PTR.exit2483, %RSTRING_PTR.exit2470, %RSTRING_PTR.exit2460, %RSTRING_PTR.exit2450, %RSTRING_PTR.exit2425, %RSTRING_PTR.exit2415, %RSTRING_PTR.exit2405, %RSTRING_PTR.exit2395, %RSTRING_PTR.exit2385, %RSTRING_PTR.exit2375, %bb.aa
  %.31942 = phi i64 [ %.219412959, %bb.sp ], [ %.21941, %.critedge ], [ %.019393345, %bb.aa ], [ %.019393345, %buffer_size_check.exit2365 ], [ %.219412959, %middle.block ], [ %.019393345, %RSTRING_PTR.exit2375 ], [ %.019393345, %RSTRING_PTR.exit2385 ], [ %.019393345, %RSTRING_PTR.exit2395 ], [ %.019393345, %RSTRING_PTR.exit2405 ], [ %.019393345, %RSTRING_PTR.exit2415 ], [ %.019393345, %RSTRING_PTR.exit2425 ], [ %.019393345, %RSTRING_PTR.exit2435 ], [ %.019393345, %case_conv.exit2704 ], [ %.019393345, %RSTRING_PTR.exit2450 ], [ %.019393345, %RSTRING_PTR.exit2460 ], [ %.019393345, %RSTRING_PTR.exit2470 ], [ %.019393345, %RSTRING_PTR.exit2483 ], [ %.019393345, %buffer_size_check.exit2503 ], [ %.019393345, %case_conv.exit ], [ %.019393345, %buffer_size_check.exit2523 ], [ %.019393345, %case_conv.exit2495 ], [ %.019393345, %RSTRING_PTR.exit2534 ], [ %.019393345, %RSTRING_PTR.exit2544 ], [ %.019393345, %RSTRING_PTR.exit2555 ], [ %.019393345, %bb.ic ], [ %.019393345, %bb.ii ], [ %.019393345, %bb.ig ], [ %.019393345, %bb.jh ], [ %.019393345, %bb.js ], [ %.019393345, %buffer_size_check.exit2602 ], [ %.019393345, %case_conv.exit2515 ], [ %.019393345, %RSTRING_PTR.exit2612 ], [ %.019393345, %buffer_size_check.exit2632 ], [ %.019393345, %case_conv.exit2594 ], [ %.019393345, %buffer_size_check.exit2652 ], [ %.019393345, %case_conv.exit2624 ], [ %.019393345, %buffer_size_check.exit2672 ], [ %.019393345, %case_conv.exit2644 ], [ %.019393345, %RSTRING_PTR.exit2682 ], [ %.019393345, %RSTRING_PTR.exit2692 ], [ %.019393345, %buffer_size_check.exit2712 ], [ %.019393345, %case_conv.exit2664 ], [ %.019393345, %RSTRING_PTR.exit2438 ], [ %.019393345, %RSTRING_PTR.exit2752 ], [ %.019393345, %RSTRING_PTR.exit2762 ], [ %.019393345, %RSTRING_PTR.exit2728 ], [ %.019393345, %bb.qo ], [ %.019393345, %bb.qs ], [ %.019393345, %buffer_size_check.exit2839 ], [ %.019393345, %RSTRING_PTR.exit2440 ], [ %.019393345, %RSTRING_PTR.exit2742 ], [ %.019393345, %RSTRING_PTR.exit2781 ], [ %.019393345, %RSTRING_PTR.exit2795 ], [ %.019393345, %RSTRING_PTR.exit2805 ], [ %.019393345, %bb.ik ], [ %.019393345, %case_conv.exit2831 ], [ %.219412959, %middle.block4915 ], [ %.219412959, %vec.epilog.middle.block ], [ %.219412959, %bb.sm ], [ %.219412959, %vec.epilog.middle.block4942 ], [ %.219412959, %bb.so ]
  %.37 = phi ptr [ %i.fcp, %bb.sp ], [ %i.bl, %.critedge ], [ %i.db, %bb.aa ], [ %i.nw, %buffer_size_check.exit2365 ], [ %i.ezl, %middle.block ], [ %i.ps, %RSTRING_PTR.exit2375 ], [ %i.rm, %RSTRING_PTR.exit2385 ], [ %i.tj, %RSTRING_PTR.exit2395 ], [ %i.vd, %RSTRING_PTR.exit2405 ], [ %i.wy, %RSTRING_PTR.exit2415 ], [ %i.ys, %RSTRING_PTR.exit2425 ], [ %i.aar, %RSTRING_PTR.exit2435 ], [ %i.dql, %case_conv.exit2704 ], [ %i.aex, %RSTRING_PTR.exit2450 ], [ %i.agx, %RSTRING_PTR.exit2460 ], [ %i.air, %RSTRING_PTR.exit2470 ], [ %i.akt, %RSTRING_PTR.exit2483 ], [ %i.aty, %buffer_size_check.exit2503 ], [ %i.mw, %case_conv.exit ], [ %i.bdf, %buffer_size_check.exit2523 ], [ %i.asy, %case_conv.exit2495 ], [ %i.bfc, %RSTRING_PTR.exit2534 ], [ %i.bgw, %RSTRING_PTR.exit2544 ], [ %i.bjg, %RSTRING_PTR.exit2555 ], [ %i.bmm, %bb.ic ], [ %i.bnm, %bb.ii ], [ %i.bna, %bb.ig ], [ %i.bql, %bb.jh ], [ %i.brw, %bb.js ], [ %i.cbb, %buffer_size_check.exit2602 ], [ %i.bcf, %case_conv.exit2515 ], [ %i.ccw, %RSTRING_PTR.exit2612 ], [ %i.cmb, %buffer_size_check.exit2632 ], [ %i.cab, %case_conv.exit2594 ], [ %i.cvi, %buffer_size_check.exit2652 ], [ %i.clb, %case_conv.exit2624 ], [ %i.dep, %buffer_size_check.exit2672 ], [ %i.cui, %case_conv.exit2644 ], [ %i.dgk, %RSTRING_PTR.exit2682 ], [ %i.dig, %RSTRING_PTR.exit2692 ], [ %i.drl, %buffer_size_check.exit2712 ], [ %i.ddp, %case_conv.exit2664 ], [ %i.abv, %RSTRING_PTR.exit2438 ], [ %i.dyn, %RSTRING_PTR.exit2752 ], [ %i.eah, %RSTRING_PTR.exit2762 ], [ %i.dth, %RSTRING_PTR.exit2728 ], [ %.32, %bb.qo ], [ %.33, %bb.qs ], [ %i.etp, %buffer_size_check.exit2839 ], [ %i.add, %RSTRING_PTR.exit2440 ], [ %i.dvq, %RSTRING_PTR.exit2742 ], [ %i.edj, %RSTRING_PTR.exit2781 ], [ %i.eft, %RSTRING_PTR.exit2795 ], [ %i.ehk, %RSTRING_PTR.exit2805 ], [ %i.bl, %bb.ik ], [ %i.esp, %case_conv.exit2831 ], [ %i.ewu, %middle.block4915 ], [ %34, %vec.epilog.middle.block ], [ %i.fcg, %bb.sm ], [ %13, %vec.epilog.middle.block4942 ], [ %i.fcn, %bb.so ] ; 2 uses
  %.5 = phi ptr [ %.42965, %bb.sp ], [ %.4, %.critedge ], [ %i.bo, %bb.aa ], [ %i.bo, %buffer_size_check.exit2365 ], [ %.42965, %middle.block ], [ %i.bo, %RSTRING_PTR.exit2375 ], [ %i.bo, %RSTRING_PTR.exit2385 ], [ %i.bo, %RSTRING_PTR.exit2395 ], [ %i.bo, %RSTRING_PTR.exit2405 ], [ %i.bo, %RSTRING_PTR.exit2415 ], [ %i.bo, %RSTRING_PTR.exit2425 ], [ %i.bo, %RSTRING_PTR.exit2435 ], [ %i.bo, %case_conv.exit2704 ], [ %i.bo, %RSTRING_PTR.exit2450 ], [ %i.bo, %RSTRING_PTR.exit2460 ], [ %i.bo, %RSTRING_PTR.exit2470 ], [ %i.bo, %RSTRING_PTR.exit2483 ], [ %i.bo, %buffer_size_check.exit2503 ], [ %i.bo, %case_conv.exit ], [ %i.bo, %buffer_size_check.exit2523 ], [ %i.bo, %case_conv.exit2495 ], [ %i.bo, %RSTRING_PTR.exit2534 ], [ %i.bo, %RSTRING_PTR.exit2544 ], [ %i.bo, %RSTRING_PTR.exit2555 ], [ %i.bo, %bb.ic ], [ %i.bo, %bb.ii ], [ %i.bo, %bb.ig ], [ %i.bo, %bb.jh ], [ %i.bo, %bb.js ], [ %i.bo, %buffer_size_check.exit2602 ], [ %i.bo, %case_conv.exit2515 ], [ %i.bo, %RSTRING_PTR.exit2612 ], [ %i.bo, %buffer_size_check.exit2632 ], [ %i.bo, %case_conv.exit2594 ], [ %i.bo, %buffer_size_check.exit2652 ], [ %i.bo, %case_conv.exit2624 ], [ %i.bo, %buffer_size_check.exit2672 ], [ %i.bo, %case_conv.exit2644 ], [ %i.bo, %RSTRING_PTR.exit2682 ], [ %i.bo, %RSTRING_PTR.exit2692 ], [ %i.bo, %buffer_size_check.exit2712 ], [ %i.bo, %case_conv.exit2664 ], [ %i.bo, %RSTRING_PTR.exit2438 ], [ %i.bo, %RSTRING_PTR.exit2752 ], [ %i.bo, %RSTRING_PTR.exit2762 ], [ %i.bo, %RSTRING_PTR.exit2728 ], [ %i.bo, %bb.qo ], [ %i.bo, %bb.qs ], [ %i.bo, %buffer_size_check.exit2839 ], [ %i.bo, %RSTRING_PTR.exit2440 ], [ %i.bo, %RSTRING_PTR.exit2742 ], [ %i.bo, %RSTRING_PTR.exit2781 ], [ %i.bo, %RSTRING_PTR.exit2795 ], [ %i.bo, %RSTRING_PTR.exit2805 ], [ %i.bo, %bb.ik ], [ %i.bo, %case_conv.exit2831 ], [ %.42965, %middle.block4915 ], [ %.42965, %vec.epilog.middle.block ], [ %.42965, %bb.sm ], [ %.42965, %vec.epilog.middle.block4942 ], [ %.42965, %bb.so ]
  %i.fcq = getelementptr i8, ptr %.5, i64 1       ; 3 uses
  %i.fcr = icmp ult ptr %i.fcq, %i.r
  br i1 %i.fcr, label %bb.i, label %ruby_nonempty_memcpy.exit._crit_edge, !llvm.loop !101

ruby_nonempty_memcpy.exit._crit_edge:             ; preds = %case_conv.exit2868, %bb.h
  %.38 = phi ptr [ %i.ab, %bb.h ], [ %.37, %case_conv.exit2868 ]
end_hunk_5
begin_hunk_6_@iso8601wknum:bb.a
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !102 ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val33 = load i32, ptr %i.b, align 4, !tbaa !104 ; 2 uses
  %i.c = icmp eq i32 %.val, 0
  %.neg = sub i32 1, %.val
  %spec.select.i.neg34 = select i1 %i.c, i32 -6, i32 %.neg
end_hunk_6
begin_hunk_7_@iso8601wknum:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !105
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106
  %i.o = add i32 %i.n, -1                         ; 3 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 11, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 31, ptr %i.q, align 4, !tbaa !108
  %i.r = icmp eq i32 %spec.select, 0
  %i.s = add nsw i32 %spec.select, -1
  %i.t = select i1 %i.r, i32 6, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !102
  %i.v = sext i32 %i.o to i64
  %i.w = add nsw i64 %i.v, 1900                   ; 2 uses
  %i.x = and i32 %i.o, 3
end_hunk_7
begin_hunk_8_@iso8601wknum:bb.a
isleap.exit:                                      ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ 365, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !104
  %i.ag = call fastcc i32 @iso8601wknum(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.f
end_hunk_8
begin_hunk_9_@iso8601wknum:bb.a
bb.f:                                             ; preds = %bb.c, %isleap.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select.i, %bb.a ], [ %i.k, %bb.b ], [ %i.ag, %isleap.exit ], [ %spec.store.select.i, %bb.c ] ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !107
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %0, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !108 ; 3 uses
  %i.am = icmp eq i32 %.val, 1
  %i.an = add i32 %i.al, -29
  %i.ao = icmp ult i32 %i.an, 3
end_hunk_9
begin_hunk_10_@llvm.assume
!94 = distinct !{!94, !21, !24, !23}
!95 = distinct !{!95, !21, !23, !24}
!96 = distinct !{!96, !21, !23, !24}
!97 = distinct !{!97, !21, !23, !24}
!98 = distinct !{!98, !21, !23, !24}
!99 = distinct !{!99, !21, !24, !23}
!100 = distinct !{!100, !21, !24, !23}
!101 = distinct !{!101, !21}
!102 = !{!103, !8, i64 24}
!103 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !13, i64 40, !18, i64 48}
!104 = !{!103, !8, i64 28}
!105 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 40, i64 8, !33, i64 48, i64 8, !17}
!106 = !{!103, !8, i64 20}
!107 = !{!103, !8, i64 16}
!108 = !{!103, !8, i64 12}
end_hunk_10
