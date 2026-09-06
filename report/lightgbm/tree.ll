Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !263  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !262
  %i.z = load i64, ptr %i.t, align 8, !tbaa !202
  store i64 %i.z, ptr %i.r, align 8, !tbaa !202
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !263
  store ptr %i.t, ptr %2, align 8, !tbaa !262
  store i64 0, ptr %i.ab, align 8, !tbaa !263
  store i8 0, ptr %i.t, align 8, !tbaa !202
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !264, !alias.scope !1362, !noalias !1363
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !262, !alias.scope !1363, !noalias !1362 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !263, !alias.scope !1363, !noalias !1362 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1364
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !262, !alias.scope !1362, !noalias !1363
  %i.al = load i64, ptr %i.af, align 8, !tbaa !202, !alias.scope !1363, !noalias !1362
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !202, !alias.scope !1362, !noalias !1363
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !263, !alias.scope !1363, !noalias !1362
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !263, !alias.scope !1362, !noalias !1363
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !262, !alias.scope !1363, !noalias !1362
  store i64 0, ptr %i.an, align 8, !tbaa !263, !alias.scope !1363, !noalias !1362
  store i8 0, ptr %i.af, align 8, !tbaa !202, !alias.scope !1363, !noalias !1362
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1358

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !264, !alias.scope !1365, !noalias !1366
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !262, !alias.scope !1366, !noalias !1365 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !263, !alias.scope !1366, !noalias !1365 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1367
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !262, !alias.scope !1365, !noalias !1366
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !202, !alias.scope !1366, !noalias !1365
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !202, !alias.scope !1365, !noalias !1366
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !263, !alias.scope !1366, !noalias !1365
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !263, !alias.scope !1365, !noalias !1366
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !262, !alias.scope !1366, !noalias !1365
  store i64 0, ptr %i.bc, align 8, !tbaa !263, !alias.scope !1366, !noalias !1365
  store i8 0, ptr %i.au, align 8, !tbaa !202, !alias.scope !1366, !noalias !1365
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1358

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !422
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !420
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !419
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !422
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN18fast_double_parserL18parse_float_strtodEPKcPd(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load atomic i8, ptr @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !433

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.183, ptr noundef null) #12
  store ptr %i.e, ptr @_ZZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale, align 8, !tbaa !435
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN18fast_double_parserL18parse_float_strtodEPKcPdE8c_locale, align 8, !tbaa !435
  %i.g = call double @strtod_l(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.f) #12 ; 2 uses
  store double %i.g, ptr %1, align 8, !tbaa !118
  %i.h = call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp one double %i.h, +inf
  %i.j = load ptr, ptr %i.a, align 8
  %.0 = select i1 %i.i, ptr %i.j, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #32

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #32

; Function Attrs: nounwind
declare double @strtod_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %0, i32 noundef %1) unnamed_addr #33 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %common.ret40, label %.lr.ph35

common.ret40:                                     ; preds = %.lr.ph.preheader, %tailrecurse.backedge, %bb.e, %tailrecurse._crit_edge
  %common.ret40.op = phi double [ %i.o, %bb.e ], [ %i.e, %tailrecurse._crit_edge ], [ 1.000000e+00, %tailrecurse.backedge ], [ 1.000000e+00, %.lr.ph.preheader ]
  ret double %common.ret40.op

tailrecurse._crit_edge:                           ; preds = %bb.a
  %i.c = sub nsw i32 0, %1
  %i.d = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %0, i32 noundef %i.c)
  %i.e = fdiv double 1.000000e+00, %i.d
  br label %common.ret40

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %tailrecurse.backedge
  %.tr2234 = phi double [ %.tr.be, %tailrecurse.backedge ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.tr172333 = phi i32 [ %.tr17.be, %tailrecurse.backedge ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.f = and i32 %.tr172333, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph35
  %i.h = lshr exact i32 %.tr172333, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.tr22.pn = phi double [ %.tr2234, %bb.b ], [ %i.l, %bb.d ]
  %.tr17.be = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %.tr.be = fmul double %.tr2234, %.tr22.pn
  %2 = icmp eq i32 %.tr17.be, 0
  br i1 %2, label %common.ret40, label %.lr.ph35

bb.c:                                             ; preds = %.lr.ph35
  %i.i = urem i32 %.tr172333, 3
  %i.j = udiv i32 %.tr172333, 3
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fmul double %.tr2234, %.tr2234
  br label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.tr172333, -1
  %i.n = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %.tr2234, i32 noundef %i.m)
  %i.o = fmul double %.tr2234, %i.n
  br label %common.ret40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #34

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = load ptr, ptr %0, align 8, !tbaa !62     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #42
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #43 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !206

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %1, align 4, !tbaa !88
  store i32 %i.o, ptr %i.l, align 4, !tbaa !88
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #41
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !201
  store ptr %i.v, ptr %i.d, align 8, !tbaa !63
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !201  ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 4
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !206

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !201
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 4
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %1, align 4, !tbaa !88
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i18 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i18, label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 4
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !206

bb.m:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.z, i1 false)
  %.pre24 = load ptr, ptr %i.w, align 8, !tbaa !201
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 4
  br i1 %i.ah, label %bb.o, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %1, align 4, !tbaa !88
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19: ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = phi ptr [ %.pre24, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.p, label %bb.q, !prof !206

bb.p:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.an = load i32, ptr %.sink.i, align 4, !tbaa !88
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !88
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit:    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = load ptr, ptr %0, align 8, !tbaa !68     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #42
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #43 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !206

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS1_EEEES5_mT_S7_.exit
end_hunk_0
