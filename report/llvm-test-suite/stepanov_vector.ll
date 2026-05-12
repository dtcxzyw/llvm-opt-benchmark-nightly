inline.NumInlined: 864
inline.NumDeleted: 161
begin_hunk_0_@main:bb.a
  %i.j = fptosi double %i.i to i32
  %i.k = add nsw i32 %i.j, 123
  tail call void @srand(i32 noundef %i.k) #20
  %i.l = load ptr, ptr @dpb, align 8, !tbaa !33   ; 6 uses
  %i.m = load ptr, ptr @dpe, align 8, !tbaa !33   ; 4 uses
  %i.n = load double, ptr @init_value, align 8, !tbaa !32 ; 3 uses
  %.not4.i = icmp eq ptr %i.l, %i.m               ; 2 uses
  br i1 %.not4.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread
end_hunk_0
begin_hunk_1_@main:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, label %.lr.ph.i.preheader1168

.lr.ph.i.preheader1168:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  store double %i.n, ptr %.05.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.z, %i.m
  br i1 %.not.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, label %.lr.ph.i, !llvm.loop !38

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit, %.thread
  %.pre7.i = phi double [ %.pre, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.loopexit ], [ %i.n, %.thread ] ; 2 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(16000) ptr @_Znwm(i64 noundef 16000) #21 ; 81 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.aa, i8 0, i64 16000, i1 false)
  %broadcast.splatinsert984 = insertelement <2 x double> poison, double %.pre7.i, i64 0
  %broadcast.splat985 = shufflevector <2 x double> %broadcast.splatinsert984, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %vector.body986

end_hunk_2
begin_hunk_3_@main:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16000 ; 26 uses
  %i.as = ptrtoint ptr %i.aa to i64               ; 8 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 8 uses
  %i.au = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i67, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i430

.lr.ph.i67:                                       ; preds = %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
  br i1 %.not4.i, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i, label %.lr.ph.i.preheader.i

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i: ; preds = %.lr.ph.i67, %_Z9check_sumd.exit.us.i
  %i.aw = phi i32 [ %i.bc, %_Z9check_sumd.exit.us.i ], [ %i.au, %.lr.ph.i67 ]
  %i.ax = phi double [ %i.bd, %_Z9check_sumd.exit.us.i ], [ %.pre7.i, %.lr.ph.i67 ] ; 2 uses
  %.04.us.i = phi i32 [ %i.be, %_Z9check_sumd.exit.us.i ], [ 0, %.lr.ph.i67 ]
  %i.ay = fmul double %i.ax, 2.000000e+03
  %i.az = fcmp une double %i.ay, 0.000000e+00
end_hunk_3
begin_hunk_4_@main:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.08.i.i = phi double [ %i.bj, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %.057.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %i.bi = load double, ptr %.057.i.i, align 8, !tbaa !32
  %i.bj = fadd double %.08.i.i, %i.bi             ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.bh, %i.m
  br i1 %.not.i.i68, label %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !41

_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i: ; preds = %.lr.ph.i.i
end_hunk_4
