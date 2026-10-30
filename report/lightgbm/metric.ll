Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store i8 0, ptr %i.ae, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.g ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !303
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !304 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36, !alias.scope !304 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !305
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !303
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !37, !alias.scope !304
  store i64 %i.an, ptr %i.af, align 8, !tbaa !37, !alias.scope !303
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !304
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.h
  %i.ao = phi i64 [ %i.ak, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !36, !alias.scope !303
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !304
  store i64 0, ptr %i.ap, align 8, !tbaa !36, !alias.scope !304
  store i8 0, ptr %i.ah, align 8, !tbaa !37, !alias.scope !304
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.g ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i30 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i29, align 8, !tbaa !33, !alias.scope !306
  %i.av = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !38, !alias.scope !307 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

bb.i:                                             ; preds = %.lr.ph.i.i.i28
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !307 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !308
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.av, ptr %.012.i.i.i29, align 8, !tbaa !38, !alias.scope !306
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !37, !alias.scope !307
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !37, !alias.scope !306
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !36, !alias.scope !307
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31, %bb.i
  %i.bd = phi i64 [ %i.az, %bb.i ], [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !36, !alias.scope !306
  store ptr %i.aw, ptr %.0911.i.i.i30, align 8, !tbaa !38, !alias.scope !307
  store i64 0, ptr %i.be, align 8, !tbaa !36, !alias.scope !307
  store i8 0, ptr %i.aw, align 8, !tbaa !37, !alias.scope !307
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i35, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.d, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, %bb.j
  store ptr %i.q, ptr %0, align 8, !tbaa !93
  store ptr %.0.lcssa.i.i.i36, ptr %i.b, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !96
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bn

bb.m:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_8L2MetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100  ; 2 uses
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
  %.not15 = icmp sgt i32 %i.n, %i.m
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103  ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !86     ; 3 uses
  %i.r = sext i32 %i.n to i64                     ; 4 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.w = load float, ptr %i.v, align 4, !tbaa !108
  %i.x = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.y = load double, ptr %i.x, align 8, !tbaa !88
  %i.z = fpext float %i.w to double
  %i.aa = fsub double %i.y, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa                ; 2 uses
  store double %i.ab, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ac = icmp eq i32 %i.m, %i.n
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ad = phi double [ %i.at, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4, !tbaa !108
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !88
  %i.ai = fpext float %i.af to double
  %i.aj = fsub double %i.ah, %i.ai                ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.ad, %i.ak                ; 2 uses
  store double %i.al, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.an = load float, ptr %i.am, align 4, !tbaa !108
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !88
  %i.aq = fpext float %i.an to double
  %i.ar = fsub double %i.ap, %i.aq                ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.al, %i.as                ; 2 uses
  store double %i.at, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.au = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_8L2MetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.au, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.av = load double, ptr %3, align 8, !tbaa !88
  %i.aw = load double, ptr %i.e, align 8, !tbaa !88
  %i.ax = fadd double %i.av, %i.aw
  store double %i.ax, ptr %3, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ay = load double, ptr %i.e, align 8, !tbaa !88
  %i.az = atomicrmw fadd ptr %3, double %i.ay monotonic, align 8 ; 0 uses
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

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_8L2MetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #15

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare !callback !127 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_8L2MetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.26(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100  ; 2 uses
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
  %.not16 = icmp sgt i32 %i.n, %i.m
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103  ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !86     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 3 uses
  %i.t = sext i32 %i.n to i64                     ; 5 uses
  %i.u = add nsw i32 %i.m, 1
  %i.v = add i32 %i.m, %i.n
  %i.w = and i32 %i.v, 1
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.t
  %i.y = load float, ptr %i.x, align 4, !tbaa !108
  %i.z = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t
  %i.aa = load double, ptr %i.z, align 8, !tbaa !88
  %i.ab = fpext float %i.y to double
  %i.ac = fsub double %i.aa, %i.ab                ; 2 uses
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
  %i.am = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !88
  %i.ao = fpext float %i.al to double
  %i.ap = fsub double %i.an, %i.ao                ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !108
  %i.at = fpext float %i.as to double
  %i.au = call double @llvm.fmuladd.f64(double %i.aq, double %i.at, double %i.aj) ; 2 uses
  store double %i.au, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !88
  %i.az = fpext float %i.aw to double
  %i.ba = fsub double %i.ay, %i.az                ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !108
  %i.be = fpext float %i.bd to double
  %i.bf = call double @llvm.fmuladd.f64(double %i.bb, double %i.be, double %i.au) ; 2 uses
  store double %i.bf, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.u, %lftr.wideiv.1
end_hunk_0
begin_hunk_1_@_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEE4InitERKNS_8MetadataEi:bb.a
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %i.an = phi double [ %.epil.init, %.epil.preheader ], [ %i.ar, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !108
  %i.aq = fpext float %i.ap to double
  %i.ar = fadd double %i.an, %i.aq                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %bb.e, !llvm.loop !310

..loopexit_crit_edge:                             ; preds = %bb.e, %..loopexit_crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.am, %..loopexit_crit_edge.unr-lcssa ], [ %i.ar, %bb.e ]
  store double %.lcssa, ptr %i.q, align 8, !tbaa !133
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(1720) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE23factor_to_bigger_betterEv(ptr noundef nonnull align 8 dereferenceable(1720) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1720) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3)
  store ptr %2, ptr %i.a, align 8, !tbaa !86
  store ptr %3, ptr %i.b, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp eq ptr %3, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.d, i32 %i.i)
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %.noexc

bb.d:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.30, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %.noexc

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.31, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.32, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.j = load double, ptr %i.c, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !133
  %i.m = fdiv double %i.j, %i.l
  %i.n = call noundef double @sqrt(double noundef %i.m) #13
  %i.o = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !83
  store double %i.n, ptr %i.o, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEED0Ev(ptr noundef nonnull align 8 dereferenceable(1720) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM16RegressionMetricINS_10RMSEMetricEEE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31, !inline_history !128
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !128
  br label %_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEED2Ev.exit

_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN8LightGBM6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %i.q) #13, !inline_history !128
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1720) #31
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !130  ; 2 uses
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
  %.not15 = icmp sgt i32 %i.n, %i.m
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !86     ; 3 uses
  %i.r = sext i32 %i.n to i64                     ; 4 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.r
  %i.w = load float, ptr %i.v, align 4, !tbaa !108
  %i.x = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.y = load double, ptr %i.x, align 8, !tbaa !88
  %i.z = fpext float %i.w to double
  %i.aa = fsub double %i.y, %i.z                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa                ; 2 uses
  store double %i.ab, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ac = icmp eq i32 %i.m, %i.n
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ad = phi double [ %i.at, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4, !tbaa !108
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !88
  %i.ai = fpext float %i.af to double
  %i.aj = fsub double %i.ah, %i.ai                ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = fadd double %i.ad, %i.ak                ; 2 uses
  store double %i.al, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.an = load float, ptr %i.am, align 4, !tbaa !108
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !88
  %i.aq = fpext float %i.an to double
  %i.ar = fsub double %i.ap, %i.aq                ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.al, %i.as                ; 2 uses
  store double %i.at, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.au = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.au, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.av = load double, ptr %3, align 8, !tbaa !88
  %i.aw = load double, ptr %i.e, align 8, !tbaa !88
  %i.ax = fadd double %i.av, %i.aw
  store double %i.ax, ptr %3, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ay = load double, ptr %i.e, align 8, !tbaa !88
  %i.az = atomicrmw fadd ptr %3, double %i.ay monotonic, align 8 ; 0 uses
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
define internal void @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
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
define internal void @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.30(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 9 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !130  ; 2 uses
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
  %.not16 = icmp sgt i32 %i.n, %i.m
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !86     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132  ; 3 uses
  %i.t = sext i32 %i.n to i64                     ; 5 uses
  %i.u = add nsw i32 %i.m, 1
  %i.v = add i32 %i.m, %i.n
  %i.w = and i32 %i.v, 1
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.t
  %i.y = load float, ptr %i.x, align 4, !tbaa !108
  %i.z = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t
  %i.aa = load double, ptr %i.z, align 8, !tbaa !88
  %i.ab = fpext float %i.y to double
  %i.ac = fsub double %i.aa, %i.ab                ; 2 uses
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
  %i.am = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !88
  %i.ao = fpext float %i.al to double
  %i.ap = fsub double %i.an, %i.ao                ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !108
  %i.at = fpext float %i.as to double
  %i.au = call double @llvm.fmuladd.f64(double %i.aq, double %i.at, double %i.aj) ; 2 uses
  store double %i.au, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !88
  %i.az = fpext float %i.aw to double
  %i.ba = fsub double %i.ay, %i.az                ; 2 uses
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
  %i.bg = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_10RMSEMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.30.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bg, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.bh = load double, ptr %3, align 8, !tbaa !88
  %i.bi = load double, ptr %i.e, align 8, !tbaa !88
  %i.bj = fadd double %i.bh, %i.bi
  store double %i.bj, ptr %3, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bk = load double, ptr %i.e, align 8, !tbaa !88
  %i.bl = atomicrmw fadd ptr %3, double %i.bk monotonic, align 8 ; 0 uses
  br label %bb.e
end_hunk_1
