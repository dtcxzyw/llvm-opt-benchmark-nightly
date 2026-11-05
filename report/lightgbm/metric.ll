Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !748
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !749 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36, !alias.scope !749 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !750
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !748
  %i.al = load i64, ptr %i.af, align 8, !tbaa !37, !alias.scope !749
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !37, !alias.scope !748
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !749
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !36, !alias.scope !748
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !749
  store i64 0, ptr %i.an, align 8, !tbaa !36, !alias.scope !749
  store i8 0, ptr %i.af, align 8, !tbaa !37, !alias.scope !749
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !33, !alias.scope !751
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !38, !alias.scope !752 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36, !alias.scope !752 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !753
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !38, !alias.scope !751
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !37, !alias.scope !752
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !37, !alias.scope !751
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !36, !alias.scope !752
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !36, !alias.scope !751
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !tbaa !38, !alias.scope !752
  store i64 0, ptr %i.bc, align 8, !tbaa !36, !alias.scope !752
  store i8 0, ptr %i.au, align 8, !tbaa !37, !alias.scope !752
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !93
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !96
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #33
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !279  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.j, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.k = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !117
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 5 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !117
  %i.n = load i32, ptr %i.a, align 4, !tbaa !117  ; 4 uses
  %.not17 = icmp sgt i32 %i.n, %i.m
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !280  ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !86     ; 3 uses
  %i.r = sext i32 %i.n to i64                     ; 4 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.w = load float, ptr %i.v, align 4, !tbaa !108
  %i.x = fpext float %i.w to double
  %i.y = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.z = load double, ptr %i.y, align 8, !tbaa !88
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %5 = call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double 0.000000e+00) ; 2 uses
  store double %5, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %5, %.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i32 %i.m, %i.n
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ac = phi double [ %i.aq, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !108
  %i.af = fpext float %i.ae to double
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !88
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  %i.aj = call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ac) ; 2 uses
  store double %i.aj, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.al = load float, ptr %i.ak, align 4, !tbaa !108
  %i.am = fpext float %i.al to double
  %i.an = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ao = load double, ptr %i.an, align 8, !tbaa !88
  %i.ap = fsub double %i.am, %i.ao                ; 2 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.aj) ; 2 uses
  store double %i.aq, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.ar = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.ar, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.as = load double, ptr %4, align 8, !tbaa !88
  %i.at = load double, ptr %i.e, align 8, !tbaa !88
  %i.au = fadd double %i.as, %i.at
  store double %i.au, ptr %4, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.av = load double, ptr %i.e, align 8, !tbaa !88
  %i.aw = atomicrmw fadd ptr %4, double %i.av monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.121(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !279  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.j, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.k = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !117
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 5 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !117
  %i.n = load i32, ptr %i.a, align 4, !tbaa !117  ; 4 uses
  %.not18 = icmp sgt i32 %i.n, %i.m
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !280  ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !86     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !281  ; 3 uses
  %i.t = sext i32 %i.n to i64                     ; 5 uses
  %i.u = add nsw i32 %i.m, 1
  %i.v = add i32 %i.m, %i.n
  %i.w = and i32 %i.v, 1
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.t
  %i.y = load float, ptr %i.x, align 4, !tbaa !108
  %i.z = fpext float %i.y to double
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !88
  %i.ac = fsub double %i.z, %i.ab                 ; 2 uses
  %i.ad = fmul double %i.ac, %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.af = load float, ptr %i.ae, align 4, !tbaa !108
  %i.ag = fpext float %i.af to double
  %i.ah = call double @llvm.fmuladd.f64(double %i.ad, double %i.ag, double 0.000000e+00) ; 2 uses
  store double %i.ah, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.prol = add nsw i64 %i.t, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.ai = icmp eq i32 %i.m, %i.n
  br i1 %i.ai, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.aj = phi double [ %i.bf, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.al = load float, ptr %i.ak, align 4, !tbaa !108
  %i.am = fpext float %i.al to double
  %i.an = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !88
  %i.ap = fsub double %i.am, %i.ao                ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !108
  %i.at = fpext float %i.as to double
  %i.au = call double @llvm.fmuladd.f64(double %i.aq, double %i.at, double %i.aj) ; 2 uses
  store double %i.au, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = fpext float %i.aw to double
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.az = load double, ptr %i.ay, align 8, !tbaa !88
  %i.ba = fsub double %i.ax, %i.az                ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !108
  %i.be = fpext float %i.bd to double
  %i.bf = call double @llvm.fmuladd.f64(double %i.bb, double %i.be, double %i.au) ; 2 uses
  store double %i.bf, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.u, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.bg = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.121.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bg, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.bh = load double, ptr %4, align 8, !tbaa !88
  %i.bi = load double, ptr %i.e, align 8, !tbaa !88
  %i.bj = fadd double %i.bh, %i.bi
  store double %i.bj, ptr %4, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e
end_hunk_0
