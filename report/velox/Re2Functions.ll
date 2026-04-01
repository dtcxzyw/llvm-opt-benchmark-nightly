begin_hunk_0
  %i.bu = load i8, ptr %.val35, align 1, !tbaa !16
  %i.bv = sext i8 %i.bu to i32
  %i.bw = ptrtoint ptr %i.bt to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.q ]
  %.02132.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.q ]
  %reass.sub96 = sub i64 %.033.i.i.i.i, %.val36
  %i.bx = add i64 %reass.sub96, 1
  %11 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i, i32 noundef %i.bv, i64 noundef %i.bx) #39 ; 4 uses
  %.not26.i.i.i.i.a = icmp eq ptr %11, null
  br i1 %.not26.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %11, ptr nonnull readonly %.val35, i64 %.val36)
  %i.by = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.by, label %bb.p, label %bb.q
end_hunk_0
begin_hunk_1
  %i.gj = load i8, ptr %.val51, align 1, !tbaa !16
  %i.gk = sext i8 %i.gj to i32
  %i.gl = ptrtoint ptr %i.gi to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81: ; preds = %bb.al, %.lr.ph.i.i.i.i80
  %.033.i.i.i.i82 = phi i64 [ %i.gg, %.lr.ph.i.i.i.i80 ], [ %i.gu, %bb.al ]
  %.02132.i.i.i.i83 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i80 ], [ %i.gs, %bb.al ]
  %reass.sub = sub i64 %.033.i.i.i.i82, %.val52
  %i.gm = add i64 %reass.sub, 1
  %12 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i83, i32 noundef %i.gk, i64 noundef %i.gm) #39 ; 4 uses
  %.not26.i.i.i.i85 = icmp eq ptr %12, null
  br i1 %.not26.i.i.i.i85, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81
  %bcmp.i.i.i.i87 = call i32 @bcmp(ptr nonnull %12, ptr nonnull readonly %.val51, i64 %.val52)
  %i.gn = icmp eq i32 %bcmp.i.i.i.i87, 0
  br i1 %i.gn, label %bb.ak, label %bb.al
end_hunk_1
begin_hunk_2
  %.not25.i.i.i.i88 = icmp ult i64 %i.gu, %.val52
  br i1 %.not25.i.i.i.i88, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.al, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81, %bb.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, %.invoke, %bb.ak, %bb.aj, %bb.ai, %bb.p, %bb.o, %bb.n, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %bb.c, %bb.e
  %.0 = phi i1 [ false, %bb.q ], [ %i.fx, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.r, %bb.e ], [ %i.n, %bb.c ], [ %.0.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.aq, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.bi, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.gr, %bb.ak ], [ %i.ci, %.invoke ], [ %i.dh, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.eg, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %.0.i.i71, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.ff, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ true, %bb.n ], [ false, %bb.o ], [ %i.cc, %bb.p ], [ false, %bb.aj ], [ true, %bb.ai ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i81 ], [ false, %bb.al ]
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !232 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 80
end_hunk_2
begin_hunk_3
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.cc = sext i8 %i.cb to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ch, %bb.n ]
  %.02132.i.i.i.i.i.i.i.i = phi ptr [ %.02213.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.n ]
  %reass.sub177 = sub i64 %.033.i.i.i.i.i.i.i.i, %i.bz
  %i.cd = add i64 %reass.sub177, 1
  %26 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i.i.i.i, i32 noundef %i.cc, i64 noundef %i.cd) #39 ; 4 uses
  %.not26.i.i.i.i.i.i.i.i.a = icmp eq ptr %26, null
  br i1 %.not26.i.i.i.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %26, ptr nonnull %i.bx, i64 %i.bz)
  %i.ce = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i, label %bb.n
end_hunk_3
begin_hunk_4
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.bk
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, label %bb.l, !llvm.loop !3235

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i, %bb.m, %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a, %bb.k
  %.not2611.i.i.i.i.i.i = phi i1 [ true, %bb.k ], [ false, %bb.n ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i.i.i.i ], [ false, %bb.m ]
  %i.cm = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.bb, i32 noundef %i.cm, i1 noundef zeroext %.not2611.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE9EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i
end_hunk_4
begin_hunk_5
.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.am
  %i.gk = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gl = sext i8 %i.gk to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %bb.an ]
  %.02132.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.02213.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.go, %bb.an ]
  %reass.sub175 = sub i64 %.033.i.i.i.i.i.i.i.i.i.i.i.i, %i.gi
  %i.gm = add i64 %reass.sub175, 1
  %27 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %i.gl, i64 noundef %i.gm) #39 ; 4 uses
  %.not26.i.i.i.i.i.i.i.i.i.i.i.i.a = icmp eq ptr %27, null
  br i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %27, ptr nonnull %i.gg, i64 %i.gi)
  %i.gn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i.i.i.i.i, label %bb.an
end_hunk_5
begin_hunk_6
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %i.ft
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, label %bb.al, !llvm.loop !3235

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i.i.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.am, %bb.an, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a, %bb.ak
  %.not2611.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ak ], [ false, %bb.an ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.am ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.fj, i32 noundef %i.fh, i1 noundef zeroext %.not2611.i.i.i.i.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE9EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i
end_hunk_6
begin_hunk_7
.lr.ph.i.i.i.i.i32.i.i.i.i.i.i.i:                 ; preds = %bb.bg
  %i.ji = load i8, ptr %i.je, align 1, !tbaa !16
  %i.jj = sext i8 %i.ji to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i33.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i33.i.i.i.i.i.i.i: ; preds = %bb.bh, %.lr.ph.i.i.i.i.i32.i.i.i.i.i.i.i
  %.033.i.i.i.i.i34.i.i.i.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i32.i.i.i.i.i.i.i ], [ %i.jo, %bb.bh ]
  %.02132.i.i.i.i.i35.i.i.i.i.i.i.i = phi ptr [ %.02213.i.i.i30.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i32.i.i.i.i.i.i.i ], [ %i.jm, %bb.bh ]
  %reass.sub176 = sub i64 %.033.i.i.i.i.i34.i.i.i.i.i.i.i, %i.jg
  %i.jk = add i64 %reass.sub176, 1
  %28 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i35.i.i.i.i.i.i.i, i32 noundef %i.jj, i64 noundef %i.jk) #39 ; 4 uses
  %.not26.i.i.i.i.i37.i.i.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %.not26.i.i.i.i.i37.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i41.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i38.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i38.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i33.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.i39.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %28, ptr nonnull %i.je, i64 %i.jg)
  %i.jl = icmp eq i32 %bcmp.i.i.i.i.i39.i.i.i.i.i.i.i, 0
  br i1 %i.jl, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i43.i.i.i.i.i.i.i, label %bb.bh
end_hunk_7
begin_hunk_8
  %exitcond.not.i.i.i48.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i47.i.i.i.i.i.i.i, %i.ir
  br i1 %exitcond.not.i.i.i48.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i41.i.i.i.i.i.i.i, label %bb.bf, !llvm.loop !3235

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i41.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i45.i.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i43.i.i.i.i.i.i.i, %bb.bg, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i33.i.i.i.i.i.i.i, %bb.be
  %.not2611.i.i.i42.i.i.i.i.i.i.i = phi i1 [ true, %bb.be ], [ false, %bb.bh ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i33.i.i.i.i.i.i.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i43.i.i.i.i.i.i.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i45.i.i.i.i.i.i.i ], [ false, %bb.bg ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ih, i32 noundef %i.if, i1 noundef zeroext %.not2611.i.i.i42.i.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE9EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i41.i.i.i.i.i.i.i
end_hunk_8
begin_hunk_9
.lr.ph.i.i.i.i:                                   ; preds = %bb.cc
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !16
  %i.ml = sext i8 %i.mk to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a: ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.me, %.lr.ph.i.i.i.i ], [ %i.mq, %bb.cd ]
  %.02132.i.i.i.i = phi ptr [ %.02213.i.i, %.lr.ph.i.i.i.i ], [ %i.mo, %bb.cd ]
  %reass.sub = sub i64 %.033.i.i.i.i, %i.mi
  %i.mm = add i64 %reass.sub, 1
  %29 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i, i32 noundef %i.ml, i64 noundef %i.mm) #39 ; 4 uses
  %.not26.i.i.i.i.a = icmp eq ptr %29, null
  br i1 %.not26.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %29, ptr nonnull %i.mg, i64 %i.mi)
  %i.mn = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.mn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i, label %bb.cd
end_hunk_9
begin_hunk_10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.lw
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.cb, !llvm.loop !3235

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i, %bb.cc, %bb.cd, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %.not2611.i.i = phi i8 [ 1, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ], [ 0, %bb.cd ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i ], [ 1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i ], [ 0, %bb.cc ]
  store i8 %.not2611.i.i, ptr %i.b, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.j, ptr %13, align 8
end_hunk_10
begin_hunk_11
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !16
  %i.ay = sext i8 %i.ax to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.033.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.bd, %bb.e ]
  %.02132.i.i.i.i.i = phi ptr [ %.02213.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bb, %bb.e ]
  %reass.sub = sub i64 %.033.i.i.i.i.i, %i.av
  %i.az = add i64 %reass.sub, 1
  %5 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i, i32 noundef %i.ay, i64 noundef %i.az) #39 ; 4 uses
  %.not26.i.i.i.i.i.a = icmp eq ptr %5, null
  br i1 %.not26.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %5, ptr nonnull %i.at, i64 %i.av)
  %i.ba = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i, label %bb.e
end_hunk_11
begin_hunk_12
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, label %bb.c, !llvm.loop !3235

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i, %bb.d, %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a, %bb.b
  %.not2611.i.i.i = phi i1 [ true, %bb.b ], [ false, %bb.e ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i.i.i ], [ false, %bb.d ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread4.i.i.i ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.v, i32 noundef %i.q, i1 noundef zeroext %.not2611.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE9EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE9EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i
end_hunk_12
begin_hunk_13
  %i.bq = load i8, ptr %.val.i.i.i.i, align 1, !tbaa !16
  %i.br = sext i8 %i.bq to i32
  %i.bs = ptrtoint ptr %i.bp to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.n ]
  %.02132.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.n ]
  %reass.sub170 = sub i64 %.033.i.i.i.i.i.i.i.i, %.val2.i.i.i.i
  %i.bt = add i64 %reass.sub170, 1
  %26 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i.i.i.i, i32 noundef %i.br, i64 noundef %i.bt) #39 ; 4 uses
  %.not26.i.i.i.i.i.i.i.i.a = icmp eq ptr %26, null
  br i1 %.not26.i.i.i.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %26, ptr nonnull readonly %.val.i.i.i.i, i64 %.val2.i.i.i.i)
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %bb.m, label %bb.n
end_hunk_13
begin_hunk_14
  %.not25.i.i.i.i.i.i.i.i = icmp ult i64 %i.cb, %.val2.i.i.i.i
  br i1 %.not25.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i: ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a, %bb.m, %bb.l, %bb.k
  %.1.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.k ], [ false, %bb.l ], [ %i.by, %bb.m ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.a ], [ false, %bb.n ]
  %i.cc = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.bb, i32 noundef %i.cc, i1 noundef zeroext %.1.i.i.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE8EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.o
end_hunk_14
begin_hunk_15
  %i.fp = load i8, ptr %.val.i.i.i.i.i.i.i.i, align 1, !tbaa !16
  %i.fq = sext i8 %i.fp to i32
  %i.fr = ptrtoint ptr %i.fo to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.033.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ga, %bb.an ]
  %.02132.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fy, %bb.an ]
  %reass.sub168 = sub i64 %.033.i.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  %i.fs = add i64 %reass.sub168, 1
  %27 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %i.fq, i64 noundef %i.fs) #39 ; 4 uses
  %.not26.i.i.i.i.i.i.i.i.i.i.i.i.a = icmp eq ptr %27, null
  br i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %27, ptr nonnull readonly %.val.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i)
  %i.ft = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %bb.am, label %bb.an
end_hunk_15
begin_hunk_16
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ga, %.val2.i.i.i.i.i.i.i.i
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.an, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a, %bb.am, %bb.al, %bb.ak
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ %i.fx, %bb.am ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a ], [ false, %bb.an ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ez, i32 noundef %i.ex, i1 noundef zeroext %.1.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE8EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.ao

end_hunk_16
begin_hunk_17
  %i.id = load i8, ptr %.val.i25.i.i.i.i.i.i.i, align 1, !tbaa !16
  %i.ie = sext i8 %i.id to i32
  %i.if = ptrtoint ptr %i.ic to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i: ; preds = %bb.bh, %.lr.ph.i.i.i.i.i28.i.i.i.i.i.i.i
  %.033.i.i.i.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.ia, %.lr.ph.i.i.i.i.i28.i.i.i.i.i.i.i ], [ %i.io, %bb.bh ]
  %.02132.i.i.i.i.i31.i.i.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i28.i.i.i.i.i.i.i ], [ %i.im, %bb.bh ]
  %reass.sub169 = sub i64 %.033.i.i.i.i.i30.i.i.i.i.i.i.i, %.val2.i26.i.i.i.i.i.i.i
  %i.ig = add i64 %reass.sub169, 1
  %28 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i31.i.i.i.i.i.i.i, i32 noundef %i.ie, i64 noundef %i.ig) #39 ; 4 uses
  %.not26.i.i.i.i.i33.i.i.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %.not26.i.i.i.i.i33.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i37.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i34.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i34.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.i35.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %28, ptr nonnull readonly %.val.i25.i.i.i.i.i.i.i, i64 %.val2.i26.i.i.i.i.i.i.i)
  %i.ih = icmp eq i32 %bcmp.i.i.i.i.i35.i.i.i.i.i.i.i, 0
  br i1 %i.ih, label %bb.bg, label %bb.bh
end_hunk_17
begin_hunk_18
  %.not25.i.i.i.i.i36.i.i.i.i.i.i.i = icmp ult i64 %i.io, %.val2.i26.i.i.i.i.i.i.i
  br i1 %.not25.i.i.i.i.i36.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i37.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i37.i.i.i.i.i.i.i: ; preds = %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i, %bb.bg, %bb.bf, %bb.be
  %.1.i.i.i.i.i38.i.i.i.i.i.i.i = phi i1 [ true, %bb.be ], [ false, %bb.bf ], [ %i.il, %bb.bg ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i29.i.i.i.i.i.i.i ], [ false, %bb.bh ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.hn, i32 noundef %i.hl, i1 noundef zeroext %.1.i.i.i.i.i38.i.i.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE8EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i37.i.i.i.i.i.i.i
end_hunk_18
begin_hunk_19
  %i.kv = load i8, ptr %.val, align 1, !tbaa !16
  %i.kw = sext i8 %i.kv to i32
  %i.kx = ptrtoint ptr %i.ku to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a: ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.ks, %.lr.ph.i.i.i.i ], [ %i.lh, %bb.cd ]
  %.02132.i.i.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.i.i ], [ %i.lf, %bb.cd ]
  %reass.sub = sub i64 %.033.i.i.i.i, %.val27
  %i.ky = add i64 %reass.sub, 1
  %29 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i, i32 noundef %i.kw, i64 noundef %i.ky) #39 ; 4 uses
  %.not26.i.i.i.i.a = icmp eq ptr %29, null
  br i1 %.not26.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %29, ptr nonnull readonly %.val, i64 %.val27)
  %i.kz = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.kz, label %bb.cc, label %bb.cd
end_hunk_19
begin_hunk_20
  %.not25.i.i.i.i = icmp ult i64 %i.lh, %.val27
  br i1 %.not25.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.cd, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, %bb.cc, %bb.cb, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %.1.i.i.i.i = phi i8 [ 1, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ], [ 0, %bb.cb ], [ %i.le, %bb.cc ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a ], [ 0, %bb.cd ]
  store i8 %.1.i.i.i.i, ptr %i.b, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
end_hunk_20
begin_hunk_21
  %i.am = load i8, ptr %.val.i, align 1, !tbaa !16
  %i.an = sext i8 %i.am to i32
  %i.ao = ptrtoint ptr %i.al to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.033.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ax, %bb.e ]
  %.02132.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.av, %bb.e ]
  %reass.sub = sub i64 %.033.i.i.i.i.i, %.val2.i
  %i.ap = add i64 %reass.sub, 1
  %5 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i.i.i.i, i32 noundef %i.an, i64 noundef %i.ap) #39 ; 4 uses
  %.not26.i.i.i.i.i.a = icmp eq ptr %5, null
  br i1 %.not26.i.i.i.i.i.a, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %5, ptr nonnull readonly %.val.i, i64 %.val2.i)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.d, label %bb.e
end_hunk_21
begin_hunk_22
  %.not25.i.i.i.i.i = icmp ult i64 %i.ax, %.val2.i
  br i1 %.not25.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a, !llvm.loop !3144

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i: ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a, %bb.d, %bb.c, %bb.b
  %.1.i.i.i.i.i = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %i.au, %bb.d ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.a ], [ false, %bb.e ]
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.v, i32 noundef %i.q, i1 noundef zeroext %.1.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE8EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.f

end_hunk_22
