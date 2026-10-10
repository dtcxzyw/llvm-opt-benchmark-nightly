Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !91, !alias.scope !859, !noalias !860
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !96, !alias.scope !860, !noalias !859 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !94, !alias.scope !860, !noalias !859 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !861
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !96, !alias.scope !859, !noalias !860
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !95, !alias.scope !860, !noalias !859
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !95, !alias.scope !859, !noalias !860
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !94, !alias.scope !860, !noalias !859
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !94, !alias.scope !859, !noalias !860
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !96, !alias.scope !860, !noalias !859
  store i64 0, ptr %i.bc, align 8, !tbaa !94, !alias.scope !860, !noalias !859
  store i8 0, ptr %i.au, align 8, !tbaa !95, !alias.scope !860, !noalias !859
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !852

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !344
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !342
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !343
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !344
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL4AtofEPKcPd(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  store double +qnan, ptr %1, align 8, !tbaa !191
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0126 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ] ; 4 uses
  %i.b = load i8, ptr %.0126, align 1, !tbaa !95  ; 2 uses
  switch i8 %i.b, label %.loopexit [
    i8 32, label %bb.c
    i8 45, label %thread-pre-split.loopexit
    i8 43, label %thread-pre-split
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0126, i64 1
  br label %bb.b, !llvm.loop !862

thread-pre-split.loopexit:                        ; preds = %bb.b
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %thread-pre-split.loopexit
  %.0129.ph = phi double [ -1.000000e+00, %thread-pre-split.loopexit ], [ 1.000000e+00, %bb.b ]
  %.1.ph = getelementptr inbounds nuw i8, ptr %.0126, i64 1 ; 2 uses
  %.pr = load i8, ptr %.1.ph, align 1, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %thread-pre-split
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.b ] ; 7 uses
  %.0129 = phi double [ %.0129.ph, %thread-pre-split ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.1.ph, %thread-pre-split ], [ %.0126, %bb.b ] ; 7 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %.loopexit
  switch i8 %i.d, label %.preheader259 [
    i8 46, label %.critedge
    i8 101, label %.critedge
    i8 69, label %.critedge
  ]

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.f = phi i8 [ %i.j, %.lr.ph ], [ %i.d, %.loopexit ]
  %.2270 = phi ptr [ %i.i, %.lr.ph ], [ %.1, %.loopexit ]
  %.0130269 = phi double [ %i.h, %.lr.ph ], [ 0.000000e+00, %.loopexit ]
  %narrow179 = add nsw i8 %i.f, -48
  %i.g = uitofp nneg i8 %narrow179 to double
  %i.h = tail call double @llvm.fmuladd.f64(double %.0130269, double 1.000000e+01, double %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.2270, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !95    ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond180 = icmp ult i8 %i.k, 10
  br i1 %or.cond180, label %.lr.ph, label %.critedge, !llvm.loop !863

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.d, %bb.d
  %.0130.lcssa = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.d ], [ %i.h, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1, %bb.d ], [ %.1, %bb.d ], [ %.1, %bb.d ], [ %i.i, %.lr.ph ] ; 2 uses
  %.lcssa = phi i8 [ %i.d, %bb.d ], [ %i.d, %bb.d ], [ %i.d, %bb.d ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.l = icmp eq i8 %.lcssa, 46
  br i1 %i.l, label %.preheader258, label %bb.e

.preheader258:                                    ; preds = %.critedge
  %.3273 = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1 ; 3 uses
  %i.m = load i8, ptr %.3273, align 1, !tbaa !95  ; 3 uses
  %i.n = add i8 %i.m, -48
  %or.cond181274 = icmp ult i8 %i.n, 10
  br i1 %or.cond181274, label %.lr.ph278, label %.critedge2

.lr.ph278:                                        ; preds = %.preheader258, %.lr.ph278
  %i.o = phi i8 [ %i.s, %.lr.ph278 ], [ %i.m, %.preheader258 ]
  %.3277 = phi ptr [ %.3, %.lr.ph278 ], [ %.3273, %.preheader258 ]
  %.0147276 = phi i32 [ %i.r, %.lr.ph278 ], [ 0, %.preheader258 ]
  %.0148275 = phi double [ %i.q, %.lr.ph278 ], [ 0.000000e+00, %.preheader258 ]
  %narrow178 = add nsw i8 %i.o, -48
  %i.p = uitofp nneg i8 %narrow178 to double
  %i.q = tail call double @llvm.fmuladd.f64(double %.0148275, double 1.000000e+01, double %i.p) ; 2 uses
  %i.r = add nuw nsw i32 %.0147276, 1             ; 2 uses
  %.3 = getelementptr inbounds nuw i8, ptr %.3277, i64 1 ; 3 uses
  %i.s = load i8, ptr %.3, align 1, !tbaa !95     ; 3 uses
  %i.t = add i8 %i.s, -48
  %or.cond181 = icmp ult i8 %i.t, 10
  br i1 %or.cond181, label %.lr.ph278, label %.critedge2, !llvm.loop !864

.critedge2:                                       ; preds = %.lr.ph278, %.preheader258
  %i.u = phi i8 [ %i.m, %.preheader258 ], [ %i.s, %.lr.ph278 ]
  %.0148.lcssa = phi double [ 0.000000e+00, %.preheader258 ], [ %i.q, %.lr.ph278 ]
  %.0147.lcssa = phi i32 [ 0, %.preheader258 ], [ %i.r, %.lr.ph278 ]
  %.3.lcssa = phi ptr [ %.3273, %.preheader258 ], [ %.3, %.lr.ph278 ]
  %i.v = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef 1.000000e+01, i32 noundef %.0147.lcssa)
  %i.w = fdiv double %.0148.lcssa, %i.v
  %i.x = fadd double %.0130.lcssa, %i.w
  br label %bb.e

bb.e:                                             ; preds = %.critedge2, %.critedge
  %i.y = phi i8 [ %i.u, %.critedge2 ], [ %.lcssa, %.critedge ]
  %.1131 = phi double [ %i.x, %.critedge2 ], [ %.0130.lcssa, %.critedge ] ; 3 uses
  %.4 = phi ptr [ %.3.lcssa, %.critedge2 ], [ %.2.lcssa, %.critedge ] ; 2 uses
  switch i8 %i.y, label %.thread [
    i8 101, label %bb.f
    i8 69, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !95
  %.fr = freeze i8 %i.aa                          ; 2 uses
  %i.ab = icmp ne i8 %.fr, 45                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.ad = icmp ne i8 %.fr, 43
  %i.ae = and i1 %i.ab, %i.ad
  %.5 = select i1 %i.ae, ptr %i.z, ptr %i.ac      ; 2 uses
  %i.af = load i8, ptr %.5, align 1, !tbaa !95    ; 2 uses
  %i.ag = add i8 %i.af, -48
  %or.cond182282 = icmp ult i8 %i.ag, 10
  br i1 %or.cond182282, label %.lr.ph285, label %._crit_edge

.lr.ph285:                                        ; preds = %bb.f, %.lr.ph285
  %i.ah = phi i8 [ %i.am, %.lr.ph285 ], [ %i.af, %bb.f ]
  %.6284 = phi ptr [ %i.al, %.lr.ph285 ], [ %.5, %bb.f ]
  %.0143283 = phi i32 [ %i.ak, %.lr.ph285 ], [ 0, %bb.f ]
  %i.ai = mul i32 %.0143283, 10
  %narrow = add nsw i8 %i.ah, -48
  %i.aj = zext nneg i8 %narrow to i32
  %i.ak = add i32 %i.ai, %i.aj                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.6284, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95  ; 2 uses
  %i.an = add i8 %i.am, -48
  %or.cond182 = icmp ult i8 %i.an, 10
  br i1 %or.cond182, label %.lr.ph285, label %.critedge4, !llvm.loop !865

.critedge4:                                       ; preds = %.lr.ph285
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 308) ; 2 uses
  %i.ao = icmp ugt i32 %i.ak, 49
  br i1 %i.ao, label %.lr.ph290.a, label %.preheader257

.preheader257:                                    ; preds = %.lr.ph290.a, %.critedge4
  %.0149.lcssa = phi double [ 1.000000e+00, %.critedge4 ], [ %10, %.lr.ph290.a ] ; 3 uses
  %.1144.lcssa = phi i32 [ %spec.store.select, %.critedge4 ], [ %i.aw, %.lr.ph290.a ] ; 5 uses
  %i.ap = icmp samesign ugt i32 %.1144.lcssa, 7
  br i1 %i.ap, label %.lr.ph295.preheader, label %.preheader

.lr.ph295.preheader:                              ; preds = %.preheader257
  %i.aq = add nsw i32 %.1144.lcssa, -8            ; 2 uses
  %i.ar = lshr i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 1
  %xtraiter = and i32 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol

.lr.ph295.prol:                                   ; preds = %.lr.ph295.preheader, %.lr.ph295.prol
  %.2145294.prol = phi i32 [ %i.au, %.lr.ph295.prol ], [ %.1144.lcssa, %.lr.ph295.preheader ]
  %.1150293.prol = phi double [ %i.at, %.lr.ph295.prol ], [ %.0149.lcssa, %.lr.ph295.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph295.prol ], [ 0, %.lr.ph295.preheader ]
  %i.at = fmul double %.1150293.prol, 1.000000e+08 ; 3 uses
  %i.au = add nsw i32 %.2145294.prol, -8          ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol, !llvm.loop !866

.lr.ph295.prol.loopexit:                          ; preds = %.lr.ph295.prol, %.lr.ph295.preheader
  %.2145294.unr = phi i32 [ %.1144.lcssa, %.lr.ph295.preheader ], [ %i.au, %.lr.ph295.prol ]
  %.1150293.unr = phi double [ %.0149.lcssa, %.lr.ph295.preheader ], [ %i.at, %.lr.ph295.prol ]
  %.lcssa24.unr = phi double [ poison, %.lr.ph295.preheader ], [ %i.at, %.lr.ph295.prol ]
  %.lcssa23.unr = phi i32 [ poison, %.lr.ph295.preheader ], [ %i.au, %.lr.ph295.prol ]
  %i.av = icmp ult i32 %i.aq, 56
  br i1 %i.av, label %.preheader, label %.lr.ph295

.lr.ph290.a:                                      ; preds = %.critedge4, %.lr.ph290.a
  %.1144289 = phi i32 [ %i.aw, %.lr.ph290.a ], [ %spec.store.select, %.critedge4 ]
  %.0149288 = phi double [ %10, %.lr.ph290.a ], [ 1.000000e+00, %.critedge4 ]
  %10 = fmul double %.0149288, 1.000000e+50       ; 2 uses
  %i.aw = add i32 %.1144289, -50                  ; 3 uses
  %i.ax = icmp ugt i32 %i.aw, 49
  br i1 %i.ax, label %.lr.ph290.a, label %.preheader257, !llvm.loop !867

.preheader:                                       ; preds = %.lr.ph295.prol.loopexit, %.lr.ph295, %.preheader257
  %.1150.lcssa = phi double [ %.0149.lcssa, %.preheader257 ], [ %.lcssa24.unr, %.lr.ph295.prol.loopexit ], [ %i.bi, %.lr.ph295 ] ; 3 uses
  %.2145.lcssa = phi i32 [ %.1144.lcssa, %.preheader257 ], [ %.lcssa23.unr, %.lr.ph295.prol.loopexit ], [ %i.bj, %.lr.ph295 ] ; 5 uses
  %.not176298 = icmp eq i32 %.2145.lcssa, 0
  br i1 %.not176298, label %._crit_edge, label %.lr.ph301.preheader

.lr.ph301.preheader:                              ; preds = %.preheader
  %xtraiter41 = and i32 %.2145.lcssa, 7           ; 2 uses
  %lcmp.mod42.not = icmp eq i32 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph301.prol.loopexit, label %.lr.ph301.prol

.lr.ph301.prol:                                   ; preds = %.lr.ph301.preheader, %.lr.ph301.prol
  %.3146300.prol = phi i32 [ %i.az, %.lr.ph301.prol ], [ %.2145.lcssa, %.lr.ph301.preheader ]
  %.2151299.prol = phi double [ %i.ay, %.lr.ph301.prol ], [ %.1150.lcssa, %.lr.ph301.preheader ]
  %prol.iter43 = phi i32 [ %prol.iter43.next, %.lr.ph301.prol ], [ 0, %.lr.ph301.preheader ]
  %i.ay = fmul double %.2151299.prol, 1.000000e+01 ; 3 uses
  %i.az = add nsw i32 %.3146300.prol, -1          ; 2 uses
  %prol.iter43.next = add i32 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i32 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph301.prol.loopexit, label %.lr.ph301.prol, !llvm.loop !868

.lr.ph301.prol.loopexit:                          ; preds = %.lr.ph301.prol, %.lr.ph301.preheader
  %.lcssa22.unr = phi double [ poison, %.lr.ph301.preheader ], [ %i.ay, %.lr.ph301.prol ]
  %.3146300.unr = phi i32 [ %.2145.lcssa, %.lr.ph301.preheader ], [ %i.az, %.lr.ph301.prol ]
  %.2151299.unr = phi double [ %.1150.lcssa, %.lr.ph301.preheader ], [ %i.ay, %.lr.ph301.prol ]
  %i.ba = icmp ult i32 %.2145.lcssa, 8
  br i1 %i.ba, label %._crit_edge, label %.lr.ph301

.lr.ph295:                                        ; preds = %.lr.ph295.prol.loopexit, %.lr.ph295
  %.2145294 = phi i32 [ %i.bj, %.lr.ph295 ], [ %.2145294.unr, %.lr.ph295.prol.loopexit ]
  %.1150293 = phi double [ %i.bi, %.lr.ph295 ], [ %.1150293.unr, %.lr.ph295.prol.loopexit ]
  %i.bb = fmul double %.1150293, 1.000000e+08
  %i.bc = fmul double %i.bb, 1.000000e+08
  %i.bd = fmul double %i.bc, 1.000000e+08
  %i.be = fmul double %i.bd, 1.000000e+08
  %i.bf = fmul double %i.be, 1.000000e+08
  %i.bg = fmul double %i.bf, 1.000000e+08
  %i.bh = fmul double %i.bg, 1.000000e+08
  %i.bi = fmul double %i.bh, 1.000000e+08         ; 2 uses
  %i.bj = add nsw i32 %.2145294, -64              ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 7
  br i1 %i.bk, label %.lr.ph295, label %.preheader, !llvm.loop !869

.lr.ph301:                                        ; preds = %.lr.ph301.prol.loopexit, %.lr.ph301
  %.3146300 = phi i32 [ %i.bt, %.lr.ph301 ], [ %.3146300.unr, %.lr.ph301.prol.loopexit ]
  %.2151299 = phi double [ %i.bs, %.lr.ph301 ], [ %.2151299.unr, %.lr.ph301.prol.loopexit ]
  %i.bl = fmul double %.2151299, 1.000000e+01
  %i.bm = fmul double %i.bl, 1.000000e+01
  %i.bn = fmul double %i.bm, 1.000000e+01
  %i.bo = fmul double %i.bn, 1.000000e+01
  %i.bp = fmul double %i.bo, 1.000000e+01
  %i.bq = fmul double %i.bp, 1.000000e+01
  %i.br = fmul double %i.bq, 1.000000e+01
  %i.bs = fmul double %i.br, 1.000000e+01         ; 2 uses
  %i.bt = add nsw i32 %.3146300, -8               ; 2 uses
  %.not176.7 = icmp eq i32 %i.bt, 0
  br i1 %.not176.7, label %._crit_edge, label %.lr.ph301, !llvm.loop !870

._crit_edge:                                      ; preds = %.lr.ph301.prol.loopexit, %.lr.ph301, %bb.f, %.preheader
  %.2151.lcssa = phi double [ %.1150.lcssa, %.preheader ], [ 1.000000e+00, %bb.f ], [ %.lcssa22.unr, %.lr.ph301.prol.loopexit ], [ %i.bs, %.lr.ph301 ] ; 2 uses
  %i.bu = fdiv double %.1131, %.2151.lcssa
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %._crit_edge
  %i.bv = fmul double %.1131, %.2151.lcssa
  br label %.thread

.thread:                                          ; preds = %bb.e, %._crit_edge, %bb.g
  %i.bw = phi double [ %i.bu, %._crit_edge ], [ %i.bv, %bb.g ], [ %.1131, %bb.e ]
  %i.bx = fmul double %.0129, %i.bw
  store double %i.bx, ptr %1, align 8, !tbaa !191
  br label %bb.z

.preheader259:                                    ; preds = %bb.d, %bb.h
  %i.by = phi i8 [ %.pre, %bb.h ], [ %i.d, %bb.d ]
  %.0142 = phi i64 [ %i.bz, %bb.h ], [ 0, %bb.d ] ; 6 uses
  switch i8 %i.by, label %bb.h [
    i8 0, label %.critedge6
    i8 32, label %.critedge6
    i8 9, label %.critedge6
    i8 44, label %.critedge6
    i8 10, label %.critedge6
    i8 13, label %.critedge6
    i8 58, label %.critedge6
  ]

bb.h:                                             ; preds = %.preheader259
  %i.bz = add i64 %.0142, 1                       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bz
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !95
  br label %.preheader259, !llvm.loop !871

.critedge6:                                       ; preds = %.preheader259, %.preheader259, %.preheader259, %.preheader259, %.preheader259, %.preheader259, %.preheader259
  %.not168 = icmp eq i64 %.0142, 0
  br i1 %.not168, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.critedge6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.0142, ptr %i.a, align 8, !tbaa !170
  %i.cb = icmp ugt i64 %.0142, 15
  br i1 %i.cb, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.i
  %i.cc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cc, ptr %2, align 8, !tbaa !96
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !95
  br label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.i
  %cond = icmp eq i64 %.0142, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ce = load i8, ptr %.1, align 1, !tbaa !95
  store i8 %i.ce, ptr %i.ca, align 8, !tbaa !95
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.cf = phi ptr [ %i.cc, %._crit_edge.i.i.thread ], [ %i.ca, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %.1, i64 %.0142, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !94
  %i.ci = load ptr, ptr %2, align 8, !tbaa !96
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ck = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !94 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %.not6.i = icmp samesign eq i64 %i.cl, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit.thread, label %.lr.ph.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cn, ptr %3, align 8, !tbaa !91
  store i16 24942, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.co, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.cp, align 2, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ck, %bb.l ] ; 3 uses
  %i.cq = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !95
  %i.cr = zext i8 %i.cq to i32
  %i.cs = call noundef i32 @tolower(i32 noundef %i.cr) #40
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %.sroa.0.08.i, align 1, !tbaa !95
  %i.cu = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.cu, %i.cm
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit, label %.lr.ph.i, !llvm.loop !872

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit: ; preds = %.lr.ph.i
  %.pre323 = load i64, ptr %i.ch, align 8, !tbaa !94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.cv, ptr %3, align 8, !tbaa !91
  store i16 24942, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.cw, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.cx, align 2, !tbaa !95
  %i.cy = icmp eq i64 %.pre323, 2
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit
  %i.cz = load ptr, ptr %2, align 8, !tbaa !96
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = load i16, ptr %i.cv, align 1
  %i.dc = icmp ne i16 %i.da, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.ph371 = phi ptr [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.cn, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.df, ptr %4, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.df, ptr noundef nonnull align 1 dereferenceable(3) @.str.91, i64 3, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.dg, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.dh, align 1, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN8LightGBM6CommonL4AtofEPKcPdEUlhE_ET0_T_SH_SG_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.di, ptr %4, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.91, i64 3, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.dj, align 8, !tbaa !94
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.dk, align 1, !tbaa !95
  %i.dl = icmp eq i64 %.pre323, 3
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251
  %i.dm = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = load i16, ptr %i.di, align 1
  %i.dp = xor i16 %i.dn, %i.do
  %i.dq = getelementptr i8, ptr %i.dm, i64 2
  %i.dr = getelementptr i8, ptr %i.di, i64 2
  %i.ds = load i8, ptr %i.dq, align 1
  %i.dt = load i8, ptr %i.dr, align 1
  %i.du = zext i8 %i.ds to i16
  %i.dv = zext i8 %i.dt to i16
  %i.dw = xor i16 %i.du, %i.dv
  %i.dx = or i16 %i.dp, %i.dw
  %i.dy = icmp ne i16 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.critedge190, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204
  %i.eb = phi ptr [ %i.df, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread ], [ %i.di, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251 ], [ %i.di, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204 ] ; 4 uses
  %i.ec = phi ptr [ %.ph371, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251.thread ], [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread251 ], [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252
  %i.ed = load i64, ptr %i.ch, align 8, !tbaa !94 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !94 ; 2 uses
  %i.eg = icmp eq i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.n, label %..critedge184_crit_edge

..critedge184_crit_edge:                          ; preds = %bb.m
  %.pre324 = load ptr, ptr %5, align 8, !tbaa !96
  br label %.critedge184

bb.n:                                             ; preds = %bb.m
  %i.eh = icmp eq i64 %i.ed, 0
  %.pre325 = load ptr, ptr %5, align 8, !tbaa !96 ; 3 uses
  br i1 %i.eh, label %.critedge184, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ei = load ptr, ptr %2, align 8, !tbaa !96
  %bcmp.i205 = call i32 @bcmp(ptr %i.ei, ptr %.pre325, i64 %i.ed)
  %i.ej = icmp eq i32 %bcmp.i205, 0
  br label %.critedge184

.critedge184:                                     ; preds = %..critedge184_crit_edge, %bb.n, %bb.o
  %i.ek = phi ptr [ %.pre325, %bb.n ], [ %.pre324, %..critedge184_crit_edge ], [ %.pre325, %bb.o ] ; 2 uses
  %i.el = phi i1 [ true, %bb.n ], [ false, %..critedge184_crit_edge ], [ %i.ej, %bb.o ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.ek, %i.em
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge184
  %i.eo = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eo)
  br label %.critedge188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge184
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !95
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eq) #35
  br label %.critedge188

.critedge188:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pre326 = load ptr, ptr %4, align 8, !tbaa !96 ; 2 uses
  %i.er = icmp eq ptr %.pre326, %i.eb
  br i1 %i.er, label %.critedge190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %.critedge188
  %i.es = load i64, ptr %i.eb, align 8, !tbaa !95
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.pre326, i64 noundef %i.et) #35
  br label %.critedge190

.critedge190:                                     ; preds = %.critedge188, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  %i.eu = phi i1 [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.el, %.critedge188 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204 ] ; 2 uses
  %i.ev = phi ptr [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.ec, %.critedge188 ], [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pre327 = load ptr, ptr %3, align 8, !tbaa !96 ; 2 uses
  %i.ew = icmp eq ptr %.pre327, %i.ev
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211: ; preds = %.critedge190
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %i.eu, label %.sink.split, label %._crit_edge.i.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %.critedge190
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !95
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %.pre327, i64 noundef %i.ey) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %i.eu, label %.sink.split, label %._crit_edge.i.i219

bb.p:                                             ; preds = %bb.w
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit204.thread252
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.fb = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.eb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.q
  %i.fd = load i64, ptr %i.eb, align 8, !tbaa !95
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ff = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ec
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.fh = load i64, ptr %i.ec, align 8, !tbaa !95
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.y

._crit_edge.i.i219:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.fj, ptr %7, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fj, ptr noundef nonnull align 1 dereferenceable(3) @.str.93, i64 3, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.fk, align 8, !tbaa !94
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 19
  store i8 0, ptr %i.fl, align 1, !tbaa !95
  %i.fm = load i64, ptr %i.ch, align 8, !tbaa !94
  %i.fn = icmp eq i64 %i.fm, 3
  br i1 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224: ; preds = %._crit_edge.i.i219
  %i.fo = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
!667 = !{!"_ZTSNSt6locale5facetE", !85, i64 8}
!668 = !{!"p1 _ZTS15__locale_struct", !88, i64 0}
!669 = !{!"p1 short", !88, i64 0}
!670 = !{!"_ZTSSt5ctypeIcE", !667, i64 0, !668, i64 16, !106, i64 24, !116, i64 32, !116, i64 40, !669, i64 48, !84, i64 56, !84, i64 57, !84, i64 313, !84, i64 569}
!671 = !{!670, !84, i64 56}
!672 = !{!651}
!673 = !{!653}
!674 = !{!653, !651}
!675 = !{!"_ZTSSt13_Ios_Openmode", !84, i64 0}
!676 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !232, i64 0, !675, i64 64, !93, i64 72}
!677 = !{!676, !675, i64 64}
!678 = !{!655}
!679 = !{!657}
!680 = !{!657, !655}
!681 = !{ptr @_ZN8LightGBM10RankXENDCGD2Ev}
!682 = !{ptr @_ZN8LightGBM10RankXENDCGD2Ev, ptr @_ZN8LightGBM16RankingObjectiveD2Ev}
!683 = distinct !{!683, i1 false, !"_ZSt19__relocate_object_aIN8LightGBM6RandomES1_SaIS1_EEvPT_PT0_RT1_"}
!684 = distinct !{!684, !683, !"_ZSt19__relocate_object_aIN8LightGBM6RandomES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!685 = distinct !{!685, !683, !"_ZSt19__relocate_object_aIN8LightGBM6RandomES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!686 = distinct !{!686, !210, !211, !212}
!687 = distinct !{!687, !210, !211}
!688 = distinct !{!688, !210}
!689 = !{!312, !311, i64 8}
!690 = !{!684}
!691 = !{!685}
!692 = distinct !{!692, !239}
!693 = distinct !{!693, !210, !211, !212}
!694 = distinct !{!694, !210, !212, !211}
!695 = distinct !{!695, !210}
!696 = distinct !{!696, !210}
!697 = distinct !{!697, i1 false, !"LVerDomain"}
!698 = distinct !{!698, !697}
!699 = distinct !{!699, !697}
!700 = distinct !{!700, !210, !211, !212}
!701 = distinct !{!701, !210}
!702 = distinct !{!702, !210, !211}
!703 = !{!698}
!704 = !{!699}
!705 = !{ptr @_ZN8LightGBM17MulticlassSoftmaxD2Ev}
!706 = distinct !{!706, !210}
!707 = distinct !{!707, !210}
!708 = distinct !{!708, !210, !211, !212}
!709 = distinct !{!709, !210, !212, !211}
!710 = !{!162, !136, i64 24}
!711 = distinct !{!711, !239}
!712 = distinct !{!712, !210, !211, !212}
!713 = distinct !{!713, !210, !212, !211}
!714 = distinct !{!714, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!715 = distinct !{!715, !714, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!716 = distinct !{!716, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!717 = distinct !{!717, !716, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!718 = !{!715}
!719 = !{!717}
!720 = !{!717, !715}
!721 = distinct !{!721, !239}
!722 = distinct !{!722, !210}
!723 = distinct !{!723, !239}
!724 = distinct !{!724, !210, !211, !212}
!725 = distinct !{!725, !239}
!726 = distinct !{!726, !239}
!727 = distinct !{!727, !210, !211, !212}
!728 = distinct !{!728, !210, !212, !211}
!729 = distinct !{!729, !210, !211}
!730 = distinct !{!730, !210}
!731 = distinct !{!731, !210, !211, !212}
!732 = distinct !{!732, !239}
!733 = distinct !{!733, !239}
!734 = distinct !{!734, !210, !211, !212}
!735 = distinct !{!735, !210, !212, !211}
!736 = distinct !{!736, !210, !211}
!737 = distinct !{!737, !210}
!738 = distinct !{null, null, null, null, null}
!739 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!740 = distinct !{ptr @_ZN8LightGBM13MulticlassOVAD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!741 = !{ptr @_ZN8LightGBM13MulticlassOVAD2Ev}
!742 = distinct !{!742, !210}
!743 = distinct !{!743, !210}
!744 = distinct !{!744, !210}
!745 = distinct !{!745, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!746 = distinct !{!746, !745, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!747 = distinct !{!747, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!748 = distinct !{!748, !747, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!749 = !{!746}
!750 = !{!748}
!751 = !{!748, !746}
!752 = !{!"_ZTSZN8LightGBM13MulticlassOVAC1ERKNS_6ConfigEEUlfE_", !85, i64 0}
!753 = !{!752, !85, i64 0}
!754 = distinct !{!754, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!755 = distinct !{!755, !754, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!756 = distinct !{!756, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!757 = distinct !{!757, !756, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!758 = !{!755}
!759 = !{!757}
!760 = !{!757, !755}
!761 = distinct !{!761, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!762 = distinct !{!762, !761, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!763 = distinct !{!763, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!764 = distinct !{!764, !763, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!765 = !{!"_ZTSZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcEUliE_", !324, i64 0, !136, i64 8, !136, i64 16, !326, i64 24}
!766 = !{!765, !324, i64 0}
!767 = !{!765, !136, i64 8}
!768 = !{i64 4}
!769 = !{!765, !136, i64 16}
!770 = !{!762}
!771 = !{!764}
!772 = !{!764, !762}
!773 = !{!765, !326, i64 24}
!774 = distinct !{!774, !239}
!775 = distinct !{!775, !210}
!776 = !{!167, !145, i64 36}
!777 = !{!167, !145, i64 32}
!778 = distinct !{!778, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!779 = distinct !{!779, !778, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!780 = distinct !{!780, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!781 = distinct !{!781, !780, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!782 = !{!779}
!783 = !{!781}
!784 = !{!781, !779}
!785 = distinct !{!785, !239}
!786 = !{ptr @_ZN8LightGBM18RegressionMAPELOSSD2Ev}
!787 = !{ptr @_ZN8LightGBM18RegressionMAPELOSSD2Ev, ptr @_ZN8LightGBM16RegressionL2lossD2Ev}
!788 = distinct !{!788, !210}
!789 = distinct !{!789, !210, !211, !212}
!790 = distinct !{!790, !210, !212, !211}
!791 = distinct !{!791, !210}
!792 = distinct !{!792, !210, !211, !212}
!793 = distinct !{!793, !210, !212, !211}
!794 = distinct !{!794, !210}
!795 = distinct !{!795, !210, !211, !212}
!796 = distinct !{!796, !210, !212, !211}
!797 = distinct !{!797, !210}
!798 = distinct !{!798, !211, !212}
!799 = distinct !{!799, !211}
!800 = distinct !{!800, !211, !212}
!801 = distinct !{!801, !211}
!802 = distinct !{!802, !211, !212}
!803 = distinct !{!803, !211}
!804 = distinct !{!804, !211, !212}
!805 = distinct !{!805, !211}
!806 = distinct !{!806, !210}
!807 = distinct !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET0_T_SL_SL_SL_SK_T1_, null, null, null}
!808 = distinct !{!808, !210}
!809 = distinct !{ptr @_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEET0_T_SL_SL_SL_SK_T1_, null, null, null}
!810 = distinct !{!810, !210}
!811 = distinct !{!811, !210}
!812 = distinct !{null, null, null, null}
!813 = distinct !{!813, !210}
!814 = distinct !{null, null, null, null}
!815 = distinct !{!815, !210}
!816 = distinct !{!816, !210}
!817 = distinct !{null, null, null}
!818 = distinct !{null, null, null}
!819 = distinct !{!819, !210}
!820 = distinct !{!820, !210}
!821 = distinct !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET0_T_SL_SL_SL_SK_T1_, null, null, null}
!822 = distinct !{!822, !210}
!823 = distinct !{ptr @_ZSt12__move_mergeIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEENS1_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET0_T_SL_SL_SL_SK_T1_, null, null, null}
!824 = distinct !{!824, !210}
!825 = distinct !{!825, !210}
!826 = distinct !{null, null, null, null}
!827 = distinct !{!827, !210}
!828 = distinct !{!828, !210, !276}
!829 = distinct !{null, null, null}
!830 = distinct !{!830, !210}
!831 = distinct !{null, null, null}
!832 = distinct !{null, null, null}
!833 = distinct !{!833, !210}
!834 = distinct !{!834, !210}
!835 = distinct !{!835, !210}
!836 = distinct !{!836, !210}
!837 = distinct !{!837, !210}
!838 = distinct !{!838, !210}
!839 = distinct !{!839, !210}
!840 = distinct !{!840, !210}
!841 = distinct !{!841, !210}
!842 = distinct !{!842, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!843 = distinct !{!843, !842, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!844 = distinct !{!844, !210}
!845 = distinct !{!845, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!846 = distinct !{!846, !845, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!847 = !{!843}
!848 = !{!846}
!849 = distinct !{!849, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!850 = distinct !{!850, !849, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!851 = distinct !{!851, !849, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!852 = distinct !{!852, !210}
!853 = distinct !{!853, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!854 = distinct !{!854, !853, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!855 = distinct !{!855, !853, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!856 = !{!850}
!857 = !{!851}
!858 = !{!850, !851}
!859 = !{!854}
!860 = !{!855}
!861 = !{!854, !855}
!862 = distinct !{!862, !210}
!863 = distinct !{!863, !210}
!864 = distinct !{!864, !210}
!865 = distinct !{!865, !210}
!866 = distinct !{!866, !239}
!867 = distinct !{!867, !210}
!868 = distinct !{!868, !239}
!869 = distinct !{!869, !210}
!870 = distinct !{!870, !210}
!871 = distinct !{!871, !210}
!872 = distinct !{!872, !210}
end_hunk_1
