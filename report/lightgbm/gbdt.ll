Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1590
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8LightGBM4GBDT4InitEPKNS_6ConfigEPKNS_7DatasetEPKNS_17ObjectiveFunctionERKSt6vectorIPKNS_6MetricESaISD_EE:bb.a
_ZNSt10unique_ptrIN8LightGBM12ScoreUpdaterESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.az, %_ZNKSt14default_deleteIN8LightGBM12ScoreUpdaterEEclEPS1_.exit.i.i
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !9   ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 88
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !217
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !218
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 84
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !122
  %i.ki = add nsw i32 %i.kh, -1
  store i32 %i.ki, ptr %i.af, align 8, !tbaa !156
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 400
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !219
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %i.kk, ptr %i.kl, align 8, !tbaa !220
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 408
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ko = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 8 dereferenceable(24) %i.km) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.kp = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @_ZNK8LightGBM7Dataset13feature_infosB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %11, ptr noundef nonnull align 8 dereferenceable(864) %i.kp)
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !221 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !222 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !223
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kx = load <2 x ptr>, ptr %11, align 16, !tbaa !224
  store <2 x ptr> %i.kx, ptr %i.kq, align 8, !tbaa !224
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 16, !tbaa !223
  store ptr %i.kz, ptr %i.ku, align 8, !tbaa !223
  %.not4.i.i.i.i.i = icmp eq ptr %i.kr, %i.kt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN8LightGBM12ScoreUpdaterESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.kr, %_ZNSt10unique_ptrIN8LightGBM12ScoreUpdaterESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 3 uses
  %i.la = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !174
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.lf, %i.kt
  br i1 %.not.i.i.i.i.i60, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !225

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN8LightGBM12ScoreUpdaterESt14default_deleteIS1_EE5resetEPS1_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = ptrtoint ptr %i.kr to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.li) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.ba
  %i.lj = load ptr, ptr %11, align 16, !tbaa !221 ; 3 uses
  %i.lk = load ptr, ptr %i.kw, align 8, !tbaa !222 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lj, %i.lk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.lj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.ll = load ptr, ptr %.05.i.i.i, align 8, !tbaa !175 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !174
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.lq, %i.lk
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !225

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 16, !tbaa !221
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.lr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.lj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ls = load ptr, ptr %i.ky, align 16, !tbaa !223
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lv) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.lx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ly = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 832
  %i.ma = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ma, ptr %12, align 8, !tbaa !172, !alias.scope !227
  %i.mb = load ptr, ptr %i.lz, align 8, !tbaa !175, !noalias !227 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 840
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !173, !noalias !227 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !227
  store i64 %i.md, ptr %i.a, align 8, !tbaa !230, !noalias !227
  %i.me = icmp ugt i64 %i.md, 15
  br i1 %i.me, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.mf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.mf, ptr %12, align 8, !tbaa !175, !alias.scope !227
  %i.mg = load i64, ptr %i.a, align 8, !tbaa !230, !noalias !227
  store i64 %i.mg, ptr %i.ma, align 8, !tbaa !174, !alias.scope !227
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.mh = phi ptr [ %i.mf, %.noexc.i.i ], [ %i.ma, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  switch i64 %i.md, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.mi = load i8, ptr %i.mb, align 1, !tbaa !174
  store i8 %i.mi, ptr %i.mh, align 1, !tbaa !174
  br label %_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mh, ptr align 1 %i.mb, i64 %i.md, i1 false)
  br label %_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit

_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.bc, %bb.bd
  %i.mj = load i64, ptr %i.a, align 8, !tbaa !230, !noalias !227 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !173, !alias.scope !227
  %i.ml = load ptr, ptr %12, align 8, !tbaa !175, !alias.scope !227
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mj
  store i8 0, ptr %i.mm, align 1, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !227
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mn, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit
  %i.mo = load ptr, ptr %12, align 8, !tbaa !175  ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ma
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.mq = load i64, ptr %i.ma, align 8, !tbaa !174
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN8LightGBM4GBDT24CheckForcedSplitFeaturesEv(ptr noundef nonnull align 8 dereferenceable(648) %0)
  %i.ms = load ptr, ptr %i.gg, align 8, !tbaa !203 ; 2 uses
  %i.mt = load ptr, ptr %i.ak, align 8, !tbaa !161
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !194
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(289) %i.ms, ptr noundef %i.mt, i1 noundef zeroext true)
  call void @_ZN8LightGBM4GBDT20ResetGradientBuffersEv(ptr noundef nonnull align 8 dereferenceable(648) %0)
  %i.mx = load i32, ptr %i.fo, align 8, !tbaa !202 ; 4 uses
  %.not.i.i66 = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i66, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = add nsw i64 %i.my, 63                   ; 2 uses
  %i.na = lshr i64 %i.mz, 3
  %i.nb = and i64 %i.na, 2305843009213693944
  %i.nc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nb) #35 ; 4 uses
  %i.nd = lshr i64 %i.mz, 6                       ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nd
  %i.nf = sdiv i32 %i.mx, 64
  %.sext = sext i32 %i.nf to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %.sext
  %i.nh = and i64 %i.my, -9223372036854775745
  %i.ni = icmp ugt i64 %i.nh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ni, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ng, i64 %storemerge.idx.i.i.i.i.i
  %i.nj = and i32 %i.mx, 63
  %13 = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  %.idx.i = shl nuw nsw i64 %i.nd, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nc, i8 -1, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.sroa.1882.0 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.ne, %bb.be ]
  %.sroa.15.0 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.nj, %bb.be ]
  %.sroa.1280.0 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %13, %bb.be ]
  %.sroa.079.0 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.nc, %bb.be ]
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !231 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i70, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !232 ; 2 uses
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 2 uses
  %i.nr = ashr exact i64 %i.nq, 3
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nn, i64 %i.ns
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nq) #34
  store i64 0, ptr %i.nk, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %.sroa.51.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  store i64 0, ptr %i.nm, align 8
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.bf, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  store ptr %.sroa.079.0, ptr %i.nk, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %.sroa.1280.0, ptr %.sroa.1281.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.1882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %.sroa.1882.0, ptr %.sroa.1882.0..sroa_idx, align 8
  %i.nu = load ptr, ptr %i.fm, align 8, !tbaa !201 ; 3 uses
  %.not39 = icmp eq ptr %i.nu, null
  br i1 %.not39, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !194
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = call noundef zeroext i1 %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.nu)
  br i1 %i.ny, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.nz = load i32, ptr %i.fo, align 8, !tbaa !202 ; 2 uses
  %i.oa = load i32, ptr %i.ai, align 4, !tbaa !160
  %i.ob = icmp eq i32 %i.nz, %i.oa
  br i1 %i.ob, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 160)
  %.pre103 = load i32, ptr %i.ai, align 4, !tbaa !160
  br label %bb.bl

bb.bj:                                            ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE13shrink_to_fitEv.exit
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 56) #34
  br label %.body68

bb.bk:                                            ; preds = %_ZNK8LightGBM7Dataset17parser_config_strB5cxx11Ev.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = load ptr, ptr %12, align 8, !tbaa !175  ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ma
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.bk
  %i.og = load i64, ptr %i.ma, align 8, !tbaa !174
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body68

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.oi = phi i32 [ %.pre103, %bb.bi ], [ %i.nz, %bb.bh ]
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.bl, %_ZNSt14_Bit_referenceaSEb.exit
  %.097 = phi i32 [ %i.pa, %_ZNSt14_Bit_referenceaSEb.exit ], [ 0, %bb.bl ] ; 4 uses
  %i.ok = load ptr, ptr %i.fm, align 8, !tbaa !201 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !194
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 88
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call noundef zeroext i1 %i.on(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, i32 noundef %.097)
  %i.op = load ptr, ptr %i.nk, align 8, !tbaa !231
  %i.oq = lshr i32 %.097, 6
  %.zext = zext nneg i32 %i.oq to i64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.zext ; 3 uses
  %i.os = and i32 %.097, 63
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = shl nuw i64 1, %i.ot                    ; 2 uses
  br i1 %i.oo, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph99
  %i.ov = load i64, ptr %i.or, align 8, !tbaa !230
  %i.ow = or i64 %i.ov, %i.ou
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.bn:                                            ; preds = %.lr.ph99
  %i.ox = xor i64 %i.ou, -1
  %i.oy = load i64, ptr %i.or, align 8, !tbaa !230
  %i.oz = and i64 %i.oy, %i.ox
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.bm, %bb.bn
  %storemerge = phi i64 [ %i.oz, %bb.bn ], [ %i.ow, %bb.bm ]
  store i64 %storemerge, ptr %i.or, align 8, !tbaa !230
  %i.pa = add nuw nsw i32 %.097, 1                ; 2 uses
  %i.pb = load i32, ptr %i.ai, align 4, !tbaa !160
  %i.pc = icmp slt i32 %i.pa, %i.pb
  br i1 %i.pc, label %.lr.ph99, label %.loopexit, !llvm.loop !233

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.bl, %bb.bg, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.pd = load ptr, ptr %i.ak, align 8, !tbaa !161
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 850
  %i.pf = load i8, ptr %i.pe, align 2, !tbaa !234, !range !167, !noundef !168
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.loopexit
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 1, ptr %i.ph, align 8, !tbaa !235
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.loopexit
  ret void

.body68:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.bj, %bb.ak, %bb.l
  %.pn37 = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.oc, %bb.bj ], [ %.pn.pn.pn, %bb.ak ]
  resume { ptr, i32 } %.pn37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM4GBDT9MergeFromEPKNS_8BoostingE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit:
  %2 = alloca %"class.std::vector.56", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !237  ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !238  ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !238
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !239  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !239  ; 2 uses
  %.not94 = icmp eq ptr %i.j, %i.l
  br i1 %.not94, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !236
  %i.m = ptrtoint ptr %i.bo to i64
  %i.n = ptrtoint ptr %.pre to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.r = phi i32 [ %i.q, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !202
  %i.u = sdiv i32 %i.r, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %i.u, ptr %i.v, align 8, !tbaa !240
  %.not8396 = icmp eq ptr %i.b, %i.e
  br i1 %.not8396, label %._crit_edge100.thread, label %.lr.ph99

._crit_edge100.thread:                            ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.u, ptr %i.w, align 4, !tbaa !155
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i30

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit
  %.sroa.076.095 = phi ptr [ %i.bp, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ], [ %i.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.x = invoke noalias noundef nonnull dereferenceable(648) ptr @_Znwm(i64 noundef 648) #35
          to label %bb.a unwind label %bb.g       ; 6 uses

bb.a:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %.sroa.076.095, align 8, !tbaa !241
  invoke void @_ZN8LightGBM4TreeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %i.x, ptr noundef nonnull align 8 dereferenceable(648) %i.y)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !237  ; 6 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !238
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.x to i64
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !241
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !237
  br label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !236 ; 10 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
          to label %.noexc43.a unwind label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit20.loopexit.split-lp

.noexc43.a:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
end_hunk_0
begin_hunk_1_@_ZN8LightGBM4GBDT12TrainOneIterEPKfS2_:.noexc.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.not.i.i.i = icmp eq ptr @_ZTHN8LightGBM7Network13num_machines_E, null
  %i.ec = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %wide.trip.count = zext i32 %i.cz to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ej = icmp eq i32 %i.cz, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod318 = trunc i32 %i.cz to i1
  br label %bb.z

._crit_edge203:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit
  br i1 %.1, label %bb.bo, label %._crit_edge203.thread

bb.z:                                             ; preds = %.lr.ph202, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv228 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next229, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %.062198 = phi i1 [ false, %.lr.ph202 ], [ %.1, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ]
  %i.ek = load i32, ptr %i.dr, align 4, !tbaa !218
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %indvars.iv228, %i.el       ; 8 uses
  %i.en = invoke noalias noundef nonnull dereferenceable(648) ptr @_Znwm(i64 noundef 648) #35
          to label %bb.aa unwind label %bb.ag     ; 7 uses

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN8LightGBM4TreeC1Eibb(ptr noundef nonnull align 8 dereferenceable(648) %i.en, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !231
  %i.ep = trunc nuw nsw i64 %indvars.iv228 to i32 ; 4 uses
  %i.eq = lshr i64 %indvars.iv228, 6
  %.zext = and i64 %i.eq, 67108863
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.zext
  %i.es = and i64 %indvars.iv228, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = load i64, ptr %i.er, align 8, !tbaa !230
  %i.ev = and i64 %i.eu, %i.et
  %.not155 = icmp eq i64 %i.ev, 0
  br i1 %.not155, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.dt, align 8, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !395
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !389
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.em ; 6 uses
  %i.fc = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.em ; 6 uses
  br i1 %i.cx, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load i32, ptr %i.dr, align 4, !tbaa !218
  %i.ff = icmp slt i32 %i.cz, %i.fe
  br i1 %i.ff, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i8, ptr %i.du, align 8, !tbaa !206, !range !167, !noundef !168
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ai, label %.preheader158

.preheader158:                                    ; preds = %bb.af
  %.pre231 = load ptr, ptr %i.dw, align 8, !tbaa !385 ; 4 uses
  %.pre232 = load ptr, ptr %i.dx, align 8, !tbaa !386 ; 4 uses
  br i1 %i.dv, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.preheader158
  %i.fi = load ptr, ptr %i.da, align 8, !tbaa !396 ; 3 uses
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph192.new

._crit_edge193.loopexit.unr-lcssa:                ; preds = %.lr.ph192.new
  br i1 %lcmp.mod.not, label %._crit_edge193, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge193.loopexit.unr-lcssa, %.lr.ph192
  %indvars.iv225.epil.init = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next226.1, %._crit_edge193.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv225.epil.init
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !176
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !397
  %i.fo = add nsw i64 %i.em, %indvars.iv225.epil.init ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.pre231, i64 %i.fo
  store float %i.fn, ptr %i.fp, align 4, !tbaa !397
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fl
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !397
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre232, i64 %i.fo
  store float %i.fr, ptr %i.fs, align 4, !tbaa !397
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %.epil.preheader, %._crit_edge193.loopexit.unr-lcssa, %.preheader158
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre231, i64 %i.em
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.pre232, i64 %i.em
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit102

bb.ah:                                            ; preds = %bb.aa
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 648) #34
  br label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit102

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv225
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !176
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !397
  %i.gc = add nsw i64 %i.em, %indvars.iv225       ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.pre231, i64 %i.gc
  store float %i.gb, ptr %i.gd, align 4, !tbaa !397
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fz
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !397
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.pre232, i64 %i.gc
  store float %i.gf, ptr %i.gg, align 4, !tbaa !397
  %indvars.iv.next226 = or disjoint i64 %indvars.iv225, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next226
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !176
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !397
  %i.gm = add nsw i64 %i.em, %indvars.iv.next226  ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.pre231, i64 %i.gm
  store float %i.gl, ptr %i.gn, align 4, !tbaa !397
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.gj
  %i.gp = load float, ptr %i.go, align 4, !tbaa !397
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.pre232, i64 %i.gm
  store float %i.gp, ptr %i.gq, align 4, !tbaa !397
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge193.loopexit.unr-lcssa, label %.lr.ph192.new, !llvm.loop !399

bb.ai:                                            ; preds = %._crit_edge193, %bb.af, %bb.ae, %bb.ad
  %.060 = phi ptr [ %i.fb, %bb.af ], [ %i.ft, %._crit_edge193 ], [ %i.fb, %bb.ae ], [ %i.fb, %bb.ad ]
  %.059 = phi ptr [ %i.fd, %bb.af ], [ %i.fu, %._crit_edge193 ], [ %i.fd, %bb.ae ], [ %i.fd, %bb.ad ]
  %i.gr = load ptr, ptr %i.dz, align 8, !tbaa !237
  %i.gs = load ptr, ptr %i.dy, align 8, !tbaa !236
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 3
  %i.gx = load i32, ptr %i.s, align 8, !tbaa !202
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp ult i64 %i.gw, %i.gy
  %i.ha = load ptr, ptr %i.ea, align 8, !tbaa !207 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !194
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = invoke noundef ptr %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %.060, ptr noundef %.059, i1 noundef zeroext %i.gz)
          to label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.aj

_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ai
  %i.hf = load ptr, ptr %i.en, align 8, !tbaa !194
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(648) %i.en) #21, !inline_history !387
  br label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101

.critedge:                                        ; preds = %bb.ab, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.ac
  %.sroa.0117.0 = phi ptr [ %i.he, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %i.en, %bb.ac ], [ %i.en, %bb.ab ] ; 19 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0117.0, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !400
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ak, label %bb.ay

bb.ak:                                            ; preds = %.critedge
  %i.hm = load ptr, ptr %i.eb, align 8, !tbaa !215 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !194
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef ptr %i.hp(ptr noundef nonnull align 8 dereferenceable(49) %i.hm)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.em
  %5 = ptrtoint ptr %i.hr to i64
  %i.hs = load ptr, ptr %i.ea, align 8, !tbaa !207 ; 2 uses
  %i.ht = load ptr, ptr %i.db, align 8, !tbaa !201
  store i64 0, ptr %i.eg, align 8
  store i64 %5, ptr %4, align 8, !tbaa !153
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFdPKfiEZN8LightGBM4GBDT12TrainOneIterES1_S1_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFdPKfiEZN8LightGBM4GBDT12TrainOneIterES1_S1_E3$_0E9_M_invokeERKSt9_Any_dataOS1_Oi">, ptr %i.ef, align 8, !tbaa !189
  %i.hu = load i32, ptr %i.dr, align 4, !tbaa !218
  %i.hv = load ptr, ptr %i.da, align 8, !tbaa !396
  %i.hw = load ptr, ptr %i.eb, align 8, !tbaa !215 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef ptr %i.hz(ptr noundef nonnull align 8 dereferenceable(49) %i.hw)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !194
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 112
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull %.sroa.0117.0, ptr noundef %i.ht, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.hu, ptr noundef %i.hv, i32 noundef %i.cz, ptr noundef %i.ia)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.ie = load ptr, ptr %i.ef, align 8, !tbaa !406 ; 2 uses
  %.not.i = icmp eq ptr %i.ie, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.an, %bb.ao
  %i.ii = load double, ptr %i.eh, align 8, !tbaa !171
  %i.ij = load ptr, ptr %.sroa.0117.0, align 8, !tbaa !194
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.0117.0, double noundef %i.ii)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.im = load ptr, ptr %0, align 8, !tbaa !194
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 416
  %i.io = load ptr, ptr %i.in, align 8
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %.sroa.0117.0, i32 noundef %i.ep)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0129.0, i64 %indvars.iv228
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !355 ; 2 uses
  %i.ir = call double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp ogt double %i.ir, f0x3CD203AFA0000000
  br i1 %i.is, label %bb.as, label %bb.bh

bb.as:                                            ; preds = %bb.ar
  %i.it = load ptr, ptr %.sroa.0117.0, align 8, !tbaa !194
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  invoke void %i.iv(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.0117.0, double noundef %i.iq)
          to label %bb.bh unwind label %bb.ax

bb.at:                                            ; preds = %bb.ak
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101

bb.au:                                            ; preds = %bb.am, %bb.al
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %i.ef, align 8, !tbaa !406 ; 2 uses
  %.not.i90 = icmp eq ptr %i.iy, null
  br i1 %.not.i90, label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iz = invoke noundef zeroext i1 %i.iy(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #37
  unreachable

bb.ax:                                            ; preds = %bb.as, %bb.aq, %_ZNSt14_Function_baseD2Ev.exit
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101

bb.ay:                                            ; preds = %.critedge
  %i.jd = load ptr, ptr %i.dz, align 8, !tbaa !237
  %i.je = load ptr, ptr %i.dy, align 8, !tbaa !236
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = load i32, ptr %i.s, align 8, !tbaa !202
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp ult i64 %i.ji, %i.jk
  br i1 %i.jl, label %bb.az, label %.loopexit157.invoke

bb.az:                                            ; preds = %bb.ay
  %i.jm = load ptr, ptr %i.db, align 8, !tbaa !201 ; 3 uses
  %.not = icmp eq ptr %i.jm, null
  br i1 %.not, label %.loopexit157, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jn = load ptr, ptr %i.cb, align 8, !tbaa !161
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1296
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !408, !range !167, !noundef !168
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %.loopexit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jr = load ptr, ptr %i.eb, align 8, !tbaa !215
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load i8, ptr %i.js, align 8, !tbaa !409, !range !167, !noundef !168
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %.loopexit157, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jv = load ptr, ptr %i.jm, align 8, !tbaa !194
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = invoke noundef double %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, i32 noundef %i.ep)
          to label %.noexc93.a unwind label %.loopexit159, !inline_history !415 ; 2 uses

.noexc93.a:                                       ; preds = %bb.bc
  %i.jz = invoke noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
          to label %.noexc94.a unwind label %.loopexit159

.noexc94.a:                                       ; preds = %.noexc93.a
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %bb.bd, label %_ZN8LightGBM27ObtainAutomaticInitialScoreEPKNS_17ObjectiveFunctionEi.exit

bb.bd:                                            ; preds = %.noexc94.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.jy, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr @_ZZN8LightGBM7Network17GlobalSyncUpBySumIdEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii, ptr %i.c, align 8, !tbaa !189
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef nonnull %i.a, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc95 unwind label %.loopexit159

.noexc95:                                         ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.kb = load double, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i.i.i, label %_ZN8LightGBM7Network18GlobalSyncUpByMeanIdEET_S2_.exit.i, label %bb.be

bb.be:                                            ; preds = %.noexc95
  invoke void @_ZTHN8LightGBM7Network13num_machines_E()
          to label %_ZN8LightGBM7Network18GlobalSyncUpByMeanIdEET_S2_.exit.i unwind label %.loopexit159

_ZN8LightGBM7Network18GlobalSyncUpByMeanIdEET_S2_.exit.i: ; preds = %bb.be, %.noexc95
  %i.kc = load i32, ptr %i.ec, align 4, !tbaa !176
  %i.kd = sitofp i32 %i.kc to double
  %i.ke = fdiv double %i.kb, %i.kd
  br label %_ZN8LightGBM27ObtainAutomaticInitialScoreEPKNS_17ObjectiveFunctionEi.exit

_ZN8LightGBM27ObtainAutomaticInitialScoreEPKNS_17ObjectiveFunctionEi.exit: ; preds = %_ZN8LightGBM7Network18GlobalSyncUpByMeanIdEET_S2_.exit.i, %.noexc94.a
  %.1.i = phi double [ %i.ke, %_ZN8LightGBM7Network18GlobalSyncUpByMeanIdEET_S2_.exit.i ], [ %i.jy, %.noexc94.a ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0129.0, i64 %indvars.iv228 ; 2 uses
  store double %.1.i, ptr %i.kf, align 8, !tbaa !355
  %i.kg = load ptr, ptr %i.eb, align 8, !tbaa !215 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !194
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  invoke void %i.kj(ptr noundef nonnull align 8 dereferenceable(49) %i.kg, double noundef %.1.i, i32 noundef %i.ep)
          to label %bb.bf unwind label %.loopexit159

bb.bf:                                            ; preds = %_ZN8LightGBM27ObtainAutomaticInitialScoreEPKNS_17ObjectiveFunctionEi.exit
  %i.kk = load ptr, ptr %i.ed, align 8, !tbaa !416 ; 2 uses
  %i.kl = load ptr, ptr %i.ee, align 8, !tbaa !416 ; 2 uses
  %.not156194 = icmp eq ptr %i.kk, %i.kl
  br i1 %.not156194, label %.loopexit157, label %.lr.ph197

.loopexit159:                                     ; preds = %.loopexit157.invoke, %_ZN8LightGBM27ObtainAutomaticInitialScoreEPKNS_17ObjectiveFunctionEi.exit, %bb.bc, %.noexc93.a, %bb.bd, %bb.be, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101

.loopexit.split-lp:                               ; preds = %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i101

.lr.ph197:                                        ; preds = %bb.bf, %bb.bg
  %.sroa.0112.0195 = phi ptr [ %i.kr, %bb.bg ], [ %i.kk, %bb.bf ] ; 2 uses
  %i.km = load ptr, ptr %.sroa.0112.0195, align 8, !tbaa !215 ; 2 uses
  %i.kn = load double, ptr %i.kf, align 8, !tbaa !355
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !194
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(49) %i.km, double noundef %i.kn, i32 noundef %i.ep)
end_hunk_1
